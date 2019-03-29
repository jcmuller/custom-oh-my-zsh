#compdef dajoku

local state

_dajoku() {
  __dajoku
}

__dajoku() {
  readonly local DEPTH=2

  case $CURRENT in
    $DEPTH)
      _arguments \
        '*: :->subcommands'

      case $state in
        subcommands)
          _values \
            'subcommand' \
            'info[Display useful debugging information]' \
            'console[Run one-off commands (e.g. rails console), or SSH into the initial container]' \
            'rake[Run whitelisted rake tasks]' \
            'rollback[Rollback to a previous deployment]' \
            'deploy[Initiate a deploy]' \
            'logs[Tail logs for your environment]' \
            'push[Build an image for VERSION and push to the registry]' \
            'version[Print out current version]' \
            'search[Search the registry for deployable tags]' \
            'update[Update the dajoku CLI]' \
            'wiki[Official documentation for the Dajoku CLI]' \
            'app[Manage applications]' \
            'auth[Authentication related commands]' \
            'component[Manage components]' \
            'config[Manage application/environment config vars]' \
            'deployments[Manage deployments]' \
            'domain[Manage application domains]' \
            'env[Manage environments]' \
            'roles[Manage user roles]' \
            'user[Manage users]' \
            'pg[PostgreSQL commands]' \
            ;
          ;;
      esac
      ;;
    *)
      case $words[$DEPTH] in
        info)
          __dajoku_info
          ;;
        console)
          __dajoku_console
          ;;
        rake)
          __dajoku_rake
          ;;
        rollback)
          __dajoku_rollback
          ;;
        deploy)
          __dajoku_deploy
          ;;
        logs)
          __dajoku_logs
          ;;
        push)
          __dajoku_push
          ;;
        version)
          __dajoku_version
          ;;
        search)
          __dajoku_search
          ;;
        update)
          __dajoku_update
          ;;
        wiki)
          __dajoku_wiki
          ;;
        app)
          __dajoku_app
          ;;
        auth)
          __dajoku_auth
          ;;
        component)
          __dajoku_component
          ;;
        config)
          __dajoku_config
          ;;
        deployments)
          __dajoku_deployments
          ;;
        domain)
          __dajoku_domain
          ;;
        env)
          __dajoku_env
          ;;
        roles)
          __dajoku_roles
          ;;
        user)
          __dajoku_user
          ;;
        pg)
          __dajoku_pg
          ;;
        *)
          # if does not match any subcommand
          # complete rest arguments
          _files
          ;;
      esac
      ;;
  esac
}


__dajoku_info() {
  _arguments \
    {--debug,--d}Verbose output \
    {--application,--a}Application \
    {--space,--s}Space \
    {--environment,--e}Environment \
    {--dajoku_api_environment,--A}Dajoku API Environment \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}

__dajoku_console() {
  _arguments \
    {--debug,--d}Verbose output \
    {--application,--a}Application \
    {--space,--s}Space \
    {--environment,--e}Environment \
    {--dajoku_api_environment,--A}Dajoku API Environment \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}

__dajoku_rake() {
  _arguments \
    {--debug,--d}Verbose output \
    {--application,--a}Application \
    {--space,--s}Space \
    {--environment,--e}Environment \
    {--dajoku_api_environment,--A}Dajoku API Environment \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}

__dajoku_rollback() {
  _arguments \
    {--debug,--d}Verbose output \
    {--application,--a}Application \
    {--space,--s}Space \
    {--environment,--e}Environment \
    {--dajoku_api_environment,--A}Dajoku API Environment \
    {--force,-f}Force a rollback, overriding any running deployment \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}

__dajoku_deploy() {
  _arguments \
    {--debug,--d}Verbose output \
    {--application,--a}Application \
    {--space,--s}Space \
    {--environment,--e}Environment \
    {--dajoku_api_environment,--A}Dajoku API Environment \
    {--follow}Follow your deployment''s status \
    {--force,-f}Force a deployment, overriding any running deployment \
    {--push,-p}Push to git-receive endpoint to build docker image (experimental) \
    {--tail,-t}Tail logs with Livetail CLI. This option takes precedence over `--follow` \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}

__dajoku_logs() {
  _arguments \
    {--debug,--d}Verbose output \
    {--application,--a}Application \
    {--space,--s}Space \
    {--environment,--e}Environment \
    {--dajoku_api_environment,--A}Dajoku API Environment \
    {--worker,--w}Specify which worker''s logs to follow \
    {--file,--f}Specify the exact log file to tail \
    {--quiet,--q}Remove status check lines from web logs \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}

__dajoku_push() {
  _arguments \
    {--debug,--d}Verbose output \
    {--application,--a}Application \
    {--space,--s}Space \
    {--environment,--e}Environment \
    {--dajoku_api_environment,--A}Dajoku API Environment \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}

__dajoku_version() {
  _arguments \
    {--debug,--d}Verbose output \
    {--application,--a}Application \
    {--space,--s}Space \
    {--environment,--e}Environment \
    {--dajoku_api_environment,--A}Dajoku API Environment \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}

