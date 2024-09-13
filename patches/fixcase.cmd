/* rexx */

parse arg dir

call directory dir

call directory 'v4.0'
call directory 'src'

call rename 'CMD',              'cmd'

call directory 'cmd'

call rename 'FASTOPEN',         'fastopen'

call directory 'fastopen'

call rename 'FASTINIT.ASM',     'fastinit.asm'
call rename 'FASTOPEN.ASM',     'fastopen.asm'
call rename 'FASTOPEN.LNK',     'fastopen.lnk'
call rename 'FASTOPEN.SKL',     'fastopen.skl'
call rename 'FASTOPEN.TXT',     'fastopen.txt'
call rename 'FASTP.ASM',        'fastp.asm'
call rename 'FASTSEEK.ASM',     'fastseek.asm'
call rename 'FASTSEGS.INC',     'fastsegs.inc'
call rename 'FASTSM.ASM',       'fastsm.asm'
call rename 'MAKEFILE',         'makefile'

call directory '..'
call directory '..'

call rename 'INC',              'inc'

call directory 'inc'

call rename 'DOSMAC.INC',       'dosmac.inc'
call rename 'DIRENT.INC',       'dirent.inc'
call rename 'VERSION.INC',      'version.inc'
call rename 'MULT.INC',         'mult.inc'
call rename 'VECTOR.INC',       'vector.inc'
call rename 'FILEMODE.INC',     'filemode.inc'
call rename 'FASTOPEN.INC',     'fastopen.inc'
call rename 'SYSCALL.INC',      'syscall.inc'
call rename 'SYSMSG.INC',       'sysmsg.inc'
call rename 'MSGDCL.INC',       'msgdcl.inc'
call rename 'COPYRIGH.INC',     'copyrigh.inc'
call rename 'PSDATA.INC',       'psdata.inc'
call rename 'PARSE.ASM',        'parse.asm'
call rename 'MSGSERV.ASM',      'msgserv.asm'


exit 0
/* ------------------------------------------ */
rename: procedure
src = arg(1)
dst = arg(2)

parse source os .

if os = 'OS/2' | os = 'DOS' | os = 'WINDOWS' |,
   os = 'WINNT' | os = 'WIN32' | os = 'WIN64'
then MV = 'move'
else MV = 'mv'

ret = stream(src, 'c', 'query exists')

if ret \= '' then do
    MV' 'src' 'dst'1'
    MV' 'dst'1 'dst
end

return
/* ------------------------------------------ */
