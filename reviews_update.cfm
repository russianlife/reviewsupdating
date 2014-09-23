<CFIF (ParameterExists(ReviewsID))>

<CFUPDATE DATASOURCE="XXX" TABLENAME="Reviews" dbtype="ODBC" formfields="ReviewsID,EHeadline,EQuote,Display">

<cfoutput>
<p>You have updated the review.</p>
<p><a href="http://WEBSITE.org/press-media/press-acclaim/reviews-to-edit/">Return to un-edited reviews.</a></p>
</cfoutput>

<cfelse>
<p>No data</p>
</CFIF>
