<!-- BEGIN topics_list_box -->
<!-- BEGIN row -->
<!-- BEGIN header_table -->
    <!-- BEGIN multi_selection -->
        <script type="text/javascript">

        function check_uncheck_main_{topics_list_box.row.header_table.BOX_ID}()
        {
            alert('MAIN');

            var all_checked = true;

            for (i = 0; (i < document.{topics_list_box.FORMNAME}.elements.length) && all_checked; i++)
            {
                if (document.{topics_list_box.FORMNAME}.elements[i].name == '{topics_list_box.FIELDNAME}[]{topics_list_box.row.header_table.BOX_ID}')
                {
                    all_checked = document.{topics_list_box.FORMNAME}.elements[i].checked;
                }
            }

            document.{topics_list_box.FORMNAME}.all_mark_{topics_list_box.row.header_table.BOX_ID}.checked = all_checked;
        }

        function check_uncheck_all_{topics_list_box.row.header_table.BOX_ID}()
        {
            alert('ALL');

            for (i = 0; i < document.{topics_list_box.FORMNAME}.length; i++)
            {
                if (document.{topics_list_box.FORMNAME}.elements[i].name == '{topics_list_box.FIELDNAME}[]{topics_list_box.row.header_table.BOX_ID}')
                {
                    document.{topics_list_box.FORMNAME}.elements[i].checked = document.{topics_list_box.FORMNAME}.all_mark_{topics_list_box.row.header_table.BOX_ID}.checked;
                }
            }
        }

        </script>
    <!-- END multi_selection -->

    <div class="forum">
        <h2>{topics_list_box.row.L_TITLE}</h2>
            <!-- BEGIN multi_selection -->
            <input onclick="check_uncheck_all_{topics_list_box.row.header_table.BOX_ID}();" type="checkbox" name="all_mark_{topics_list_box.row.header_table.BOX_ID}" value="0" />
            <!-- END multi_selection -->
<!-- END header_table -->

<!-- BEGIN header_row -->
        <strong>{topics_list_box.row.L_TITLE}</strong>
<!-- END header_row -->

<!-- BEGIN topic -->

    <!-- BEGIN table_sticky -->
        </div>
        <div class="forum">
            <h2>{topics_list_box.row.topic.table_sticky.L_TITLE}</h2>
                <!-- BEGIN multi_selection -->
                <input onclick="check_uncheck_all_{topics_list_box.row.header_table.BOX_ID}();" type="checkbox" name="all_mark_{topics_list_box.row.header_table.BOX_ID}" value="0" />
                <!-- END multi_selection -->
    <!-- END table_sticky -->
        <div class="forum-section-wrap">
        <a href="{topics_list_box.row.U_VIEW_TOPIC}" title="{topicrow.TOPIC_FOLDER_IMG_ALT}" class="{topics_list_box.row.FOLDER_CLASSNAME} forum-section">
<div class="forum-icon"><i class="material-icons">&#xE7FD;</i><!-- BEGIN avatar --><div class="forum-avatar">{topics_list_box.row.topic.avatar.LAST_POST_AVATAR}</div><!-- END avatar --></div>
            <div class="forum-content">
                <h3>{topics_list_box.row.TOPIC_TYPE}{topics_list_box.row.TOPIC_TITLE}</h3><div class="forum-statistics">{topics_list_box.row.REPLIES} {L_REPLIES}</div>
                <div class="forum-lastpost">{topics_list_box.row.L_LATEST_POST_FROM_THE}<div class="lastpost-arrow"></div></div>
            </div>
        </a>
                <a href="{topics_list_box.row.LAST_POST_IMG}" class="last-post-link">Last post</a>
        </div>
<!-- END topic -->
<!-- BEGIN no_topics -->
        <div class="forum-empty">
            {topics_list_box.row.L_NO_TOPICS}
        </div>
<!-- END no_topics -->

<!-- BEGIN bottom -->
    </div>
<!-- END bottom -->
<!-- BEGIN spacer --><br /><!-- END spacer -->
<!-- END row -->
<!-- END topics_list_box -->