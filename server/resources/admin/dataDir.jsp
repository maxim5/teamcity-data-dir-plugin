<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><%@
    taglib prefix="bs" tagdir="/WEB-INF/tags" %>

<script type="text/javascript">
  BS.DataDir = OO.extend(BS.AbstractWebForm, OO.extend(BS.AbstractModalDialog, OO.extend(BS.FileBrowse, {
    getContainer: function() {
      return $('uploadFile');
    },

    formElement: function() {
      return $('uploadFileForm');
    },

    refresh: function() {
      $("dataDir").refresh();
    }
  })));
</script>

<jsp:useBean id="bean" type="jetbrains.buildServer.controllers.admin.TeamCityDataDirectoryBrowseController.DataDirectoryBean" scope="request"/>
<bs:fileBrowsePage id="dataDir"
                   dialogId="uploadFile"
                   dialogTitle="Upload File"
                   bean="${bean}"
                   actionPath="/admin/dataDir.html"
                   homePath="/admin/admin.html?item=diagnostics&tab=dataDir"
                   pageUrl="${pageUrl}"
                   jsBase="BS.DataDir">
  <jsp:attribute name="headMessage">
    Browse TeamCity data directory:
  </jsp:attribute>
</bs:fileBrowsePage>

<script type="text/javascript">
  $j("#tree").add(".fileOperations").on("click", "a", function() {
    if (this.href != "#") {
      this.href += window.location.hash;
    }
  });
</script>
