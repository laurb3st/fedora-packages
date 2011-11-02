<%namespace file="fedoracommunity.templates.header" import="*" />
<%namespace file="fedoracommunity.templates.footer" import="*" />
<% from tg import flash %>
<html>
    <head>
    <meta content="text/html; charset=UTF-8" http-equiv="content-type" />
    <title>${title}</title>

    <script type="text/javascript">
        moksha.update_title("${title}", 0);
    </script>
    <link href="/images/favicon.ico"
      type="image/vnd.microsoft.icon" rel="shortcut icon" />
    <link href="http://fedoraproject.org/favicon.ico"
      type="image/x-icon" rel="shortcut icon"/>

    <!--[if lt IE 7]>
    <style type="text/css">
        #wrapper
        {
            height: 100%;
            overflow: visible!important;
        }
    </style>
    <![endif]-->
</head>

<body id="chrome" class="home">
    <div id="wrapper">
        ${header()}
        % if flash.message:
             ${flash.message}
        % endif
        <div id="main_app">
           ${tmpl_context.widget.display(**options) | n}
        </div>
    </div>
    ${footer()}
</body>
</html>