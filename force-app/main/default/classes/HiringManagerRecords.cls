public class HiringManagerRecords 
{
    Public Static void FetchHiringManagerRecords()
    {
        Map<ID,Hiring_Manager__C> HRrecords=New Map<ID,Hiring_Manager__C>([Select Id,Name,Contact_Number__c,Email_id__c,
                                                                           Location__c from Hiring_Manager__C]);
         
        if(! HRrecords.isEmpty())
        {
            For(Hiring_Manager__C Hr:HRrecords.values())
            {
             System.debug('Hiring Manager Records are:' + HRrecords) ;
            }
        }
        else
        {
          System.debug('Collection is Empty');  
        }
    }
}