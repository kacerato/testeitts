.class public abstract Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private _editText:Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final pluginId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "pluginId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->pluginId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addLine(III)V
    .locals 0

    return-void
.end method

.method public afterDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1    # Landroid/text/Editable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public beforeDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public clearLines()V
    .locals 0

    return-void
.end method

.method public final getColorScheme()Lorg/blacksquircle/ui/language/base/model/ColorScheme;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->getColorScheme()Lorg/blacksquircle/ui/language/base/model/ColorScheme;

    move-result-object v0

    return-object v0
.end method

.method public final getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->_editText:Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    invoke-static {v0}, Lkotlin/jvm/internal/M;->m(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final getLanguage()Lorg/blacksquircle/ui/language/base/Language;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->getLanguage()Lorg/blacksquircle/ui/language/base/Language;

    move-result-object v0

    return-object v0
.end method

.method public final getLines()Lorg/blacksquircle/ui/editorkit/model/LinesCollection;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->getLines()Lorg/blacksquircle/ui/editorkit/model/LinesCollection;

    move-result-object v0

    return-object v0
.end method

.method public final getPluginId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->pluginId:Ljava/lang/String;

    return-object v0
.end method

.method public final getRedoStack()Lorg/blacksquircle/ui/editorkit/model/UndoStack;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->getRedoStack()Lorg/blacksquircle/ui/editorkit/model/UndoStack;

    move-result-object v0

    return-object v0
.end method

.method public final getUndoStack()Lorg/blacksquircle/ui/editorkit/model/UndoStack;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->getUndoStack()Lorg/blacksquircle/ui/editorkit/model/UndoStack;

    move-result-object v0

    return-object v0
.end method

.method public final isAttached()Z
    .locals 1

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->_editText:Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAttached(Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;)V
    .locals 1
    .param p1    # Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->_editText:Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getColorScheme()Lorg/blacksquircle/ui/language/base/model/ColorScheme;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->onColorSchemeChanged(Lorg/blacksquircle/ui/language/base/model/ColorScheme;)V

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getLanguage()Lorg/blacksquircle/ui/language/base/Language;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->onLanguageChanged(Lorg/blacksquircle/ui/language/base/Language;)V

    return-void
.end method

.method public onColorSchemeChanged(Lorg/blacksquircle/ui/language/base/model/ColorScheme;)V
    .locals 1
    .param p1    # Lorg/blacksquircle/ui/language/base/model/ColorScheme;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "colorScheme"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onDetached(Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;)V
    .locals 1
    .param p1    # Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->_editText:Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0
    .param p2    # Landroid/view/KeyEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 p1, 0x0

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0
    .param p2    # Landroid/view/KeyEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 p1, 0x0

    return p1
.end method

.method public onLanguageChanged(Lorg/blacksquircle/ui/language/base/Language;)V
    .locals 0
    .param p1    # Lorg/blacksquircle/ui/language/base/Language;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    return-void
.end method

.method public onMeasure(II)V
    .locals 0

    return-void
.end method

.method public onScrollChanged(IIII)V
    .locals 0

    return-void
.end method

.method public onSelectionChanged(II)V
    .locals 0

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onTextReplaced(IILjava/lang/CharSequence;)V
    .locals 0
    .param p3    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p1, "newText"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public removeLine(I)V
    .locals 0

    return-void
.end method

.method public final requireContext()Landroid/content/Context;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->_editText:Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EditorPlugin "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not attached to a context."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEmptyText()V
    .locals 0

    return-void
.end method

.method public setTextContent(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public setTextSize(F)V
    .locals 0

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 0
    .param p1    # Landroid/graphics/Typeface;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public showDropDown()V
    .locals 0

    return-void
.end method
