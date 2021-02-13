# hostelforu.com
 Hostel Booking System was deveoped to fulfill the requirement to connect hostelers with hostel owners for booking hostels from home.
 It is my training project on J2EE developed in summer of 2016. It lacks in real-life implemenatations but definitely good for learning for beginners in J2EE.  
 
 ### Techstack used : 
 * JAVA, J2EE and JSP
 * HTML, CSS, Javascript, JQuery
 * MySQL
 * Apache Server
 
### Types of users and there functionalities

Users:
1. Admin
2. Hostel Owner
3. Hostler

Activities
1. Hostler Registration
2. Hostler Login
3. Hostler Profile Update
4. Hostler Profile Removal
5. Hostler Search Hostels(by location,facilities,Room type)
6. Hostler Compare Hostels
7. Hostler Select Room type and Book Hostel
8. Hostler Get Confirmation of booking as Reciept 
9. Hostler give Reviews
10. Hostler can Cancel Booking
11. Hostel Owner Registration
12. Hostel Owner Login
13. Hostel Owner Profile Updation
14. Hostel Owner profile Removal
15. Hostel Owner List new Hostel(with Room type ,Location, facilities)
16. Hostel Owner View Their Hostel Bookings
17. Hostel Owner can See Reviews of Own Hostel for Improvement
18. Admin Login
19. Admin Password change
20. View All hostlers
21. View all Hostels
22. View all Hostel Owner
23. Enable/Disable Hostel Owner/hostler/Hostel
24. Admin Register New Admin
25. Admin provide Offers

### ER Model for Database 
Entities
1. Admin
2. HostelOwner
3. hostler
4. Hostel
5. Room
6. Facilities

Relationships
1. Booking(Room-hostler)(M-M)
2. Review(hostler-Hostel)(M-M)
3. ListHostel(HostelOwner-Hostel)(1-M)

Tables
1. HostelOwner(ownerid,ownername,gender,contact,emailid,password,dob)
2. Admin(adminid,adminname,gender,contact,emailid,password,dob)
3. hostler(custid,custname,gender,contact,emailid,password,dob)
4. Hostel(hid,ownerid,photos,desc,location,contact,MapCord)
5. Room(roomid,hid,room_type,no_of_rooms,no_of_beds,price)
6. Facilities(fid,roomid,fname,fprice)
7. Booking(bid,rid,custid,bdate,checkin_date,checkout_date,payment)
8. Review(rid,hid,rid,review,rating)

For more details Read `hostel management system report.pdf` file.


