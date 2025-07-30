SELECT *
FROM PatientStay

SELECT *
FROM DimHospital

SELECT * 
FROM PatientStay AS ps
Join DimHospital As h ON ps.Hospital = h.Hospital


SELECT h.hospital , h.hospitaltype , ps.patientid , ps.admitteddate , ps.dischargedate
FROM PatientStay.ps
INNER JOIN Dimhospital.h on ps.hospital = h.hospital  

SELECT h.hospital , h.hospitaltype , ps.patientid , ps.admitteddate , ps.dischargedate
FROM PatientStay.ps
LEFT JOIN dimhospital.h on ps.hospital = h.hospital

SELECT
    h.Hospital AS HospitalFromLookup
    ,ps.Hospital AS HospitalOfThePatient
    ,h.HospitalType
    ,ps.PatientId
    ,ps.AdmittedDate
    ,ps.DischargeDate
FROM
--    PatientStay ps LEFT JOIN DimHospitalBad h ON ps.Hospital = h.Hospital
     DimHospitalBad h FULL OUTER JOIN PatientStay ps ON ps.Hospital = h.Hospital

-- list patients in pruh
SELECT
    h.Hospital AS HospitalFromLookup
    ,ps.Hospital AS HospitalOfThePatient
    ,h.HospitalType
    ,ps.PatientId
    ,ps.AdmittedDate
    ,ps.DischargeDate
FROM
    PatientStay ps
    LEFT JOIN DimHospital h ON ps.Hospital = h.Hospital
WHERE
    h.Hospital = 'PRUH'