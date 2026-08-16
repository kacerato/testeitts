.class public final Lorg/blacksquircle/ui/editorkit/plugin/delimiters/BracketsHighlightPlugin;
.super Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/blacksquircle/ui/editorkit/plugin/delimiters/BracketsHighlightPlugin$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/blacksquircle/ui/editorkit/plugin/delimiters/BracketsHighlightPlugin$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PLUGIN_ID:Ljava/lang/String; = "brackets-highlight-1180"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private closedDelimiterSpan:Landroid/text/style/BackgroundColorSpan;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final delimiters:[C
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private openDelimiterSpan:Landroid/text/style/BackgroundColorSpan;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/blacksquircle/ui/editorkit/plugin/delimiters/BracketsHighlightPlugin$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/blacksquircle/ui/editorkit/plugin/delimiters/BracketsHighlightPlugin$Companion;-><init>(Lkotlin/jvm/internal/x;)V

    sput-object v0, Lorg/blacksquircle/ui/editorkit/plugin/delimiters/BracketsHighlightPlugin;->Companion:Lorg/blacksquircle/ui/editorkit/plugin/delimiters/BracketsHighlightPlugin$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "brackets-highlight-1180"

    invoke-direct {p0, v0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x8

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/delimiters/BracketsHighlightPlugin;->delimiters:[C

    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    const v1, -0x777778

    invoke-direct {v0, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/delimiters/BracketsHighlightPlugin;->openDelimiterSpan:Landroid/text/style/BackgroundColorSpan;

    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {v0, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/delimiters/BracketsHighlightPlugin;->closedDelimiterSpan:Landroid/text/style/BackgroundColorSpan;

    return-void

    :array_0
    .array-data 2
        0x7bs
        0x5bs
        0x28s
        0x3cs
        0x7ds
        0x5ds
        0x29s
        0x3es
    .end array-data
.end method

.method private final checkMatchingBracket(I)V
    .locals 10

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lorg/blacksquircle/ui/editorkit/plugin/delimiters/BracketsHighlightPlugin;->openDelimiterSpan:Landroid/text/style/BackgroundColorSpan;

    invoke-interface {v0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lorg/blacksquircle/ui/editorkit/plugin/delimiters/BracketsHighlightPlugin;->closedDelimiterSpan:Landroid/text/style/BackgroundColorSpan;

    invoke-interface {v0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    if-lez p1, :cond_a

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt p1, v0, :cond_a

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    iget-object v2, p0, Lorg/blacksquircle/ui/editorkit/plugin/delimiters/BracketsHighlightPlugin;->delimiters:[C

    array-length v2, v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_a

    iget-object v5, p0, Lorg/blacksquircle/ui/editorkit/plugin/delimiters/BracketsHighlightPlugin;->delimiters:[C

    aget-char v6, v5, v4

    if-ne v6, v0, :cond_9

    array-length v6, v5

    div-int/lit8 v6, v6, 0x2

    add-int/lit8 v7, v6, -0x1

    const/4 v8, 0x1

    if-gt v4, v7, :cond_1

    move v7, v8

    goto :goto_1

    :cond_1
    move v7, v3

    :goto_1
    add-int/2addr v6, v4

    array-length v9, v5

    rem-int/2addr v6, v9

    aget-char v5, v5, v6

    if-eqz v7, :cond_5

    move v6, p1

    :goto_2
    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ge v6, v7, :cond_9

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-ne v7, v5, :cond_2

    add-int/lit8 v8, v8, -0x1

    :cond_2
    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-ne v7, v0, :cond_3

    add-int/lit8 v8, v8, 0x1

    :cond_3
    if-nez v8, :cond_4

    invoke-direct {p0, v1, v6}, Lorg/blacksquircle/ui/editorkit/plugin/delimiters/BracketsHighlightPlugin;->showBracket(II)V

    goto :goto_4

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v6, p1, -0x2

    :goto_3
    if-ltz v6, :cond_9

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-ne v7, v5, :cond_6

    add-int/lit8 v8, v8, -0x1

    :cond_6
    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-ne v7, v0, :cond_7

    add-int/lit8 v8, v8, 0x1

    :cond_7
    if-nez v8, :cond_8

    invoke-direct {p0, v6, v1}, Lorg/blacksquircle/ui/editorkit/plugin/delimiters/BracketsHighlightPlugin;->showBracket(II)V

    goto :goto_4

    :cond_8
    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    :cond_9
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method private final showBracket(II)V
    .locals 4

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lorg/blacksquircle/ui/editorkit/plugin/delimiters/BracketsHighlightPlugin;->openDelimiterSpan:Landroid/text/style/BackgroundColorSpan;

    add-int/lit8 v2, p1, 0x1

    const/16 v3, 0x21

    invoke-interface {v0, v1, p1, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/delimiters/BracketsHighlightPlugin;->closedDelimiterSpan:Landroid/text/style/BackgroundColorSpan;

    add-int/lit8 v1, p2, 0x1

    invoke-interface {p1, v0, p2, v1, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method


# virtual methods
.method public onAttached(Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;)V
    .locals 1
    .param p1    # Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->onAttached(Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;)V

    const-string p1, "brackets-highlight-1180"

    const-string v0, "BracketsHighlight plugin loaded successfully!"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onColorSchemeChanged(Lorg/blacksquircle/ui/language/base/model/ColorScheme;)V
    .locals 2
    .param p1    # Lorg/blacksquircle/ui/language/base/model/ColorScheme;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "colorScheme"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->onColorSchemeChanged(Lorg/blacksquircle/ui/language/base/model/ColorScheme;)V

    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {p1}, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->getDelimiterBackgroundColor()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/delimiters/BracketsHighlightPlugin;->openDelimiterSpan:Landroid/text/style/BackgroundColorSpan;

    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {p1}, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->getDelimiterBackgroundColor()I

    move-result p1

    invoke-direct {v0, p1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/delimiters/BracketsHighlightPlugin;->closedDelimiterSpan:Landroid/text/style/BackgroundColorSpan;

    return-void
.end method

.method public onSelectionChanged(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->onSelectionChanged(II)V

    if-ne p1, p2, :cond_0

    invoke-direct {p0, p1}, Lorg/blacksquircle/ui/editorkit/plugin/delimiters/BracketsHighlightPlugin;->checkMatchingBracket(I)V

    :cond_0
    return-void
.end method
