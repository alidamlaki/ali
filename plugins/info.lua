--Begin info.lua By @SoLiD
local Solid = 268554799
local function setrank(msg, user_id, value,chat_id)
  local hash = nil

    hash = 'rank:'..msg.to.id..':variables'

  if hash then
    redis:hset(hash, user_id, value)
  return tdcli.sendMessage(chat_id, '', 0, '_set_ *👮 رتبة* _for_ *[ '..user_id..' ]* _To :_ *'..value..'*', 0, "md")
  end
end
local function info_by_reply(arg, data)
    if tonumber(data.sender_user_id_) then
local function info_cb(arg, data)
    if data.username_ then
  username = "@"..check_markdown(data.username_)
    else
  username = ""
  end
    if data.first_name_ then
  firstname = check_markdown(data.first_name_)
    else
  firstname = ""
  end
    if data.last_name_ then
  lastname = check_markdown(data.last_name_)
    else
  lastname = ""
  end
	local hash = 'rank:'..arg.chat_id..':variables'
   local text = "_ℹ️ اسم الاول :_ *"..firstname.."*\n_⚪️ اسم الثاني :_ *"..lastname.."*\n_➰ معرف :_ "..username.."\n_🆔 ايدي :_ *"..data.id_.."*\n\n"
		    if data.id_ == tonumber(Solid) then
		       text = text..'_👮 رتبة :_ `مالك البوت 😘`\n\n'
			   elseif is_sudo1(data.id_) then
	           text = text..'_👮 رتبة :_ _المطور 🗣 _\n\n'
		     elseif is_admin1(data.id_) then
		       text = text..'_👮 رتبة :_ *ادمن البوت ⭐️*\n\n'
		     elseif is_owner1(arg.chat_id, data.id_) then
		       text = text..'_👮 رتبة :_ *مدير 👤*\n\n'
		     elseif is_mod1(arg.chat_id, data.id_) then
		       text = text..'_👮 رتبة :_ *ادمن 👤*\n\n'
		 else
		       text = text..'_👮 رتبة :_ _عضو 👥_\n\n'
			end
         local user_info = {} 
  local uhash = 'user:'..data.id_
  local user = redis:hgetall(uhash)
  local um_hash = 'msgs:'..data.id_..':'..arg.chat_id
  user_info_msgs = tonumber(redis:get(um_hash) or 0)
  text = text..'📨 مجموع الرسائل  : '..user_info_msgs..'\n\n'
  text = text..''
  tdcli.sendMessage(arg.chat_id, arg.msgid, 0, text, 0, "md")
end
tdcli_function ({
    ID = "GetUser",
    user_id_ = data.sender_user_id_
  }, info_cb, {chat_id=data.chat_id_,user_id=data.sender_user_id_,msgid=data.id_})
    else
tdcli.sendMessage(data.chat_id_, "", 0, "*User not found*", 0, "md")
   end
end

local function info_by_username(arg, data)
    if tonumber(data.id_) then
    if data.type_.user_.username_ then
  username = "@"..check_markdown(data.type_.user_.username_)
    else
  username = ""
  end
    if data.type_.user_.first_name_ then
  firstname = check_markdown(data.type_.user_.first_name_)
    else
  firstname = ""
  end
    if data.type_.user_.last_name_ then
  lastname = check_markdown(data.type_.user_.last_name_)
    else
  lastname = ""
  end
	local hash = 'rank:'..arg.chat_id..':variables'
   local text = "_ℹ️ اسم الاول :_ *"..firstname.."*\n_⚪️ اسم الثاني :_ *"..lastname.."*\n_➰ معرف :_ "..username.."\n_🆔 ايدي :_ *"..data.id_.."*\n\n"
		    if data.id_ == tonumber(Solid) then
		       text = text..'_👮 رتبة :_ `مالك البوت 😘`\n\n'
			   elseif is_sudo1(data.id_) then
	           text = text..'_👮 رتبة :_ _المطور 🗣 _\n\n'
		     elseif is_admin1(data.id_) then
		       text = text..'_👮 رتبة :_ *ادمن البوت ⭐️*\n\n'
		     elseif is_owner1(arg.chat_id, data.id_) then
		       text = text..'_👮 رتبة :_ *مدير 👤*\n\n'
		     elseif is_mod1(arg.chat_id, data.id_) then
		       text = text..'_👮 رتبة :_ *ادمن 👤*\n\n'
		 else
		       text = text..'_👮 رتبة :_ _عضو 👥_\n\n'
			end
         local user_info = {} 
  local uhash = 'user:'..data.id_
  local user = redis:hgetall(uhash)
  local um_hash = 'msgs:'..data.id_..':'..arg.chat_id
  user_info_msgs = tonumber(redis:get(um_hash) or 0)
  text = text..'📨 مجموع الرسائل  : '..user_info_msgs..'\n\n'
  text = text..''
  tdcli.sendMessage(arg.chat_id, arg.msgid, 0, text, 0, "md")
   else
   tdcli.sendMessage(arg.chat_id, "", 0, "*User not found*", 0, "md")
  end
end

