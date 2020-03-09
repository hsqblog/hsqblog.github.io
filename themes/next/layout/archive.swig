{% extends '_layout.swig' %}
{% import '_macro/post-collapse.swig' as post_template with context %}
{% import '_macro/sidebar.swig' as sidebar_template with context %}

{% block title %}{{ __('title.archive') }} | {{ title }}{% endblock %}

{% block content %}

  {#####################}
  {### ARCHIVE BLOCK ###}
  {#####################}
  <div class="post-block">
    <div class="posts-collapse">
      <div class="collection-title">
        {%- set posts_length = site.posts.length %}
        {%- if posts_length > 210 %}
          {%- set cheers = '手眼通天' %}
        {% elif posts_length > 130 %}
          {%- set cheers = '人生一段' %}
        {% elif posts_length > 80 %}
          {%- set cheers = '半满半虚' %}
        {% elif posts_length > 50 %}
          {%- set cheers = '容量极大' %}
        {% elif posts_length > 30 %}
          {%- set cheers = '记忆缺失' %}
        {% else %}
          {%- set cheers = '脑子进水' %}
        {%- endif %}
        <span class="collection-header">{{ __(cheers) }}! {{ _p('counter.archive_posts', site.posts.length) }} {{ __('keep_on') }}</span>
      </div>

      {{ post_template.render(page.posts) }}

    </div>
  </div>
  {#########################}
  {### END ARCHIVE BLOCK ###}
  {#########################}

  {% include '_partials/pagination.swig' %}

{% endblock %}

{% block sidebar %}
  {{ sidebar_template.render(false) }}
{% endblock %}
