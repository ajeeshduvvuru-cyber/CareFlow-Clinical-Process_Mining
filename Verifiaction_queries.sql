-- CareFlow: Event Log Verification

SELECT
    COUNT(*) AS total_events,
    COUNT(DISTINCT case_id) AS total_patient_cases,
    COUNT(DISTINCT activity) AS unique_activities,
    COUNT(DISTINCT department) AS departments
FROM `careflow-project-511114.careflow.patient_events`;

-- Verify table schema

SELECT
    column_name,
    data_type,
    is_nullable
FROM `careflow-project-511114.careflow.INFORMATION_SCHEMA.COLUMNS`
WHERE table_name = 'patient_events'
ORDER BY ordinal_position;
