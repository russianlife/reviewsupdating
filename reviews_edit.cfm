<CFQUERY NAME="GetReviews" DATASOURCE="XXX">
SELECT ReviewsID,EHeadline,EQuote,Display
FROM Reviews
WHERE (ReviewsID LIKE <cfqueryparam value = '#$.event("ReviewID")#' cfsqltype = "cf_sql_integer">)
</CFQUERY>

<form action="http://WEBSITE.org/press-media/press-acclaim/review-updated/" role="form" method="Post">
<cfoutput query="GetReviews">
<input type="hidden" name="ReviewsID" value="#GetReviews.ReviewsID#">

 <div class="form-group">
    <label for="InputHeadline"><strong>Headline</strong></label>
<input type="text" class="form-control" name="EHeadline" maxlength="100"  style="width:100%;" value="#Trim(GetReviews.EHeadline)#" id="InputHeadline">
  </div>

<div class="form-group">
    <label for="InputQuote"><strong>Quote</strong></label>
<textarea name="EQuote" class="form-control" rows="15" id="InputQuote" style="width:100%;">#GetReviews.EQuote#</textarea>
</div>
    
<div class="form-group">
 <label for="InputDisplay"><strong>Display?</strong></label>
<div class="radio-inline" style="width:100%;">
  <label>
    <input type="radio" name="Display" id="InputTrue" value="1" <CFIF #GetReviews.Display# is "1">checked</cfif>>
    Yes
  </label>
  <label>
    <input type="radio" name="Display" id="InputFalse" value="0" <CFIF #GetReviews.Display# is "0">checked</cfif>>
    No
  </label>
</div>
</div>

<div align="center">  <button type="submit" class="btn btn-primary">Submit</button></div>
  
</cfoutput>
</form>

