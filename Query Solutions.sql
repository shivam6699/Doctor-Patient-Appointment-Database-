-- 1. Find the Total Number of Appointments for Each Doctor?

SELECT d.first_name, d.last_name, count(a.status) AS Appinment
FROM Doctors D
JOIN Appointments a on d.doctor_id = A.doctor_id
WHERE status = 'Scheduled'
GROUP BY d.first_name, d.last_name;

-- 2. List All Patients Who Have an Appointment with a Specific Doctor (e.g., Dr. John Smith)

SELECT  p.patient_id, p.first_name, p.last_name, p.email, p.phone
FROM Patients p
JOIN Appointments a ON p.patient_id = a.patient_id
JOIN Doctors d ON a.doctor_id = d.doctor_id
WHERE  d.first_name = 'John' AND d.last_name = 'Smith';

-- 3. Find the Number of Appointments Scheduled in a Specific Department

SELECT dept.department_name, COUNT(a.appointment_id) AS total_appointments
FROM Appointments a
JOIN Doctors d ON a.doctor_id = d.doctor_id
JOIN Departments dept ON d.department_id = dept.department_id
WHERE dept.department_name = 'Cardiology'
GROUP BY dept.department_name;

-- 4. Find the Most Popular Specialty Based on Number of Appointments

SELECT s.specialty_name, count(a.appointment_id) AS Total_Appointments
FROM Appointments a
JOIN Doctors d ON a.doctor_id = d.doctor_id
JOIN Specialties s on d.specialty_id = s.specialty_id
group by s.specialty_name;

-- 5. Get the Total Payment Amount for All Completed Appointments

SELECT sum(p.payment_amount) as total_payment 
FROM Payments p
JOIN Appointments a on a.appointment_id = p.appointment_id 
WHERE status = 'Completed';

-- 6. Find the Number of Patients Seen by Each Doctor
SELECT d.doctor_id, d.first_name || ' ' || d.last_name AS doctor_name, COUNT(DISTINCT a.patient_id) AS patients_seen
FROM Doctors d, Appointments a
WHERE d.doctor_id = a.doctor_id AND a.status = 'Completed'
GROUP BY d.doctor_id, doctor_name
ORDER BY patients_seen DESC;

-- 7. List All Patients Who Have Missed Their Appointments (Status 'Cancelled')

SELECT d.first_name, d.last_name, count(a.status) AS Appinment
FROM Doctors D
JOIN Appointments a on d.doctor_id = A.doctor_id
WHERE status = 'Cancelled'
GROUP BY d.first_name, d.last_name;

-- 8. Find the Total Number of Appointments for Each Status (Scheduled, Completed, Cancelled)

SELECT status,COUNT(*) AS total_appointments
FROM Appointments
GROUP BY status;

-- 9. Get the Average Payment Amount for Completed Appointments

SELECT AVG(p.payment_amount) AS average_payment
FROM Payments p
JOIN Appointments a ON p.appointment_id = a.appointment_id
WHERE a.status = 'Completed';

-- 10. Find the Doctor with the Highest Number of Appointments

SELECT d.doctor_id, d.first_name || ' ' || d.last_name AS doctor_name, COUNT(a.appointment_id) AS total_appointments
FROM  Doctors d
JOIN Appointments a ON d.doctor_id = a.doctor_id
GROUP BY d.doctor_id, doctor_name
ORDER BY total_appointments DESC;






