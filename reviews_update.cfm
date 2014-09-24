
<!--- don't use parameter exists here, use the Mura event to get and set variables instead, 
don't reference the form or url scopes directly. --->
<cfif len(trim($.event('reviewsid')))>

<!--- avoid the use of CFUPDATE/CFINSERT use CFQUERY and write SQL instead --->
<cfquery datasource="XXX" >
  UPDATE Reviews
  SET EHeadline = <cfqueryparam value="#$.event('EHeadline')#" cfsqltype="cf_sql_varchar" />
      EQuote = <cfqueryparam value="#$.event('EQuote')#" cfsqltype="cf_sql_varchar" />
      Display = <cfqueryparam value="#$.event('Display')#" cfsqltype="cf_sql_varchar" />
  WHERE ReviewsID = <cfqueryparam value="#$.event('ReviewsID')#" cfsqltype="cf_sql_integer" />
</cfquery>

<cfoutput>
<p>You have updated the review.</p>
<p><a href="http://WEBSITE.org/press-media/press-acclaim/reviews-to-edit/">Return to un-edited reviews.</a></p>
</cfoutput>

<cfelse>
<!--- wrap this output in cfoutput tags or it might not be output, resulting in an empty string (and the error you are reporting --->
<cfoutput><p>No data</p></cfoutput>
</CFIF>
