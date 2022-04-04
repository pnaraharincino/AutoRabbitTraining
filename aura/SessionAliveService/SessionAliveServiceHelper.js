({
    REFRESH_TIME: 5000,
	handleAjaxRequest: function(url, handleAjaxRequest, refreshTime) {
      fetch(url)
      .then(
          response => {
              if(response.status == 200) {
				window.setTimeout(
                      $A.getCallback(function() {
                      handleAjaxRequest(url, handleAjaxRequest, refreshTime);
                  }), refreshTime
                );
          	}
          }
      )
    }
})