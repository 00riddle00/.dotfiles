# This file is sourced by .zshenv.
#
# It adds scripts from different folders in $HOME/cod-tools/
# directory (svn://www.crystallography.net/cod-tools/)
# to the PATH, as well as sets 'CODPATH' to cif/
# folder in $HOME/cod/ directory (svn://www.crystallography.net/cod)

MY_COD_TOOLS_DIR="${HOME}/cod-tools"

for i in \
    ${MY_COD_TOOLS_DIR}/src/lib/perl5 \
    ;
do
    if [[ :$PERL5LIB: != *:$i:* ]]
    then
        PERL5LIB=${i}${PERL5LIB:+:${PERL5LIB}}
    fi
done

export PERL5LIB


for i in \
    ${MY_COD_TOOLS_DIR}/scripts \
    ${MY_COD_TOOLS_DIR}/src/components/codcif \
    ;
do
    if [[ :$PATH: != *:$i:* ]]
    then
        PATH=${i}${PATH:+:${PATH}}
    fi
done
 
unset MY_COD_TOOLS_DIR

export CODPATH=$HOME/cod/cif/

