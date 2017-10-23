# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.
#
# This Source Code Form is "Incompatible With Secondary Licenses", as
# defined by the Mozilla Public License, v. 2.0.

# This file contains a single hash named %strings, which is used by the
# installation code to display strings before Template-Toolkit can safely
# be loaded.
#
# Each string supports a very simple substitution system, where you can
# have variables named like ##this## and they'll be replaced by the string
# variable with that name.
#
# Please keep the strings in alphabetical order by their name.

%strings = (
    any  => 'любая',
    apachectl_failed => <<END,
ПРЕДУПРЕЖДЕНИЕ: Не удалось проверить конфигурацию Apache. Это иногда
происходит если вы не запускаете checksetup.pl с правами ##root##. Чтобы увидеть
произошедшую проблему, выполните команду: ##command##
END    
    bad_executable => 'not a valid executable: ##bin##',
    blacklisted => '(в черном списке)',
    bz_schema_exists_before_220 => <<'END',
You are upgrading from a version before 2.20, but the bz_schema table
already exists. This means that you restored a mysqldump into the Bugzilla
database without first dropping the already-existing Bugzilla database,
at some point. Whenever you restore a Bugzilla database backup, you must
always drop the entire database first.

Please drop your Bugzilla database and restore it from a backup that does
not contain the bz_schema table. If for some reason you cannot do this, you
can connect to your MySQL database and drop the bz_schema table, as a last
resort.
END    
    checking_for => 'Проверка',
    checking_dbd      => 'Проверка установленных модулей Perl DBD...',
    checking_optional => 'Следующие модули Perl рекомендуются:',
    checking_modules  => 'Проверка модулей Perl...',
    chmod_failed      => '##path##: Ошибка изменения прав доступа: ##error##',
    chown_failed      => '##path##: Ошибка изменения владельца: ##error##',
    commands_dbd      => <<EOT,
ВЫПОЛНИТЕ ОДНУ ИЗ ЭТИХ КОМАНД (в зависимости от используемой
базы данных):
EOT
    commands_optional => 'КОМАНДЫ УСТАНОВКИ РЕКОМЕНДУЕМЫХ МОДУЛЕЙ:',
    commands_required => <<EOT,
КОМАНДЫ УСТАНОВКИ ОБЯЗАТЕЛЬНЫХ МОДУЛЕЙ (Обязательно выполните их все 
и затем запустите checksetup.pl снова):
EOT
    continue_without_answers => <<'END',
Re-run checksetup.pl in interactive mode (without an 'answers' file)
to continue.
END
    cpan_bugzilla_home => 
        "WARNING: Using the Bugzilla directory as the CPAN home.",
    db_enum_setup  => "Setting up choices for standard drop-down fields:",
    db_schema_init => "Initializing bz_schema...",
    db_table_new   => "Adding new table ##table##...",
    db_table_setup => "Creating tables...",
    done => 'Готово.',
    enter_or_ctrl_c => "Press Enter to continue or Ctrl-C to exit...",
    error_localconfig_read => <<'END',
An error has occurred while reading the ##localconfig## file.  The text of
the error message is:

##error##

Please fix the error in the localconfig file. Alternately, rename your
localconfig file and re-run checksetup.pl to have it create a new
localconfig file:

  $ mv -f localconfig localconfig.old
  $ ./checksetup.pl
END    
    extension_must_return_name => <<END,
##file## вернул ##returned##, что не является корректным именем для расширения.
Расширения должны возвращать своё имя, а не <code>1</code> или какое-либо число.
Для получения более подробной информации обратитесь к документации Bugzilla::Extension.
END
    feature_auth_ldap         => 'Аутентификация LDAP',
    feature_auth_radius       => 'Аутентификация RADIUS',
    feature_graphical_reports => 'Диаграммы',
    feature_html_desc         => 'Использование HTML в описаниях объектов и групп',
    feature_inbound_email     => 'Входящая электронная почта',
    feature_jobqueue          => 'Очередь электронной почты',
    feature_jsonrpc           => 'Интерфейс JSON-RPC',
    feature_jsonrpc_faster    => 'Ускорить JSON-RPC',    
    feature_new_charts        => 'Диаграммы нового образца',
    feature_old_charts        => 'Диаграммы старого образца',
    feature_mod_perl          => 'mod_perl',
    feature_moving            => 'Перемещение ошибок между экземплярами Bugzilla',
    feature_patch_viewer      => 'Просмотр патчей',
    feature_smtp_auth         => 'Аутентификация SMTP',
    feature_smtp_ssl          => 'Поддержка SSL для SMTP',
    feature_updates           => 'Автоматическое уведомление о новых версиях',
    feature_xmlrpc            => 'Интерфейс XML-RPC',
    feature_detect_charset    => 'Автоматическое определение кодировки текстовых приложений',
    feature_typesniffer       => 'Автоопределение типа MIME приложений',

    file_remove => 'Удаление ##name##...',
    file_rename => 'Переименование ##from## в ##to##...',
    header => "* Bugzilla ##bz_ver## на Perl ##perl_ver##\n"
            . "* Запущена на ##os_name## ##os_ver##",
    install_all => <<EOT,

Попробуйте установить все требуемые и рекомендуемые модули одной
командой:

  ##perl## install-module.pl --all

EOT
    install_data_too_long => <<EOT,
ВНИМАНИЕ: Некоторые данные в поле ##table##.##column## длинней чем
размер поля в текущей версии (##max_length## символов). Данные, которые следует
перечислены ниже (сначала значение кода ##id_column##, затем 
значение поля ##column##, которое следует исправить):

EOT
    install_module => 'Установка модуля ##module## версии ##version##...',
    installation_failed => '*** Установка прервана. Изучите сообщения об ошибках выше. ***',
    install_no_compiler => <<END,
ERROR: Using install-module.pl requires that you install a compiler, such as
gcc.
END
    install_no_make => <<END,
ERROR: Using install-module.pl requires that you install "make".
END
    lc_new_vars => <<'END',
This version of Bugzilla contains some variables that you may want to
change and adapt to your local settings. The following variables are
new to ##localconfig## since you last ran checksetup.pl:

##new_vars##

Please edit the file ##localconfig## and then re-run checksetup.pl
to complete your installation.
END
    lc_old_vars => <<'END',
The following variables are no longer used in ##localconfig##, and
have been moved to ##old_file##: ##vars##
END
    localconfig_create_htaccess => <<'END',
If you are using Apache as your web server, Bugzilla can create .htaccess
files for you, which will keep this file (localconfig) and other
confidential files from being read over the web.

If this is set to 1, checksetup.pl will create .htaccess files if 
they don't exist.

If this is set to 0, checksetup.pl will not create .htaccess files.
END
    localconfig_cvsbin => <<'END',
If you want to use the CVS integration of the Patch Viewer, please specify
the full path to the "cvs" executable here.
END
    localconfig_db_check => <<'END',
Should checksetup.pl try to verify that your database setup is correct?
With some combinations of database servers/Perl modules/moonphase this
doesn't work, and so you can try setting this to 0 to make checksetup.pl
run.
END
    localconfig_db_driver => <<'END',
What SQL database to use. Default is mysql. List of supported databases
can be obtained by listing Bugzilla/DB directory - every module corresponds
to one supported database and the name of the module (before ".pm")
corresponds to a valid value for this variable.
END
    localconfig_db_host => <<'END',
The DNS name or IP address of the host that the database server runs on.
END
    localconfig_db_name => <<'END',
The name of the database. For Oracle, this is the database's SID. For
SQLite, this is a name (or path) for the DB file.
END
    localconfig_db_pass => <<'END',
Enter your database password here. It's normally advisable to specify
a password for your bugzilla database user.
If you use apostrophe (') or a backslash (\) in your password, you'll
need to escape it by preceding it with a '\' character. (\') or (\)
(It is far simpler to just not use those characters.)
END
    localconfig_db_port => <<'END',
Sometimes the database server is running on a non-standard port. If that's
the case for your database server, set this to the port number that your
database server is running on. Setting this to 0 means "use the default
port for my database server."
END
    localconfig_db_sock => <<'END',
MySQL Only: Enter a path to the unix socket for MySQL. If this is
blank, then MySQL's compiled-in default will be used. You probably
want that.
END
    localconfig_db_user => "Who we connect to the database as.",
    localconfig_diffpath => <<'END',
For the "Difference Between Two Patches" feature to work, we need to know
what directory the "diff" bin is in. (You only need to set this if you
are using that feature of the Patch Viewer.)
END
    localconfig_index_html => <<'END',
Most web servers will allow you to use index.cgi as a directory
index, and many come preconfigured that way, but if yours doesn't
then you'll need an index.html file that provides redirection
to index.cgi. Setting $index_html to 1 below will allow
checksetup.pl to create an index.html for you if it doesn't exist.
NOTE: checksetup.pl will not replace an existing file, so if you
      wish to have checksetup.pl create one for you, you must
      make sure that index.html doesn't already exist.
END
    localconfig_interdiffbin => <<'END',
If you want to use the "Difference Between Two Patches" feature of the
Patch Viewer, please specify the full path to the "interdiff" executable
here.
END
    localconfig_site_wide_secret => <<'END',
This secret key is used by your installation for the creation and
validation of encrypted tokens. These tokens are used to implement
security features in Bugzilla, to protect against certain types of attacks.
A random string is generated by default. It's very important that this key
is kept secret. It also must be very long.
END
    localconfig_use_suexec => <<'END',
Set this to 1 if Bugzilla runs in an Apache SuexecUserGroup environment.

If your web server runs control panel software (cPanel, Plesk or similar),
or if your Bugzilla is to run in a shared hosting environment, then you are
almost certainly in an Apache SuexecUserGroup environment.

If this is a Windows box, ignore this setting, as it does nothing.

If set to 0, checksetup.pl will set file permissions appropriately for
a normal webserver environment.

If set to 1, checksetup.pl will set file permissions so that Bugzilla
works in a SuexecUserGroup environment. 
END
    localconfig_webservergroup => <<'END',
The name of the group that your web server runs as. On Red Hat
distributions, this is usually "apache". On Debian/Ubuntu, it is 
usually "www-data".

If you have use_suexec turned on below, then this is instead the name
of the group that your web server switches to to run cgi files.

If this is a Windows machine, ignore this setting, as it does nothing.

If you do not have access to the group your scripts will run under,
set this to "". If you do set this to "", then your Bugzilla installation
will be _VERY_ insecure, because some files will be world readable/writable,
and so anyone who can get local access to your machine can do whatever they
want. You should only have this set to "" if this is a testing installation
and you cannot set this up any other way. YOU HAVE BEEN WARNED!

If you set this to anything other than "", you will need to run checksetup.pl
as ##root## or as a user who is a member of the specified group.
END
    max_allowed_packet => <<EOT,
ВНИМАНИЕ: Установите значение параметра max_allowed_packet сервера MySQL
не менее ##needed##. Текущее значение -- ##current##.
Параметр настраивается в секции [mysqld] файла конфигурации MySQL.
EOT
    min_version_required => "Требуется версия не ниже: ",

# Note: When translating these "modules" messages, don't change the formatting
# if possible, because there is hardcoded formatting in 
# Bugzilla::Install::Requirements to match the box formatting.
    modules_message_apache => <<END,
***********************************************************************
* МОДУЛИ APACHE                                                       *
***********************************************************************
* Обычно при обновлении Bugzilla все пользователи Bugzilla должны     *
* очистить кэш своего браузера, иначе Bugzilla не будет работать.     * 
* Если вы включите определённые модули в конфигурации вашего Apache   *
* (обычно вызываемые из httpd.conf или apache2.conf) то вашим         *
* пользователям не нужно будет очищать свой кэш когда вы обновите     *
* Bugzilla. Вам нужно будет включить следующие модули:                *
*                                                                     *
END
    modules_message_db => <<EOT,
***********************************************************************
* ДОСТУП К БАЗЕ ДАННЫХ                                                *
***********************************************************************
* Для доступа к базе данных Bugzilla требуется установка модуля       *
* "DBD", соответствующего используемой модели базы данных.            *
* Ниже приведена команда установки требуемого модуля.                 *
EOT
    modules_message_optional => <<EOT,
***********************************************************************
* РЕКОМЕНДУЕМЫЕ МОДУЛИ                                                *
***********************************************************************
* Некоторые модули Perl не требуются для работы Bugzilla, но          *
* их установка позволит использовать дополнительные возможности.      *
*                                                                     *
* Ниже перечислены модули, которые пока не установлены, и             *
* возможности, обеспечиваемые этими модулями. Далее приведены         *
* команды установки недостающих модулей.                              *
EOT
    modules_message_required => <<EOT,
***********************************************************************
* ОБЯЗАТЕЛЬНЫЕ МОДУЛИ                                                 *
***********************************************************************
* Для работы Bugzilla требуются модули Perl, которые либо отсутствуют *
* в данной системе, либо требуют обновления до более новой версии.    *
* Команды установки недостающих модулей описаны ниже.                 *
EOT

    module_found => "найден v##ver##",
    module_not_found => "не найден",
    module_ok => 'ОК',
    module_unknown_version => "найдена неизвестная версия",
    no_such_module => "На CPAN нет модуля Perl с именем ##module##.",
    mysql_innodb_disabled => <<'END',
InnoDB is disabled in your MySQL installation.
Bugzilla requires InnoDB to be enabled.
Please enable it and then re-run checksetup.pl.
END
    mysql_index_renaming => <<'END',
We are about to rename old indexes. The estimated time to complete
renaming is ##minutes## minutes. You cannot interrupt this action once
it has begun. If you would like to cancel, press Ctrl-C now...
(Waiting 45 seconds...)
END
    mysql_utf8_conversion => <<'END',
WARNING: We are about to convert your table storage format to UTF-8. This
         allows Bugzilla to correctly store and sort international characters.
         However, if you have any non-UTF-8 data in your database,
         it ***WILL BE DELETED*** by this process. So, before
         you continue with checksetup.pl, if you have any non-UTF-8
         data (or even if you're not sure) you should press Ctrl-C now
         to interrupt checksetup.pl, and run contrib/recode.pl to make all
         the data in your database into UTF-8. You should also back up your
         database before continuing. This will affect every single table
         in the database, even non-Bugzilla tables.

         If you ever used a version of Bugzilla before 2.22, we STRONGLY
         recommend that you stop checksetup.pl NOW and run contrib/recode.pl.
END
    no_checksetup_from_cgi => <<END,
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN"
          "http://www.w3.org/TR/html4/strict.dtd">
<html>
  <head>
    <title>checksetup.pl cannot run from a web browser</title>
  </head>

  <body>
    <h1>checksetup.pl cannot run from a web browser</h1>
    <p>
      You <b>must not</b> execute this script from your web browser.
      To install or upgrade Bugzilla, run this script from
      the command-line (e.g. <tt>bash</tt> or <tt>ssh</tt> on Linux
      or <tt>cmd.exe</tt> on Windows), and follow instructions given there.
    </p>

    <p>
      For more information on how to install Bugzilla, please
      <a href="http://www.bugzilla.org/docs/">read the documentation</a>
      available on the official Bugzilla website.
    </p>
  </body>
</html>
END
    patchutils_missing => <<'END',
OPTIONAL NOTE: If you want to be able to use the 'difference between two
patches' feature of Bugzilla (which requires the PatchReader Perl module
as well), you should install patchutils from:

    http://cyberelk.net/tim/patchutils/
END
    template_precompile   => "Компиляция шаблонов...",
    template_removal_failed => <<END,
ВНИМАНИЕ: Каталог '##template_cache##' не может быть удален.
         Он переименован в '##deleteme##', его следует
         удалить вручную для экономии дискового пространства.
END
    template_removing_dir => "Удаление скомпилированных шаблонов...",
    update_cf_invalid_name => 
        "Removing custom field '##field##', because it has an invalid name...",
    update_flags_bad_name => <<'END',
"##flag##" is not a valid name for a flag. Rename it to not have any spaces
or commas.
END
    update_nomail_bad => <<'END',
WARNING: The following users were listed in ##data##/nomail, but do
not have an account here. The unmatched entries have been moved to 
##data##/nomail.bad:
END
    update_summary_truncate_comment => 
        "The original value of the Summary field was longer than 255"
        . " characters, and so it was truncated during an upgrade."
        . " The original summary was:\n\n##summary##",
    update_summary_truncated => <<'END',
WARNING: Some of your bugs had summaries longer than 255 characters.
They have had their original summary copied into a comment, and then
the summary was truncated to 255 characters. The affected bug numbers were:
END
    update_quips => <<'END',
Quips are now stored in the database, rather than in an external file.
The quips previously stored in ##data##/comments have been copied into
the database, and that file has been renamed to ##data##/comments.bak
You may delete the renamed file once you have confirmed that all your
quips were moved successfully.
END
    update_queries_to_tags => "Populating the new 'tag' table:",
    webdot_bad_htaccess => <<END,
WARNING: Dependency graph images are not accessible.
Delete ##dir##/.htaccess and re-run checksetup.pl.
END
);

1;
