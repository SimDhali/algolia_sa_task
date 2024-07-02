*Question 1*  

 
From: marissa@startup.com  
Subject:  Bad design  

Hello,  
  
Sorry to give you the kind of feedback that I know you do not want to hear, but I really hate the new dashboard design. Clearing and deleting indexes are now several clicks away. I am needing to use these features while iterating, so this is inconvenient.  
   
Thanks,  
Marissa


Hello Marissa,

Thank you for your feedback regarding the new dashboard design. I completely understand that having certain features several clicks away can be inconvenient, especially when iterating.

With this in mind, I have provided some alternative solutions using the Algolia CLI to clear and delete indexes without needing to navigate through the dashboard.

* To delete an index, run: `algolia indices delete {YourIndexName}`
* To clear records from an index, run: `algolia indices clear {YourIndexName}`

I hope these alternative options help. I have included a link to documentation around this issue below. If you need any further assistance, please don't hesitate to reach out.

Managing Indices Documentation: https://www.algolia.com/doc/guides/sending-and-managing-data/manage-indices-and-apps/manage-indices/how-to/delete-indices/?client=ruby#delete-indices-with-the-api

Kind regards,

Simran


  
--

*Question 2*:   
  
From: carrie@coffee.com  
Subject: URGENT ISSUE WITH PRODUCTION!!!!  
  
Since today 9:15am we have been seeing a lot of errors on our website. Multiple users have reported that they were unable to publish their feedbacks and that an alert box with "Record is too big, please contact enterprise@algolia.com".  
  
Our website is an imdb like website where users can post reviews of coffee shops online. Along with that we enrich every record with a lot of metadata that is not for search. I am already a paying customer of your service, what else do you need to make your search work?  
  
Please advise on how to fix this. Thanks.   


Hi Carrie,

Thank you for reaching out. I understand the urgency of the issue and thank you also for providing me with some context. The error message "Record is too big, please contact enterprise@algolia.com" suggests that the records being sent to Algolia exceed the size limit of your current paid plan.

To resolve this, seeing as you enrich every record with a lot of metadata that isn't relevant for search, I suggest taking the following approach:

* Optimise Record Size: Remove any unnecessary metadata from your records. Only include the data required for search and display purposes.

    * Only consider the indexing attributes that will help build relevance to your search experience.
    * The following documentation will be very useful in highlighting how to do this: https://www.algolia.com/doc/guides/sending-and-managing-data/prepare-your-data/how-to/reducing-object-size/

If you are still running into difficulties after this approach, then we may have to explore dividing your longer records into smaller chunks and using our distinct parameter. However, I believe optimising record size should resolve your issue.

Please keep me updated on the status of this issue. I am here to help you get this resolved as quickly as possible.

Kind regards,

Simran
  
--

*Question 3*:   


From: marc@hotmail.com  
Subject: Error on website  
  
Hi, my website is not working and here's the error:  
  
![error message](./error.png)  
  
Can you fix it please?  


Hi Marc,

Thank you for reaching out and providing the screenshot of the error. The error message "Uncaught ReferenceError: searchkit is not defined" suggests that the searchkit library is not being recognized in your current setup. This usually happens when the library is either not included or not correctly referenced in your project.

Let's try troubleshooting this issue with the following steps:

* Make sure that the searchkit package is installed in your project. You can do this by running the following command in your project directory: `npm install searchkit` or if you are using yarn `yarn add searchkit`.

* If it is installed, please make sure that you are importing searchkit correctly in your JavaScript file. It should look like the following: `import * as Searchkit from 'searchkit';`

* Once the two prior points have been verified, ensure that `searchkit` is being referenced via a script tag in your HTML file. 

If the issue is still persisting after trying these steps, then please could you provide me with more context around your configuration and from there I will be able to assist you further. 

Kind regards,

Simran 


