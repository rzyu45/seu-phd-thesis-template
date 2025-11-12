
\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{seuthesix}[2016/03/20 1.0.1 The LaTeX template for academic  degree thesis of Southeast University]
\typeout{Document Class `seuthesix' 1.0.1 by James Fan (2016/03/20)}

\newif\ifnocolorlinks\nocolorlinksfalse
\newif\ifcoadvisor\coadvisorfalse
\newif\ifengineering\engineeringfalse
\newif\ifmasters\masterstrue
\newif\ifphd\phdfalse
\newif\ifalgorithmlist\algorithmlistfalse
\newif\iffigurelist\figurelistfalse
\newif\iftablelist\tablelistfalse
\newif\ifnomlist\nomlistfalse
\InputIfFileExists{seuthesix.cfg}
{\typeout{[seuthesix]: Load seuthesix.cfg successfully!}}%
   {\typeout{[seuthesix]: Load seuthesix.cfg failed!}}%
\DeclareOption{nocolorlinks}{\nocolorlinkstrue}
\DeclareOption{algorithmlist}{\algorithmlisttrue}
\DeclareOption{phd}{\phdtrue\mastersfalse\engineeringfalse\renewcommand\@degreelevel{博士}}
\DeclareOption{masters}{\masterstrue\engineeringfalse\phdfalse\renewcommand\@degreelevel{硕士}}
\DeclareOption{engineering}{%
\engineeringtrue\masterstrue\phdfalse\renewcommand\@degreelevel{工程硕士}}
\DeclareOption{figurelist}{\figurelisttrue}
\DeclareOption{tablelist}{\tablelisttrue}
\DeclareOption{nomlist}{\nomlisttrue}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexrep}}
\ProcessOptions
\LoadClass[twoside,a4paper,zihao=-4,UTF8,openright]{ctexrep}
\RequirePackage[titles]{tocloft}
\setlength{\cftbeforechapskip}{0pt}
\renewcommand{\cftchapleader}{\bfseries\cftdotfill{\cftdotsep}}
\newcommand{\chuhao}{\fontsize{42bp}{46bp}\selectfont}
\newcommand{\xiaochuhao}{\fontsize{36bp}{40bp}\selectfont}
\newcommand{\yichu}{\fontsize{32bp}{36bp}\selectfont}
\newcommand{\yihao}{\fontsize{26bp}{32bp}\selectfont}
\newcommand{\erhao}{\fontsize{21bp}{24bp}\selectfont}
\newcommand{\xiaoerhao}{\fontsize{18bp}{20bp}\selectfont}
\newcommand{\sanhao}{\fontsize{15.75bp}{18bp}\selectfont}
\newcommand{\sihao}{\fontsize{14bp}{16bp}\selectfont}
\newcommand{\xiaosihao}{\fontsize{12bp}{14bp}\selectfont}
\newcommand{\wuhao}{\fontsize{10.5bp}{13bp}\selectfont}
\newcommand{\xiaowuhao}{\fontsize{9bp}{11bp}\selectfont}
\newcommand{\liuhao}{\fontsize{7.5bp}{9bp}\selectfont}
\newcommand{\xiaoliuhao}{\fontsize{6.5bp}{7.5bp}\selectfont}
\newcommand{\qihao}{\fontsize{5.5bp}{6.5bp}\selectfont}

\setCJKmainfont[BoldFont={SimHei},ItalicFont={KaiTi}]{SimSun}      
\setCJKsansfont{SimHei}
\setCJKmonofont{[SimFang]}
\setCJKfamilyfont{kai}{KaiTi}
\DeclareTextFontCommand{\emph}{\CJKfamily{kai}}

\ctexset{%
chapter/format=\centering,
chapter/nameformat=\large\heiti,
chapter/numberformat=\large\heiti,
chapter/titleformat=\large\heiti,
chapter/beforeskip=0pt,
section/format=\raggedright,
section/nameformat={\large\bfseries},
section/numberformat={\large\bfseries},
section/titleformat={\sihao\bfseries},
subsection/format=\sihao\mdseries\raggedright,
subsubsection/format=\sihao\mdseries\raggedright,
listfigurename={插图目录},
listtablename={表格目录}
}

\usepackage[caption=false,font=footnotesize,
labelfont=rm,textfont=rm]{subfig}
\usepackage{siunitx}
\sisetup{
    mode = text,                % 文本模式，避免数学斜体
    % inter-unit-product = \ensuremath{{}\cdot{}}, % 单位间用中心点分隔（如 kg·m）
}

\usepackage{color}
\usepackage[table,xcdraw]{xcolor}
\usepackage[para]{threeparttable}

\usepackage{listings}
% 定义颜色
\definecolor{codegreen}{rgb}{0,0.6,0}
\definecolor{codegray}{rgb}{0.5,0.5,0.5}
\definecolor{codepurple}{rgb}{0.58,0,0.82}
\definecolor{backcolour}{rgb}{0.95,0.95,0.92}

% 设置listings样式
\lstset{
backgroundcolor=\color{backcolour},   
language=Python, % 设置语言
basicstyle=\ttfamily\small, % 设置字体族
lineskip=-2pt,
breaklines=true, % 自动换行
keywordstyle=\bfseries\color{magenta}, % 设置关键字为粗体，颜色为 NavyBlue
morekeywords={}, % 设置更多的关键字，用逗号分隔
emph={self}, % 指定强调词，如果有多个，用逗号隔开
emphstyle=\bfseries, % 强调词样式设置
commentstyle=\itshape\color{codegreen}, % 设置注释样式，斜体，浅灰色
stringstyle=\bfseries\color{codepurple}, % 设置字符串样式
columns=flexible,
numbers=left, % 显示行号在左边
numbersep=0.5em, % 设置行号的具体位置
numberstyle=\footnotesize\tiny\color{codegray}, % 缩小行号
frame=single, % 边框
framesep=2em, % 设置代码与边框的距离,
emph={Solverz, Var, Param, AliasVar, Sin, In, Saturation, GreaterThan, LessThan, MulVarFunc, self, Integer, cls, Eqn, Ode, zeros_like, inner_F0, SolIn, inner_J, inner_J0, coo_array, Not, Or, And, fdiff, _numpycode},
xleftmargin=30pt,
xrightmargin=30pt
}
\renewcommand\lstlistingname{代码块}

\RequirePackage[font=small]{caption}
\DeclareCaptionLabelFormat{seutablabel}{表 #2}
\captionsetup[table]{labelformat=seutablabel, labelsep=space}
\DeclareCaptionLabelFormat{seufiglabel}{图 #2}
\captionsetup[figure]{labelformat=seufiglabel, labelsep=space}


\RequirePackage{setspace}
%\RequirePackage{mathptmx}
\setmainfont[Mapping=tex-text]{Times New Roman}
\RequirePackage{amsmath}
\RequirePackage{amssymb}

\RequirePackage{amsthm}
\newtheorem{definition}{定义}[chapter]
\newtheorem{theorem}{定理}[chapter]
\newtheorem{proposition}{命题}[chapter]
\allowdisplaybreaks[4]

\usepackage{soul}
\usepackage{color}
\usepackage[table,xcdraw]{xcolor}
\usepackage{changes}
\definecolor{blueshade}{rgb}{1,0.8,0.8}
\sethlcolor{blueshade}

\RequirePackage{optidef}

\usepackage[linesnumbered,ruled,commentsnumbered, longend]{algorithm2e}
\renewcommand{\algorithmcfname}{算法}
\renewcommand{\thealgocf}{\thechapter.\arabic{algocf}}
\usepackage{chngcntr}
\counterwithin{algocf}{chapter}

\numberwithin{equation}{chapter}
\newcommand{\dif}{\mathrm{d}}
\DeclareMathOperator*{\argmin}{argmin}
\DeclareMathOperator*{\argmax}{argmax}
\DeclareMathOperator{\diag}{diag}
% \DeclareMathOperator{\rank}{rank}
\DeclareMathOperator{\sinc}{sinc}
\DeclareMathOperator{\unwrap}{unwrap}
\def\me{\mathrm{e}}
\RequirePackage[mathscr]{eucal}
% \RequirePackage{eufrak}
\RequirePackage{bm}
\RequirePackage{graphicx}
\graphicspath{{figures/}{./}}
\RequirePackage{nomencl}
\makenomenclature
\newcommand{\setnomname}[1]{\renewcommand\nomname{#1}}
\renewcommand{\nomname}{术语与数学符号约定}
\usepackage{multirow}
\RequirePackage{etoolbox}
% 使用 etoolbox 向 tabular 环境添加钩子
\AtBeginEnvironment{tabular}{\small}
% 如果你也想针对 threeparttable 设置，那么也添加一个钩子：
\AtBeginEnvironment{threeparttable}{\small}

\RequirePackage{hyperref}
\ifnocolorlinks
\hypersetup{colorlinks=false}
\else
\hypersetup{colorlinks=true}
\fi
\hypersetup{
 linkcolor=black,
 anchorcolor=black,
 citecolor=black,%blue
 filecolor=magenta,
 menucolor=red,
 urlcolor=black
}

\newcommand{\backcover}{
\clearpage\thispagestyle{empty}\cleardoublepage\mbox{ }
\clearpage\thispagestyle{empty} %backcover always at even page.
\begin{picture}(0,0)
 \put(-1,-22){ %
\includegraphics[width=\textwidth]{figures/back-cover.pdf}}
\end{picture}
}

\RequirePackage[top=1.2in,bottom=1in,left=2.5cm,right=2.5cm,a4paper]{geometry}
\RequirePackage{fancyhdr}
\fancypagestyle{seustyle}{%
\fancyhf{}
\fancyhead[CE]{\xiaowuhao\universityname{}\@thesistype}
\fancyhead[CO]{ \xiaowuhao\leftmark}
\fancyfoot[CO,CE]{\thepage}
}
\pagestyle{seustyle}

\fancypagestyle{nom}{%
\fancyhf{} 
\fancyhead[CO]{\xiaowuhao\universityname{}\@thesistype}
\fancyhead[CE]{ \xiaowuhao\nomname}
\fancyfoot[CO,CE]{\thepage}
}

\usepackage{physics}
\setcounter{secnumdepth}{3}

\renewcommand{\headrulewidth}{0.4pt}
\RequirePackage{eso-pic}
\renewcommand{\author}[2]{
 \def\@author{#1}
 \newcommand{\@authoreng}{#2}
}
\newcommand{\@titleeng}{}
\newcommand{\@subtitleeng}{}
\renewcommand{\title}[4]{
 \def\@title{#1}
 \newcommand{\@subtitle}{#2}
 \renewcommand{\@titleeng}{#3}
 \renewcommand{\@subtitleeng}{#4}
}
\newcommand{\@advisorname}{}
\newcommand{\@advisortitle}{}
\newcommand{\@advisornameeng}{}
\newcommand{\@advisortitleeng}{}
\newcommand{\advisor}[4]{
 \renewcommand{\@advisorname}{#1}
 \renewcommand{\@advisortitle}{#2}
 \renewcommand{\@advisornameeng}{#3}
 \renewcommand{\@advisortitleeng}{#4}
}
\newcommand{\@coadvisorname}{}
\newcommand{\@coadvisortitle}{}
\newcommand{\@coadvisornameeng}{}
\newcommand{\@coadvisortitleeng}{}
\newcommand{\coadvisor}[4]{
 \coadvisortrue
 \renewcommand{\@coadvisorname}{#1}
 \renewcommand{\@coadvisortitle}{#2}
 \renewcommand{\@coadvisornameeng}{#3}
 \renewcommand{\@coadvisortitleeng}{#4}
}
\newcommand{\@categorynumber}{}
\newcommand{\categorynumber}[1]{\renewcommand{\@categorynumber}{#1}}
\newcommand{\@secretlevel}{}
\newcommand{\secretlevel}[1]{\renewcommand{\@secretlevel}{#1}}
\newcommand{\@UDC}{}
\newcommand{\UDC}[1]{\renewcommand{\@UDC}{#1}}
\newcommand{\@studentid}{}
\newcommand{\studentid}[1]{\renewcommand{\@studentid}{#1}}
\newcommand\degreetype[2]{\renewcommand\@degreetype{#1}%
\renewcommand\@degreetypeen{#2}}
\newcommand{\@majorlen}{8em}
\newcommand{\@major}{}
\newcommand{\major}[2][8em]{
 \renewcommand{\@majorlen}{#1}
 \renewcommand{\@major}{#2}
}
\newcommand{\@department}{}
\newcommand{\@departmenteng}{}
\newcommand{\department}[2]{
 \renewcommand{\@department}{#1}
 \renewcommand{\@departmenteng}{#2}
}
\newcommand{\@submajor}{}
\newcommand{\submajor}[1]{
 \renewcommand{\@submajor}{#1}
}
\newcommand{\@defenddate}{}
\newcommand{\defenddate}[1]{\renewcommand{\@defenddate}{#1}}
\newcommand{\authorizeorganization}[1]{
 \renewcommand{\@authorizeorganization}{#1}
}

\newcommand{\@authorizedate}{}
\newcommand{\authorizedate}[1]{\renewcommand{\@authorizedate}{#1}}
\newcommand{\@committeechair}{}
\newcommand{\committeechair}[1]{\renewcommand{\@committeechair}{#1}}
\newcommand{\@reviewerA}{}
\newcommand{\@reviewerB}{}
\newcommand{\reviewer}[2]{
 \renewcommand{\@reviewerA}{#1}
 \renewcommand{\@reviewerB}{#2}
}
\newcommand{\CoverTopOption}[3][s]{
 \makebox[1.5cm][#1]{\xiaowuhao #2}:{
   \underline{\makebox[1.5cm][c]{\xiaowuhao #3}}}
}
\newcommand{\CoverBottomOption}[3][4.5cm]{
 \makebox[7cm][s]{
   {\songti\xiaosihao#2}
   \underline{\makebox[#1][c]{\heiti\xiaosihao#3}}
 }
}
\newif\ifthanks\thanksfalse
\newcommand\@seuthesisthanks{ }
\newcommand\seuthesisthanks[1]{\renewcommand\@seuthesisthanks{#1}\thankstrue}
\newcommand\@thesisthanks{\ifthanks\thispagestyle{thanksstyle}\fi}
\fancypagestyle{thanksstyle}{%
\fancyhf{}
\fancyfoot[L]{\setlength{\baselineskip}{0pt}%
\rule[-2.5pt]{6cm}{.4pt}\\ \small\@seuthesisthanks}
\renewcommand\headrulewidth{0pt}
}

\newcommand{\thetitle}{\@title}
\newcommand{\theauthorx}{\@author}
\newcommand{\theadvisor}{\@advisorname}
\newcommand{\thetitleeng}{\@titleeng}
\newcommand{\theauthoreng}{\@authoreng}
\newcommand{\theadvisoreng}{\@advisornameeng}

\usepackage{enumitem}
\newenvironment{mydescription}
{\begin{description}
[font=\small, 
nosep, 
noitemsep, 
topsep=0pt, 
partopsep=0pt, 
parsep=0pt, 
labelwidth=2cm,             % 固定标签宽度
leftmargin=2.5cm,           % 左缩进（标签宽度 + 悬挂缩进）
labelsep=0.5cm,             % 标签与内容之间的间距
align=left,
itemsep=0pt]
}
{
\end{description}}

\usepackage{ulem}
% \usepackage{soul} % for \ul

\newcommand\makebigcover{%generating a3 front cover
% \AtEndDocument{\backcover}
\pdfpagewidth=420mm
\pdfpageheight=297mm
\setlength{\paperheight}{297mm}
\setlength{\paperwidth}{420mm}
\thispagestyle{empty}
 \setlength{\unitlength}{1cm}
 \noindent
\begin{picture}(0,0)
\setlength{\unitlength}{1cm}\put(19.5,-8){%
\includegraphics[width=19cm]{figures/front-cover.pdf}}%
\end{picture}
\begin{picture}(0,0)
\put(19.5,0){
\renewcommand{\arraystretch}{1.0}
   \begin{tabular}{l}
     \CoverTopOption{\schoolcodepre}{\schoolcode} \\
     \CoverTopOption{\categorynumberpre}{\@categorynumber} \\
     \CoverTopOption{\secretlevelpre}{\@secretlevel}\\
     \CoverTopOption{U D C}{\@UDC} \\
     \CoverTopOption{\studentidpre}{\@studentid}
   \end{tabular}
   }
\end{picture}
 \ifengineering
\begin{picture}(0,0)
 \put(23.2,-7.5){ %
\includegraphics[scale=0.65]{figures/engineering.pdf}}
\end{picture}
   \else \ifmasters
\begin{picture}(0,0)
 \put(24.5,-7.5){ %
\includegraphics[scale=1.1]{figures/master-hwzs.pdf}}
\end{picture}
   \else \ifphd
\begin{picture}(0,0)
 \put(24.5,-7.5){ %
\includegraphics[scale=1.1]{figures/doctor-hwzs.pdf}}
\end{picture}
   \else
   \ClassError{seuthesix}{invalid degree type option.}%
   {Check your class option of degree type to be one of the following:%
   masters, engineering, phd.}
   \fi
   \fi
   \fi
   \begin{picture}(0,0)
 \put(35,0){ %
\includegraphics[width=2cm]{figures/seu-color-logo.pdf}}
\end{picture}
\begin{picture}(0,0)
 \put(-1,-22){ %
\includegraphics[width=\textwidth]{figures/back-cover.pdf}}
\end{picture}
\begin{picture}(0,0)
\put(18,-11){%
\parbox[c]{\ccwd}{%
\bfseries%
\setlength{\baselineskip}{0pt}
\@title\\
\rule{0pt}{\ccwd}\\
\@subtitle\\
\vspace*{2cm}
\@author\\
\vspace*{2cm}
\universityname
}
}
\end{picture}

\vspace*{9cm}

\hspace*{20.5cm}
\begin{minipage}{16cm}
   \begin{center}
     \linespread{1.25}
     \yihao\heiti\@title\\
     \yihao\heiti\@subtitle
   \end{center}
\end{minipage}

\vfill

\hspace*{20.5cm}
\begin{minipage}{16cm}
    \begin{center}
    \setlength{\tabcolsep}{0pt}
    \renewcommand{\arraystretch}{2.0}
     \begin{tabular}{cr}
       \makebox[3.5cm][s]{\xiaoerhao\songti\authorpre: } &
       \underline{\makebox[6cm][s]{
           \hspace*{1cm}
           \makebox[2.5cm][c]{\xiaoerhao\heiti\@author}
           \makebox[2cm][r]{}}} \\
       \makebox[3.5cm][s]{\xiaoerhao\songti\advisorpre: } &
       \underline{\makebox[6cm][s]{
           \hspace*{1cm}
           \makebox[2.5cm][c]{\xiaoerhao\heiti\@advisorname}
           \makebox[2cm][r]{\xiaoerhao\heiti\@advisortitle}}}
       \\
       &
       \ifcoadvisor
       \underline{\makebox[6cm][s]{
           \hspace*{1cm}
           \makebox[2.5cm][c]{\xiaoerhao\heiti\@coadvisorname}
           \makebox[2cm][r]{\xiaoerhao\heiti\@coadvisortitle}}}
       \else
       \fi \\
     \end{tabular}
   \end{center}
  \end{minipage}

    \hspace*{20.5cm}
   \begin{minipage}{16cm}
       \begin{center}
   \setlength{\tabcolsep}{10pt}
    \renewcommand{\arraystretch}{2.0}
     \begin{tabular}{ll}
       \CoverBottomOption{\appdegreepre}{\@degreetype} &
       \CoverBottomOption{\authorizeorganizationpre}{\@authorizeorganization} \\
       \CoverBottomOption{\majorpre}{\@major} &
       \CoverBottomOption{\defenddatepre}{\@defenddate}\\
       \CoverBottomOption{\submajorpre}{\@submajor} &
       \CoverBottomOption{\authorizedatepre}{\@authorizedate}\\
       \CoverBottomOption[4.05cm]{\committeechairpre}{\@committeechair} &
       \CoverBottomOption{\reviewerpre}{\@reviewerA}\\
       & \CoverBottomOption{\makebox[2.55cm]{}}{\@reviewerB}
     \end{tabular}
   \end{center}
   \end{minipage}

       \vfill

       \hspace*{20.5cm}
{\songti\sihao\centerline{\today} \par}
\eject
\pdfpagewidth=210mm
\pdfpageheight=297mm
\setlength{\paperheight}{297mm}
\setlength{\paperwidth}{210mm}

 \clearpage\thispagestyle{empty}
 \cleardoublepage\thispagestyle{empty}
 \begin{center}
   \xiaochuhao

   \includegraphics[height=0.63in]{figures/seu-text-logo}

   \ifmasters
   \includegraphics{figures/master-hwzs}
  \else
  \includegraphics{figures/doctor-hwzs}
  \fi

   \vspace{31.5pt}
   \yihao\heiti\@title\@thesisthanks\\
   \yihao\heiti\@subtitle
  \vspace{8cm}

  {
  \setlength{\tabcolsep}{0pt}
   \begin{tabular}{cc}
     \makebox[3.5cm][s]{\xiaoerhao\heiti{}专~~业~~名~~称: } &
     \underline{\makebox[6cm][s]{
         \xiaoerhao\songti\textbf{\@major} }} \\
         \\
       \makebox[3.5cm][s]{ \xiaoerhao\heiti\authorpre:  } &
       \underline{\makebox[6cm][s]{
          \xiaoerhao\songti\textbf{\@author} }} \\
           \\
       \makebox[3.5cm][s]{ \xiaoerhao\heiti\advisorpre:  } &
       \underline{\makebox[6cm][s]{
          \xiaoerhao\songti\textbf{\@advisorname\quad\@advisortitle} }}
\\
       &
       \ifcoadvisor
       \underline{\makebox[6cm][s]{
           \xiaoerhao\songti\textbf{\@coadvisorname\quad\@coadvisortitle} }}
       \else
       \fi
     \end{tabular}
     }
 \end{center}
 
 \makeenglishcover
 
 \seudeclare
}

\newcommand{\makechinesecover}{
 \hypersetup{
   pdfauthor={\@author},
   pdftitle={\universityname{}\@thesistype},
   pdfsubject={\@title \@subtitle},
   pdfcreator={xetex}
 }

\thispagestyle{empty}
\AddToShipoutPictureFG*{\setlength{\unitlength}{1cm}\put(1,26){%
\renewcommand{\arraystretch}{1.0}
   \begin{tabular}{l}
     \CoverTopOption{\schoolcodepre}{\schoolcode} \\
     \CoverTopOption{\categorynumberpre}{\@categorynumber} \\
     \CoverTopOption{\secretlevelpre}{\@secretlevel}\\
     \CoverTopOption{U D C}{\@UDC} \\
     \CoverTopOption{\studentidpre}{\@studentid}
   \end{tabular}
}
}

\AddToShipoutPictureBG*{\setlength{\unitlength}{1cm}\put(0,23){%
\parbox{\paperwidth}{\centering\includegraphics[width=\paperwidth]{figures/front-cover.pdf}}}}%

   \ifengineering
\AddToShipoutPictureBG*{\setlength{\unitlength}{1cm}\put(0,18){ %
\parbox{\paperwidth}{\centering\includegraphics[scale=0.65]{figures/engineering.pdf}}}}%
   \else \ifmasters
\AddToShipoutPictureBG*{\setlength{\unitlength}{1cm}\put(0,18){ %
\parbox{\paperwidth}{\centering\includegraphics[scale=1.1]{figures/master-hwzs.pdf}}}}%
   \else \ifphd
   \AddToShipoutPictureBG*{\setlength{\unitlength}{1cm}\put(0,18){ %
\parbox{\paperwidth}{\centering\includegraphics[scale=1.1]{figures/doctor-hwzs.pdf}}}}%
   \else
   \ClassError{seuthesix}{invalid degree type option.}%
   {Check your class option of degree type to be one of the following:%
   masters, engineering, phd.}
   \fi
   \fi
   \fi
\AddToShipoutPictureBG*{\setlength{\unitlength}{1cm}\put(17,27){%
\parbox{\paperwidth}{\includegraphics[width=2cm]{figures/seu-color-logo.pdf}}}}%

   \vspace*{9cm}

   \begin{center}
     \linespread{1.25}
     \yihao\heiti\@title\\
     \yihao\heiti\@subtitle
   \end{center}
   
    \vfill
    
   \begin{center}
    \setlength{\tabcolsep}{0pt}
    \renewcommand{\arraystretch}{2.0}
     \begin{tabular}{cr}
       \makebox[3.5cm][s]{\xiaoerhao\songti\authorpre: } &
       \underline{\makebox[6cm][s]{
           \hspace*{1cm}
           \makebox[2.5cm][c]{\xiaoerhao\heiti\@author}
           \makebox[2cm][r]{}}} \\
       \makebox[3.5cm][s]{\xiaoerhao\songti\advisorpre: } &
       \underline{\makebox[6cm][s]{
           \hspace*{1cm}
           \makebox[2.5cm][c]{\xiaoerhao\heiti\@advisorname}
           \makebox[2cm][r]{\xiaoerhao\heiti\@advisortitle}}}
       \\
       &
       \ifcoadvisor
       \underline{\makebox[6cm][s]{
           \hspace*{1cm}
           \makebox[2.5cm][c]{\xiaoerhao\heiti\@coadvisorname}
           \makebox[2cm][r]{\xiaoerhao\heiti\@coadvisortitle}}}
       \else
       \fi \\
     \end{tabular}
   \end{center}

   \begin{center}
   \setlength{\tabcolsep}{10pt}
    \renewcommand{\arraystretch}{2.0}
     \begin{tabular}{ll}
       \CoverBottomOption{\appdegreepre}{\@degreetype} &
       \CoverBottomOption{\authorizeorganizationpre}{\@authorizeorganization} \\
       \CoverBottomOption{\majorpre}{\@major} &
       \CoverBottomOption{\defenddatepre}{\@defenddate}\\
       \CoverBottomOption{\submajorpre}{\@submajor} &
       \CoverBottomOption{\authorizedatepre}{\@authorizedate}\\
       \CoverBottomOption[4.05cm]{\committeechairpre}{\@committeechair} &
       \CoverBottomOption{\reviewerpre}{\@reviewerA}\\
       & \CoverBottomOption{\makebox[2.55cm]{}}{\@reviewerB}
     \end{tabular}
   \end{center}

   \vfill
   \setcounter{page}{1}
{\songti\sihao\centerline{\today} \par}

 \clearpage\thispagestyle{empty}
 \cleardoublepage\thispagestyle{empty}
 \begin{center}
   \xiaochuhao

   \includegraphics[height=0.63in]{figures/seu-text-logo}

   \ifmasters
   \includegraphics{figures/master-hwzs}
  \else
  \includegraphics{figures/doctor-hwzs}
  \fi

   \vspace{31.5pt}
   \yihao\heiti\@title\@thesisthanks\\
   \yihao\heiti\@subtitle
  \vspace{8cm}

  {
  \setlength{\tabcolsep}{0pt}
   \begin{tabular}{cc}
     \makebox[3.5cm][s]{\xiaoerhao\heiti{}专~~业~~名~~称: } &
     \underline{\makebox[6cm][s]{
         \xiaoerhao\songti\textbf{\@major} }} \\
         \\
       \makebox[3.5cm][s]{ \xiaoerhao\heiti\authorpre:  } &
       \underline{\makebox[6cm][s]{
          \xiaoerhao\songti\textbf{\@author} }} \\
           \\
       \makebox[3.5cm][s]{ \xiaoerhao\heiti\advisorpre:  } &
       \underline{\makebox[6cm][s]{
          \xiaoerhao\songti\textbf{\@advisorname\quad\@advisortitle} }}
\\
       &
       \ifcoadvisor
       \underline{\makebox[6cm][s]{
           \xiaoerhao\songti\textbf{\@coadvisorname\quad\@coadvisortitle} }}
       \else
       \fi
     \end{tabular}
     }
 \end{center}
}

\newcommand{\makeenglishcover}{%
\clearpage\thispagestyle{empty}
\cleardoublepage\thispagestyle{empty}
 \begin{center}
   ~\\
     {\fontsize{24pt}{28pt}\selectfont
       \MakeUppercase{\@titleeng}\\
       \MakeUppercase{\@subtitleeng}
       \par
     }

     \vspace{2cm}%
     {\fontsize{16pt}{24pt}\selectfont
       {A
       \ifmasters
         Thesis
         \else
         Dissertation
         \fi
       submitted to}\\
       {\universitynameeng}\\
       {For the Academic Degree of \@degreetypeen}\\
       {\vspace{0.5in}}%
       {BY}\\
       {\@authoreng}\\
       {\vspace{0.5in}}%
       {Supervised by:}\\
       {\@advisortitleeng\  \@advisornameeng}\\
       \ifcoadvisor
       {and}\\
       {\@coadvisortitleeng\  \@coadvisornameeng}\\
       \else
       \fi
       {\vfill}
       {\@departmenteng}\\
       {\universitynameeng}\\
       {\todayeng}
       \par
     }%
   \end{center}%

 }

 \newcommand\makecover{%
 \makechinesecover
 \makeenglishcover
 \seudeclare
 }

\renewenvironment{abstract}[1]
{
\pagenumbering{Roman}
\clearpage\thispagestyle{empty}
\cleardoublepage\thispagestyle{plain}

 \newcommand{\@keywords}{#1}
 \hypersetup{pdfkeywords={\@keywords}}
 \phantomsection
 \addcontentsline{toc}{chapter}{\@abstracttitle}
 % \addtolength{\topmargin}{3cm} % 增加上边距
   \chapter*{\@abstracttitle}%
   \addtolength{\topmargin}{1.2in} % 恢复上边距
  % \vspace*{5cm}
   \vspace{-1cm}
   \setcounter{page}{1}
   
\begin{picture}(0,0)(-1cm,-1cm)
\put(0,0){
\renewcommand{\arraystretch}{1.0}
      \begin{tabular}{@{}ll@{}}
        论文题目： & \@title \\
        研究生姓名： & \@author \\
        导师姓名： & \@advisorname \\
        学校： & 东南大学 \\
      \end{tabular}
}
\end{picture}
}
{
 \par
 \begin{description}
 \item[关键词：] \@keywords
 \end{description}
}

\newenvironment{englishabstract}[1]
{
\cleardoublepage\thispagestyle{plain}
 \newcommand{\@keywords}{#1}
 \phantomsection
 \addcontentsline{toc}{chapter}{Abstract}
\ctexset{%
chapter/nameformat=\large\bfseries,
chapter/titleformat=\large\bfseries
}
  \chapter*{Abstract}
   \ctexset{%
chapter/nameformat=\large\heiti,
chapter/titleformat=\large\heiti
}
}
{
 \par
 \begin{description}
 \item[Keywords:] \@keywords
 \end{description}
}

\newcommand\listofothers{%
\iffigurelist
\cleardoublepage
\phantomsection
\addcontentsline{toc}{chapter}{\listfigurename}
\listoffigures
\fi

\iftablelist
\cleardoublepage
\phantomsection
\addcontentsline{toc}{chapter}{\listtablename}
\listoftables
\fi

\ifnum\value{algocf}>0
\cleardoublepage
\phantomsection
\addcontentsline{toc}{chapter}{\listalgorithmname}
\listofalgorithms
\fi

% \ifnomlist
% \cleardoublepage
% \phantomsection
% \addcontentsline{toc}{chapter}{\nomname}
% \pagestyle{nom}
% \printnomenclature[1in]
% \fi

}

\newcommand{\mainmatter}{%
\cleardoublepage
\pagenumbering{arabic}
\pagestyle{seustyle}
}

\newcommand{\acknowledgement}{%
\cleardoublepage
\phantomsection
\addcontentsline{toc}{chapter}{致 谢}
\chapter*{致 谢}
}

\newcommand{\resume}[1]{%
\cleardoublepage
\phantomsection
\addcontentsline{toc}{chapter}{#1}
\chapter*{#1}
}

\newcommand{\appendixnew}[1]{%
\cleardoublepage
\phantomsection
\addcontentsline{toc}{chapter}{#1}
\chapter*{#1}
}

\newcommand{\seuthesix}{%
 \makebox{S\hspace{-0.3ex}\raisebox{-0.5ex}{E}\hspace{-0.3ex}U\hspace{0.1em}%
 \textsc{Thesix}}
}
\newcommand{\seuthesis}{%
 \makebox{S\hspace{-0.3ex}\raisebox{-0.5ex}{E}\hspace{-0.3ex}U\hspace{0.1em}%
 \textsc{Thesis}}
}
\endinput

%% End of file `seuthesix.cls'.
