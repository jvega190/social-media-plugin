<#import "/templates/system/common/crafter.ftl" as crafter />

<@crafter.div>
  <#if contentModel.header_s?has_content>
    <@crafter.span $field="header_s">${contentModel.header_s}</@crafter.span>
  </#if>
  <@crafter.renderRepeatGroup $field="accounts_o" $containerTag="ul" $itemTag="li"; account, index>
      <#assign icon="/static-assets/plugins/org/craftercms/plugin/social-media-widget/logos/${account.network_s}.png"/>
      <@crafter.a $field="accounts_o.url_s" $index=index href="${account.url_s}">
        <@crafter.img
            $field="accounts_o.icon_s"
            $index=index
            src="${(account.icon_s)?has_content?then(account.icon_s, icon)}"/>
      </@crafter.a>
  </@crafter.renderRepeatGroup>
</@crafter.div>