__dajoku_search() {
  _arguments \
    {--debug,--d}Verbose output \
    {--application,--a}Application \
    {--space,--s}Space \
    {--environment,--e}Environment \
    {--dajoku_api_environment,--A}Dajoku API Environment \
    {--registry,-R}Specify an alternate registry \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}

__dajoku_update() {
  _arguments \
    {--debug,--d}Verbose output \
    {--application,--a}Application \
    {--space,--s}Space \
    {--environment,--e}Environment \
    {--dajoku_api_environment,--A}Dajoku API Environment \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}

__dajoku_wiki() {
  _arguments \
    {--debug,--d}Verbose output \
    {--application,--a}Application \
    {--space,--s}Space \
    {--environment,--e}Environment \
    {--dajoku_api_environment,--A}Dajoku API Environment \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}

__dajoku_app() {
  readonly local DEPTH=3

  case $CURRENT in
    $DEPTH)
      _arguments \
        {--debug,--d}Verbose output \
        {--application,--a}Application \
        {--space,--s}Space \
        {--environment,--e}Environment \
        {--dajoku_api_environment,--A}Dajoku API Environment \
        '*: :->subcommands'

      case $state in
        subcommands)
          _values \
            'subcommand' \
            'list[List applications known]' \
            'create[Create an application]' \
            'help[Describe subcommands or one specific subcommand]' \
            ;
          ;;
      esac
      ;;
    *)
      case $words[$DEPTH] in
        list)
          __dajoku_app_list
          ;;
        create)
          __dajoku_app_create
          ;;
        help)
          __dajoku_app_help
          ;;
        *)
          # if does not match any subcommand
          # complete rest arguments
          _files
          ;;
      esac
      ;;
  esac
}


__dajoku_app_list() {
  _arguments \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}

__dajoku_app_create() {
  _arguments \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}

__dajoku_app_help() {
  _arguments \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}

__dajoku_auth() {
  readonly local DEPTH=3

  case $CURRENT in
    $DEPTH)
      _arguments \
        {--debug,--d}Verbose output \
        {--application,--a}Application \
        {--space,--s}Space \
        {--environment,--e}Environment \
        {--dajoku_api_environment,--A}Dajoku API Environment \
        '*: :->subcommands'

      case $state in
        subcommands)
          _values \
            'subcommand' \
            'check[Check if user is logged in against API]' \
            'login[Log in]' \
            'logout[Log out]' \
            'token[Generate a new, temporary Dajoku API auth token]' \
            'create-totp[Generate a new TOTP secret]' \
            'help[Describe subcommands or one specific subcommand]' \
            ;
          ;;
      esac
      ;;
    *)
      case $words[$DEPTH] in
        check)
          __dajoku_auth_check
          ;;
        login)
          __dajoku_auth_login
          ;;
        logout)
          __dajoku_auth_logout
          ;;
        token)
          __dajoku_auth_token
          ;;
        create-totp)
          __dajoku_auth_create-totp
          ;;
        help)
          __dajoku_auth_help
          ;;
        *)
          # if does not match any subcommand
          # complete rest arguments
          _files
          ;;
      esac
      ;;
  esac
}


__dajoku_auth_check() {
  _arguments \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}

__dajoku_auth_login() {
  _arguments \
    {--duo_otp} \
    {--totp} \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}

__dajoku_auth_logout() {
  _arguments \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}

__dajoku_auth_token() {
  _arguments \
    {--expires,--E}Set the expiration of the token \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}

__dajoku_auth_create-totp() {
  _arguments \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}

__dajoku_auth_help() {
  _arguments \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}

__dajoku_component() {
  readonly local DEPTH=3

  case $CURRENT in
    $DEPTH)
      _arguments \
        {--debug,--d}Verbose output \
        {--application,--a}Application \
        {--space,--s}Space \
        {--environment,--e}Environment \
        {--dajoku_api_environment,--A}Dajoku API Environment \
        '*: :->subcommands'

      case $state in
        subcommands)
          _values \
            'subcommand' \
            'list[List components and settings]' \
            'size[Set CPU and memory limits]' \
            'restart[Restart one or more components]' \
            'scale[Scale component instances to the number specified by COUNT]' \
            'del[Remove component settings]' \
            'halt[DANGEROUS! stop all components for an environment]' \
            'restart-all[Restart all components]' \
            'help[Describe subcommands or one specific subcommand]' \
            ;
          ;;
      esac
      ;;
    *)
      case $words[$DEPTH] in
        list)
          __dajoku_component_list
          ;;
        size)
          __dajoku_component_size
          ;;
        restart)
          __dajoku_component_restart
          ;;
        scale)
          __dajoku_component_scale
          ;;
        del)
          __dajoku_component_del
          ;;
        halt)
          __dajoku_component_halt
          ;;
        restart-all)
          __dajoku_component_restart-all
          ;;
        help)
          __dajoku_component_help
          ;;
        *)
          # if does not match any subcommand
          # complete rest arguments
          _files
          ;;
      esac
      ;;
  esac
}


