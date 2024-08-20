``` shellsession
lh-910-boot-file-issue on  main [?] via λ 9.10.1 
❯ ghc --version
The Glorious Glasgow Haskell Compilation System, version 9.10.1

lh-910-boot-file-issue on  main [?] via λ 9.10.1 
❯ cabal-3.12.1.0 build --allow-newer --project-file=cabal.ghc910.project
remote: Enumerating objects: 297, done.
remote: Counting objects: 100% (297/297), done.
remote: Compressing objects: 100% (69/69), done.
remote: Total 225 (delta 148), reused 209 (delta 134), pack-reused 0 (from 0)
Receiving objects: 100% (225/225), 26.90 KiB | 8.97 MiB/s, done.
Resolving deltas: 100% (148/148), completed with 51 local objects.
From https://github.com/ucsd-progsys/liquidhaskell
 + 01b2b6e72...e5b0f6d87 fd/ghc-9.10 -> origin/fd/ghc-9.10  (forced update)
Cleared directory 'liquid-fixpoint'
Submodule 'liquid-fixpoint' (https://github.com/ucsd-progsys/liquid-fixpoint.git) unregistered for path 'liquid-fixpoint'
HEAD is now at 7963e5c71 Fix the origin of more functions and types
Submodule 'liquid-fixpoint' (https://github.com/ucsd-progsys/liquid-fixpoint.git) registered for path 'liquid-fixpoint'
Cloning into '/home/artem/Dev/lh-910-boot-file-issue/dist-newstyle/src/liquidhas_-240b351cbb94285a/liquid-fixpoint'...
Submodule path 'liquid-fixpoint': checked out '1de4a55600a59af536e6dfb77d8ddfedfccda976'
Entering 'liquid-fixpoint'
Resolving dependencies...
Build profile: -w ghc-9.10.1 -O1
In order, the following will be built (use -v for more details):
 - lh910-boot-file-issue-0.1.0.0 (lib) (configuration changed)
Configuring library for lh910-boot-file-issue-0.1.0.0...
Preprocessing library for lh910-boot-file-issue-0.1.0.0...
Building library for lh910-boot-file-issue-0.1.0.0...
[1 of 3] Compiling Array.List       ( src/Array/List.hs, /home/artem/Dev/lh-910-boot-file-issue/dist-newstyle/build/x86_64-linux/ghc-9.10.1/lh910-boot-file-issue-0.1.0.0/build/Array/List.o, /home/artem/Dev/lh-910-boot-file-issue/dist-newstyle/build/x86_64-linux/ghc-9.10.1/lh910-boot-file-issue-0.1.0.0/build/Array/List.dyn_o ) [/home/artem/Dev/lh-910-boot-file-issue/dist-newstyle/build/x86_64-linux/ghc-9.10.1/lh910-boot-file-issue-0.1.0.0/build/autogen/cabal_macros.h changed]

**** LIQUID: SAFE (0 constraints checked) **************************************
[2 of 3] Compiling Array[boot]      ( src/Array.hs-boot, /home/artem/Dev/lh-910-boot-file-issue/dist-newstyle/build/x86_64-linux/ghc-9.10.1/lh910-boot-file-issue-0.1.0.0/build/Array.o-boot, /home/artem/Dev/lh-910-boot-file-issue/dist-newstyle/build/x86_64-linux/ghc-9.10.1/lh910-boot-file-issue-0.1.0.0/build/Array.dyn_o-boot )
src/Array/List.hs:28:16: error:
    Illegal type specification for `Array.List.Arr`
    Array.List.Arr :: forall a##aEI .
                      Array.List.lst##Array.List.Arr:[a##aEI] -> Array.List.left##Array.List.Arr:{VV : GHC.Types.Int | VV >= 0} -> Array.List.right##Array.List.Arr:{VV : GHC.Types.Int | VV - Array.List.left##Array.List.Arr == len Array.List.lst##Array.List.Arr
                                                                                                                                                                                          && VV >= 0
                                                                                                                                                                                          && VV >= Array.List.left##Array.List.Arr} -> Array.List.tok##Array.List.Arr:GHC.Types.Int -> {VV : (Array.List.Array a##aEI) | is$Array.List.Arr VV
                                                                                                                                                                                                                                                                                                                         && Array.List.left VV == Array.List.left##Array.List.Arr
                                                                                                                                                                                                                                                                                                                         && Array.List.lst VV == Array.List.lst##Array.List.Arr
                                                                                                                                                                                                                                                                                                                         && Array.List.right VV == Array.List.right##Array.List.Arr
                                                                                                                                                                                                                                                                                                                         && Array.List.tok VV == Array.List.tok##Array.List.Arr}
    Sort Error in Refinement: {VV : (Array.List.Array a##aEI##xo) | is$Array.List.Arr VV
                                                                    && Array.List.left VV == Array.List.left##Array.List.Arr
                                                                    && Array.List.lst VV == Array.List.lst##Array.List.Arr
                                                                    && Array.List.right VV == Array.List.right##Array.List.Arr
                                                                    && Array.List.tok VV == Array.List.tok##Array.List.Arr}
    Unbound symbol is$Array.List.Arr --- perhaps you meant: Array.List.Arr ?
    Just assume
   |
28 | data Array a = Arr {  lst   :: [a]  -- lst only contains from left ... right-1
   |                ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^...

Error: [Cabal-7125]
Failed to build lh910-boot-file-issue-0.1.0.0.
```
