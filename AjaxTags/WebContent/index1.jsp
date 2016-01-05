<%@ taglib prefix="ajax" uri="/struts-dojo-tags"%>
<ajax:head/>
<ajax:tabbedpanel id="main">
<ajax:div label="Reg">
<pre>
<ajax:autocompleter label="select state" list="{'s','telangana',' ap', 'maharastra', 'up', 'punjab','orrisa', 'karnataka','tamilnadu,'kerala', 'goa'}">
</ajax:autocompleter>
<ajax:datetimepicker displayFormat="dd-MMM-YYYY" label="DATE"></ajax:datetimepicker>
</pre>
</ajax:div>
</ajax:tabbedpanel>