INSERT INTO `user_permissions` (`permission_id`, `permissions`) VALUES (8, 'ROLE_CREATE_MANAGE_STUDIES'), (6, 'ROLE_MANAGE_APP_WIDE_NOTIFICATION_EDIT'), (4, 'ROLE_MANAGE_APP_WIDE_NOTIFICATION_VIEW'), (2, 'ROLE_MANAGE_STUDIES'), (5, 'ROLE_MANAGE_USERS_EDIT'), (7, 'ROLE_MANAGE_USERS_VIEW'), (1, 'ROLE_SUPERADMIN');

INSERT INTO `users` (`user_id`, `first_name`, `last_name`, `email`, `password`, `role_id`, `created_by`, `modified_by`, `status`, `accountNonExpired`, `accountNonLocked`, `credentialsNonExpired`, `force_logout`, `security_token`) VALUES ('1', 'abc', 'xyx', 'ttt@gmail.com', '$2a$10$uSKnFqkar9ugqrdD1KElcOcPGEtdpuNMvwlHfRGwX4jovq.sH0e/q', '1', '1', '1', '0', '1', '1', '1', 'N', NULL), ('2', 'firstname2', 'laststname2', 'super@gmail.com', NULL, '8', '1', '1', '1', '1', '1', '1', 'N', 'N8K7zYrc0F'), ('3', 'firstname3', 'laststname3', 'super3@gmail.com', '$2a$10$uSKnFqkar9ugqrdD1KElcOcPGEtdpuNMvwlHfRGwX4jovq.sH0e/q', '8', '1', '1', '1', '1', '1', '1', 'N', 'jkh7zYrc0F');

INSERT INTO `user_permission_mapping` (`user_id`, `permission_id`) VALUES (2, 8);

INSERT INTO questionnaires_steps (step_id, questionnaires_id, instruction_form_id, step_short_title, step_type, sequence_no, destination_step, repeatable, skiappable, active, status) VALUES (1, 11675, 85231, '1time', 'Question', 1, 60873, 'No', 'Yes', 1, 1), (2, 1, 1, '1time', 'Question', 1, 60873, 'No', 'Yes', 1, 1);

INSERT INTO questionnaires (id, study_id, frequency, title, study_lifetime_start, study_lifetime_end, short_title, repeat_questionnaire, created_by, created_date, modified_by, modified_date, branching, active, status, custom_study_id, is_live, version, is_Change, schedule_type) VALUES ('1', 678574, 'One time', 'quesions', '2020-09-02', '2020-09-23', 'onetime', 5, 0, '2020-09-02 13:03:11', 0, '2020-09-02 14:25:43', 1, 1, 1, 'OpenStudy003', 1, 1, 1, 'Regular'), ('2', 58, 'One time', 'quesions', '2020-09-02', '2020-09-23', 'onetime', 5, 0, '2020-09-02 13:03:11', 0, '2020-09-02 14:25:43', 1, 1, 1, 'OpenStudy003', 1, 1, 1, 'Regular'), (3, 678574, 'Two time', 'quesions3', '2020-09-02', '2020-09-23', 'Twotime', 6, 0, '2020-09-02 13:03:11', 0, '2020-09-02 14:25:43', 1, 1, 1, 'OpenStudy003', 1, 2, 1, 'Regular');

INSERT INTO study_version (version_id, activity_version, custom_study_id, study_version, consent_version) VALUES (1, 1, 'OpenStudy003', 1, 1);

INSERT INTO form_mapping (id, form_id, question_id, sequence_no) VALUES (1, 58, 85199, 1);

INSERT INTO `questions` (`id`, `active`, `add_line_chart`, `description`, `modified_by`, `response_type`, `status`, `use_anchor_date`, `use_stastic_data`, `allow_healthkit`, `short_title`) VALUES ('1', '1', 'No', 'hi', '1', '6', '1', '0', 'No', 'No', 'short_title1'), ('85199', '1', 'No', 'hi', '1', '6', '1', '0', 'No', 'No', 'short_title2');

INSERT INTO `resources` (`id`, `study_id`, `title`, `text_or_pdf`, `rich_text`, `pdf_url`, `resource_visibility`, `resource_text`, `action`, `study_protocol`, `created_by`, `modified_by`, `status`, `pdf_name`, `sequence_no`) VALUES ('1', '1374', 'resource', '1', 'a@gmail.com', 'abcd.pdf', '1', 'text2', '1', '0', '1', '1', '1', 'ab.pdf', '1');

