public with sharing class MeetingController {
    @AuraEnabled(cacheable=true)
    public static List<Meeting__c> getMeetingRecords() {
        return [SELECT Id, Name, Meeting_Date__c, Location__c, Capacity__c, 
        Registered_Participants__c, Remaining_Capacity__c, Status__c FROM Meeting__c];
    }
}
