# README

Create a simple RESTful API that has a single resource and persists values to a datastore.
Below are the requirements and a few operations to perform in a script to verify that the code works as expected.
You can use any programming language, framework, library, Google, etc that you require to complete the assignment.

- Create a RESTful API that has 1 resource called "animal" - records only need to have an id and a type
- Create endpoints for GET (get a single animal and a list of animals if no id is provided), POST, PUT, and DELETE - Payload type should be JSON, when data is returned
- Store the entries in a database (doesn't matter which database or what kind it is)
- You *don't* need to handle authentication, rate limiting, etc for the API
- The GET endpoint for lists should support pagination (5 items at a time is fine) and return the records in alphabetical order according to type

- Perform a few operations with code calling the API to verify that it works:
    - Create 12 animal records by calling the API
    - Use the GET list method to retrieve all records in a loop, printing the result of each request as you iterate
    - Get 1 specific record, output the result
    - Update this record via the API, then rerun the Get request to verify that the update was persisted, output the result
    - Delete the retrieved record and rerun the previous Get request for the same record to verify that it no longer exists, output the result
    - Create a new record, output the result of the POST