INSERT INTO `study_sequence` (`study_sequence_id`, `study_id`, `actions`, `basic_info`, `check_list`, `comprehension_test`, `consent_edu_info`, `e_consent`, `eligibility`, `miscellaneous_branding`, `miscellaneous_notification`, `miscellaneous_resources`, `over_view`, `setting_admins`, `study_dashboard_chart`, `study_dashboard_stats`, `study_exc_active_task`, `study_exc_questionnaries`) VALUES (10633, 678574, 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N');

INSERT INTO `active_task` (`id`, `study_id`, `frequency`, `duration`, `active_task_lifetime_start`, `active_task_lifetime_end`, `day_of_the_week`, `repeat_active_task`, `created_by`, `modified_by`, `display_name`, `instruction`, `short_title`, `created_date`, `modified_date`, `task_title`, `task_type_id`, `action`, `custom_study_id`, `is_live`, `is_Change`, `active`, `anchor_date_id`, `schedule_type`) VALUES (28500, 678574, 'One time', NULL, '2020-11-05', '2020-11-25', NULL, NULL, 59, 59, 'FetalKickCounter', 'FetalKickCounter', 'FetalKickCounter', '2020-11-05 08:04:34', '2020-11-05 08:04:48', NULL, 1, 1, 678590, 1, 0, 1, NULL, 'Regular');

INSERT INTO `active_task_attrtibutes_values` (`active_task_attribute_id`, `active_task_id`, `active_task_master_attr_id`, `attribute_val`, `add_to_line_chart`, `time_range_chart`, `rollback_chat`, `title_chat`, `use_for_statistic`, `identifier_name_stat`, `display_name_stat`, `display_units_stat`, `upload_type_stat`, `formula_applied_stat`, `time_range_stat`) VALUES (7576, 28500, 1, '23:59', 'N', NULL, NULL, NULL, 'N', NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `active_task_frequencies` (`id`, `active_task_id`, `frequency_date`, `frequency_time`, `is_launch_study`, `is_study_life_time`) VALUES (28500, 2850, NULL, NULL, 1, 1);

INSERT INTO `active_task_custom_frequencies` (`id`, `frequency_start_date`, `frequency_end_date`, `frequency_start_time`, `active_task_id`, `is_used`) VALUES (28500, '2020-03-24', '2020-03-30', '22:07:00', 2862, 'N');

INSERT INTO `study_version` (`version_id`, `activity_version`, `custom_study_id`, `study_version`, `consent_version`) VALUES (1979, 1, 67859, 1, 1);




INSERT INTO `studies` (`id`, `custom_study_id`, `name`, `full_name`, `type`, `platform`, `category`, `research_sponsor`, `tentative_duration`, `tentative_duration_weekmonth`, `description`, `enrolling_participants`, `irb_review`, `inbox_email_address`, `created_by`, `created_on`, `modified_by`, `modified_on`, `status`, `sequence_number`, `thumbnail_image`, `media_link`, `study_website`, `study_tagline`, `study_lunched_date`, `study_pre_active_flag`, `has_activity_draft`, `has_consent_draft`, `has_study_draft`, `is_live`, `version`, `has_activitetask_draft`, `has_questionnaire_draft`, `enrollmentdate_as_anchordate`, `app_id`) VALUES ('678574', '678590', 'OpenStudy01', 'OpenStudy01', 'GT', NULL, '8', 'CDC', 100, 'Days', '<p>Study for Covid-19</p>', NULL, NULL, 'test@gmail.com', '59', '2020-03-24 07:47:00', '59', '2020-03-24 07:47:00', 'Pre-launch', NULL, 'STUDY_OO_03242020074700.jpg',  NULL, 'http://www.google.com', 'Study for Covid-19', NULL, 'N', 0, 0, 1, 1, 1, 0, 0, 'N', 'GCPMS001');

INSERT INTO `study_version` (`version_id`, `activity_version`, `custom_study_id`, `study_version`, `consent_version`) VALUES (987, 1, '678590', 1, 1);

INSERT INTO `consent` (`id`, `study_id`, `comprehension_test_minimum_score`, `share_data_permissions`, `title`, `custom_study_id`, `is_live`, `tagline_description`, `short_description`, `long_description`, `learn_more_text`, `consent_doc_type`, `consent_doc_content`, `allow_without_permission`, `e_consent_firstname`, `e_consent_lastname`, `e_consent_agree`, `e_consent_signature`, `e_consent_datetime`, `created_on`, `created_by`, `modified_on`, `modified_by`) VALUES (341, 678574, 1, 'Yes', 'TestOnly', NULL, 1, 'TestOnly', 'TestOnly', 'TestOnly', '<p>TestOnly</p>', 'Auto', '<span style=&#34;font-size:20px;&#34;><strong>Data gathering</strong></span><br/><span style=&#34;display: block; overflow-wrap: break-word; width: 100%;&#34;><p>&lt;Elaborated Content&nbsp;&gt;</p></span><br/>', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '2020-03-24 07:57:45', 59, '2020-03-24 07:59:39', 59);

INSERT INTO `studies` (`id`, `custom_study_id`, `name`, `full_name`, `type`, `platform`, `category`, `research_sponsor`, `tentative_duration`, `tentative_duration_weekmonth`, `description`, `enrolling_participants`, `irb_review`, `inbox_email_address`, `created_by`, `created_on`, `modified_by`, `modified_on`, `status`, `sequence_number`, `thumbnail_image`, `media_link`,  `study_website`, `study_tagline`, `study_lunched_date`, `study_pre_active_flag`, `has_activity_draft`, `has_consent_draft`, `has_study_draft`, `is_live`, `version`, `has_activitetask_draft`, `has_questionnaire_draft`, `enrollmentdate_as_anchordate`, `app_id`) VALUES (678575, '678591', 'OpenStudy01', 'OpenStudy01', 'GT', NULL, '8', 'CDC', 100, 'Days', '<p>Study for Covid-19</p>', NULL, NULL, 'test@gmail.com', 59, '2020-03-24 07:47:00', 59, '2020-03-24 07:47:00', 'Pre-launch', NULL, 'STUDY_OO_03242020074700.jpg', NULL, 'http://www.google.com', 'Study for Covid-19', NULL, 'N', 0, 0, 1, 1, 1, 0, 0, 'N', 'GCPMS001');

INSERT INTO `study_sequence` (`study_sequence_id`, `study_id`, `actions`, `basic_info`, `check_list`, `comprehension_test`, `consent_edu_info`, `e_consent`, `eligibility`, `miscellaneous_branding`, `miscellaneous_notification`, `miscellaneous_resources`, `over_view`, `setting_admins`, `study_dashboard_chart`, `study_dashboard_stats`, `study_exc_active_task`, `study_exc_questionnaries`) VALUES (10634, 678575, 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N');

INSERT INTO `studies` (`id`, `custom_study_id`, `name`, `full_name`, `type`, `platform`, `category`, `research_sponsor`, `tentative_duration`, `tentative_duration_weekmonth`, `description`, `enrolling_participants`, `irb_review`, `inbox_email_address`, `created_by`, `created_on`, `modified_by`, `modified_on`, `status`, `sequence_number`, `thumbnail_image`, `media_link`,  `study_website`, `study_tagline`, `study_lunched_date`, `study_pre_active_flag`, `has_activity_draft`, `has_consent_draft`, `has_study_draft`, `is_live`, `version`, `has_activitetask_draft`, `has_questionnaire_draft`, `enrollmentdate_as_anchordate`, `app_id`) VALUES (678576, '678592', 'OpenStudy01', 'OpenStudy01', 'GT', NULL, '8', 'CDC', 100, 'Days', '<p>Study for Covid-19</p>', NULL, NULL, 'test@gmail.com', 59, '2020-03-24 07:47:00', 59, '2020-03-24 07:47:00', 'Pre-launch', NULL, 'STUDY_OO_03242020074700.jpg', NULL, 'http://www.google.com', 'Study for Covid-19', NULL, 'N', 0, 0, 1, 1, 1, 0, 0, 'N', 'GCPMS001');

INSERT INTO `studies` (`id`, `custom_study_id`, `name`, `full_name`, `type`, `platform`, `category`, `research_sponsor`, `tentative_duration`, `tentative_duration_weekmonth`, `description`, `enrolling_participants`, `irb_review`, `inbox_email_address`, `created_by`, `created_on`, `modified_by`, `modified_on`, `status`, `sequence_number`, `thumbnail_image`, `media_link`, `study_website`, `study_tagline`, `study_lunched_date`, `study_pre_active_flag`, `has_activity_draft`, `has_consent_draft`, `has_study_draft`, `is_live`, `version`, `has_activitetask_draft`, `has_questionnaire_draft`, `enrollmentdate_as_anchordate`, `app_id`) VALUES (678577, '678593', 'OpenStudy01', 'OpenStudy01', 'GT', NULL, '8', 'CDC', 100, 'Days', '<p>Study for Covid-19</p>', NULL,  NULL, 'test@gmail.com', 59, '2020-03-24 07:47:00', 59, '2020-03-24 07:47:00', 'Pre-launch', NULL, 'STUDY_OO_03242020074700.jpg', NULL, 'http://www.google.com', 'Study for Covid-19', NULL, 'N', 0, 0, 1, 1, 1, 0, 0, 'N', 'GCPMS001');

INSERT INTO `studies` (`id`, `custom_study_id`, `name`, `full_name`, `type`, `platform`, `category`, `research_sponsor`, `tentative_duration`, `tentative_duration_weekmonth`, `description`, `enrolling_participants`,  `irb_review`, `inbox_email_address`, `created_by`, `created_on`, `modified_by`, `modified_on`, `status`, `sequence_number`, `thumbnail_image`, `media_link`,  `study_website`, `study_tagline`, `study_lunched_date`, `study_pre_active_flag`, `has_activity_draft`, `has_consent_draft`, `has_study_draft`, `is_live`, `version`, `has_activitetask_draft`, `has_questionnaire_draft`, `enrollmentdate_as_anchordate`, `app_id`) VALUES (678578, '678594', 'OpenStudy01', 'OpenStudy01', 'GT', NULL, '8', 'CDC', 100, 'Days', '<p>Study for Covid-19</p>', NULL, NULL, 'test@gmail.com', 59, '2020-03-24 07:47:00', 59, '2020-03-24 07:47:00', 'Pre-launch', NULL, 'STUDY_OO_03242020074700.jpg', NULL, 'http://www.google.com', 'Study for Covid-19', NULL, 'N', 0, 0, 1, 1, 1, 0, 0, 'N', 'GCPMS001');

INSERT INTO `active_task` (`id`, `study_id`, `frequency`, `duration`, `active_task_lifetime_start`, `active_task_lifetime_end`, `day_of_the_week`, `repeat_active_task`, `created_by`, `modified_by`, `display_name`, `instruction`, `short_title`, `created_date`, `modified_date`, `task_title`, `task_type_id`, `action`, `custom_study_id`, `is_live`, `is_Change`, `active`, `anchor_date_id`, `schedule_type`) VALUES (28502, 678578, 'One time', NULL, '2020-03-24', NULL, NULL, NULL, 59, 59, 'FetalKickCounter', 'FetalKickCounter', 'FetalKickCounter', '2020-03-24 08:04:34', '2020-03-24 08:04:48', NULL, 1, 1, 678594, 1, 0, 1, NULL, 'Regular');

INSERT INTO `study_version` (`version_id`, `activity_version`, `custom_study_id`, `study_version`, `consent_version`) VALUES (988, 1, '678594', 1, 1);

INSERT INTO `studies` (`id`, `custom_study_id`, `name`, `full_name`, `type`, `platform`, `category`, `research_sponsor`, `tentative_duration`, `tentative_duration_weekmonth`, `description`, `enrolling_participants`,  `irb_review`, `inbox_email_address`, `created_by`, `created_on`, `modified_by`, `modified_on`, `status`, `sequence_number`, `thumbnail_image`, `media_link`,  `study_website`, `study_tagline`, `study_lunched_date`, `study_pre_active_flag`, `has_activity_draft`, `has_consent_draft`, `has_study_draft`, `is_live`, `version`, `has_activitetask_draft`, `has_questionnaire_draft`, `enrollmentdate_as_anchordate`, `app_id`) VALUES (678579, '678595', 'OpenStudy01', 'OpenStudy01', 'GT', NULL, '8', 'CDC', 100, 'Days', '<p>Study for Covid-19</p>', NULL, NULL, 'test@gmail.com', 59, '2020-03-24 07:47:00', 59, '2020-03-24 07:47:00', 'Pre-launch', NULL, 'STUDY_OO_03242020074700.jpg', NULL, 'http://www.google.com', 'Study for Covid-19', NULL, 'N', 0, 0, 1, 1, 1, 0, 0, 'N', 'GCPMS001');

INSERT INTO `active_task` (`id`, `study_id`, `frequency`, `duration`, `active_task_lifetime_start`, `active_task_lifetime_end`, `day_of_the_week`, `repeat_active_task`, `created_by`, `modified_by`, `display_name`, `instruction`, `short_title`, `created_date`, `modified_date`, `task_title`, `task_type_id`, `action`, `custom_study_id`, `is_live`, `is_Change`, `active`, `anchor_date_id`, `schedule_type`) VALUES (28501, 678579, 'One time', NULL, '2020-03-24', NULL, NULL, NULL, 59, 59, 'FetalKickCounter', 'FetalKickCounter', 'FetalKickCounter', '2020-03-24 08:04:34', '2020-03-24 08:04:48', NULL, 1, 1, 678595, 1, 0, 1, NULL, 'Regular');

INSERT INTO `study_version` (`version_id`, `activity_version`, `custom_study_id`, `study_version`, `consent_version`) VALUES (989, 1, '678595', 1, 1);

INSERT INTO `study_sequence` (`study_sequence_id`, `study_id`, `actions`, `basic_info`, `check_list`, `comprehension_test`, `consent_edu_info`, `e_consent`, `eligibility`, `miscellaneous_branding`, `miscellaneous_notification`, `miscellaneous_resources`, `over_view`, `setting_admins`, `study_dashboard_chart`, `study_dashboard_stats`, `study_exc_active_task`, `study_exc_questionnaries`) VALUES (10635, 678579, 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N'),(10636, 678599, 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N');

INSERT INTO `consent` (`id`, `study_id`, `comprehension_test_minimum_score`, `share_data_permissions`, `title`, `custom_study_id`, `is_live`, `tagline_description`, `short_description`, `long_description`, `learn_more_text`, `consent_doc_type`, `consent_doc_content`, `allow_without_permission`, `e_consent_firstname`, `e_consent_lastname`, `e_consent_agree`, `e_consent_signature`, `e_consent_datetime`, `created_on`, `created_by`, `modified_on`, `modified_by`) VALUES (342, 678580, 1, 'Yes', 'TestOnly', NULL, 1, 'TestOnly', 'TestOnly', 'TestOnly', '<p>TestOnly</p>', 'Auto', '<span style=&#34;font-size:20px;&#34;><strong>Data gathering</strong></span><br/><span style=&#34;display: block; overflow-wrap: break-word; width: 100%;&#34;><p>&lt;Elaborated Content&nbsp;&gt;</p></span><br/>', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '2020-03-24 07:57:45', 59, '2020-03-24 07:59:39', 59);

INSERT INTO `studies` (`id`, `custom_study_id`, `name`, `full_name`, `type`, `platform`, `category`, `research_sponsor`, `tentative_duration`, `tentative_duration_weekmonth`, `description`, `enrolling_participants`, `irb_review`, `inbox_email_address`, `created_by`, `created_on`, `modified_by`, `modified_on`, `status`, `sequence_number`, `thumbnail_image`, `media_link`, `study_website`, `study_tagline`, `study_lunched_date`, `study_pre_active_flag`, `has_activity_draft`, `has_consent_draft`, `has_study_draft`, `is_live`, `version`, `has_activitetask_draft`, `has_questionnaire_draft`, `enrollmentdate_as_anchordate`, `app_id`) VALUES (678580, '678599', 'OpenStudy01', 'OpenStudy01', 'GT', NULL, '8', 'CDC', 100, 'Days', '<p>Study for Covid-19</p>', NULL, NULL, 'test@gmail.com', 59, '2020-03-24 07:47:00', 59, '2020-03-24 07:47:00', 'Pre-launch', NULL, 'STUDY_OO_03242020074700.jpg', NULL, 'http://www.google.com', 'Study for Covid-19', NULL, 'N', 0, 0, 1, 1, 1, 0, 0, 'N', 'GCPMS001');

INSERT INTO `study_sequence` (`study_sequence_id`, `study_id`, `actions`, `basic_info`, `check_list`, `comprehension_test`, `consent_edu_info`, `e_consent`, `eligibility`, `miscellaneous_branding`, `miscellaneous_notification`, `miscellaneous_resources`, `over_view`, `setting_admins`, `study_dashboard_chart`, `study_dashboard_stats`, `study_exc_active_task`, `study_exc_questionnaries`) VALUES (10644, 678580, 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N');

INSERT INTO `studies` (`id`, `custom_study_id`, `name`, `full_name`, `type`, `platform`, `category`, `research_sponsor`, `tentative_duration`, `tentative_duration_weekmonth`, `description`, `enrolling_participants`, `irb_review`, `inbox_email_address`, `created_by`, `created_on`, `modified_by`, `modified_on`, `status`, `sequence_number`, `thumbnail_image`, `media_link`, `study_website`, `study_tagline`, `study_lunched_date`, `study_pre_active_flag`, `has_activity_draft`, `has_consent_draft`, `has_study_draft`, `is_live`, `version`, `has_activitetask_draft`, `has_questionnaire_draft`, `enrollmentdate_as_anchordate`, `app_id`) VALUES (678680, '678999', 'OpenStudy01', 'OpenStudy01', 'GT', NULL, '8', 'CDC', 100, 'Days', '<p>Study for Covid-19</p>', NULL,  NULL, 'test@gmail.com', 59, '2020-03-24 07:47:00', 59, '2020-03-24 07:47:00', 'Pre-launch', NULL, 'STUDY_OO_03242020074700.jpg', NULL, 'http://www.google.com', 'Study for Covid-19', NULL, 'N', 0, 0, 1, 1, 1, 0, 0, 'N', 'GCPMS001'), (678599, '678099', 'OpenStudy01', 'OpenStudy01', 'GT', NULL, '8', 'CDC', 100, 'Days', '<p>Study for Covid-19</p>', NULL, NULL, 'test@gmail.com', 59, '2020-03-24 07:47:00', 59, '2020-03-24 07:47:00', 'Pre-launch', NULL, 'STUDY_OO_03242020074700.jpg', NULL, 'http://www.google.com', 'Study for Covid-19', NULL, 'N', 0, 0, 1, 1, 1, 0, 0, 'N', 'GCPMS001');

INSERT INTO `study_sequence` (`study_sequence_id`, `study_id`, `actions`, `basic_info`, `check_list`, `comprehension_test`, `consent_edu_info`, `e_consent`, `eligibility`, `miscellaneous_branding`, `miscellaneous_notification`, `miscellaneous_resources`, `over_view`, `setting_admins`, `study_dashboard_chart`, `study_dashboard_stats`, `study_exc_active_task`, `study_exc_questionnaries`) VALUES (10248, 678680, 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N');

INSERT INTO `consent_info` (`id`, `study_id`, `consent_item_type`, `content_type`, `brief_summary`, `elaborated`, `html_content`, `url`, `visual_step`, `sequence_no`, `created_by`, `created_on`, `modified_by`, `modified_on`, `display_title`, `status`, `consent_item_title_id`, `active`) VALUES (1143, 678680, 'ResearchKit/ResearchStack', NULL, 'Data gathering', '<p>&lt;Elaborated Content&nbsp;&gt;</p>', NULL, NULL, 'Yes', 1, 59, '2020-03-24 07:57:21', 59, '2020-03-24 07:57:25', 'Data gathering', 1, 3, 1);

INSERT INTO `studies` (`id`, `app_id`, `category`, `created_by`, `created_on`, `custom_study_id`, `description`, `enrolling_participants`,  `full_name`, `has_activitetask_draft`, `has_activity_draft`, `has_consent_draft`, `has_questionnaire_draft`, `has_study_draft`, `inbox_email_address`, `irb_review`, `is_live`, `media_link`, `modified_by`, `modified_on`, `name`, `platform`, `research_sponsor`, `sequence_number`, `status`, `study_pre_active_flag`, `study_tagline`, `study_website`, `study_lunched_date`, `tentative_duration`, `tentative_duration_weekmonth`, `thumbnail_image`, `type`, `version`, `enrollmentdate_as_anchordate`) VALUES ('f24b5b94l66b1n4286v8884w9ccb90306363', 'VERYNESTUDY1', null, '1', '2021-04-28 18:10:39', 'VeryNeStudy_2.5', null, 'Yes', 'VeryNeStudy', 0, 0, 0, 0, 0, 'VeryNeStudy@grr.la', null, 0, '', '1', '2021-04-28 18:14:48', 'VeryNeStudy', 'I,A', null, null, 'Active', false, null, '', '2021-04-28 18:15:20', null, null, '', 'GT', 0.0, 'N');

INSERT INTO `study_permission` (`id`, `delFlag`, `project_lead`, `study_id`, `user_id`, `view_permission`) VALUES ('6d09475ev654di40a3g9722s785db4100b53', null, null, 'f24b5b94l66b1n4286v8884w9ccb90306363', '1', true);

INSERT INTO `study_sequence` (`study_sequence_id`, `actions`, `basic_info`, `check_list`, `comprehension_test`, `consent_edu_info`, `e_consent`, `eligibility`, `miscellaneous_branding`, `miscellaneous_notification`, `miscellaneous_resources`, `over_view`, `setting_admins`, `study_dashboard_chart`, `study_dashboard_stats`, `study_exc_active_task`, `study_exc_questionnaries`, `study_id`) VALUES ('ae8ed918x59a8540a2yb95fta2fb5409c575', false, true, false, true, true, true, true, false, true, true, true, true, false, false, true, true, 'f24b5b94l66b1n4286v8884w9ccb90306363');

INSERT INTO `anchordate_type` (`id`, `custom_study_id`, `has_anchortype_draft`, `name`, `study_id`, `version`) VALUES ('8f6bab59l5a1bm455e5928d1dacb8b58eab1', 'VeryNeStudy_2.5', 0, 'Enrollment date', 'f24b5b94l66b1n4286v8884w9ccb90306363', 0.0);

INSERT INTO `study_page` (`page_id`, `created_by`, `created_on`, `description`, `image_path`, `modified_by`, `modified_on`, `study_id`, `title`) VALUES ('e80c6520sa7e7w45b8i93e01400747785599', '1', '2021-04-28 18:11:08', '&lt;p&gt;VeryNeStudy&lt;br&gt;&lt;/p&gt;', null, null, null, 'f24b5b94l66b1n4286v8884w9ccb90306363', 'VeryNeStudy');

INSERT INTO `eligibility` (`id`, `created_by`, `created_on`, `eligibility_mechanism`, `failure_outcome_text`, `instructional_text`, `modified_by`, `modified_on`, `study_id`) VALUES ('b791e573o9a7be480c88f921a0d8c95bcf75', '1', '2021-04-28 18:11:10', 1, null, 'Participating in this study requires an invitation. If you have received one, please enter the token provided.', null, null, 'f24b5b94l66b1n4286v8884w9ccb90306363');

INSERT INTO `consent` (`id`, `allow_without_permission`, `comprehension_test_minimum_score`, `consent_doc_content`, `consent_doc_type`, `created_by`, `created_on`, `custom_study_id`, `e_consent_agree`, `e_consent_datetime`, `e_consent_firstname`, `e_consent_lastname`, `e_consent_signature`, `html_consent`, `learn_more_text`, `is_live`, `long_description`, `modified_by`, `modified_on`, `need_comprehension_test`, `share_data_permissions`, `short_description`, `study_id`, `tagline_description`, `title`, `version`, `enroll_again`) VALUES ('c84048b450842h413bu8a83e0139a26f3e9b', 'No', 1, '<span style=&#34;font-size:20px;&#34;><strong>Overview</strong></span><br/><span style=&#34;display: block; overflow-wrap: break-word; width: 100%;&#34;>VeryNeStudy</span><br/>', 'Auto', '1', '2021-04-28 18:11:50', 'VeryNeStudy_2.5', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', null, '<p>VeryNeStudy<br></p>', 0, 'VeryNeStudy', '1', '2021-04-28 18:13:01', 'Yes', 'Yes', 'VeryNeStudy', 'f24b5b94l66b1n4286v8884w9ccb90306363', 'VeryNeStudy', 'Studytest1', 0.0, false);

INSERT INTO `consent_info` (`id`, `active`, `brief_summary`, `consent_item_title_id`, `consent_item_type`, `content_type`, `created_by`, `created_on`, `custom_study_id`, `display_title`, `elaborated`, `html_content`, `is_live`, `modified_by`, `modified_on`, `sequence_no`, `status`, `study_id`, `url`, `version`, `visual_step`) VALUES ('fd7aeea3oade2m4e1coac9cifd020f3ccd57', true, 'VeryNeStudy', '2', 'ResearchKit/ResearchStack', null, '1', '2021-04-28 18:11:31', 'VeryNeStudy_2.5', 'Overview', 'VeryNeStudy', null, 0, null, null, 1, true, 'f24b5b94l66b1n4286v8884w9ccb90306363', null, 0.0, 'Yes');

INSERT INTO `comprehension_test_question` (`id`, `active`, `created_by`, `created_on`, `modified_by`, `modified_on`, `question_text`, `sequence_no`, `status`, `structure_of_correct_ans`, `study_id`) VALUES ('70bd45f2ecaf3e4402u9372m8cbfe2ee45c3', true, '1', '2021-04-28 18:12:43', null, null, 'VeryNeStudy', 1, true, true, 'f24b5b94l66b1n4286v8884w9ccb90306363');

INSERT INTO `comprehension_test_response` (`id`, `comprehension_test_question_id`, `correct_answer`, `response_option`) VALUES ('e999837de374fc46dba9ba1dce9669393354', '70bd45f2ecaf3e4402u9372m8cbfe2ee45c3', false, 'gbnyumjyy');

INSERT INTO `questionnaires` (`id`, `active`, `anchor_date_id`, `branching`, `created_by`, `created_date`, `custom_study_id`, `day_of_the_week`, `frequency`, `is_Change`, `is_live`, `modified_by`, `modified_date`, `repeat_questionnaire`, `schedule_type`, `short_title`, `status`, `study_id`, `study_lifetime_end`, `study_lifetime_start`, `title`, `version`) VALUES ('3abb46abje616g47c4vaeedf6d6828ea6891', true, null, false, '1', '2021-04-28 18:13:07', 'VeryNeStudy_2.5', null, 'One time', 0, 0, '1', '2021-04-28 18:14:12', null, 'Regular', 'eder', true, 'f24b5b94l66b1n4286v8884w9ccb90306363', null, '2021-04-28', 'wcwefc', 1.0);

INSERT INTO `questionnaires_frequencies` (`id`, `frequency_date`, `frequency_time`, `is_launch_study`, `is_study_life_time`, `questionnaires_id`, `time_period_from_days`, `time_period_to_days`, `x_days_sign`, `y_days_sign`) VALUES ('2f4cdc88ca7a4545ecs8e36i04c5772d7f68', null, null, true, true, '3abb46abje616g47c4vaeedf6d6828ea6891', null, null, true, true);

INSERT INTO `questions` (`id`, `active`, `add_line_chart`, `allow_healthkit`, `allow_rollback_chart`, `anchor_date_id`, `chart_title`, `created_by`, `created_on`, `description`, `healthkit_datatype`, `line_chart_timerange`, `modified_by`, `modified_on`, `question`, `response_type`, `short_title`, `skippable`, `stat_display_name`, `stat_diaplay_units`, `stat_formula`, `stat_short_name`, `stat_type`, `status`, `use_anchor_date`, `use_stastic_data`) VALUES ('57bc6bfdbf97834969x841btc57798851ddb', true, 'No', 'No', null, null, null, null, null, 'wqcd', '', null, null, null, 'dwqedx', 3, null, null, '', '', '', '', '', true, false, 'No');

INSERT INTO `form_mapping` (`id`, `active`, `form_id`, `question_id`, `sequence_no`) VALUES ('15a9613bl6e4dx4f165b8dfq09245097b27f', true, '4028614379187ca801791881d31f0015', '4028614379187ca80179188201050017', 1);

INSERT INTO `form_mapping` (`id`, `active`, `form_id`, `question_id`, `sequence_no`) VALUES ('7adf62fd831d9g458c4972bi25a169f4f00b', true, '4028614379187ca801791881d31f0015', '4028614379187ca80179188201050017', 1);

INSERT INTO `form` (`form_id`, `active`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('12f0a547m0fc7i4be2487a1y8bb46574708e', true, null, null, null, null);

INSERT INTO `instructions` (`id`, `active`, `created_by`, `created_on`, `instruction_text`, `instruction_title`, `modified_by`, `modified_on`, `status`) VALUES ('66a9ac57471f8c4fbfq8cc9a7361bf9277a2', true, null, null, '<p>wcdewrxc</p>', 'dcrw', '1', '2021-04-28 18:13:15', true);

INSERT INTO `response_sub_type_value` (`response_sub_type_value_id`, `active`, `description`, `destination_step_id`, `detail`, `exclusive`, `image`, `response_type_id`, `selected_image`, `text`, `value`) VALUES ('58bcd519aa9a2a4de6faa70fa23c552540f2', true, '', null, null, null, null, '4028614379187ca801791881adc80010', null, ',,', ',,');

INSERT INTO `response_sub_type_value` (`response_sub_type_value_id`, `active`, `description`, `destination_step_id`, `detail`, `exclusive`, `image`, `response_type_id`, `selected_image`, `text`, `value`) VALUES ('818150f2a2ae5y4916n946dhe1912152a4d1', true, '', null, null, null, null, '4028614379187ca801791881adc80010', null, ',,', ',,');

INSERT INTO `response_sub_type_value` (`response_sub_type_value_id`, `active`, `description`, `destination_step_id`, `detail`, `exclusive`, `image`, `response_type_id`, `selected_image`, `text`, `value`) VALUES ('60689485q606du4c06l8324bbc127af8f7ee', true, '', null, null, null, null, '4028614379187ca801791881adc80010', null, ',,', ',,');

INSERT INTO `response_sub_type_value` (`response_sub_type_value_id`, `active`, `description`, `destination_step_id`, `detail`, `exclusive`, `image`, `response_type_id`, `selected_image`, `text`, `value`) VALUES ('5e0072a4k0c03p4255nbb6c1db995ebd988b', true, '', null, null, null, null, '4028614379187ca801791881adc80010', null, ',,', ',,');

INSERT INTO `questionnaires_steps` (`step_id`, `active`, `created_by`, `created_on`, `destination_step`, `instruction_form_id`, `modified_by`, `modified_on`, `questionnaires_id`, `repeatable`, `repeatable_text`, `sequence_no`, `skiappable`, `status`, `step_short_title`, `step_type`) VALUES ('a8f614edt4242z4819baddfh7e742e803bd7', true, null, null, '4028614379187ca801791881ae270014', '12f0a547m0fc7i4be2487a1y8bb46574708e', '1', '2021-04-28 18:13:15', '3abb46abje616g47c4vaeedf6d6828ea6891', 'No', null, 1, null, true, 'cdww', 'Instruction');

INSERT INTO `questionnaires_steps` (`step_id`, `active`, `created_by`, `created_on`, `destination_step`, `instruction_form_id`, `modified_by`, `modified_on`, `questionnaires_id`, `repeatable`, `repeatable_text`, `sequence_no`, `skiappable`, `status`, `step_short_title`, `step_type`) VALUES ('72591836c8ce7p4db2k8a6db3259532ebf78', true, null, null, '4028614379187ca801791881d3200016', '12f0a547m0fc7i4be2487a1y8bb46574708e', null, null, '3abb46abje616g47c4vaeedf6d6828ea6891', 'No', null, 2, 'Yes', true, 'wdxwq', 'Question');

INSERT INTO `questionnaires_steps` (`step_id`, `active`, `created_by`, `created_on`, `destination_step`, `instruction_form_id`, `modified_by`, `modified_on`, `questionnaires_id`, `repeatable`, `repeatable_text`, `sequence_no`, `skiappable`, `status`, `step_short_title`, `step_type`) VALUES ('74c98b5c654bda4ca9ha1a4xc2642224012d', true, null, null, '0', '12f0a547m0fc7i4be2487a1y8bb46574708e', '1', '2021-04-28 18:14:05', '3abb46abje616g47c4vaeedf6d6828ea6891', 'No', null, 3, 'Yes', true, 'wxcdwqxc', 'Form');

INSERT INTO `active_task` (`id`, `action`, `active`, `active_task_lifetime_end`, `active_task_lifetime_start`, `anchor_date_id`, `created_by`, `created_date`, `custom_study_id`, `day_of_the_week`, `display_name`, `duration`, `frequency`, `instruction`, `is_Change`, `is_live`, `modified_by`, `modified_date`, `repeat_active_task`, `schedule_type`, `short_title`, `study_id`, `task_type_id`, `task_title`, `version`) VALUES ('0831dc60v8f4b449b9lb4f7hf156e3c273ca', true, 1, null, '2021-04-28', null, '1', '2021-04-28 18:14:29', 'VeryNeStudy_2.5', null, 'edxes', null, 'One time', 'edxs', 0, 0, '1', '2021-04-28 18:14:29', null, 'Regular', 'dsx', 'f24b5b94l66b1n4286v8884w9ccb90306363', '2', null, 1.0);

INSERT INTO `active_task_attrtibutes_values` (`active_task_attribute_id`, `active`, `active_task_id`, `active_task_master_attr_id`, `add_to_line_chart`, `attribute_val`, `display_name_stat`, `display_units_stat`, `formula_applied_stat`, `identifier_name_stat`, `rollback_chat`, `time_range_chart`, `time_range_stat`, `title_chat`, `upload_type_stat`, `use_for_statistic`) VALUES ('81595311x37c0b40c9ya05ev6aefd888099b', 1, '0831dc60v8f4b449b9lb4f7hf156e3c273ca', '4', false, '3', null, null, null, null, null, null, null, null, null, false);

INSERT INTO `active_task_attrtibutes_values` (`active_task_attribute_id`, `active`, `active_task_id`, `active_task_master_attr_id`, `add_to_line_chart`, `attribute_val`, `display_name_stat`, `display_units_stat`, `formula_applied_stat`, `identifier_name_stat`, `rollback_chat`, `time_range_chart`, `time_range_stat`, `title_chat`, `upload_type_stat`, `use_for_statistic`) VALUES ('d4adb5dcv5b81r4c92nb328neee91d7bb57d', 1, '0831dc60v8f4b449b9lb4f7hf156e3c273ca', '6', false, null, null, null, null, null, null, null, null, null, null, false);

INSERT INTO `active_task_frequencies` (`id`, `active_task_id`, `frequency_date`, `frequency_time`, `is_launch_study`, `is_study_life_time`, `time_period_from_days`, `time_period_to_days`, `x_days_sign`, `y_days_sign`) VALUES ('69413166a5f92v4594rb246h8eca7857699c', '0831dc60v8f4b449b9lb4f7hf156e3c273ca', null, null, true, true, null, null, true, true);

INSERT INTO `notification` (`notification_id`, `active_task_id`, `is_anchor_date`, `app_id`, `created_by`, `created_on`, `custom_study_id`, `modified_by`, `modified_on`, `notification_action`, `notification_done`, `notification_schedule_type`, `notification_sent`, `notification_status`, `notification_subType`, `notification_text`, `notification_type`, `questionnarie_id`, `resource_id`, `schedule_date`, `schedule_time`, `study_id`, `x_days`, `schedule_timestamp`) VALUES ('88e6ffaae1b3cu44b8db019d1c164c040fdd', '0831dc60v8f4b449b9lb4f7hf156e3c273ca', false, 'VERYNESTUDY1', null, null, 'VeryNeStudy_2.5', '1', '2021-04-28 18:15:16', true, true, 'notImmediate', false, false, 'Announcement', 'dexsd', 'ST', '3abb46abje616g47c4vaeedf6d6828ea6891', null, '2021-04-29', '18:15:00', 'f24b5b94l66b1n4286v8884w9ccb90306363', null, '2021-04-29 18:15:00.0');

INSERT INTO `notification` (`notification_id`, `active_task_id`, `is_anchor_date`, `app_id`, `created_by`, `created_on`, `custom_study_id`, `modified_by`, `modified_on`, `notification_action`, `notification_done`, `notification_schedule_type`, `notification_sent`, `notification_status`, `notification_subType`, `notification_text`, `notification_type`, `questionnarie_id`, `resource_id`, `schedule_date`, `schedule_time`, `study_id`, `x_days`, `schedule_timestamp`) VALUES ('b025a161ud37cc4443ib3a5i436da38b686f', '0831dc60v8f4b449b9lb4f7hf156e3c273ca', false, 'VERYNESTUDY1', '1', '2021-04-28 18:15:20', 'VeryNeStudy_2.5', null, null, false, true, 'immediate', false, false, 'studyEvent', 'A new study is available in the app.', 'GT', '3abb46abje616g47c4vaeedf6d6828ea6891', null, '2021-04-28', '18:15:20', 'f24b5b94l66b1n4286v8884w9ccb90306363', null, '2021-04-28 18:15:20.0');

INSERT INTO `resources` (`id`, `action`, `anchor_date_id`, `created_by`, `created_on`, `end_date`, `modified_by`, `modified_on`, `pdf_name`, `pdf_url`, `resource_text`, `resource_type`, `resource_visibility`, `rich_text`, `sequence_no`, `start_date`, `status`, `study_id`, `study_protocol`, `text_or_pdf`, `time_period_from_days`, `time_period_to_days`, `title`, `x_days_sign`, `y_days_sign`) VALUES ('fd1b14b3uc653t43d6e910ek4ed1ac364502', true, null, '1', '2021-04-28 18:14:47', '2021-04-30', null, null, '', '', 'edxwe', true, false, '&lt;p&gt;d2eds&lt;/p&gt;', 1, '2021-04-28', true, 'f24b5b94l66b1n4286v8884w9ccb90306363', false, false, null, null, 'e2sdx', false, false);

