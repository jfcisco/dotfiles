function vol --description 'Sets Audient EVO volume'
    set --local prefix /home/jasper/workspaces/audient-evo-linux-tools
    source $prefix/evo4/bin/activate.fish
    python $prefix/set-volume.py
    deactivate
end
