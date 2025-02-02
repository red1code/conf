# rhc
#
# This is the bash auto completion script for the rhc command
#
if `which rhc 2>/dev/null`; then
  _rhc()
  {
    local cur opts prev
    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"
    if [ $COMP_CWORD -eq 1 ]; then
      if [[ "$cur" == -* ]]; then
        opts="--always-prefix --clean --config --debug --header --insecure --limit --mock --noprompt --password --raw --rhlogin --server --ssl-ca-file --ssl-client-cert-file --ssl-client-key-file --ssl-version --timeout --token"
      elif [ -z $cur ]; then
        opts="account alias alias-add alias-delete-cert alias-list alias-remove alias-update-cert app app-configure app-create app-delete app-deploy app-enable-ha app-force-stop app-reload app-restart app-scale-down app-scale-up app-show app-start app-stop app-tidy apps authorization authorization-add authorization-delete authorization-delete-all authorization-list cartridge cartridge-add cartridge-list cartridge-reload cartridge-remove cartridge-restart cartridge-scale cartridge-show cartridge-start cartridge-status cartridge-stop cartridge-storage deployment deployment-activate deployment-list deployment-show domain domain-configure domain-create domain-delete domain-leave domain-list domain-rename domain-show env env-list env-set env-show env-unset git-clone help logout member member-add member-list member-remove member-update port-forward region region-list scp server server-add server-configure server-list server-remove server-show server-status server-use setup snapshot snapshot-restore snapshot-save ssh sshkey sshkey-add sshkey-list sshkey-remove sshkey-show tail team team-create team-delete team-leave team-list team-show threaddump"
      else
        opts="account account-logout activate-deployment add-alias add-authorization add-cartridge add-member add-server add-sshkey alias alias-add alias-delete-cert alias-list alias-remove alias-update-cert aliases app app-configure app-create app-delete app-deploy app-enable-ha app-env app-force-stop app-reload app-restart app-scale-down app-scale-up app-scp app-show app-snapshot app-ssh app-start app-stop app-tidy apps authorization authorization-add authorization-delete authorization-delete-all authorization-list authorizations cartridge cartridge-add cartridge-list cartridge-reload cartridge-remove cartridge-restart cartridge-scale cartridge-show cartridge-start cartridge-status cartridge-stop cartridge-storage cartridges configure-app configure-domain configure-server create-app create-domain create-team delete-all-authorization delete-app delete-authorization delete-cert-alias delete-domain delete-team deploy deploy-app deployment deployment-activate deployment-list deployment-show deployments domain domain-configure domain-create domain-delete domain-leave domain-list domain-rename domain-show domains enable-ha-app env env-add env-list env-remove env-set env-show env-unset envs force-stop-app git-clone help leave-domain leave-team list-alias list-authorization list-cartridge list-deployment list-domain list-env list-member list-region list-server list-sshkey list-team logout member member-add member-list member-remove member-update members port-forward region region-list regions reload-app reload-cartridge remove-alias remove-cartridge remove-member remove-server remove-sshkey rename-domain restart-app restart-cartridge restore-snapshot save-snapshot scale-cartridge scale-down-app scale-up-app scp server server-add server-configure server-list server-remove server-show server-status server-use servers set-env setup show-app show-cartridge show-deployment show-domain show-env show-server show-sshkey show-team snapshot snapshot-restore snapshot-save ssh sshkey sshkey-add sshkey-list sshkey-remove sshkey-show sshkeys start-app start-cartridge status-cartridge status-server stop-app stop-cartridge storage-cartridge tail team team-create team-delete team-leave team-list team-show teams threaddump tidy-app unset-env update-cert-alias update-member use-server"
      fi
    else
      prev="${COMP_WORDS[@]:0:COMP_CWORD}"
      SAVE_IFS=$IFS
      IFS=" "
      case "${prev[*]}" in

        "rhc account")
          if [[ "$cur" == -* ]]; then
            opts=""
          else
            opts=""
          fi
          ;;

        "rhc account logout")
          if [[ "$cur" == -* ]]; then
            opts="--all"
          else
            opts=""
          fi
          ;;

        "rhc account-logout")
          if [[ "$cur" == -* ]]; then
            opts="--all"
          else
            opts=""
          fi
          ;;

        "rhc activate-deployment")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --id --namespace"
          else
            opts=""
          fi
          ;;

        "rhc add-alias")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --namespace"
          else
            opts=""
          fi
          ;;

        "rhc add-authorization")
          if [[ "$cur" == -* ]]; then
            opts="--expires-in --note --scopes"
          else
            opts=""
          fi
          ;;

        "rhc add-cartridge")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --cartridge --env --gear-size --namespace"
          else
            opts=""
          fi
          ;;

        "rhc add-member")
          if [[ "$cur" == -* ]]; then
            opts="--global --ids --namespace --role --team-id --team-name --type"
          else
            opts=""
          fi
          ;;

        "rhc add-server")
          if [[ "$cur" == -* ]]; then
            opts="--insecure --nickname --no-insecure --no-use-authorization-tokens --rhlogin --server --skip-wizard --ssl-ca-file --ssl-client-cert-file --ssl-client-key-file --ssl-version --timeout --use --use-authorization-tokens"
          else
            opts=""
          fi
          ;;

        "rhc add-sshkey")
          if [[ "$cur" == -* ]]; then
            opts="--confirm --content --type"
          else
            opts=""
          fi
          ;;

        "rhc alias")
          if [[ "$cur" == -* ]]; then
            opts=""
          else
            opts="add delete-cert list remove update-cert"
          fi
          ;;

        "rhc alias add")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --namespace"
          else
            opts=""
          fi
          ;;

        "rhc alias delete-cert")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --confirm --namespace"
          else
            opts=""
          fi
          ;;

        "rhc alias list")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --namespace"
          else
            opts=""
          fi
          ;;

        "rhc alias remove")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --namespace"
          else
            opts=""
          fi
          ;;

        "rhc alias update-cert")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --certificate --namespace --passphrase --private-key"
          else
            opts=""
          fi
          ;;

        "rhc alias-add")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --namespace"
          else
            opts=""
          fi
          ;;

        "rhc alias-delete-cert")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --confirm --namespace"
          else
            opts=""
          fi
          ;;

        "rhc alias-list")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --namespace"
          else
            opts=""
          fi
          ;;

        "rhc alias-remove")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --namespace"
          else
            opts=""
          fi
          ;;

        "rhc alias-update-cert")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --certificate --namespace --passphrase --private-key"
          else
            opts=""
          fi
          ;;

        "rhc aliases")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --namespace"
          else
            opts=""
          fi
          ;;

        "rhc app")
          if [[ "$cur" == -* ]]; then
            opts=""
          else
            opts="configure create delete deploy enable-ha env force-stop reload restart scale-down scale-up show snapshot start stop tidy"
          fi
          ;;

        "rhc app configure")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --auto-deploy --deployment-branch --deployment-type --keep-deployments --namespace --no-auto-deploy"
          else
            opts=""
          fi
          ;;

        "rhc app create")
          if [[ "$cur" == -* ]]; then
            opts="--app --dns --enable-jenkins --env --from-app --from-code --gear-size --git --namespace --no-dns --no-git --no-keys --no-scaling --region --repo --scaling --type"
          else
            opts=""
          fi
          ;;

        "rhc app delete")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --confirm --namespace"
          else
            opts=""
          fi
          ;;

        "rhc app deploy")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --force-clean-build --hot-deploy --namespace --no-force-clean-build --no-hot-deploy --ref"
          else
            opts=""
          fi
          ;;

        "rhc app enable-ha")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --namespace"
          else
            opts=""
          fi
          ;;

        "rhc app env")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --confirm --env --namespace"
          else
            opts=""
          fi
          ;;

        "rhc app force-stop")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --namespace"
          else
            opts=""
          fi
          ;;

        "rhc app reload")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --namespace"
          else
            opts=""
          fi
          ;;

        "rhc app restart")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --namespace"
          else
            opts=""
          fi
          ;;

        "rhc app scale-down")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --namespace"
          else
            opts=""
          fi
          ;;

        "rhc app scale-up")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --namespace"
          else
            opts=""
          fi
          ;;

        "rhc app scp")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --local-path --namespace --remote-path --transfer-direction"
          else
            opts=""
          fi
          ;;

        "rhc app show")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --configuration --gears --namespace --state --verbose"
          else
            opts=""
          fi
          ;;

        "rhc app snapshot")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --deployment --filepath --namespace --ssh"
          else
            opts=""
          fi
          ;;

        "rhc app ssh")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --command --gears --limit --namespace --raw --ssh"
          else
            opts=""
          fi
          ;;

        "rhc app start")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --namespace"
          else
            opts=""
          fi
          ;;

        "rhc app stop")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --namespace"
          else
            opts=""
          fi
          ;;

        "rhc app tidy")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --namespace"
          else
            opts=""
          fi
          ;;

        "rhc app-configure")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --auto-deploy --deployment-branch --deployment-type --keep-deployments --namespace --no-auto-deploy"
          else
            opts=""
          fi
          ;;

        "rhc app-create")
          if [[ "$cur" == -* ]]; then
            opts="--app --dns --enable-jenkins --env --from-app --from-code --gear-size --git --namespace --no-dns --no-git --no-keys --no-scaling --region --repo --scaling --type"
          else
            opts=""
          fi
          ;;

        "rhc app-delete")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --confirm --namespace"
          else
            opts=""
          fi
          ;;

        "rhc app-deploy")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --force-clean-build --hot-deploy --namespace --no-force-clean-build --no-hot-deploy --ref"
          else
            opts=""
          fi
          ;;

        "rhc app-enable-ha")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --namespace"
          else
            opts=""
          fi
          ;;

        "rhc app-env")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --confirm --env --namespace"
          else
            opts=""
          fi
          ;;

        "rhc app-force-stop")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --namespace"
          else
            opts=""
          fi
          ;;

        "rhc app-reload")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --namespace"
          else
            opts=""
          fi
          ;;

        "rhc app-restart")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --namespace"
          else
            opts=""
          fi
          ;;

        "rhc app-scale-down")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --namespace"
          else
            opts=""
          fi
          ;;

        "rhc app-scale-up")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --namespace"
          else
            opts=""
          fi
          ;;

        "rhc app-scp")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --local-path --namespace --remote-path --transfer-direction"
          else
            opts=""
          fi
          ;;

        "rhc app-show")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --configuration --gears --namespace --state --verbose"
          else
            opts=""
          fi
          ;;

        "rhc app-snapshot")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --deployment --filepath --namespace --ssh"
          else
            opts=""
          fi
          ;;

        "rhc app-ssh")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --command --gears --limit --namespace --raw --ssh"
          else
            opts=""
          fi
          ;;

        "rhc app-start")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --namespace"
          else
            opts=""
          fi
          ;;

        "rhc app-stop")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --namespace"
          else
            opts=""
          fi
          ;;

        "rhc app-tidy")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --namespace"
          else
            opts=""
          fi
          ;;

        "rhc apps")
          if [[ "$cur" == -* ]]; then
            opts="--mine --summary --verbose"
          else
            opts=""
          fi
          ;;

        "rhc authorization")
          if [[ "$cur" == -* ]]; then
            opts=""
          else
            opts="add delete delete-all list"
          fi
          ;;

        "rhc authorization add")
          if [[ "$cur" == -* ]]; then
            opts="--expires-in --note --scopes"
          else
            opts=""
          fi
          ;;

        "rhc authorization delete")
          if [[ "$cur" == -* ]]; then
            opts="--auth-token"
          else
            opts=""
          fi
          ;;

        "rhc authorization delete-all")
          if [[ "$cur" == -* ]]; then
            opts=""
          else
            opts=""
          fi
          ;;

        "rhc authorization list")
          if [[ "$cur" == -* ]]; then
            opts=""
          else
            opts=""
          fi
          ;;

        "rhc authorization-add")
          if [[ "$cur" == -* ]]; then
            opts="--expires-in --note --scopes"
          else
            opts=""
          fi
          ;;

        "rhc authorization-delete")
          if [[ "$cur" == -* ]]; then
            opts="--auth-token"
          else
            opts=""
          fi
          ;;

        "rhc authorization-delete-all")
          if [[ "$cur" == -* ]]; then
            opts=""
          else
            opts=""
          fi
          ;;

        "rhc authorization-list")
          if [[ "$cur" == -* ]]; then
            opts=""
          else
            opts=""
          fi
          ;;

        "rhc authorizations")
          if [[ "$cur" == -* ]]; then
            opts=""
          else
            opts=""
          fi
          ;;

        "rhc cartridge")
          if [[ "$cur" == -* ]]; then
            opts=""
          else
            opts="add list reload remove restart scale show start status stop storage"
          fi
          ;;

        "rhc cartridge add")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --cartridge --env --gear-size --namespace"
          else
            opts=""
          fi
          ;;

        "rhc cartridge list")
          if [[ "$cur" == -* ]]; then
            opts="--verbose"
          else
            opts=""
          fi
          ;;

        "rhc cartridge reload")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --cartridge --namespace"
          else
            opts=""
          fi
          ;;

        "rhc cartridge remove")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --cartridge --confirm --namespace"
          else
            opts=""
          fi
          ;;

        "rhc cartridge restart")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --cartridge --namespace"
          else
            opts=""
          fi
          ;;

        "rhc cartridge scale")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --cartridge --max --min --namespace"
          else
            opts=""
          fi
          ;;

        "rhc cartridge show")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --cartridge --namespace"
          else
            opts=""
          fi
          ;;

        "rhc cartridge start")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --cartridge --namespace"
          else
            opts=""
          fi
          ;;

        "rhc cartridge status")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --cartridge --namespace"
          else
            opts=""
          fi
          ;;

        "rhc cartridge stop")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --cartridge --namespace"
          else
            opts=""
          fi
          ;;

        "rhc cartridge storage")
          if [[ "$cur" == -* ]]; then
            opts="--add --app --application-id --cartridge --force --namespace --remove --set --show"
          else
            opts=""
          fi
          ;;

        "rhc cartridge-add")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --cartridge --env --gear-size --namespace"
          else
            opts=""
          fi
          ;;

        "rhc cartridge-list")
          if [[ "$cur" == -* ]]; then
            opts="--verbose"
          else
            opts=""
          fi
          ;;

        "rhc cartridge-reload")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --cartridge --namespace"
          else
            opts=""
          fi
          ;;

        "rhc cartridge-remove")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --cartridge --confirm --namespace"
          else
            opts=""
          fi
          ;;

        "rhc cartridge-restart")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --cartridge --namespace"
          else
            opts=""
          fi
          ;;

        "rhc cartridge-scale")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --cartridge --max --min --namespace"
          else
            opts=""
          fi
          ;;

        "rhc cartridge-show")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --cartridge --namespace"
          else
            opts=""
          fi
          ;;

        "rhc cartridge-start")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --cartridge --namespace"
          else
            opts=""
          fi
          ;;

        "rhc cartridge-status")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --cartridge --namespace"
          else
            opts=""
          fi
          ;;

        "rhc cartridge-stop")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --cartridge --namespace"
          else
            opts=""
          fi
          ;;

        "rhc cartridge-storage")
          if [[ "$cur" == -* ]]; then
            opts="--add --app --application-id --cartridge --force --namespace --remove --set --show"
          else
            opts=""
          fi
          ;;

        "rhc cartridges")
          if [[ "$cur" == -* ]]; then
            opts="--verbose"
          else
            opts=""
          fi
          ;;

        "rhc configure-app")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --auto-deploy --deployment-branch --deployment-type --keep-deployments --namespace --no-auto-deploy"
          else
            opts=""
          fi
          ;;

        "rhc configure-domain")
          if [[ "$cur" == -* ]]; then
            opts="--allowed-gear-sizes --namespace --no-allowed-gear-sizes"
          else
            opts=""
          fi
          ;;

        "rhc configure-server")
          if [[ "$cur" == -* ]]; then
            opts="--hostname --insecure --nickname --no-insecure --no-use-authorization-tokens --rhlogin --server --skip-wizard --ssl-ca-file --ssl-client-cert-file --ssl-client-key-file --ssl-version --timeout --use --use-authorization-tokens"
          else
            opts=""
          fi
          ;;

        "rhc create-app")
          if [[ "$cur" == -* ]]; then
            opts="--app --dns --enable-jenkins --env --from-app --from-code --gear-size --git --namespace --no-dns --no-git --no-keys --no-scaling --region --repo --scaling --type"
          else
            opts=""
          fi
          ;;

        "rhc create-domain")
          if [[ "$cur" == -* ]]; then
            opts="--allowed-gear-sizes --namespace --no-allowed-gear-sizes"
          else
            opts=""
          fi
          ;;

        "rhc create-team")
          if [[ "$cur" == -* ]]; then
            opts="--team-name"
          else
            opts=""
          fi
          ;;

        "rhc delete-all-authorization")
          if [[ "$cur" == -* ]]; then
            opts=""
          else
            opts=""
          fi
          ;;

        "rhc delete-app")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --confirm --namespace"
          else
            opts=""
          fi
          ;;

        "rhc delete-authorization")
          if [[ "$cur" == -* ]]; then
            opts="--auth-token"
          else
            opts=""
          fi
          ;;

        "rhc delete-cert-alias")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --confirm --namespace"
          else
            opts=""
          fi
          ;;

        "rhc delete-domain")
          if [[ "$cur" == -* ]]; then
            opts="--force --namespace"
          else
            opts=""
          fi
          ;;

        "rhc delete-team")
          if [[ "$cur" == -* ]]; then
            opts="--team-id --team-name"
          else
            opts=""
          fi
          ;;

        "rhc deploy")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --force-clean-build --hot-deploy --namespace --no-force-clean-build --no-hot-deploy --ref"
          else
            opts=""
          fi
          ;;

        "rhc deploy-app")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --force-clean-build --hot-deploy --namespace --no-force-clean-build --no-hot-deploy --ref"
          else
            opts=""
          fi
          ;;

        "rhc deployment")
          if [[ "$cur" == -* ]]; then
            opts=""
          else
            opts="activate list show"
          fi
          ;;

        "rhc deployment activate")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --id --namespace"
          else
            opts=""
          fi
          ;;

        "rhc deployment list")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --namespace"
          else
            opts=""
          fi
          ;;

        "rhc deployment show")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --id --namespace"
          else
            opts=""
          fi
          ;;

        "rhc deployment-activate")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --id --namespace"
          else
            opts=""
          fi
          ;;

        "rhc deployment-list")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --namespace"
          else
            opts=""
          fi
          ;;

        "rhc deployment-show")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --id --namespace"
          else
            opts=""
          fi
          ;;

        "rhc deployments")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --namespace"
          else
            opts=""
          fi
          ;;

        "rhc domain")
          if [[ "$cur" == -* ]]; then
            opts=""
          else
            opts="configure create delete leave list rename show"
          fi
          ;;

        "rhc domain configure")
          if [[ "$cur" == -* ]]; then
            opts="--allowed-gear-sizes --namespace --no-allowed-gear-sizes"
          else
            opts=""
          fi
          ;;

        "rhc domain create")
          if [[ "$cur" == -* ]]; then
            opts="--allowed-gear-sizes --namespace --no-allowed-gear-sizes"
          else
            opts=""
          fi
          ;;

        "rhc domain delete")
          if [[ "$cur" == -* ]]; then
            opts="--force --namespace"
          else
            opts=""
          fi
          ;;

        "rhc domain leave")
          if [[ "$cur" == -* ]]; then
            opts="--namespace"
          else
            opts=""
          fi
          ;;

        "rhc domain list")
          if [[ "$cur" == -* ]]; then
            opts="--ids --mine"
          else
            opts=""
          fi
          ;;

        "rhc domain rename")
          if [[ "$cur" == -* ]]; then
            opts="--namespace"
          else
            opts=""
          fi
          ;;

        "rhc domain show")
          if [[ "$cur" == -* ]]; then
            opts="--namespace"
          else
            opts=""
          fi
          ;;

        "rhc domain-configure")
          if [[ "$cur" == -* ]]; then
            opts="--allowed-gear-sizes --namespace --no-allowed-gear-sizes"
          else
            opts=""
          fi
          ;;

        "rhc domain-create")
          if [[ "$cur" == -* ]]; then
            opts="--allowed-gear-sizes --namespace --no-allowed-gear-sizes"
          else
            opts=""
          fi
          ;;

        "rhc domain-delete")
          if [[ "$cur" == -* ]]; then
            opts="--force --namespace"
          else
            opts=""
          fi
          ;;

        "rhc domain-leave")
          if [[ "$cur" == -* ]]; then
            opts="--namespace"
          else
            opts=""
          fi
          ;;

        "rhc domain-list")
          if [[ "$cur" == -* ]]; then
            opts="--ids --mine"
          else
            opts=""
          fi
          ;;

        "rhc domain-rename")
          if [[ "$cur" == -* ]]; then
            opts="--namespace"
          else
            opts=""
          fi
          ;;

        "rhc domain-show")
          if [[ "$cur" == -* ]]; then
            opts="--namespace"
          else
            opts=""
          fi
          ;;

        "rhc domains")
          if [[ "$cur" == -* ]]; then
            opts="--ids --mine"
          else
            opts=""
          fi
          ;;

        "rhc enable-ha-app")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --namespace"
          else
            opts=""
          fi
          ;;

        "rhc env")
          if [[ "$cur" == -* ]]; then
            opts=""
          else
            opts="add list remove set show unset"
          fi
          ;;

        "rhc env add")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --confirm --env --namespace"
          else
            opts=""
          fi
          ;;

        "rhc env list")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --namespace --quotes --table"
          else
            opts=""
          fi
          ;;

        "rhc env remove")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --confirm --env --namespace"
          else
            opts=""
          fi
          ;;

        "rhc env set")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --confirm --env --namespace"
          else
            opts=""
          fi
          ;;

        "rhc env show")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --env --namespace --quotes --table"
          else
            opts=""
          fi
          ;;

        "rhc env unset")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --confirm --env --namespace"
          else
            opts=""
          fi
          ;;

        "rhc env-add")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --confirm --env --namespace"
          else
            opts=""
          fi
          ;;

        "rhc env-list")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --namespace --quotes --table"
          else
            opts=""
          fi
          ;;

        "rhc env-remove")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --confirm --env --namespace"
          else
            opts=""
          fi
          ;;

        "rhc env-set")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --confirm --env --namespace"
          else
            opts=""
          fi
          ;;

        "rhc env-show")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --env --namespace --quotes --table"
          else
            opts=""
          fi
          ;;

        "rhc env-unset")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --confirm --env --namespace"
          else
            opts=""
          fi
          ;;

        "rhc envs")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --namespace --quotes --table"
          else
            opts=""
          fi
          ;;

        "rhc force-stop-app")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --namespace"
          else
            opts=""
          fi
          ;;

        "rhc git-clone")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --namespace --repo"
          else
            opts=""
          fi
          ;;

        "rhc help")
          if [[ "$cur" == -* ]]; then
            opts=""
          else
            opts="account account-logout activate-deployment add-alias add-authorization add-cartridge add-member add-server add-sshkey alias alias-add alias-delete-cert alias-list alias-remove alias-update-cert aliases app app-configure app-create app-delete app-deploy app-enable-ha app-env app-force-stop app-reload app-restart app-scale-down app-scale-up app-scp app-show app-snapshot app-ssh app-start app-stop app-tidy apps authorization authorization-add authorization-delete authorization-delete-all authorization-list authorizations cartridge cartridge-add cartridge-list cartridge-reload cartridge-remove cartridge-restart cartridge-scale cartridge-show cartridge-start cartridge-status cartridge-stop cartridge-storage cartridges configure-app configure-domain configure-server create-app create-domain create-team delete-all-authorization delete-app delete-authorization delete-cert-alias delete-domain delete-team deploy deploy-app deployment deployment-activate deployment-list deployment-show deployments domain domain-configure domain-create domain-delete domain-leave domain-list domain-rename domain-show domains enable-ha-app env env-add env-list env-remove env-set env-show env-unset envs force-stop-app git-clone leave-domain leave-team list-alias list-authorization list-cartridge list-deployment list-domain list-env list-member list-region list-server list-sshkey list-team logout member member-add member-list member-remove member-update members port-forward region region-list regions reload-app reload-cartridge remove-alias remove-cartridge remove-member remove-server remove-sshkey rename-domain restart-app restart-cartridge restore-snapshot save-snapshot scale-cartridge scale-down-app scale-up-app scp server server-add server-configure server-list server-remove server-show server-status server-use servers set-env setup show-app show-cartridge show-deployment show-domain show-env show-server show-sshkey show-team snapshot snapshot-restore snapshot-save ssh sshkey sshkey-add sshkey-list sshkey-remove sshkey-show sshkeys start-app start-cartridge status-cartridge status-server stop-app stop-cartridge storage-cartridge tail team team-create team-delete team-leave team-list team-show teams threaddump tidy-app unset-env update-cert-alias update-member use-server"
          fi
          ;;

        "rhc leave-domain")
          if [[ "$cur" == -* ]]; then
            opts="--namespace"
          else
            opts=""
          fi
          ;;

        "rhc leave-team")
          if [[ "$cur" == -* ]]; then
            opts="--team-id --team-name"
          else
            opts=""
          fi
          ;;

        "rhc list-alias")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --namespace"
          else
            opts=""
          fi
          ;;

        "rhc list-authorization")
          if [[ "$cur" == -* ]]; then
            opts=""
          else
            opts=""
          fi
          ;;

        "rhc list-cartridge")
          if [[ "$cur" == -* ]]; then
            opts="--verbose"
          else
            opts=""
          fi
          ;;

        "rhc list-deployment")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --namespace"
          else
            opts=""
          fi
          ;;

        "rhc list-domain")
          if [[ "$cur" == -* ]]; then
            opts="--ids --mine"
          else
            opts=""
          fi
          ;;

        "rhc list-env")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --namespace --quotes --table"
          else
            opts=""
          fi
          ;;

        "rhc list-member")
          if [[ "$cur" == -* ]]; then
            opts="--all --app --ids --namespace --target --team-id --team-name"
          else
            opts=""
          fi
          ;;

        "rhc list-region")
          if [[ "$cur" == -* ]]; then
            opts=""
          else
            opts=""
          fi
          ;;

        "rhc list-server")
          if [[ "$cur" == -* ]]; then
            opts=""
          else
            opts=""
          fi
          ;;

        "rhc list-sshkey")
          if [[ "$cur" == -* ]]; then
            opts=""
          else
            opts=""
          fi
          ;;

        "rhc list-team")
          if [[ "$cur" == -* ]]; then
            opts="--mine"
          else
            opts=""
          fi
          ;;

        "rhc logout")
          if [[ "$cur" == -* ]]; then
            opts="--all"
          else
            opts=""
          fi
          ;;

        "rhc member")
          if [[ "$cur" == -* ]]; then
            opts=""
          else
            opts="add list remove update"
          fi
          ;;

        "rhc member add")
          if [[ "$cur" == -* ]]; then
            opts="--global --ids --namespace --role --team-id --team-name --type"
          else
            opts=""
          fi
          ;;

        "rhc member list")
          if [[ "$cur" == -* ]]; then
            opts="--all --app --ids --namespace --target --team-id --team-name"
          else
            opts=""
          fi
          ;;

        "rhc member remove")
          if [[ "$cur" == -* ]]; then
            opts="--all --ids --namespace --team-id --team-name --type"
          else
            opts=""
          fi
          ;;

        "rhc member update")
          if [[ "$cur" == -* ]]; then
            opts="--ids --namespace --role --type"
          else
            opts=""
          fi
          ;;

        "rhc member-add")
          if [[ "$cur" == -* ]]; then
            opts="--global --ids --namespace --role --team-id --team-name --type"
          else
            opts=""
          fi
          ;;

        "rhc member-list")
          if [[ "$cur" == -* ]]; then
            opts="--all --app --ids --namespace --target --team-id --team-name"
          else
            opts=""
          fi
          ;;

        "rhc member-remove")
          if [[ "$cur" == -* ]]; then
            opts="--all --ids --namespace --team-id --team-name --type"
          else
            opts=""
          fi
          ;;

        "rhc member-update")
          if [[ "$cur" == -* ]]; then
            opts="--ids --namespace --role --type"
          else
            opts=""
          fi
          ;;

        "rhc members")
          if [[ "$cur" == -* ]]; then
            opts="--all --app --ids --namespace --target --team-id --team-name"
          else
            opts=""
          fi
          ;;

        "rhc port-forward")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --gear --namespace"
          else
            opts=""
          fi
          ;;

        "rhc region")
          if [[ "$cur" == -* ]]; then
            opts=""
          else
            opts="list"
          fi
          ;;

        "rhc region list")
          if [[ "$cur" == -* ]]; then
            opts=""
          else
            opts=""
          fi
          ;;

        "rhc region-list")
          if [[ "$cur" == -* ]]; then
            opts=""
          else
            opts=""
          fi
          ;;

        "rhc regions")
          if [[ "$cur" == -* ]]; then
            opts=""
          else
            opts=""
          fi
          ;;

        "rhc reload-app")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --namespace"
          else
            opts=""
          fi
          ;;

        "rhc reload-cartridge")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --cartridge --namespace"
          else
            opts=""
          fi
          ;;

        "rhc remove-alias")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --namespace"
          else
            opts=""
          fi
          ;;

        "rhc remove-cartridge")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --cartridge --confirm --namespace"
          else
            opts=""
          fi
          ;;

        "rhc remove-member")
          if [[ "$cur" == -* ]]; then
            opts="--all --ids --namespace --team-id --team-name --type"
          else
            opts=""
          fi
          ;;

        "rhc remove-server")
          if [[ "$cur" == -* ]]; then
            opts="--server"
          else
            opts=""
          fi
          ;;

        "rhc remove-sshkey")
          if [[ "$cur" == -* ]]; then
            opts=""
          else
            opts=""
          fi
          ;;

        "rhc rename-domain")
          if [[ "$cur" == -* ]]; then
            opts="--namespace"
          else
            opts=""
          fi
          ;;

        "rhc restart-app")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --namespace"
          else
            opts=""
          fi
          ;;

        "rhc restart-cartridge")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --cartridge --namespace"
          else
            opts=""
          fi
          ;;

        "rhc restore-snapshot")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --filepath --namespace --ssh"
          else
            opts=""
          fi
          ;;

        "rhc save-snapshot")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --deployment --filepath --namespace --ssh"
          else
            opts=""
          fi
          ;;

        "rhc scale-cartridge")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --cartridge --max --min --namespace"
          else
            opts=""
          fi
          ;;

        "rhc scale-down-app")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --namespace"
          else
            opts=""
          fi
          ;;

        "rhc scale-up-app")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --namespace"
          else
            opts=""
          fi
          ;;

        "rhc scp")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --local-path --namespace --remote-path --transfer-direction"
          else
            opts=""
          fi
          ;;

        "rhc server")
          if [[ "$cur" == -* ]]; then
            opts=""
          else
            opts="add configure list remove show status use"
          fi
          ;;

        "rhc server add")
          if [[ "$cur" == -* ]]; then
            opts="--insecure --nickname --no-insecure --no-use-authorization-tokens --rhlogin --server --skip-wizard --ssl-ca-file --ssl-client-cert-file --ssl-client-key-file --ssl-version --timeout --use --use-authorization-tokens"
          else
            opts=""
          fi
          ;;

        "rhc server configure")
          if [[ "$cur" == -* ]]; then
            opts="--hostname --insecure --nickname --no-insecure --no-use-authorization-tokens --rhlogin --server --skip-wizard --ssl-ca-file --ssl-client-cert-file --ssl-client-key-file --ssl-version --timeout --use --use-authorization-tokens"
          else
            opts=""
          fi
          ;;

        "rhc server list")
          if [[ "$cur" == -* ]]; then
            opts=""
          else
            opts=""
          fi
          ;;

        "rhc server remove")
          if [[ "$cur" == -* ]]; then
            opts="--server"
          else
            opts=""
          fi
          ;;

        "rhc server show")
          if [[ "$cur" == -* ]]; then
            opts="--server"
          else
            opts=""
          fi
          ;;

        "rhc server status")
          if [[ "$cur" == -* ]]; then
            opts="--server"
          else
            opts=""
          fi
          ;;

        "rhc server use")
          if [[ "$cur" == -* ]]; then
            opts="--server"
          else
            opts=""
          fi
          ;;

        "rhc server-add")
          if [[ "$cur" == -* ]]; then
            opts="--insecure --nickname --no-insecure --no-use-authorization-tokens --rhlogin --server --skip-wizard --ssl-ca-file --ssl-client-cert-file --ssl-client-key-file --ssl-version --timeout --use --use-authorization-tokens"
          else
            opts=""
          fi
          ;;

        "rhc server-configure")
          if [[ "$cur" == -* ]]; then
            opts="--hostname --insecure --nickname --no-insecure --no-use-authorization-tokens --rhlogin --server --skip-wizard --ssl-ca-file --ssl-client-cert-file --ssl-client-key-file --ssl-version --timeout --use --use-authorization-tokens"
          else
            opts=""
          fi
          ;;

        "rhc server-list")
          if [[ "$cur" == -* ]]; then
            opts=""
          else
            opts=""
          fi
          ;;

        "rhc server-remove")
          if [[ "$cur" == -* ]]; then
            opts="--server"
          else
            opts=""
          fi
          ;;

        "rhc server-show")
          if [[ "$cur" == -* ]]; then
            opts="--server"
          else
            opts=""
          fi
          ;;

        "rhc server-status")
          if [[ "$cur" == -* ]]; then
            opts="--server"
          else
            opts=""
          fi
          ;;

        "rhc server-use")
          if [[ "$cur" == -* ]]; then
            opts="--server"
          else
            opts=""
          fi
          ;;

        "rhc servers")
          if [[ "$cur" == -* ]]; then
            opts=""
          else
            opts=""
          fi
          ;;

        "rhc set-env")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --confirm --env --namespace"
          else
            opts=""
          fi
          ;;

        "rhc setup")
          if [[ "$cur" == -* ]]; then
            opts="--autocomplete --clean --create-token --no-create-token --server"
          else
            opts=""
          fi
          ;;

        "rhc show-app")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --configuration --gears --namespace --state --verbose"
          else
            opts=""
          fi
          ;;

        "rhc show-cartridge")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --cartridge --namespace"
          else
            opts=""
          fi
          ;;

        "rhc show-deployment")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --id --namespace"
          else
            opts=""
          fi
          ;;

        "rhc show-domain")
          if [[ "$cur" == -* ]]; then
            opts="--namespace"
          else
            opts=""
          fi
          ;;

        "rhc show-env")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --env --namespace --quotes --table"
          else
            opts=""
          fi
          ;;

        "rhc show-server")
          if [[ "$cur" == -* ]]; then
            opts="--server"
          else
            opts=""
          fi
          ;;

        "rhc show-sshkey")
          if [[ "$cur" == -* ]]; then
            opts=""
          else
            opts=""
          fi
          ;;

        "rhc show-team")
          if [[ "$cur" == -* ]]; then
            opts="--team-id --team-name"
          else
            opts=""
          fi
          ;;

        "rhc snapshot")
          if [[ "$cur" == -* ]]; then
            opts=""
          else
            opts="restore save"
          fi
          ;;

        "rhc snapshot restore")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --filepath --namespace --ssh"
          else
            opts=""
          fi
          ;;

        "rhc snapshot save")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --deployment --filepath --namespace --ssh"
          else
            opts=""
          fi
          ;;

        "rhc snapshot-restore")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --filepath --namespace --ssh"
          else
            opts=""
          fi
          ;;

        "rhc snapshot-save")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --deployment --filepath --namespace --ssh"
          else
            opts=""
          fi
          ;;

        "rhc ssh")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --command --gears --limit --namespace --raw --ssh"
          else
            opts=""
          fi
          ;;

        "rhc sshkey")
          if [[ "$cur" == -* ]]; then
            opts=""
          else
            opts="add list remove show"
          fi
          ;;

        "rhc sshkey add")
          if [[ "$cur" == -* ]]; then
            opts="--confirm --content --type"
          else
            opts=""
          fi
          ;;

        "rhc sshkey list")
          if [[ "$cur" == -* ]]; then
            opts=""
          else
            opts=""
          fi
          ;;

        "rhc sshkey remove")
          if [[ "$cur" == -* ]]; then
            opts=""
          else
            opts=""
          fi
          ;;

        "rhc sshkey show")
          if [[ "$cur" == -* ]]; then
            opts=""
          else
            opts=""
          fi
          ;;

        "rhc sshkey-add")
          if [[ "$cur" == -* ]]; then
            opts="--confirm --content --type"
          else
            opts=""
          fi
          ;;

        "rhc sshkey-list")
          if [[ "$cur" == -* ]]; then
            opts=""
          else
            opts=""
          fi
          ;;

        "rhc sshkey-remove")
          if [[ "$cur" == -* ]]; then
            opts=""
          else
            opts=""
          fi
          ;;

        "rhc sshkey-show")
          if [[ "$cur" == -* ]]; then
            opts=""
          else
            opts=""
          fi
          ;;

        "rhc sshkeys")
          if [[ "$cur" == -* ]]; then
            opts=""
          else
            opts=""
          fi
          ;;

        "rhc start-app")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --namespace"
          else
            opts=""
          fi
          ;;

        "rhc start-cartridge")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --cartridge --namespace"
          else
            opts=""
          fi
          ;;

        "rhc status-cartridge")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --cartridge --namespace"
          else
            opts=""
          fi
          ;;

        "rhc status-server")
          if [[ "$cur" == -* ]]; then
            opts="--server"
          else
            opts=""
          fi
          ;;

        "rhc stop-app")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --namespace"
          else
            opts=""
          fi
          ;;

        "rhc stop-cartridge")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --cartridge --namespace"
          else
            opts=""
          fi
          ;;

        "rhc storage-cartridge")
          if [[ "$cur" == -* ]]; then
            opts="--add --app --application-id --cartridge --force --namespace --remove --set --show"
          else
            opts=""
          fi
          ;;

        "rhc tail")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --files --gear --namespace --opts"
          else
            opts=""
          fi
          ;;

        "rhc team")
          if [[ "$cur" == -* ]]; then
            opts=""
          else
            opts="create delete leave list show"
          fi
          ;;

        "rhc team create")
          if [[ "$cur" == -* ]]; then
            opts="--team-name"
          else
            opts=""
          fi
          ;;

        "rhc team delete")
          if [[ "$cur" == -* ]]; then
            opts="--team-id --team-name"
          else
            opts=""
          fi
          ;;

        "rhc team leave")
          if [[ "$cur" == -* ]]; then
            opts="--team-id --team-name"
          else
            opts=""
          fi
          ;;

        "rhc team list")
          if [[ "$cur" == -* ]]; then
            opts="--mine"
          else
            opts=""
          fi
          ;;

        "rhc team show")
          if [[ "$cur" == -* ]]; then
            opts="--team-id --team-name"
          else
            opts=""
          fi
          ;;

        "rhc team-create")
          if [[ "$cur" == -* ]]; then
            opts="--team-name"
          else
            opts=""
          fi
          ;;

        "rhc team-delete")
          if [[ "$cur" == -* ]]; then
            opts="--team-id --team-name"
          else
            opts=""
          fi
          ;;

        "rhc team-leave")
          if [[ "$cur" == -* ]]; then
            opts="--team-id --team-name"
          else
            opts=""
          fi
          ;;

        "rhc team-list")
          if [[ "$cur" == -* ]]; then
            opts="--mine"
          else
            opts=""
          fi
          ;;

        "rhc team-show")
          if [[ "$cur" == -* ]]; then
            opts="--team-id --team-name"
          else
            opts=""
          fi
          ;;

        "rhc teams")
          if [[ "$cur" == -* ]]; then
            opts="--mine"
          else
            opts=""
          fi
          ;;

        "rhc threaddump")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --namespace"
          else
            opts=""
          fi
          ;;

        "rhc tidy-app")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --namespace"
          else
            opts=""
          fi
          ;;

        "rhc unset-env")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --confirm --env --namespace"
          else
            opts=""
          fi
          ;;

        "rhc update-cert-alias")
          if [[ "$cur" == -* ]]; then
            opts="--app --application-id --certificate --namespace --passphrase --private-key"
          else
            opts=""
          fi
          ;;

        "rhc update-member")
          if [[ "$cur" == -* ]]; then
            opts="--ids --namespace --role --type"
          else
            opts=""
          fi
          ;;

        "rhc use-server")
          if [[ "$cur" == -* ]]; then
            opts="--server"
          else
            opts=""
          fi
          ;;

      esac
      IFS=$SAVE_IFS
    fi

    COMPREPLY=( $(compgen -W "${opts}" -- ${cur}) )
    return 0
  }

  complete -o default -F _rhc rhc
fi
