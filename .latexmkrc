# Configuración de compilación limpia para latexmk
use File::Path qw(make_path);
make_path('build/Chapters/Annexes', 'build/Chapters/Appendices', 'build/Matter', 'build/Metadata', 'build/Configurations', 'build/Bibliography');

$pdf_mode = 5; # 5 = xelatex
$xelatex = 'xelatex -shell-escape -synctex=1 -interaction=nonstopmode %O %S';
$biber = 'biber %O --output-directory build %B';
$out_dir = 'build';
@default_files = ('UMUthesis.tex');

# Limpieza adicional con latexmk -c / -C
$clean_ext = 'bcf run.xml xdv acn acr alg glo ist synctex.gz pyg';

# Copia el PDF final a la raíz para fácil acceso
$success_cmd = 'cp -u build/UMUthesis.pdf .';