__dajoku_component_list() {
  _arguments \
    {--base,--b}List default components and settings for an application \
    {--live}Live update component status \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}

__dajoku_component_size() {
  _arguments \
    {--base,--b}Set default CPU and memory limits for an application \
    {--deploy} \
    {--force,--f}Force resizing of component, overriding any running deployment \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}

__dajoku_component_restart() {
  _arguments \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}

__dajoku_component_scale() {
  _arguments \
    {--base,--b}Set default component instance counts for an application. This will not scale components for existing environments. \
    {--deploy} \
    {--force,--f}Force scaling of component, overriding any running deployment \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}

__dajoku_component_del() {
  _arguments \
    {--base,--b}Remove default component settings for an application \
    {--deploy} \
    {--force,--f}Force removal of component settings, overriding any running deployment \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}

__dajoku_component_halt() {
  _arguments \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}

__dajoku_component_restart-all() {
  _arguments \
    {--force,--f} \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}

__dajoku_component_help() {
  _arguments \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}

__dajoku_config() {
  readonly local DEPTH=3

  case $CURRENT in
    $DEPTH)
      _arguments \
        {--debug,--d}Verbose output \
        {--application,--a}Application \
        {--space,--s}Space \
        {--environment,--e}Environment \
        {--dajoku_api_environment,--A}Dajoku API Environment \
        '*: :->subcommands'

      case $state in
        subcommands)
          _values \
            'subcommand' \
            'list[Dumps configuration variables for application]' \
            'get[Get one or more configuration variables]' \
            'set[Set configuration variable(s)]' \
            'del[Delete configuration variable(s)]' \
            'unset[Unset environment configuration variable(s)]' \
            'help[Describe subcommands or one specific subcommand]' \
            ;
          ;;
      esac
      ;;
    *)
      case $words[$DEPTH] in
        list)
          __dajoku_config_list
          ;;
        get)
          __dajoku_config_get
          ;;
        set)
          __dajoku_config_set
          ;;
        del)
          __dajoku_config_del
          ;;
        unset)
          __dajoku_config_unset
          ;;
        help)
          __dajoku_config_help
          ;;
        *)
          # if does not match any subcommand
          # complete rest arguments
          _files
          ;;
      esac
      ;;
  esac
}


__dajoku_config_list() {
  _arguments \
    {--base,--b}Get configs inherited by all application environments \
    {--sh,-S}Return pairs in a shell-like syntax \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}

__dajoku_config_get() {
  _arguments \
    {--base,--b}Get/set values inherited by all application environments \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}

__dajoku_config_set() {
  _arguments \
    {--deploy} \
    {--base,--b}Get/set values inherited by all application environments \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}

__dajoku_config_del() {
  _arguments \
    {--deploy} \
    {--base,--b}Get/set values inherited by all application environments \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}

__dajoku_config_unset() {
  _arguments \
    {--deploy} \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}

__dajoku_config_help() {
  _arguments \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}

__dajoku_deployments() {
  readonly local DEPTH=3

  case $CURRENT in
    $DEPTH)
      _arguments \
        {--debug,--d}Verbose output \
        {--application,--a}Application \
        {--space,--s}Space \
        {--environment,--e}Environment \
        {--dajoku_api_environment,--A}Dajoku API Environment \
        '*: :->subcommands'

      case $state in
        subcommands)
          _values \
            'subcommand' \
            'list[List previous deployments]' \
            'show[Show verbose information for a deployment]' \
            'help[Describe subcommands or one specific subcommand]' \
            ;
          ;;
      esac
      ;;
    *)
      case $words[$DEPTH] in
        list)
          __dajoku_deployments_list
          ;;
        show)
          __dajoku_deployments_show
          ;;
        help)
          __dajoku_deployments_help
          ;;
        *)
          # if does not match any subcommand
          # complete rest arguments
          _files
          ;;
      esac
      ;;
  esac
}


__dajoku_deployments_list() {
  _arguments \
    {--page,-p}Display the nth (zero-indexed) page of deployments \
    {--page_limit,-l}Display n deployments per page \
    {--quiet,-q}Only display the deployment ID \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}

__dajoku_deployments_show() {
  _arguments \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}

__dajoku_deployments_help() {
  _arguments \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}

__dajoku_domain() {
  readonly local DEPTH=3

  case $CURRENT in
    $DEPTH)
      _arguments \
        {--debug,--d}Verbose output \
        {--application,--a}Application \
        {--space,--s}Space \
        {--environment,--e}Environment \
        {--dajoku_api_environment,--A}Dajoku API Environment \
        '*: :->subcommands'

      case $state in
        subcommands)
          _values \
            'subcommand' \
            'list[List domains for application]' \
            'set[Add a new domain to an application]' \
            'del[Delete a domain from an application]' \
            'unset[Unset a domain for an environment]' \
            'help[Describe subcommands or one specific subcommand]' \
            ;
          ;;
      esac
      ;;
    *)
      case $words[$DEPTH] in
        list)
          __dajoku_domain_list
          ;;
        set)
          __dajoku_domain_set
          ;;
        del)
          __dajoku_domain_del
          ;;
        unset)
          __dajoku_domain_unset
          ;;
        help)
          __dajoku_domain_help
          ;;
        *)
          # if does not match any subcommand
          # complete rest arguments
          _files
          ;;
      esac
      ;;
  esac
}


