

function checkActivePicks(t)
{
    var nCount = 0;
    $(".active_picks_chk").each(function(){
        if($(this).prop( "checked" ))
        {
            nCount++;
        }
    });

    if(nCount > 5 && $(t).prop( "checked" ))
    {
        alert("Please do not check more than 5 picks at a time!");
        $(t).prop("checked", false);
        return false;
    }

    var bChecked = $(t).prop( "checked" );
    var nChecked = bChecked ? 1 : 0;

    var sId = $(t).prop('id');
    var aId = sId.split("_");
    var nPickId = aId[aId.length - 1];

    var oData = {
        nActive: nChecked,
        nPickId: nPickId
    };

    $.ajax({
        url: '/blog/admin/picks/' + nPickId + '/changePickActive',
        type: 'POST',
        data: oData,
        success: function (sResponse)
        {
            // anything need to happen here?
        }
    });

    console.log("BCHECKED IS: " + bChecked);
}