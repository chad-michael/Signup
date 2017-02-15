// JScript File

/*
Client side scripts required to support the date selection dropdowns
Author: Michael McLain
Release: 1.0
Note: These scripts must be placed prior to calling the GenDateDropDown subroutine
Return number of days in a month
Parameters: lnMonth: month (1-12)
            lnYear:  year => 1970
*/
function daysinmonth(lnMonth,lnYear) {
var dt1, cmn1, cmn2, dtt, lflag, dycnt, lmn
lmn = lnMonth-1
dt1 = new Date(lnYear,lmn,1)
cmn1 = dt1.getMonth()
dtt=dt1.getTime()+2332800000
lflag = true
dycnt=29
while (lflag) {
   dtt = dtt + 86400000
   dt1.setTime(dtt)
   cmn2 = dt1.getMonth()
   if (cmn1!=cmn2) {
      lflag = false }
   else {dycnt = dycnt + 1}}
if (dycnt > 31) {dycnt = 31}
return dycnt
}

function setdays(sobjname, datemode){
var dobj = eval(sobjname + "d")
var mobj = eval(sobjname + "m")
var yobj = eval(sobjname + "y")
var hobj = eval(sobjname)
var monthdays = daysinmonth(mobj.options[mobj.selectedIndex].value,yobj.options[yobj.selectedIndex].value)
var selectdays = dobj.length
var curdy = dobj.options[dobj.selectedIndex].value
if (curdy.length==1) {curdy = "0"+curdy}
var curmn = mobj.options[mobj.selectedIndex].value
if (curmn.length==1) {curmn = "0"+curmn}
var curyr = yobj.options[yobj.selectedIndex].value
if (selectdays > monthdays) {
   for (var dlp=selectdays; dlp > monthdays; dlp--) {
       dobj.options[dlp-1] = null }}
else if (monthdays > selectdays) {
   for (var dlp=selectdays; dlp < monthdays; dlp++) {
       dobj.options[dlp] = new Option(dlp+1,dlp+1) }}
if (curdy > monthdays) {
   dobj.options[monthdays-1].selected = true
   curdy = monthdays }
if (datemode==1) {
   var curdate = curmn+"-"+curdy+"-"+curyr }
else if (datemode==2) {
   var curdate = curdy+"/"+curmn+"/"+curyr }
else if (datemode==3) {
   var curdate = curyr+curmn+curdy }
else if (datemode==4) {
   var cdate = new Date(curyr,curmn-1,curdy)
   var curdate = cdate.toGMTString() }
hobj.value = curdate
}