local function info_by_id(arg, data)
      if tonumber(data.id_) then
    if data.username_ then
  username = "@"..check_markdown(data.username_)
    else
  username = ""
  end
    if data.first_name_ then
  firstname = check_markdown(data.first_name_)
    else
  firstname = ""
  end
    if data.last_name_ then
  lastname = check_markdown(data.last_name_)
    else
  lastname = ""
  end
	local hash = 'rank:'..arg.chat_id..':variables'
   local text = "_ℹ️ اسم الاول :_ *"..firstname.."*\n_⚪️ اسم الثاني :_ *"..lastname.."*\n_➰ معرف :_ "..username.."\n_🆔 ايدي :_ *"..data.id_.."*\n\n"
		    if data.id_ == tonumber(Solid) then
		       text = text..'_👮 رتبة :_ `مالك البوت 😘`\n\n'
			   elseif is_sudo1(data.id_) then
	           text = text..'_👮 رتبة :_ _المطور 🗣 _\n\n'
		     elseif is_admin1(data.id_) then
		       text = text..'_👮 رتبة :_ *ادمن البوت ⭐️*\n\n'
		     elseif is_owner1(arg.chat_id, data.id_) then
		       text = text..'_👮 رتبة :_ *مدير 👤*\n\n'
		     elseif is_mod1(arg.chat_id, data.id_) then
		       text = text..'_👮 رتبة :_ *ادمن 👤*\n\n'
		 else
		       text = text..'_👮 رتبة :_ _عضو 👥_\n\n'
			end
         local user_info = {} 
  local uhash = 'user:'..data.id_
  local user = redis:hgetall(uhash)
  local um_hash = 'msgs:'..data.id_..':'..arg.chat_id
  user_info_msgs = tonumber(redis:get(um_hash) or 0)
  text = text..'📨 مجموع الرسائل  : '..user_info_msgs..'\n\n'
  text = text..''
  tdcli.sendMessage(arg.chat_id, arg.msgid, 0, text, 0, "md")
   else
   tdcli.sendMessage(arg.chat_id, "", 0, "*User not found*", 0, "md")
   end
end

local function setrank_by_reply(arg, data)

end

local function run(msg, matches)
if matches[1] == 'info' or 'معلومات' then
if not matches[2] and tonumber(msg.reply_to_message_id_) ~= 0 then
    tdcli_function ({
      ID = "GetMessage",
      chat_id_ = msg.chat_id_,
      message_id_ = msg.reply_to_message_id_
    }, info_by_reply, {chat_id=msg.chat_id_})
  end
  if matches[2] and string.match(matches[2], '^%d+$') and tonumber(msg.reply_to_message_id_) == 0 then
tdcli_function ({
    ID = "GetUser",
    user_id_ = matches[2],
  }, info_by_id, {chat_id=msg.chat_id_,user_id=matches[2],msgid=msg.id_})
    end
  if matches[2] and not string.match(matches[2], '^%d+$') and tonumber(msg.reply_to_message_id_) == 0 then
   tdcli_function ({
      ID = "SearchPublicChat",
      username_ = matches[2]
    }, info_by_username, {chat_id=msg.chat_id_,username=matches[2],msgid=msg.id_})
      end
  if not matches[2] and tonumber(msg.reply_to_message_id_) == 0 then
local function info2_cb(arg, data)
      if tonumber(data.id_) then
    if data.username_ then
  username = "@"..check_markdown(data.username_)
    else
  username = ""
  end
    if data.first_name_ then
  firstname = check_markdown(data.first_name_)
    else
  firstname = ""
  end
    if data.last_name_ then
  lastname = check_markdown(data.last_name_)
    else
  lastname = ""
  end
	local hash = 'rank:'..arg.chat_id..':variables'
   local text = "_ℹ️ اسم الاول :_ *"..firstname.."*\n_⚪️ اسم الثاني :_ *"..lastname.."*\n_➰ معرف :_ "..username.."\n_🆔 ايدي :_ *"..data.id_.."*\n\n"
		    if data.id_ == tonumber(Solid) then
		       text = text..'_👮 رتبة :_ `مالك البوت 😘`\n\n'
			   elseif is_sudo1(data.id_) then
	           text = text..'_👮 رتبة :_ _المطور 🗣 _\n\n'
		     elseif is_admin1(data.id_) then
		       text = text..'_👮 رتبة :_ *ادمن البوت ⭐️*\n\n'
		     elseif is_owner1(arg.chat_id, data.id_) then
		       text = text..'_👮 رتبة :_ *مدير 👤*\n\n'
		     elseif is_mod1(arg.chat_id, data.id_) then
		       text = text..'_👮 رتبة :_ *ادمن 👤*\n\n'
		 else
		       text = text..'_👮 رتبة :_ _عضو 👥_\n\n'
		 end
         local user_info = {} 
  local uhash = 'user:'..data.id_
  local user = redis:hgetall(uhash)
  local um_hash = 'msgs:'..data.id_..':'..arg.chat_id
  user_info_msgs = tonumber(redis:get(um_hash) or 0)
  text = text..'📨 مجموع الرسائل  : '..user_info_msgs..'\n\n'
  text = text..''
  tdcli.sendMessage(arg.chat_id, arg.msgid, 0, text, 0, "md")
   end
end
tdcli_function ({
    ID = "GetUser",
    user_id_ = msg.from.id,
  }, info_by_id, {chat_id=msg.chat_id_,user_id=msg.from.id,msgid=msg.id_})
      end
   end
end
return {
		patterns = {
"^([Ii]nfo)$",
"^([Ii]nfo) (.*)$",
 "^(معلومات)$",
 "^(معلومات) (.*)$",
},
	run = run
}