__dajoku_domain_list() {
  _arguments \
    {--base,--b}Get domains inherited by all application environments \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}

__dajoku_domain_set() {
  _arguments \
    {--deploy} \
    {--base,--b}Set a domain inherited by all application environments \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}

__dajoku_domain_del() {
  _arguments \
    {--deploy} \
    {--base,--b}Delete a domain inherited by all application environments \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}

__dajoku_domain_unset() {
  _arguments \
    {--deploy} \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}

__dajoku_domain_help() {
  _arguments \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}

__dajoku_env() {
  readonly local DEPTH=3

  case $CURRENT in
    $DEPTH)
      _arguments \
        {--debug,--d}Verbose output \
        {--application,--a}Application \
        {--space,--s}Space \
        {--environment,--e}Environment \
        {--dajoku_api_environment,--A}Dajoku API Environment \
        '*: :->subcommands'

      case $state in
        subcommands)
          _values \
            'subcommand' \
            'list[Get a list of environments for an application]' \
            'show[Show verbose information for an environment]' \
            'create[Create a new environment]' \
            'destroy[Destroy an existing environment]' \
            'help[Describe subcommands or one specific subcommand]' \
            ;
          ;;
      esac
      ;;
    *)
      case $words[$DEPTH] in
        list)
          __dajoku_env_list
          ;;
        show)
          __dajoku_env_show
          ;;
        create)
          __dajoku_env_create
          ;;
        destroy)
          __dajoku_env_destroy
          ;;
        help)
          __dajoku_env_help
          ;;
        *)
          # if does not match any subcommand
          # complete rest arguments
          _files
          ;;
      esac
      ;;
  esac
}


__dajoku_env_list() {
  _arguments \
    {--quiet,-q}Show only an environment''s name and status \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}

__dajoku_env_show() {
  _arguments \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}

__dajoku_env_create() {
  _arguments \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}

__dajoku_env_destroy() {
  _arguments \
    {--force,-f}Force an environment destroy \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}

__dajoku_env_help() {
  _arguments \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}

__dajoku_roles() {
  readonly local DEPTH=3

  case $CURRENT in
    $DEPTH)
      _arguments \
        {--debug,--d}Verbose output \
        {--application,--a}Application \
        {--space,--s}Space \
        {--environment,--e}Environment \
        {--dajoku_api_environment,--A}Dajoku API Environment \
        '*: :->subcommands'

      case $state in
        subcommands)
          _values \
            'subcommand' \
            'show[Show a user''s role for a given application, or globally]' \
            'grant[Grant a role to a user]' \
            'revoke[Revoke a user''s role]' \
            'help[Describe subcommands or one specific subcommand]' \
            ;
          ;;
      esac
      ;;
    *)
      case $words[$DEPTH] in
        show)
          __dajoku_roles_show
          ;;
        grant)
          __dajoku_roles_grant
          ;;
        revoke)
          __dajoku_roles_revoke
          ;;
        help)
          __dajoku_roles_help
          ;;
        *)
          # if does not match any subcommand
          # complete rest arguments
          _files
          ;;
      esac
      ;;
  esac
}


__dajoku_roles_show() {
  _arguments \
    {--global,--G}Use for assigning global roles \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}

__dajoku_roles_grant() {
  _arguments \
    {--global,--G}Use for assigning global roles \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}

__dajoku_roles_revoke() {
  _arguments \
    {--global,--G}Use for assigning global roles \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}

__dajoku_roles_help() {
  _arguments \
    {--global,--G}Use for assigning global roles \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}

__dajoku_user() {
  readonly local DEPTH=3

  case $CURRENT in
    $DEPTH)
      _arguments \
        {--debug,--d}Verbose output \
        {--application,--a}Application \
        {--space,--s}Space \
        {--environment,--e}Environment \
        {--dajoku_api_environment,--A}Dajoku API Environment \
        '*: :->subcommands'

      case $state in
        subcommands)
          _values \
            'subcommand' \
            'list[List all users]' \
            'create[Create a new user]' \
            'help[Describe subcommands or one specific subcommand]' \
            ;
          ;;
      esac
      ;;
    *)
      case $words[$DEPTH] in
        list)
          __dajoku_user_list
          ;;
        create)
          __dajoku_user_create
          ;;
        help)
          __dajoku_user_help
          ;;
        *)
          # if does not match any subcommand
          # complete rest arguments
          _files
          ;;
      esac
      ;;
  esac
}


__dajoku_user_list() {
  _arguments \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}

