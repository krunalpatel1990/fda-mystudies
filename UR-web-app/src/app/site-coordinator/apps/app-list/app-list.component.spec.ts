import {
  async,
  TestBed,
  ComponentFixture,
  fakeAsync,
} from '@angular/core/testing';
import {
  BrowserAnimationsModule,
  NoopAnimationsModule,
} from '@angular/platform-browser/animations';

import {HttpClientModule} from '@angular/common/http';
import {RouterTestingModule} from '@angular/router/testing';
import {ToastrModule} from 'ngx-toastr';
import {EntityService} from '../../../service/entity.service';
import {of} from 'rxjs';
import {BsModalService, BsModalRef, ModalModule} from 'ngx-bootstrap/modal';

import {AppsModule} from '../apps.module';
import {AppsService} from '../shared/apps.service';
import {SiteCoordinatorModule} from '../../site-coordinator.module';
import {expectedAppList} from 'src/app/entity/mockAppsData';

import {AppListComponent} from './app-list.component';

describe('AppListComponent', () => {
  let component: AppListComponent;
  let fixture: ComponentFixture<AppListComponent>;

  beforeEach(async(async () => {
    const appsServiceSpy = jasmine.createSpyObj<AppsService>('AppsService', {
      getApps: of(expectedAppList),
    });
    await TestBed.configureTestingModule({
      declarations: [AppListComponent],
      imports: [
        SiteCoordinatorModule,
        BrowserAnimationsModule,
        NoopAnimationsModule,
        AppsModule,
        HttpClientModule,
        RouterTestingModule.withRoutes([]),
        ModalModule.forRoot(),
        ToastrModule.forRoot({
          positionClass: 'toast-top-center',
          preventDuplicates: true,
          enableHtml: true,
        }),
      ],
      providers: [
        EntityService,
        BsModalService,
        BsModalRef,
        {provide: AppsService, useValue: appsServiceSpy},
      ],
    })
      .compileComponents()
      .then(() => {
        fixture = TestBed.createComponent(AppListComponent);
        component = fixture.componentInstance;

        // appsServiceSpy.getApps.and.returnValue(of(expectedAppList));
      });
  }));
  it('should create', () => {
    expect(component).toBeTruthy();
  });

  it('should NOT have apps before ngOnInit', () => {
    component.app$.subscribe((apps) => {
      expect(apps.length).toBe(0, 'should not have apps before ngOnInit');
    });
  });

  describe('after get apps', () => {
    beforeEach(async(() => {
      fixture.detectChanges();
      void fixture.whenStable();
    }));

    it('should get the apps List via refresh function', fakeAsync(() => {
      component.app$.subscribe((apps) => {
        expect(apps.length).toEqual(2);
      });
    }));
    it('should display all apps', () => {
      const compiled = fixture.nativeElement as HTMLElement;
      fixture.detectChanges();
      expect(compiled.querySelectorAll('.apps_row').length).toBe(
        2,
        'should display all apps list',
      );
    });
  });
});
