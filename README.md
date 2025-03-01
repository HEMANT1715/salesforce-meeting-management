SALESFORCE TASK


Task: Implement a Meeting Management System in Salesforce
Description:
Create a Meeting Management System in Salesforce that includes the management of Meetings and Participants.
This solution involves creating custom objects, formula fields, flows, an Apex trigger, LWC for displaying Meeting records, and user access restrictions.

Requirements:
1. Custom Objects:
Meeting__c:
Fields:
Name (Text)
Meeting_Date__c (Date)
Location__c (Text)
Capacity__c (Number)
Status__c (Picklist: Scheduled, Full, Completed)
Registered_Participants__c (Formula or Number Field)
Participant__c:
Fields:
Name (Text)
Meeting__c (Lookup to Meeting__c)
Email__c (Email)
Status__c (Picklist: Registered, Cancelled)

 Formula Field: 
On the Meeting__c object, create a formula field Remaining_Capacity__c that calculates the remaining capacity based on the Capacity__c field and the Registered_Participants__c field:
This field ensures real-time visibility of the remaining available slots for the meeting.

2. LWC:
Component Name: meetingDataTable
Description:
Create a Lightning Web Component (LWC) to display Meeting records in a data table on a custom Lightning App Page or Lightning Tab.
Features:
Display a data table listing all Meeting__c records.
Columns in the data table should include:
Meeting Name
Meeting Date
Location
Capacity
Registered Participants
Remaining Capacity
Status

3. Flow:
Create a Flow that performs the following actions:
On Participant Creation:
Send a confirmation email to the Participant when a Participant__c record is created with Status = Registered.
The email should include the Meeting Name, Meeting Date, and Location.

4. Apex Trigger:
Write an Apex Trigger on the Participant__c object to:
Increment the Registered_Participants__c field on the related Meeting__c object when a Participant__c record is inserted.
Update the Status__c field on Meeting__c to Full when Remaining_Capacity__c equals 0.

5. User Access Restrictions:
Access for Meeting Records:
Only users with the "Meeting Manager" role can create and edit Meeting__c records.
Access for Participant Records:
Users with the "Attendee" profile can only create and view their own Participant__c records.

6. Validation Rules:
Meeting Date Validation:
Ensure that the Meeting_Date__c field cannot be in the past.
Participant Validation:
Prevent the creation of a Participant__c record if the related Meeting__c is Full.
