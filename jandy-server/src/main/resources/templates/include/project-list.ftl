<#macro listProjects currentProjectId>
<#--<link rel="stylesheet" href="${root}/css/project-list.css">-->
<style>
  #project-list .badge {
    position: absolute;
    left: 5.725%;
    top: -9%;

    color: blue;
    z-index: 999;
    font-size: 1.25rem;
    transform: rotate(-7.5deg);
    pointer-events:none;
  }
</style>
<nav id="project-list" class="ui large vertical menu">
  <#assign projects = (self.projects)![]>
  <#foreach project in projects>
    <a class="item">
      <aside class="badge"><b>Update!</b></aside>
      <main class="ui grid">
        <div class="four wide column">
          <img class="ui small spaced image" src="" data-committer-name="${project.currentBuild.commit.committerName}">
        </div>
        <div style="font-size: 1.125rem;" class="twelve wide column">
          <b>${project.name}(${project.currentBuild.branch.name})</b>
          <br>
          <b>#${project.currentBuild.number}</b>
          <br>
        </div>
      </main>
    </a>
  </#foreach>
</nav>
<script>
  $("img[data-committer-name]").each(function (index, el) {
    var $el = $(el);
    $.ajax({
      url: "https://api.github.com/users/"+$el.data('committer-name'),
      method: 'GET',
      accepts: {
        json: 'application/vnd.github.v3+json'
      },
      dataType: 'json'
    }).done(function (user) {
      console.debug(user);
      $el.attr("src", user.avatar_url);
    })
  });
</script>
</#macro>
