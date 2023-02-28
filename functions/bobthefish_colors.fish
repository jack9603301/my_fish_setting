function bobthefish_colors --description 'My Color' --no-scope-shadowing
    set -l grey   808080 616161 595959 424242
    set -l red    FF4050 F0524F B82421 772E2C
    set -l green  4FC414 5C962C 458500 39511F
    set -l yellow E5BF00 A68A0D A87B00 5C4F17
    set -l blue   1FB0FF 3993D4 1778BD 245980
    set -l white  F9F9F4 B7C3D0
      
    set -x color_initial_segment_exit     $white[2] $red[3] --bold
    set -x color_initial_segment_private  $white[2] $grey[4]
    set -x color_initial_segment_su       $white[2] $green[3] --bold
    set -x color_initial_segment_jobs     $white[2] $blue[3] --bold
      
    set -x color_path                     $blue[4] $white[2] 
    set -x color_path_basename            $blue[4] $white[1] --bold
    set -x color_path_nowrite             $blue[4] $red[2] 
    set -x color_path_nowrite_basename    $blue[4] $red[1] --bold
      
    set -x color_repo                     $green[3] $white[2] --bold
    set -x color_repo_work_tree           $grey[4] $grey[4] --bold
    set -x color_repo_dirty               $red[4] $blue[1]
    set -x color_repo_staged              $yellow[3] $grey[4]
      
    set -x color_vi_mode_default          $grey[4] $yellow[2] --bold
    set -x color_vi_mode_insert           $green[2] $grey[4] --bold
    set -x color_vi_mode_visual           $yellow[2] $grey[4] --bold
      
    set -x color_vagrant                  $blue[2] $green[1] --bold
    set -x color_k8s                      $green[2] $grey[4] --bold
    set -x color_aws_vault                $blue[2] $grey[4] --bold
    set -x color_aws_vault_expired        $blue[2] $red[1] --bold
    if fish_is_root_user
        set -x color_username                 $grey[4] $yellow[2] --bold
        set -x color_hostname                 $grey[4] $yellow[1]
    else
        set -x color_username                 $grey[4] $blue[2] --bold
        set -x color_hostname                 $grey[4] $blue[1]
    end
    set -x color_rvm                      $red[2] $grey[4] --bold
    set -x color_node                     $green[3] $white[2] --bold
    set -x color_virtualfish               $blue[2] $grey[4] --bold
    set -x color_virtualgo                $blue[2] $grey[4] --bold
    set -x color_desk                     $blue[2] $grey[4] --bold
    set -x color_nix                      $blue[2] $grey[4] --bold
end