__dajoku_user_create() {
  _arguments \
    {--name,--N}Full name \
    {--email,--E}Email \
    {--phone_number,--P}Phone number \
    {--duo_login,--D}Duo login name \
    {--public_keys,--K}Public keys \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}

__dajoku_user_help() {
  _arguments \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}

__dajoku_pg() {
  readonly local DEPTH=3

  case $CURRENT in
    $DEPTH)
      _arguments \
        {--debug,--d}Verbose output \
        {--application,--a}Application \
        {--space,--s}Space \
        {--environment,--e}Environment \
        {--dajoku_api_environment,--A}Dajoku API Environment \
        '*: :->subcommands'

      case $state in
        subcommands)
          _values \
            'subcommand' \
            'psql[Run one-off commands or an interactive session]' \
            'ps[View active queries with execution time]' \
            'locks[Display queries with active locks]' \
            'kill[Run pg_terminate_backend() for a PID]' \
            'killall[Terminate all connections]' \
            'help[Describe subcommands or one specific subcommand]' \
            ;
          ;;
      esac
      ;;
    *)
      case $words[$DEPTH] in
        psql)
          __dajoku_pg_psql
          ;;
        ps)
          __dajoku_pg_ps
          ;;
        locks)
          __dajoku_pg_locks
          ;;
        kill)
          __dajoku_pg_kill
          ;;
        killall)
          __dajoku_pg_killall
          ;;
        help)
          __dajoku_pg_help
          ;;
        *)
          # if does not match any subcommand
          # complete rest arguments
          _files
          ;;
      esac
      ;;
  esac
}


__dajoku_pg_psql() {
  _arguments \
    {--database,--b}Config variable to fetch database url from, defaults to DATABASE_URL \
    {--debug,--d}Verbose output \
    {--application,--a}Application \
    {--space,--s}Space \
    {--environment,--e}Environment \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}

__dajoku_pg_ps() {
  _arguments \
    {--database,--b}Config variable to fetch database url from, defaults to DATABASE_URL \
    {--debug,--d}Verbose output \
    {--application,--a}Application \
    {--space,--s}Space \
    {--environment,--e}Environment \
    {--verbose,--v} \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}

__dajoku_pg_locks() {
  _arguments \
    {--database,--b}Config variable to fetch database url from, defaults to DATABASE_URL \
    {--debug,--d}Verbose output \
    {--application,--a}Application \
    {--space,--s}Space \
    {--environment,--e}Environment \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}

__dajoku_pg_kill() {
  _arguments \
    {--database,--b}Config variable to fetch database url from, defaults to DATABASE_URL \
    {--debug,--d}Verbose output \
    {--application,--a}Application \
    {--space,--s}Space \
    {--environment,--e}Environment \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}

__dajoku_pg_killall() {
  _arguments \
    {--database,--b}Config variable to fetch database url from, defaults to DATABASE_URL \
    {--debug,--d}Verbose output \
    {--application,--a}Application \
    {--space,--s}Space \
    {--environment,--e}Environment \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}

__dajoku_pg_help() {
  _arguments \
    {--database,--b}Config variable to fetch database url from, defaults to DATABASE_URL \
    {--debug,--d}Verbose output \
    {--application,--a}Application \
    {--space,--s}Space \
    {--environment,--e}Environment \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}

#compdef dajoku_app

local state

_dajoku_app() {
  __dajoku_app
}

__dajoku_app() {
  readonly local DEPTH=3

  case $CURRENT in
    $DEPTH)
      _arguments \
        '*: :->subcommands'

      case $state in
        subcommands)
          _values \
            'subcommand' \
            'list[List applications known]' \
            'create[Create an application]' \
            'help[Describe subcommands or one specific subcommand]' \
            ;
          ;;
      esac
      ;;
    *)
      case $words[$DEPTH] in
        list)
          __dajoku_app_list
          ;;
        create)
          __dajoku_app_create
          ;;
        help)
          __dajoku_app_help
          ;;
        *)
          # if does not match any subcommand
          # complete rest arguments
          _files
          ;;
      esac
      ;;
  esac
}


__dajoku_app_list() {
  _arguments \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}

__dajoku_app_create() {
  _arguments \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}

__dajoku_app_help() {
  _arguments \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}


#compdef dajoku_auth

local state

_dajoku_auth() {
  __dajoku_auth
}

__dajoku_auth() {
  readonly local DEPTH=3

  case $CURRENT in
    $DEPTH)
      _arguments \
        '*: :->subcommands'

      case $state in
        subcommands)
          _values \
            'subcommand' \
            'check[Check if user is logged in against API]' \
            'login[Log in]' \
            'logout[Log out]' \
            'token[Generate a new, temporary Dajoku API auth token]' \
            'create-totp[Generate a new TOTP secret]' \
            'help[Describe subcommands or one specific subcommand]' \
            ;
          ;;
      esac
      ;;
    *)
      case $words[$DEPTH] in
        check)
          __dajoku_auth_check
          ;;
        login)
          __dajoku_auth_login
          ;;
        logout)
          __dajoku_auth_logout
          ;;
        token)
          __dajoku_auth_token
          ;;
        create-totp)
          __dajoku_auth_create-totp
          ;;
        help)
          __dajoku_auth_help
          ;;
        *)
          # if does not match any subcommand
          # complete rest arguments
          _files
          ;;
      esac
      ;;
  esac
}


