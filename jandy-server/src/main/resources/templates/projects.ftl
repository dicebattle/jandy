<#include "include/layouts.ftl">
<#include "include/project-list.ftl">
<@layout>
<link rel="stylesheet" href="${root}/css/projects.css">
<section class="ui grid container">
  <aside class="four wide column">
    <@listProjects 0 />
  </aside>
  <section class="ten wide column">
    <div class="ui grid">
      <header id="title" class="row">
        <div class="ten wide column">
          <h1>My Project</h1>
        </div>
        <div class="six wide column">
          <div id="user-status">
            <span>Now</span>
            <span>
              <i class="fa fa-leaf" style="color: green;"></i> 3
            </span>
            <span>
              <i class="fa fa-leaf" style="color: grey;"></i> 1
            </span>
          </div>
        </div>
      </header>
      <div id="owner-wrapper" class="row">
        <h2>Owner</h2>
      </div>
      <main id="projects" class="row ui grid">
        <div id="jandy" class="row ui grid">
          <header class="row">
            <p class="pr-name">
              <b>Jandy (Master)</b><br>
              <b>#23</b> Now
            </p>
          </header>
          <div class="pr-status row">
            <div class="pr-history twelve wide column">
              <div style="border: 2px solid gainsboro;"></div>
            </div>
            <div class="pr-switch four wide column">
              <i class="fa fa-toggle-on" role="button" aria-pressed="true"></i>
            </div>
          </div>
        </div>
      </main>
    </div>
  </section>
  <div class="two wide column"></div>
</section>
<script type="text/javascript">
  $(function () {
    $("#projects > .row").each(function (index, el) {
      $(el).find('i.fa[role="button"]').click(function () {
        var val = $(this).attr('aria-pressed');

        $(this).toggleClass('fa-toggle-on').toggleClass('fa-toggle-off');
        $(this).attr('aria-pressed', val == "false" ? "true" : "false");
      })
    })
  });
</script>
</@layout>
