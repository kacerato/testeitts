.class public final Lorg/blacksquircle/ui/editorkit/ExtensionsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExtensions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Extensions.kt\norg/blacksquircle/ui/editorkit/ExtensionsKt\n+ 2 Context.kt\nandroidx/core/content/ContextKt\n*L\n1#1,152:1\n31#2:153\n31#2:154\n31#2:155\n31#2:156\n*S KotlinDebug\n*F\n+ 1 Extensions.kt\norg/blacksquircle/ui/editorkit/ExtensionsKt\n*L\n36#1:153\n43#1:154\n49#1:155\n150#1:156\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nExtensions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Extensions.kt\norg/blacksquircle/ui/editorkit/ExtensionsKt\n+ 2 Context.kt\nandroidx/core/content/ContextKt\n*L\n1#1,152:1\n31#2:153\n31#2:154\n31#2:155\n31#2:156\n*S KotlinDebug\n*F\n+ 1 Extensions.kt\norg/blacksquircle/ui/editorkit/ExtensionsKt\n*L\n36#1:153\n43#1:154\n49#1:155\n150#1:156\n*E\n"
    }
.end annotation


# static fields
.field private static final LABEL_COPY:Ljava/lang/String; = "COPY"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final LABEL_CUT:Ljava/lang/String; = "CUT"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static final copy(Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;)V
    .locals 2
    .param p0    # Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v1, Landroid/content/ClipboardManager;

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    const-string v1, "COPY"

    invoke-static {p0}, Lorg/blacksquircle/ui/editorkit/ExtensionsKt;->getSelectedText(Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    :cond_0
    return-void
.end method

.method public static final cut(Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;)V
    .locals 3
    .param p0    # Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v1, Landroid/content/ClipboardManager;

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    const-string v1, "CUT"

    invoke-static {p0}, Lorg/blacksquircle/ui/editorkit/ExtensionsKt;->getSelectedText(Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result p0

    const-string v2, ""

    invoke-interface {v0, v1, p0, v2}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    return-void
.end method

.method public static final deleteLine(Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;)V
    .locals 3
    .param p0    # Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->getLines()Lorg/blacksquircle/ui/editorkit/model/LinesCollection;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/blacksquircle/ui/editorkit/model/LinesCollection;->getLineForIndex(I)I

    move-result v0

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->getLines()Lorg/blacksquircle/ui/editorkit/model/LinesCollection;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/blacksquircle/ui/editorkit/model/LinesCollection;->getIndexForStartOfLine(I)I

    move-result v1

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->getLines()Lorg/blacksquircle/ui/editorkit/model/LinesCollection;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/blacksquircle/ui/editorkit/model/LinesCollection;->getIndexForEndOfLine(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-interface {p0, v1, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    return-void
.end method

.method public static final duplicateLine(Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;)V
    .locals 4
    .param p0    # Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->getLines()Lorg/blacksquircle/ui/editorkit/model/LinesCollection;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/blacksquircle/ui/editorkit/model/LinesCollection;->getLineForIndex(I)I

    move-result v0

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->getLines()Lorg/blacksquircle/ui/editorkit/model/LinesCollection;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/blacksquircle/ui/editorkit/model/LinesCollection;->getIndexForStartOfLine(I)I

    move-result v1

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->getLines()Lorg/blacksquircle/ui/editorkit/model/LinesCollection;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/blacksquircle/ui/editorkit/model/LinesCollection;->getIndexForEndOfLine(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    return-void
.end method

.method public static final getSelectedText(Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;)Ljava/lang/CharSequence;
    .locals 2
    .param p0    # Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result p0

    invoke-interface {v0, v1, p0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static final gotoLine(Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;I)V
    .locals 2
    .param p0    # Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v0, p1, -0x1

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->getLines()Lorg/blacksquircle/ui/editorkit/model/LinesCollection;

    move-result-object v1

    invoke-virtual {v1}, Lorg/blacksquircle/ui/editorkit/model/LinesCollection;->getLineCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->getLines()Lorg/blacksquircle/ui/editorkit/model/LinesCollection;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/blacksquircle/ui/editorkit/model/LinesCollection;->getIndexForLine(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setSelection(I)V

    return-void

    :cond_0
    new-instance p0, Lorg/blacksquircle/ui/editorkit/exception/LineException;

    invoke-direct {p0, p1}, Lorg/blacksquircle/ui/editorkit/exception/LineException;-><init>(I)V

    throw p0
.end method

.method public static final hasPrimaryClip(Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;)Z
    .locals 1
    .param p0    # Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "getContext(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Landroid/content/ClipboardManager;

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ClipboardManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final insert(Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;Ljava/lang/CharSequence;)V
    .locals 2
    .param p0    # Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delta"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result p0

    invoke-interface {v0, v1, p0, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    return-void
.end method

.method public static final moveCaretToEndOfLine(Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;)Z
    .locals 2
    .param p0    # Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->getLines()Lorg/blacksquircle/ui/editorkit/model/LinesCollection;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/blacksquircle/ui/editorkit/model/LinesCollection;->getLineForIndex(I)I

    move-result v0

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->getLines()Lorg/blacksquircle/ui/editorkit/model/LinesCollection;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/blacksquircle/ui/editorkit/model/LinesCollection;->getIndexForEndOfLine(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setSelection(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public static final moveCaretToNextWord(Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;)Z
    .locals 5
    .param p0    # Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_5

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v1

    const/16 v2, 0x5f

    if-nez v1, :cond_3

    if-ne v0, v2, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_5

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v4

    if-nez v4, :cond_2

    if-ne v3, v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_4

    :cond_3
    :goto_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    :goto_3
    if-ge v0, v1, :cond_5

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v4

    if-nez v4, :cond_4

    if-eq v3, v2, :cond_4

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_4

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    const/4 p0, 0x1

    return p0
.end method

.method public static final moveCaretToPrevWord(Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;)Z
    .locals 6
    .param p0    # Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_5

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v2

    const/16 v3, 0x5f

    const/4 v4, -0x1

    if-nez v2, :cond_3

    if-ne v0, v3, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    :goto_0
    if-ge v4, v0, :cond_5

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    add-int/lit8 v5, v0, -0x1

    invoke-interface {v2, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v5

    if-nez v5, :cond_2

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_4

    :cond_3
    :goto_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    :goto_3
    if-ge v4, v0, :cond_5

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    add-int/lit8 v5, v0, -0x1

    invoke-interface {v2, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v5

    if-nez v5, :cond_4

    if-eq v2, v3, :cond_4

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_4

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_5
    :goto_4
    return v1
.end method

.method public static final moveCaretToStartOfLine(Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;)Z
    .locals 2
    .param p0    # Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->getLines()Lorg/blacksquircle/ui/editorkit/model/LinesCollection;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/blacksquircle/ui/editorkit/model/LinesCollection;->getLineForIndex(I)I

    move-result v0

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->getLines()Lorg/blacksquircle/ui/editorkit/model/LinesCollection;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/blacksquircle/ui/editorkit/model/LinesCollection;->getIndexForStartOfLine(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setSelection(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public static final paste(Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;)V
    .locals 3
    .param p0    # Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v1, Landroid/content/ClipboardManager;

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    :cond_1
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result p0

    invoke-interface {v0, v2, p0, v1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    return-void
.end method

.method public static final selectLine(Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;)V
    .locals 3
    .param p0    # Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->getLines()Lorg/blacksquircle/ui/editorkit/model/LinesCollection;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/blacksquircle/ui/editorkit/model/LinesCollection;->getLineForIndex(I)I

    move-result v0

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->getLines()Lorg/blacksquircle/ui/editorkit/model/LinesCollection;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/blacksquircle/ui/editorkit/model/LinesCollection;->getIndexForStartOfLine(I)I

    move-result v1

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->getLines()Lorg/blacksquircle/ui/editorkit/model/LinesCollection;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/blacksquircle/ui/editorkit/model/LinesCollection;->getIndexForEndOfLine(I)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroid/widget/EditText;->setSelection(II)V

    return-void
.end method
