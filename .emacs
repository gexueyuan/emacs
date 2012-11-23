;;**********************    basic setting    *********************

;;Load_path
(add-to-list 'load-path' "~/.emacs.d/plugins")


;;Personal information
(setq user-full-name "gexueyuan")
(setq user-mail-address "gexueyuan@gmail.com") 

;;======================    time setting        =====================
;;启用时间显示设置，在minibuffer上面的那个杠上（忘了叫什么来着）
(display-time-mode 1)

;;时间使用24小时制
(setq display-time-24hr-format t)

;;时间显示包括日期和具体时间
(setq display-time-day-and-date t)

;;时间栏旁边启用邮件设置
(setq display-time-use-mail-icon t)

;;时间的变化频率
(setq display-time-interval 10)

;;显示时间，格式如下
(display-time-mode 1)
(setq display-time-24hr-format t)
(setq display-time-day-and-date t) 
(display-time)
;;----------------------    END    time setting    ---------------------


;;======================    color setting        =====================

(require 'color-theme)
(color-theme-initialize)
(color-theme-robin-hood)

;;----------------------    END    color setting    ---------------------


;;设置emacs启动窗口大小
;;(setq default-frame-alist 
;;'((height . 60) (width , 100) (menu-bar-lines . 20) (tool-bar-lines . 0))) 

;;最大化  
(defun my-maximized ()  
  (interactive)  
  (x-send-client-message  
   nil 0 nil "_NET_WM_STATE" 32  
   '(2 "_NET_WM_STATE_MAXIMIZED_HORZ" 0)  
   )  
  (x-send-client-message  
   nil 0 nil "_NET_WM_STATE" 32  
   '(2 "_NET_WM_STATE_MAXIMIZED_VERT" 0)  
   )  
  )  
;;启动时最大化  
(my-maximized) 

;;如何让emacs启动后就最大化？
;;(setq initial-frame-alist '((top . 30) (left . 3) (width . 97) (height . 36)))



;;不要生成临时文件
(setq-default make-backup-files nil)


;;打开就启用 text 模式
(setq default-major-mode 'text-mode)

;;禁用启动信息

(setq inhibit-startup-message t) 

;; 取消自动保存
 (auto-save-mode 0)

;;语法高亮
(global-font-lock-mode t) 

;;把这些缺省禁用的功能打开
(put 'set-goal-column 'disabled nil)
(put 'narrow-to-region 'disabled nil)
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
(put 'LaTeX-hide-environment 'disabled nil)


;;打开图片显示功能
;;(auto-image-file-mode t) 

;;防止页面滚动时跳动， scroll-margin 3 可以在靠近屏幕边沿
;;3行时就开始滚动，可以很好的看到上下文
(setq scroll-margin 3
       scroll-conservatively 10000)

;;关闭烦人的出错时的提示声。
(setq visible-bell t)

;;以 y/n 替代 yes/no
(fset 'yes-or-no-p 'y-or-n-p)

;;显示行列号
(column-number-mode t) 

;;显示列号
(setq mouse-yank-at-point t)


;;用一个很大的 kill ring. 这样防止我不小心删掉重要的东西。
(setq kill-ring-max 200)

;;显示括号匹配
(show-paren-mode t) 

;;隐藏工具栏
(tool-bar-mode nil) 
    
;;去掉菜单栏，将F10绑定为显示菜单栏，需要菜单栏了可以摁F10调出，再摁F10就去掉菜单
(menu-bar-mode nil)

;;光标靠近鼠标指针时，让鼠标指针自动让开
(mouse-avoidance-mode 'animate) 
    
;;不要在鼠标光标出插入
(setq mouse-yank-at-point t) 
    
;;高亮显示选中的区域
(transient-mark-mode t) 
    
;;支持emacs和外部程序的拷贝粘贴
(setq x-select-enable-clipboard t) 
    
;;在标题栏提示当前位置
(setq frame-title-format "GXY@%b")

;;可以递归的使用 minibuffer
(setq enable-recursive-minibuffers t)

;;显示80列就换行
;;(add-hook 'message-mode-hook (lambda ()
;;(setq default-fill-column 80) 
;;(turn-on-auto-fill)))


;;禁止终端响铃
(setq visiable-bell t) 
    
;;设置tab为4个空格的宽度
;;(setq default-tab-width 4)


;;时间戳设置(time-stamp)，设定文档上次保存的信息
;;只要里在你得文档里有Time-stamp:的设置，就会自动保存时间戳
;;启用time-stamp
(setq time-stamp-active t)

;;去掉time-stamp的警告？
(setq time-stamp-warn-inactive t)

;;设置time-stamp的格式，我如下的格式所得的一个例子：<hans 05/18/2004 12:01:12>
(setq time-stamp-format "%:u %02m/%02d/%04y %02H02M02S")

;;将修改时间戳添加到保存文件的动作里。
(add-hook 'write-file-hooks 'time-stamp)

;;在文档最后自动插入空白一行，好像某些系统配置文件是需要这样的
(setq require-final-newline t)
(setq track-eol t)

;;光标显示为一竖线
(setq-default cursor-type 'bar)

;;使用C-k删掉指针到改行末的所有东西
(setq-default kill-whole-line t)

;;设定删除保存记录为200，可以方便以后无限恢复
(setq kill-ring-max 200)

;;增大使用查找函数和变量的寻找范围
(setq apropos-do-all t)

;;启动Emacs自动设置为两个窗口(上下各一个)
;;(split-window-vertically)

;启动Emacs自动设置为两个窗口(上下各一个)
;;(split-window-vertically)

;;功能是将当前行设为本页第一行，同终端下的clear命令有点相似
;;(defun line-to-top-of-window () 
;;"Move the line point is on to top of window." 
;;(interactive) 
;;(recenter 0)) 

;代码折叠
(load-library "hideshow")
(add-hook 'c-mode-hook 'hs-minor-mode)
(add-hook 'c++-mode-hook 'hs-minor-mode)
(add-hook 'java-mode-hook 'hs-minor-mode)
(add-hook 'perl-mode-hook 'hs-minor-mode)
(add-hook 'cperl-mode-hook 'hs-minor-mode)
(add-hook 'php-mode-hook 'hs-minor-mode)
(add-hook 'emacs-lisp-mode-hook 'hs-minor-mode) 

;;临时记号
;;有时你需要跳到另一个文件进行一些操作，然后很快的跳回来。你当然可以 使用 bookmark或者寄存器。
;;但是这些实在是太慢了。你多想拥有vi那样的 ma, mb, 'a, 'b 的操作。现在你可以用几行 elisp 达到类似的目的
(global-set-key [(control ?\.)] 'ska-point-to-register)
(global-set-key [(control ?\,)] 'ska-jump-to-register)
(defun ska-point-to-register()
  "Store cursorposition _fast_ in a register. 
Use ska-jump-to-register to jump back to the stored 
position."
  (interactive)
  (setq zmacs-region-stays t)
  (point-to-register 8))

(defun ska-jump-to-register()
  "Switches between current cursorposition and position
that was stored with ska-point-to-register."
  (interactive)
  (setq zmacs-region-stays t)
  (let ((tmp (point-marker)))
        (jump-to-register 8)
        (set-register 8 tmp)))

;;------------------------- 括号匹配 -------------------------------------------  
; 这是一个很小的函数。你是不是觉得Emacs在匹配的括号之间来回跳转的时候按C-M-f  
; 和C-M-b太麻烦了?vi的%就很方便,我们可以把%设置为匹配括号。可是你想输入%怎么办?   
; 一个很巧妙的解决方案就是.当%在括号上按下时.那么匹配括号.否则输入一个%.  
; 你只需要在 .emacs文件里加入这些东西就可以达到目的。  
(global-set-key "%" 'match-paren)  
(defun match-paren (arg)  
  "Go to the matching paren if on a paren; otherwise insert %."  
  (interactive "p")  
  (cond ((looking-at "\\s\(") (forward-list 1) (backward-char 1))  
		((looking-at "\\s\)") (forward-char 1) (backward-list 1))  
		(t (self-insert-command (or arg 1)))))  
;;========================= 括号匹配 ===========================================  


;;======================        Chinese setting        =====================   
;;(setq gnus-default-charset 'cn-gb-2312
;;gnus-group-name-charset-group-alist '((".*" . gb2312))
;;gnus-summary-show-article-charset-alist '((1 . cn-gb-2312) (2 . big5) (3 . chinese-gbk) (4 . utf-8))
;;gnus-newsgroup-ignored-charsets '(unknown-8bit x-unknown iso-8859-1)
;;gnus-group-posting-charset-alist '((".*" gb2312 (gb2312))))
;;(define-coding-system-alias 'gb18030 'gb2312)

;;------------设置(utf-8)模式------------
(set-language-environment 'Chinese-GB)
(set-keyboard-coding-system 'utf-8)
(set-clipboard-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-selection-coding-system 'utf-8)
(modify-coding-system-alist 'process "*" 'utf-8)
(setq default-process-coding-system '(utf-8 . utf-8))
(setq-default pathname-coding-system 'utf-8)
(set-file-name-coding-system 'utf-8)
(setq ansi-color-for-comint-mode t) ;;´¦Àshell-modeÂÂ,ºÃñ÷[M`J3

;;设置 sentence-end 可以识别中文标点。不用在 fill 时在句号后插 入两个空格。
(setq sentence-end "\\([。！？]\\|……\\|[.?!][]\"')}]*\\($\\|[ \t]\\)\\)[ \t\n]*")
(setq sentence-end-double-space nil)

;;----------------------        End Chinese setting        ---------------------


;;无论在什么样的主模式下都打开auto-fill模式
;;    (setq-default auto-fill-function 'do-auto-fill)



;;将文件模式和文件后缀关联起来。append表示追加
(
setq auto-mode-alist
    ( append 
        '(("\\.py\\'" . python-mode)
        ("\\.s?html?\\'" . html-helper-mode)
        (" \\.asp\\'" . html-helper-mode)
        ("\\.phtml\\'" . html-helper-mode)
        ("\\.css\\'" . css-mode)
        ("\\.pc$" . c-mode)
     )
auto-mode-alist))

;;窗口设置
;;(gnus-add-configuration '(article (vertical 1.0 (summary .35 point) (article1.0))))

;;Group Buffer设置
;;自动进入Topic-mode
(add-hook 'gnus-group-mode-hook 'gnus-topic-mode)

;;Sumarry Buffer设置
(setq gnus-summary-line-format ":%U%R %B %s %-60=|%4L |%-20,20f |%&user-date; \n")



;;Article Buffer设置
;;设定要显示的头消息格式
(setq gnus-visible-headers
"^\\(^To:\\|^CC:\\|^From:\\|^Subject:\\|^Date:\\|^Followup-To:
\\|^X-Newsreader:\\|^User-Agent:\\|^X-Mailer:
\\|Line:\\|Lines:\\|Content-Type:\\|NNTP-Posting-Host\\)")

;; session.el
(setq load-path
                   (cons (expand-file-name "~/.emacs.d/plugins/session/lisp") load-path))
(require 'session)
    (add-hook 'after-init-hook 'session-initialize)


;;鼠标滚轮，默认的滚动太快，这里改为3行
(defun up-slightly () (interactive) (scroll-up 3))
(defun down-slightly () (interactive) (scroll-down 3))
(global-set-key [mouse-4] 'down-slightly)
(global-set-key [mouse-5] 'up-slightly)


;;约会提醒
(setq appt-issue-message t)


;;**********************        全局按键设定        *********************       
;;设置[f1]为goto-line   
;;(global-set-key [f1] 'info)
;;(global-set-key [f1] 'goto-line)
;;(global-set-key [f2] 'eshell)
;;(global-set-key [f3] 'shell)
(global-set-key [f3] 'goto-line)

(global-set-key [f4] 'kill-buffer-and-window)
;;[f11] define to maximise present window
;;习惯设置，打开／关闭菜单
(global-set-key [f12] 'menu-bar-mode)


;;移动光标设置
(global-set-key [home] 'beginning-of-buffer)
(global-set-key [end]  'end-of-buffer)

;;input 
(global-set-key [?\S- ] 'set-mark-command)
;;切换buffer的设置
;;(global-set-key [(control o)] 'other-window)
;;(global-set-key [(control tab)] 'tabbar-forward)


;; 格式化整个文件函数  
(defun indent-whole ()  
  (interactive)  
  (indent-region (point-min) (point-max))  
  (message "format successfully"))  
;; 绑定到F7键  
(global-set-key [f11] 'indent-whole) 

;;**********************        常用编程配置        *********************

;;热键设置
(global-set-key [f5] 'compile)
(setq-default compile-command "make -k")
(global-set-key [f6] 'speedbar)
(global-set-key [f7] 'gdb)
(global-set-key [f8] 'previous-error)
(global-set-key [f9] 'next-error)
;;启动窗口gdb    
(global-set-key [f10] 'gdb-many-windows)



;;(global-set-key [f9] 'delete-window);F9 关闭d当前窗口
;;(global-set-key [f8] 'other-window);F8窗口间跳转
;;(global-set-key [(f2)] 'ansi-term);F2 切换到shell模式
;;(global-set-key [f3] 'split-window-vertically);F3分割窗口
;;(global-set-key [f12] 'my-fullscreen);F12 全屏
;;(global-set-key [(f4)] 'compile);编译
;;(global-set-key [f5] 'gdb);启动gdb
;;(global-set-key [(f6)] 'gdb-many-windows);启动窗口gdb
;;(global-set-key [f1] 'goto-line);设置M-g为goto-line
;;(global-set-key [f7] 'other-frame);跳到其它窗格
;;(global-set-key [(f3)] 'speedbar);打开speedbar



;;###########     CC-mode配置  http://cc-mode.sourceforge.net/     ################
;;add-to-list 'load-path "~/.emacsd/cc-mode-5.31.3")
;; Use cperl mode instead of the default perl mode
;;(defalias 'c++-mode 'c-version)
;;(add-to-list 'load-path "~/.emacs.d/plugins/cc-mode-5.31.3")


(require 'cc-mode)
(c-set-offset 'inline-open 0)
(c-set-offset 'friend '-)
(c-set-offset 'substatement-open 0)

(setq indent-tabs-mode nil)
(setq c-basic-offset 4 )
(setq default-tab-width 4)



;;Create MyCppStyle
(defconst MyCppStyle
'((c-tab-always-indent . t)
   ;; (c-comment-only-line-offset . 0)
        (c-hanging-braces-alist . ((substatement-open after)
                                              (brace-list-open)))
        (c-cleanup-list . (comment-close-slash
                                 compact-empty-funcall))
    (c-offsets-alist . ((substatement-open . 0)
                                                (innamespace . 0)                           ;;在namespace中不缩进
                                                (case-label      . +)                          ;;case标签缩进一个c-basic-offset单位
                                                (access-label . -)                             ;;private/public等标签少缩进一单位
                                             ;;   (inline-open . 0)                             ;;在.h文件中写函数，括号不缩进
                                                (block-open     . 0)))                       ;;在一个新块开始时不缩进
;;    (c-echo-syntactic-information-p t)
        (setq comment-start "/*"
                  comment-end "*/")
    (setq indent-tabs-mode nil))
    "My Cpp Coding Style")
(c-add-style "MyCppStyle" MyCppStyle)                   ;;定义完自己的style，将其添加到cc-mode的style中。


;;Define own hook
(defun MyCppHook ()
(setq indent-tabs-mode nil)
(setq global-hl-line-mode t)
(c-set-style "MyCppStyle"))                                   ;;设置这个hook对应于MyCppStyle
(add-hook 'c++-mode-hook 'MyCppHook)                ;;将此hook应用于所有的c++模式。


 ;; 最后，可以设置对于不同的文件绑定不同的模式，可以用以下语句实现：
;;set *.h and *.c and *.cpp files use c++ mode
(setq auto-mode-alist
      (cons '("\\.h$" . c++-mode) auto-mode-alist))
(setq auto-mode-alist
      (cons '("\\.c$" . c++-mode) auto-mode-alist))
(setq auto-mode-alist
      (cons '("\\.cpp$" . c++-mode) auto-mode-alist))


;;输入左边的括号，就会自动补全右边的部分.包括(), '', [] , {} ,""
 (defun my-c-mode-auto-pair ()
      (interactive)
        (make-local-variable 'skeleton-pair-alist)
          (setq skeleton-pair-alist '(
                      (?` ?` _ "''")
                      (?\( _ ")")
                      (?\[ _ "]")
;;                      (?{ \n > _ \n ?} >)
                      (?\" _ "\"")))
    (setq skeleton-pair t)
          (local-set-key (kbd "(") 'skeleton-pair-insert-maybe)
;;          (local-set-key (kbd "{") 'skeleton-pair-insert-maybe)
          (local-set-key (kbd "'") 'skeleton-pair-insert-maybe)
          (local-set-key (kbd "[") 'skeleton-pair-insert-maybe)
          (local-set-key (kbd "\"") 'skeleton-pair-insert-maybe))
   (add-hook 'c-mode-hook 'my-c-mode-auto-pair)
   (add-hook 'c++-mode-hook 'my-c-mode-auto-pair)
;;    (add-hook 'cperl-mode-hook 'my-c-mode-auto-pair)
;;    (add-hook 'perl-mode-hook 'my-c-mode-auto-pair)    


;;默认Linux内核编程风格，取自Linux内核说明文档                       

(setq auto-mode-alist (cons '("/usr/src/linux.*/.*\\.[ch]$" . linux-c-mode)
                            auto-mode-alist))                                                 
(defun linux-c-mode ()
  "C mode with adjusted defaults for use with the Linux kernel."  
  (interactive)                                                           
  (c-mode)                                                               
   (c-set-style "K&R")                                                    
   (setq tab-width 4) ;;默认风格是8个缩进                                 
   (setq indent-tabs-mode t)                                            
   (setq c-basic-offset 4))  ;;默认风格是8个缩进            


;;c-mode或cc-mode下缩进只有4格
(add-hook 'c-mode-hook
          '(lambda ()
             (c-set-style "Stroustrup")))


;;_____________C______________
;;C预处理设置                                                               
(setq c-macro-shrink-window-flag t)
(setq c-macro-preprocessor "c")
(setq c-macro-cppflags " ")
(setq c-macro-prompt-flag t)
(setq abbrev-mode t)
;;(add-hook 'c-mode-common-hook 'my-c-mode-common-hook)




;;___________CPP______________
;;CPP预处理设置
(setq c-macro-shrink-window-flag t)
(setq c-macro-preprocessor "cpp")
(setq c-macro-cppflags " ")
(setq c-macro-prompt-flag t)
(setq abbrev-mode t)
;;(add-hook 'c-mode-common-hook 'my-c-mode-common-hook)


;;下面这句是自动换行
;;(c-toggle-auto-hungry-state 1)                                            
;;(c-set-style "stroustrup")
;;(add-hook 'c-mode-common-hook 'program-mode)
;;(add-hook 'c++-mode-common-hook 'program-mode)





;;从《perl语言最佳实践》中摘录的配置信息
;;======================            CPerl-Mode          =====================
;; Use cperl mode instead of the default perl mode
(defalias 'perl-mode 'cperl-mode)
;;(add-to-list 'auto-mode-alist '("\\.\\([pP][Llm]\\|al\\)\\'" . cperl-mode))
;;(add-to-list 'interpreter-mode-alist '("perl" . cperl-mode))
;;(add-to-list 'interpreter-mode-alist '("perl5" . cperl-mode))
;;(add-to-list 'interpreter-mode-alist '("miniperl" . cperl-mode))

;; turn autoindenting on
(global-set-key "\t" 'newline-and-indent)

;; Use 4 space indents via cperl mode
(custom-set-variables
 '(cperl-close-paren-offset -4)
 ;;'(cperl-continued-statement-offset 4)
 '(cperl-indent-level 4)
 '(cperl-indent-parens-as-block t)
 '(cperl-tab-always-indent t));


;;Since I do not like the default indentations, I have the followings:
;;(add-hook 'cperl-mode-hook 'n-cperl-mode-hook t)
;;(defun n-cperl-mode-hook ()
 ;; (setq cperl-indent-level 4)
;;  (setq cperl-continued-statement-offset 0)
;;  (setq cperl-extra-newline-before-brace t)
  ;;(set-face-background 'cperl-array-face "wheat")
  ;;(set-face-background 'cperl-hash-face "wheat")



;; Set line width to 78 columns..
;;(setq fill-column 78)
(setq fill-column 80)
(setq auto-fill-mode t)

;; use % to match various kinds of brackets...
;; See: http://www.lifl.fr/~hodique/uploads/Perso/patches.el
(global-set-key "%" 'match-paren)
(defun match-paren (arg)
  "Go to the matching paren if on a paren; otherwise insert %."
  (interactive "p")
  (let ((prev-char (char-to-string (preceding-char)))
        (next-char (char-to-string (following-char))))
    (cond ((string-match "[[{(<]" next-char) (forward-sexp 1))
          ((string-match "[\]})>]" prev-char) (backward-sexp 1))
          (t (self-insert-command (or arg 1))))))

;; Load an application template in a new unattached buffer...
(defun application-template-pl ()
  "Inserts the standard Perl application template"; For help and info.
  (interative "*")                                ; Make this user accessible.
(switch-to-buffer "application-template-pl")
(insert-file "~/.code_templates/perl_application.pl"))
;; Set to a specific key combination...
(global-set-key "\C-ca" 'application-template-pl)

;; Load a module template in a new unattached buffer...
(defun modelu-template-pm ()
"Insert the standard Perl modelu template"    ; For help and info.
(interactive "*")    ; Make this user accessible.
(switch-to-buffer "module-template-pm")
(insert-file "~/.code_templates/perl_module.pm"))
;; Set to a specific key combination...

;; Expand the following abbreviations while typing in text files...
(abbrev-mode 1) 

(define-abbrev-table 'global-abbrev-table '(
 ("pdbg"    "use Data:: Dumper qw( Dumper );\nwarn Dumper[];"    nil l)
 ("phbp"    "#! /usr/bin/perl -w"                                nil 1)
 ("pbmk"    "use Benchmark qw( cmpthese );\ncmpthese -10, {};"  nil 1)
 ("pusc"    "use Smart::Comments;\n\n### "                        nil 1)
 ("putm"    "use Test::More 'no_plan';"                            nil 1)
))


;;输入左边的括号，就会自动补全右边的部分.包括(), '', [] , {} ,""同cc-mode设置部分
 (require 'cperl-mode)
  (defun auto-pair ()
      (interactive)
        (make-local-variable 'skeleton-pair-alist)
          (setq skeleton-pair-alist '(
                      (?` ?` _ "''")
                      (?\( _ ")")
                      (?\[ _ "]")
;;                      (?{ \n > _ \n ?} >)
                      (?\" _ "\"")))
    (setq skeleton-pair t)
          (local-set-key (kbd "(") 'skeleton-pair-insert-maybe)
;;          (local-set-key (kbd "{") 'skeleton-pair-insert-maybe)
          (local-set-key (kbd "'") 'skeleton-pair-insert-maybe)
          (local-set-key (kbd "[") 'skeleton-pair-insert-maybe)
          (local-set-key (kbd "\"") 'skeleton-pair-insert-maybe))
   (add-hook 'cperl-mode-hook 'auto-pair)
   (add-hook 'perl-mode-hook 'auto-pair)
;;----------------------            End CPerl-Mode       --------------------- 



;;======================            自动补全功能       =====================
;;自动补全功能，这事从王垠的网站直接Copy过来的，引用一些他对此的说明
;;设置以下 hippie-expand 的补全方式。它是一个优先列表， hippie-expand 会优先使用表最前面
;;的函数来补全这是说，首先使用当前的buffer补全，如果找不到，就到别的可见的窗口里寻找，如
;;还找不到，那么到所有打开的buffer去找，如果还……那么到kill-ring里，到文件名，到简称列表
;;里，到list，当前使用的匹配方式会在 echo 区域显示。
;;特别有意思的是 try-expand-line，它可以帮你补全整整一行文字。我很多时后有两行文字大致相
;;同，只有几个字不一样，但是我懒得去拷贝粘贴以下。那么我就输入这行文字的前面几个字。然后
;;多按几下 M-/ 就能得到那一行。

;;hippie的自动补齐策略，优先调用了senator的分析结果：
(autoload 'senator-try-expand-semantic "senator")

(global-set-key [(meta ?/)] 'hippie-expand)
(setq hippie-expand-try-functions-list
'(
    senator-try-expand-semantic    
    try-expand-line
    try-expand-line-all-buffers
    try-expand-list
    try-expand-list-all-buffers
    try-expand-dabbrev
    try-expand-dabbrev-visible
    try-expand-dabbrev-all-buffers
    try-expand-dabbrev-from-kill
    try-complete-file-name
    try-complete-file-name-partially
    try-complete-lisp-symbol
    try-complete-lisp-symbol-partially
    try-expand-whole-kill))



;;自定义自动补齐命令，这部分是抄hhuu的，如果在单词中间就补齐，否则就是tab。
(defun my-indent-or-complete ()
  (interactive)
  (if (looking-at "\\>")
      (hippie-expand nil)
    (indent-for-tab-command))
  )

(global-set-key [(control tab)] 'my-indent-or-complete)
                

;;----------------------            End 自动补全        --------------------- 


;;======================            拷贝代码自动格式化          =====================
;;Emacs 里对代码的格式化支持的非常好，不但可以在编辑的时候自动帮你格式化，还可以选中一块代码，
;;按 Ctrl-Alt-\ 对这块代码重新进行格式化.如果要粘贴一块代码的话，粘贴完了紧接着按 Ctrl-Alt-\,
;;就可以把新加入的代码格式化好。可是，对于这种粘贴加上重新格式化的机械操作，Emacs 应该可以将
;;它自动化才能配得上它的名气，把下面的代码加到配置文件里，你的 Emacs 就会拥有这种能力了
(dolist (command '(yank yank-pop))
  (eval
   `(defadvice ,command (after indent-region activate)
      (and (not current-prefix-arg)
           (member major-mode
                   '(
                     c-mode
                     c++-mode
                     clojure-mode
                     emacs-lisp-mode
                     haskell-mode
                     js-mode
                     latex-mode
                        lisp-mode
                     objc-mode
                     perl-mode
                     cperl-mode
                     plain-tex-mode
                     python-mode
                     rspec-mode
                        ruby-mode
                     scheme-mode))
           (let ((mark-even-if-inactive transient-mark-mode))
             (indent-region (region-beginning) (region-end) nil))))))

;;----------------------            End 拷贝代码自动格式化        --------------------- 

;;**********************            常用编程插件                 *********************


;;======================            google-c-style        =====================
(load-file "~/.emacs.d/plugins/google-c-style.el")
(add-hook 'c-mode-common-hook 'google-set-c-style)
(add-hook 'c-mode-common-hook 'google-make-newline-indent)
;;----------------------        END    google-c-style        ---------------------
;;======================            auto-header            =====================
(add-to-list 'load-path "~/.emacs.d/plugins/")
(require 'auto-header)

;;加载auto-header.el文件,自动添加文件头
(require 'auto-header)

;; 设置文件头中的姓名
(setq header-full-name "Gexueyuan")

;; 设置邮箱
(setq header-email-address "admirestator#gmail.com")

;; 设置每次保存时要更新的项目
(setq header-update-on-save
	  '(  filename
		  modified
		  counter
		  copyright))
;; 设置文件头的显示格式
(setq header-field-list
	  '(  filename  ;文件名
		  ;;    blank     ;空行，下同
		  ;;copyright ;;版权
		  version
		  author    ;作者
		  created   ;创建人
		  ;;blank
		  description   ;描述
		  ;;blank
		  ;;modified_by ;更改者
		  ;; blank
		  ;;status  ;状态，是否发布
		  ;;更新
		  ;;blank
		  ))
;;----------------------        END    auto-header            ---------------------

;;======================            Load cedet            =====================
;; See cedet/common/cedet.info for configuration details.
(load-file "/home/gexueyuan/.emacs.d/plugins/cedet-1.1/common/cedet.el")
  

;; Enable EDE (Project Management) features
(global-ede-mode t)

;; Enable EDE for a pre-existing C++ project
;; (ede-cpp-root-project "NAME" :file "~/myproject/Makefile")


;; Enabling Semantic (code-parsing, smart completion) features
;; Select one of the following:

;; * This enables the database and idle reparse engines
;;(semantic-load-enable-minimum-features)

;; * This enables some tools useful for coding, such as summary mode
;;   imenu support, and the semantic navigator
;;(semantic-load-enable-code-helpers)

;; * This enables even more coding tools such as intellisense mode
;;   decoration mode, and stickyfunc mode (plus regular code helpers)
;;(semantic-load-enable-gaudy-code-helpers)
(semantic-load-enable-excessive-code-helpers)

(semantic-load-enable-semantic-debugging-helpers)

;; * This enables the use of Exuberent ctags if you have it installed.
;;   If you use C++ templates or boost, you should NOT enable it.
;; (semantic-load-enable-all-exuberent-ctags-support)
;;   Or, use one of these two types of support.
;;   Add support for new languges only via ctags.
;; (semantic-load-enable-primary-exuberent-ctags-support)
;;   Add support for using ctags as a backup parser.
;; (semantic-load-enable-secondary-exuberent-ctags-support)

;; Enable SRecode (Template management) minor-mode.
;; (global-srecode-minor-mode 1)
(require 'semantic-tag-folding nil 'noerror)
(global-semantic-tag-folding-mode 1)

(enable-visual-studio-bookmarks)

;; (setq semanticdb-project-roots (list (expand-file-name "/")))
(defconst cedet-user-include-dirs
  (list ".." "../include" "../inc" "../common" "../public"
        "../.." "../../include" "../../inc" "../../common" "../../public" "../../../include"))
(defconst cedet-win32-include-dirs
  (list "C:/MinGW/include"
        "C:/MinGW/include/c++/3.4.5"
        "C:/MinGW/include/c++/3.4.5/mingw32"
        "C:/MinGW/include/c++/3.4.5/backward"
        "C:/MinGW/lib/gcc/mingw32/3.4.5/include"
        "C:/Program Files/Microsoft Visual Studio/VC98/MFC/Include"))
(require 'semantic-c nil 'noerror)
(let ((include-dirs cedet-user-include-dirs))
  (when (eq system-type 'windows-nt)
    (setq include-dirs (append include-dirs cedet-win32-include-dirs)))
  (mapc (lambda (dir)
          (semantic-add-system-include dir 'c++-mode)
          (semantic-add-system-include dir 'c-mode))
        include-dirs))

(global-set-key [f12] 'semantic-ia-fast-jump)

(global-set-key [S-f12]
                (lambda ()
                  (interactive)
                  (if (ring-empty-p (oref semantic-mru-bookmark-ring ring))
                      (error "Semantic Bookmark ring is currently empty"))
                  (let* ((ring (oref semantic-mru-bookmark-ring ring))
                         (alist (semantic-mrub-ring-to-assoc-list ring))
                         (first (cdr (car alist))))
                    (if (semantic-equivalent-tag-p (oref first tag)
                                                   (semantic-current-tag))
                        (setq first (cdr (car (cdr alist)))))
                    (semantic-mrub-switch-tags first))))

(define-key c-mode-base-map [M-S-f12] 'semantic-analyze-proto-impl-toggle)

(define-key c-mode-base-map (kbd "M-n") 'semantic-ia-complete-symbol-menu)
;;----------------------            END cedet                ---------------------



;;======================            Load ecb                =====================
(add-to-list 'load-path "~/.emacs.d/plugins/ecb-2.40")
(require 'ecb)
(require 'ecb-autoloads)
;;打开emacs，然后M-x ecb-activate即可打开ecb。
;;----------------------            END    ecb                ---------------------




;;======================            Load cscope                =====================
(add-to-list 'load-path "/home/gexueyuan/.emacs.d/plugins/cscope-15.8a/contrib/xcscope")
(require 'xcscope)
;;如果工程十分庞大，即使是判断文件更新与否也很费时，可以告诉 Emacs 别自 动更新 cscope.out：
(setq cscope-do-not-update-database t)
;;先M-x !，然后cscope -b，之后就可以在源代码中进行跳转了。命令见cscope菜单
;;这里有篇讲怎么在emacs下安装和使用cscope的：
;;http://ann77.stu.cdut.edu.cn/EmacsCscope.html
;; * Keybindings:
;;
;; All keybindings use the "C-c s" prefix, but are usable only while
;; editing a source file, or in the cscope results buffer:
;;
;;      C-c s s         Find symbol.
;;      C-c s d         Find global definition.
;;      C-c s g         Find global definition (alternate binding).
;;      C-c s G         Find global definition without prompting.
;;      C-c s c         Find functions calling a function.
;;      C-c s C         Find called functions (list functions called
;;                      from a function).
;;      C-c s t         Find text string.
;;      C-c s e         Find egrep pattern.
;;      C-c s f         Find a file.
;;      C-c s i         Find files #including a file.
;;
;; These pertain to navigation through the search results:
;;
;;      C-c s b         Display *cscope* buffer.
;;      C-c s B         Auto display *cscope* buffer toggle.
;;      C-c s n         Next symbol.
;;      C-c s N         Next file.
;;      C-c s p         Previous symbol.
;;      C-c s P         Previous file.
;;      C-c s u         Pop mark.
;;
;; These pertain to setting and unsetting the variable,
;; `cscope-initial-directory', (location searched for the cscope database
;;  directory):
;;
;;      C-c s a         Set initial directory.
;;      C-c s A         Unset initial directory.
;;
;; These pertain to cscope database maintenance:
;;
;;      C-c s L         Create list of files to index.
;;      C-c s I         Create list and index.
;;      C-c s E         Edit list of files to index.
;;      C-c s W         Locate this buffer's cscope directory
;;                      ("W" --> "where").
;;      C-c s S         Locate this buffer's cscope directory.
;;                      (alternate binding: "S" --> "show").
;;      C-c s T         Locate this buffer's cscope directory.
;;                      (alternate binding: "T" --> "tell").
;;      C-c s D         Dired this buffer's directory.
;;----------------------              END    cscope                ---------------------





;;======================            Load color-theme            =====================
;;配色方案
;;(load-file "~/.emacs.d/plugins/color-theme.el")
;;(require 'color-theme)
;;(color-theme-initialize)
;;(color-theme-comidia)
;;(color-theme-midnight)
;;(color-theme-renegade)
;;-->(color-theme-taming-mr-arneson)
;;     (color-theme-dark-laptop)      
;;(color-theme-calm-forest)
;;----------------------            END    color-theme            ---------------------



;;======================            `Load gdb-many-window            =====================
;;gdb-many-window
;;这个功能插件可以使emacs的调试界面像VC一样，有watch, stacktrace等窗口，真正实现图形化gdb.
;;在emacs中编译好程序，然后M-x gdb，连按两次ret，多窗口gdb就出来了
;;http://www.inet.net.nz/~nickrob/multi-gud.el
;;http://www.inet.net.nz/~nickrob/multi-gdb-ui.el

(add-to-list 'load-path"~/.emacs.d/plugins")
(setq gdb-many-windows t)
(load-library "multi-gud.el")
(load-library "multi-gdb-ui.el")
;;----------------------                END    gdb-many-window            ---------------------





;;======================            Load linum                 =====================
;;调用linum.el(line number)来显示行号：
(add-to-list 'load-path"~/.emacs.d/plugins")
(require 'linum)
(global-linum-mode 1)
;;----------------------            END    linum                ---------------------



;;======================            Load Doxymacs                  =====================
;;(require 'doxymacs) 

;;(add-hook 'c-mode-common-hook 'doxymacs-mode)

;;(defun my-doxymacs-font-lock-hook ()
;;(if (or (eq major-mode 'c-mode) (eq major-mode 'c++-mode))
;;  (doxymacs-font-lock)))
;;  (add-hook 'font-lock-mode-hook 'my-doxymacs-font-lock-hook)

;;  This will add the Doxygen keywords to c-mode and c++-mode only.
;;- Default key bindings are:
;;  - C-c d ? will look up documentation for the symbol under the point.
;;  - C-c d r will rescan your Doxygen tags file.
;;  - C-c d f will insert a Doxygen comment for the next function.
;;  - C-c d i will insert a Doxygen comment for the current file.
;;  - C-c d ; will insert a Doxygen comment for the current member.
;;  - C-c d m will insert a blank multi-line Doxygen comment.
;;  - C-c d s will insert a blank single-line Doxygen comment.
;; - C-c d @ will insert grouping comments around the current region.


;;----------------------            END    Doxymacs                ---------------------


;;======================            Load yasnippet                =====================
;;自动补全代码插件
(add-to-list 'load-path"~/.emacs.d/plugins/yasnippet-0.8.0/")
(require 'yasnippet) ;; not yasnippet-bundle
;;(yas/initialize)
;;(yas/load-directory "~/.emacs.d/plugins/yasnippet-0.8.0/")

;;(require 'dropdown-list)
;;(setq yas/prompt-functions '(yas/dropdown-prompt
;;							 yas/ido-prompt
;;							 yas/completing-prompt))
;;----------------------            END    yasnippet            ---------------------

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;FROM THE OpenSUSE11.3;;;;;;;;;;;;;;;;;;;;;;;;;
;;; File name: ` ~/.emacs '    
;;; ---------------------
;;;
;;; If you need your own personal ~/.emacs
;;; please make a copy of this file
;;; an placein your changes and/or extension.
;;;
;;; Copyright (c) 1997-2002 SuSE Gmbh Nuernberg, Germany.
;;;
;;; Author: Werner Fink, <feedback@suse.de> 1997,98,99,2002
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Test of Emacs derivates
;;; -----------------------
(if (string-match "XEmacs\\|Lucid" emacs-version)
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;;; XEmacs
  ;;; ------
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	(progn
	  (if (file-readable-p "~/.xemacs/init.el")
		  (load "~/.xemacs/init.el" nil t))
	  )
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;;; GNU-Emacs
  ;;; ---------
  ;;; load ~/.gnu-emacs or, if not exists /etc/skel/.gnu-emacs
  ;;; For a description and the settings see /etc/skel/.gnu-emacs
  ;;;   ... for your private ~/.gnu-emacs your are on your one.
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  (if (file-readable-p "~/.gnu-emacs")
      (load "~/.gnu-emacs" nil t)
    (if (file-readable-p "/etc/skel/.gnu-emacs")
		(load "/etc/skel/.gnu-emacs" nil t)))

  ;; Custom Settings
  ;; ===============
  ;; To avoid any trouble with the customization system of GNU emacs
  ;; we set the default file ~/.gnu-emacs-custom
  (setq custom-file "~/.gnu-emacs-custom")
  (load "~/.gnu-emacs-custom" t t)
;;;
  )
;;;

;;
(desktop-save-mode 1)