__dajoku_auth_check() {
  _arguments \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}

__dajoku_auth_login() {
  _arguments \
    {--duo_otp} \
    {--totp} \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}

__dajoku_auth_logout() {
  _arguments \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}

__dajoku_auth_token() {
  _arguments \
    {--expires,--E}Set the expiration of the token \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}

__dajoku_auth_create-totp() {
  _arguments \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}

__dajoku_auth_help() {
  _arguments \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}


#compdef dajoku_component

local state

_dajoku_component() {
  __dajoku_component
}

__dajoku_component() {
  readonly local DEPTH=3

  case $CURRENT in
    $DEPTH)
      _arguments \
        '*: :->subcommands'

      case $state in
        subcommands)
          _values \
            'subcommand' \
            'list[List components and settings]' \
            'size[Set CPU and memory limits]' \
            'restart[Restart one or more components]' \
            'scale[Scale component instances to the number specified by COUNT]' \
            'del[Remove component settings]' \
            'halt[DANGEROUS! stop all components for an environment]' \
            'restart-all[Restart all components]' \
            'help[Describe subcommands or one specific subcommand]' \
            ;
          ;;
      esac
      ;;
    *)
      case $words[$DEPTH] in
        list)
          __dajoku_component_list
          ;;
        size)
          __dajoku_component_size
          ;;
        restart)
          __dajoku_component_restart
          ;;
        scale)
          __dajoku_component_scale
          ;;
        del)
          __dajoku_component_del
          ;;
        halt)
          __dajoku_component_halt
          ;;
        restart-all)
          __dajoku_component_restart-all
          ;;
        help)
          __dajoku_component_help
          ;;
        *)
          # if does not match any subcommand
          # complete rest arguments
          _files
          ;;
      esac
      ;;
  esac
}


__dajoku_component_list() {
  _arguments \
    {--base,--b}List default components and settings for an application \
    {--live}Live update component status \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}

__dajoku_component_size() {
  _arguments \
    {--base,--b}Set default CPU and memory limits for an application \
    {--deploy} \
    {--force,--f}Force resizing of component, overriding any running deployment \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}

__dajoku_component_restart() {
  _arguments \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}

__dajoku_component_scale() {
  _arguments \
    {--base,--b}Set default component instance counts for an application. This will not scale components for existing environments. \
    {--deploy} \
    {--force,--f}Force scaling of component, overriding any running deployment \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}

__dajoku_component_del() {
  _arguments \
    {--base,--b}Remove default component settings for an application \
    {--deploy} \
    {--force,--f}Force removal of component settings, overriding any running deployment \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}

__dajoku_component_halt() {
  _arguments \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}

__dajoku_component_restart-all() {
  _arguments \
    {--force,--f} \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}

__dajoku_component_help() {
  _arguments \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}


#compdef dajoku_config

local state

_dajoku_config() {
  __dajoku_config
}

__dajoku_config() {
  readonly local DEPTH=3

  case $CURRENT in
    $DEPTH)
      _arguments \
        '*: :->subcommands'

      case $state in
        subcommands)
          _values \
            'subcommand' \
            'list[Dumps configuration variables for application]' \
            'get[Get one or more configuration variables]' \
            'set[Set configuration variable(s)]' \
            'del[Delete configuration variable(s)]' \
            'unset[Unset environment configuration variable(s)]' \
            'help[Describe subcommands or one specific subcommand]' \
            ;
          ;;
      esac
      ;;
    *)
      case $words[$DEPTH] in
        list)
          __dajoku_config_list
          ;;
        get)
          __dajoku_config_get
          ;;
        set)
          __dajoku_config_set
          ;;
        del)
          __dajoku_config_del
          ;;
        unset)
          __dajoku_config_unset
          ;;
        help)
          __dajoku_config_help
          ;;
        *)
          # if does not match any subcommand
          # complete rest arguments
          _files
          ;;
      esac
      ;;
  esac
}


__dajoku_config_list() {
  _arguments \
    {--base,--b}Get configs inherited by all application environments \
    {--sh,-S}Return pairs in a shell-like syntax \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}

__dajoku_config_get() {
  _arguments \
    {--base,--b}Get/set values inherited by all application environments \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}

__dajoku_config_set() {
  _arguments \
    {--deploy} \
    {--base,--b}Get/set values inherited by all application environments \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}

__dajoku_config_del() {
  _arguments \
    {--deploy} \
    {--base,--b}Get/set values inherited by all application environments \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}

__dajoku_config_unset() {
  _arguments \
    {--deploy} \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}

__dajoku_config_help() {
  _arguments \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}


#compdef dajoku_deployments

