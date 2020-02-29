PERL5LIB="/home/jcmuller/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB
PERL_LOCAL_LIB_ROOT="/home/jcmuller/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT
PERL_MB_OPT="--install_base \"/home/jcmuller/perl5\""; export PERL_MB_OPT
PERL_MM_OPT="INSTALL_BASE=/home/jcmuller/perl5"; export PERL_MM_OPT

path=(
  $HOME/perl5/bin
  "${path[@]}"
)
