<p>Setup MySQL and Eclipse(neon 3) enviroment (with Maven)</p>
<p>In MySQL create schema with name pmi</p>
<p>Download MySQL_Script.sql file and run in MySQL in pmi schema</p>
<p>Download PMI.rar and unzip</p>
<p>Import PMI project in eclipse</p>
<p>Setup tomcat 8 in Server</p>
<p>Start tomcat 8 and deploy application on tomcat</p>
<p> Run the API by following the instruction in API.txt</p>

<p>-----------------------------------------------</p>
<br><b>Application Architecture<br>
<br>
<p>This application is accessible through WebLyer (Rest APIs)</p>
<p>WebLyer contains the ResControllers, Filter etc</p>
<p>The WebLayer interacts with the service Layer where business logic is written</p>
<p>Service Layer Interacts with Data Access Layer to Store, Reterive data to/from database</p>
<p>Data Access Layer uses hibernate to Store, Reterive data to/from database</p>