local state

_dajoku_deployments() {
  __dajoku_deployments
}

__dajoku_deployments() {
  readonly local DEPTH=3

  case $CURRENT in
    $DEPTH)
      _arguments \
        '*: :->subcommands'

      case $state in
        subcommands)
          _values \
            'subcommand' \
            'list[List previous deployments]' \
            'show[Show verbose information for a deployment]' \
            'help[Describe subcommands or one specific subcommand]' \
            ;
          ;;
      esac
      ;;
    *)
      case $words[$DEPTH] in
        list)
          __dajoku_deployments_list
          ;;
        show)
          __dajoku_deployments_show
          ;;
        help)
          __dajoku_deployments_help
          ;;
        *)
          # if does not match any subcommand
          # complete rest arguments
          _files
          ;;
      esac
      ;;
  esac
}


__dajoku_deployments_list() {
  _arguments \
    {--page,-p}Display the nth (zero-indexed) page of deployments \
    {--page_limit,-l}Display n deployments per page \
    {--quiet,-q}Only display the deployment ID \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}

__dajoku_deployments_show() {
  _arguments \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}

__dajoku_deployments_help() {
  _arguments \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}


#compdef dajoku_domain

local state

_dajoku_domain() {
  __dajoku_domain
}

__dajoku_domain() {
  readonly local DEPTH=3

  case $CURRENT in
    $DEPTH)
      _arguments \
        '*: :->subcommands'

      case $state in
        subcommands)
          _values \
            'subcommand' \
            'list[List domains for application]' \
            'set[Add a new domain to an application]' \
            'del[Delete a domain from an application]' \
            'unset[Unset a domain for an environment]' \
            'help[Describe subcommands or one specific subcommand]' \
            ;
          ;;
      esac
      ;;
    *)
      case $words[$DEPTH] in
        list)
          __dajoku_domain_list
          ;;
        set)
          __dajoku_domain_set
          ;;
        del)
          __dajoku_domain_del
          ;;
        unset)
          __dajoku_domain_unset
          ;;
        help)
          __dajoku_domain_help
          ;;
        *)
          # if does not match any subcommand
          # complete rest arguments
          _files
          ;;
      esac
      ;;
  esac
}


__dajoku_domain_list() {
  _arguments \
    {--base,--b}Get domains inherited by all application environments \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}

__dajoku_domain_set() {
  _arguments \
    {--deploy} \
    {--base,--b}Set a domain inherited by all application environments \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}

__dajoku_domain_del() {
  _arguments \
    {--deploy} \
    {--base,--b}Delete a domain inherited by all application environments \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}

__dajoku_domain_unset() {
  _arguments \
    {--deploy} \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}

__dajoku_domain_help() {
  _arguments \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}


#compdef dajoku_env

local state

_dajoku_env() {
  __dajoku_env
}

__dajoku_env() {
  readonly local DEPTH=3

  case $CURRENT in
    $DEPTH)
      _arguments \
        '*: :->subcommands'

      case $state in
        subcommands)
          _values \
            'subcommand' \
            'list[Get a list of environments for an application]' \
            'show[Show verbose information for an environment]' \
            'create[Create a new environment]' \
            'destroy[Destroy an existing environment]' \
            'help[Describe subcommands or one specific subcommand]' \
            ;
          ;;
      esac
      ;;
    *)
      case $words[$DEPTH] in
        list)
          __dajoku_env_list
          ;;
        show)
          __dajoku_env_show
          ;;
        create)
          __dajoku_env_create
          ;;
        destroy)
          __dajoku_env_destroy
          ;;
        help)
          __dajoku_env_help
          ;;
        *)
          # if does not match any subcommand
          # complete rest arguments
          _files
          ;;
      esac
      ;;
  esac
}


__dajoku_env_list() {
  _arguments \
    {--quiet,-q}Show only an environment''s name and status \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}

__dajoku_env_show() {
  _arguments \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}

__dajoku_env_create() {
  _arguments \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}

__dajoku_env_destroy() {
  _arguments \
    {--force,-f}Force an environment destroy \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}

__dajoku_env_help() {
  _arguments \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}


#compdef dajoku_pg

local state

_dajoku_pg() {
  __dajoku_pg
}

__dajoku_pg() {
  readonly local DEPTH=3

  case $CURRENT in
    $DEPTH)
      _arguments \
        '*: :->subcommands'

      case $state in
        subcommands)
          _values \
            'subcommand' \
            'psql[Run one-off commands or an interactive session]' \
            'ps[View active queries with execution time]' \
            'locks[Display queries with active locks]' \
            'kill[Run pg_terminate_backend() for a PID]' \
            'killall[Terminate all connections]' \
            'help[Describe subcommands or one specific subcommand]' \
            ;
          ;;
      esac
      ;;
    *)
      case $words[$DEPTH] in
        psql)
          __dajoku_pg_psql
          ;;
        ps)
          __dajoku_pg_ps
          ;;
        locks)
          __dajoku_pg_locks
          ;;
        kill)
          __dajoku_pg_kill
          ;;
        killall)
          __dajoku_pg_killall
          ;;
        help)
          __dajoku_pg_help
          ;;
        *)
          # if does not match any subcommand
          # complete rest arguments
          _files
          ;;
      esac
      ;;
  esac
}


__dajoku_pg_psql() {
  _arguments \
    {--database,--b}Config variable to fetch database url from, defaults to DATABASE_URL \
    {--debug,--d}Verbose output \
    {--application,--a}Application \
    {--space,--s}Space \
    {--environment,--e}Environment \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}

__dajoku_pg_ps() {
  _arguments \
    {--database,--b}Config variable to fetch database url from, defaults to DATABASE_URL \
    {--debug,--d}Verbose output \
    {--application,--a}Application \
    {--space,--s}Space \
    {--environment,--e}Environment \
    {--verbose,--v} \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}

__dajoku_pg_locks() {
  _arguments \
    {--database,--b}Config variable to fetch database url from, defaults to DATABASE_URL \
    {--debug,--d}Verbose output \
    {--application,--a}Application \
    {--space,--s}Space \
    {--environment,--e}Environment \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}

__dajoku_pg_kill() {
  _arguments \
    {--database,--b}Config variable to fetch database url from, defaults to DATABASE_URL \
    {--debug,--d}Verbose output \
    {--application,--a}Application \
    {--space,--s}Space \
    {--environment,--e}Environment \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}

__dajoku_pg_killall() {
  _arguments \
    {--database,--b}Config variable to fetch database url from, defaults to DATABASE_URL \
    {--debug,--d}Verbose output \
    {--application,--a}Application \
    {--space,--s}Space \
    {--environment,--e}Environment \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}

__dajoku_pg_help() {
  _arguments \
    {--database,--b}Config variable to fetch database url from, defaults to DATABASE_URL \
    {--debug,--d}Verbose output \
    {--application,--a}Application \
    {--space,--s}Space \
    {--environment,--e}Environment \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}


#compdef dajoku_roles

local state

_dajoku_roles() {
  __dajoku_roles
}

__dajoku_roles() {
  readonly local DEPTH=3

  case $CURRENT in
    $DEPTH)
      _arguments \
        '*: :->subcommands'

      case $state in
        subcommands)
          _values \
            'subcommand' \
            'show[Show a user''s role for a given application, or globally]' \
            'grant[Grant a role to a user]' \
            'revoke[Revoke a user''s role]' \
            'help[Describe subcommands or one specific subcommand]' \
            ;
          ;;
      esac
      ;;
    *)
      case $words[$DEPTH] in
        show)
          __dajoku_roles_show
          ;;
        grant)
          __dajoku_roles_grant
          ;;
        revoke)
          __dajoku_roles_revoke
          ;;
        help)
          __dajoku_roles_help
          ;;
        *)
          # if does not match any subcommand
          # complete rest arguments
          _files
          ;;
      esac
      ;;
  esac
}


__dajoku_roles_show() {
  _arguments \
    {--global,--G}Use for assigning global roles \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}

__dajoku_roles_grant() {
  _arguments \
    {--global,--G}Use for assigning global roles \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}

__dajoku_roles_revoke() {
  _arguments \
    {--global,--G}Use for assigning global roles \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}

__dajoku_roles_help() {
  _arguments \
    {--global,--G}Use for assigning global roles \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}


#compdef dajoku_user

local state

_dajoku_user() {
  __dajoku_user
}

__dajoku_user() {
  readonly local DEPTH=3

  case $CURRENT in
    $DEPTH)
      _arguments \
        '*: :->subcommands'

      case $state in
        subcommands)
          _values \
            'subcommand' \
            'list[List all users]' \
            'create[Create a new user]' \
            'help[Describe subcommands or one specific subcommand]' \
            ;
          ;;
      esac
      ;;
    *)
      case $words[$DEPTH] in
        list)
          __dajoku_user_list
          ;;
        create)
          __dajoku_user_create
          ;;
        help)
          __dajoku_user_help
          ;;
        *)
          # if does not match any subcommand
          # complete rest arguments
          _files
          ;;
      esac
      ;;
  esac
}


__dajoku_user_list() {
  _arguments \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}

__dajoku_user_create() {
  _arguments \
    {--name,--N}Full name \
    {--email,--E}Email \
    {--phone_number,--P}Phone number \
    {--duo_login,--D}Duo login name \
    {--public_keys,--K}Public keys \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}

__dajoku_user_help() {
  _arguments \
    '*: :->rest'

  case $state in
    rest)
      # complete rest arguments
      _files
      ;;
  esac
}


compdef _dajoku dajoku
compdef _dajoku_app app
compdef _dajoku_auth auth
compdef _dajoku_component component
compdef _dajoku_config config
compdef _dajoku_deployments deployments
compdef _dajoku_domain domain
compdef _dajoku_env env
compdef _dajoku_pg pg
compdef _dajoku_roles roles
compdef _dajoku_user user
