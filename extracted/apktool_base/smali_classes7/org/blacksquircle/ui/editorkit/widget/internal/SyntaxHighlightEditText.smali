.class public abstract Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;
.super Lorg/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSyntaxHighlightEditText.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SyntaxHighlightEditText.kt\norg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText\n+ 2 SpannedString.kt\nandroidx/core/text/SpannedStringKt\n*L\n1#1,479:1\n34#2:480\n34#2:481\n34#2:482\n34#2:483\n*S KotlinDebug\n*F\n+ 1 SyntaxHighlightEditText.kt\norg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText\n*L\n137#1:480\n335#1:481\n405#1:482\n426#1:483\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nSyntaxHighlightEditText.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SyntaxHighlightEditText.kt\norg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText\n+ 2 SpannedString.kt\nandroidx/core/text/SpannedStringKt\n*L\n1#1,479:1\n34#2:480\n34#2:481\n34#2:482\n34#2:483\n*S KotlinDebug\n*F\n+ 1 SyntaxHighlightEditText.kt\norg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText\n*L\n137#1:480\n335#1:481\n405#1:482\n426#1:483\n*E\n"
    }
.end annotation


# instance fields
.field private final activeErrorSpans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/blacksquircle/ui/editorkit/model/ErrorSpan;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private addedTextCount:I

.field private colorScheme:Lorg/blacksquircle/ui/language/base/model/ColorScheme;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final errorSpans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/blacksquircle/ui/editorkit/model/ErrorEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final findResultSpans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/blacksquircle/ui/editorkit/model/FindResultSpan;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private findResultStyleSpan:Lorg/blacksquircle/ui/language/base/span/StyleSpan;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private isSyntaxHighlighting:Z

.field private language:Lorg/blacksquircle/ui/language/base/Language;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private selectedFindResult:I

.field private final syntaxHighlightSpans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private tabWidth:I

.field private task:Lorg/blacksquircle/ui/editorkit/utils/StylingTask;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private useSpacesInsteadOfTabs:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LLf/k;
    .end annotation

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/x;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build LLf/k;
    .end annotation

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/x;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build LLf/k;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lorg/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    sget-object p1, Lorg/blacksquircle/ui/editorkit/utils/EditorTheme;->INSTANCE:Lorg/blacksquircle/ui/editorkit/utils/EditorTheme;

    invoke-virtual {p1}, Lorg/blacksquircle/ui/editorkit/utils/EditorTheme;->getANDROID_STUDIO()Lorg/blacksquircle/ui/language/base/model/ColorScheme;

    move-result-object p1

    iput-object p1, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->colorScheme:Lorg/blacksquircle/ui/language/base/model/ColorScheme;

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->useSpacesInsteadOfTabs:Z

    const/4 p1, 0x4

    .line 6
    iput p1, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->tabWidth:I

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->syntaxHighlightSpans:Ljava/util/List;

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->findResultSpans:Ljava/util/List;

    .line 9
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->errorSpans:Ljava/util/List;

    .line 10
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->activeErrorSpans:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/x;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const p3, 0x7f030046

    .line 11
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic a(Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;Ljava/util/List;)Lnf/P0;
    .locals 0

    invoke-static {p0, p1}, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->syntaxHighlight$lambda$1(Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;Ljava/util/List;)Lnf/P0;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->syntaxHighlight$lambda$0(Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final cancelSyntaxHighlighting()V
    .locals 1

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->task:Lorg/blacksquircle/ui/editorkit/utils/StylingTask;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/blacksquircle/ui/editorkit/utils/StylingTask;->cancel()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->task:Lorg/blacksquircle/ui/editorkit/utils/StylingTask;

    return-void
.end method

.method private static synthetic getErrorSpans$annotations()V
    .locals 0
    .annotation runtime LF6/c;
    .end annotation

    return-void
.end method

.method private final scrollToFindResult()V
    .locals 5

    iget v0, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->selectedFindResult:I

    iget-object v1, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->findResultSpans:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->findResultSpans:Ljava/util/List;

    iget v1, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->selectedFindResult:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/blacksquircle/ui/editorkit/model/FindResultSpan;

    invoke-virtual {v0}, Lorg/blacksquircle/ui/editorkit/model/FindResultSpan;->getStart()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-static {p0}, Lorg/blacksquircle/ui/editorkit/utils/ExtensionsKt;->getTopVisibleLine(Landroid/widget/TextView;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineStart(I)I

    move-result v2

    if-lt v1, v2, :cond_0

    invoke-virtual {v0}, Lorg/blacksquircle/ui/editorkit/model/FindResultSpan;->getEnd()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-static {p0}, Lorg/blacksquircle/ui/editorkit/utils/ExtensionsKt;->getBottomVisibleLine(Landroid/widget/TextView;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v2

    if-gt v1, v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-virtual {v0}, Lorg/blacksquircle/ui/editorkit/model/FindResultSpan;->getStart()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    if-le v2, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/widget/internal/ScrollableEditText;->isHorizontallyScrollableCompat()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v0}, Lorg/blacksquircle/ui/editorkit/model/FindResultSpan;->getStart()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v0

    float-to-int v0, v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    :goto_1
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->scrollTo(II)V

    :cond_3
    return-void
.end method

.method private final selectResult()V
    .locals 2

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->findResultSpans:Ljava/util/List;

    iget v1, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->selectedFindResult:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/blacksquircle/ui/editorkit/model/FindResultSpan;

    invoke-virtual {v0}, Lorg/blacksquircle/ui/editorkit/model/FindResultSpan;->getStart()I

    move-result v1

    invoke-virtual {v0}, Lorg/blacksquircle/ui/editorkit/model/FindResultSpan;->getEnd()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroid/widget/EditText;->setSelection(II)V

    invoke-direct {p0}, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->scrollToFindResult()V

    return-void
.end method

.method private final shiftSpans(II)V
    .locals 3
    .annotation runtime LF6/c;
    .end annotation

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->syntaxHighlightSpans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;

    invoke-virtual {v1}, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;->getStart()I

    move-result v2

    if-lt v2, p1, :cond_1

    invoke-virtual {v1}, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;->getStart()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {v1, v2}, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;->setStart(I)V

    :cond_1
    invoke-virtual {v1}, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;->getEnd()I

    move-result v2

    if-lt v2, p1, :cond_0

    invoke-virtual {v1}, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;->getEnd()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {v1, v2}, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;->setEnd(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->findResultSpans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/blacksquircle/ui/editorkit/model/FindResultSpan;

    invoke-virtual {v1}, Lorg/blacksquircle/ui/editorkit/model/FindResultSpan;->getStart()I

    move-result v2

    if-le v2, p1, :cond_4

    invoke-virtual {v1}, Lorg/blacksquircle/ui/editorkit/model/FindResultSpan;->getStart()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {v1, v2}, Lorg/blacksquircle/ui/editorkit/model/FindResultSpan;->setStart(I)V

    :cond_4
    invoke-virtual {v1}, Lorg/blacksquircle/ui/editorkit/model/FindResultSpan;->getEnd()I

    move-result v2

    if-lt v2, p1, :cond_3

    invoke-virtual {v1}, Lorg/blacksquircle/ui/editorkit/model/FindResultSpan;->getEnd()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {v1, v2}, Lorg/blacksquircle/ui/editorkit/model/FindResultSpan;->setEnd(I)V

    goto :goto_1

    :cond_5
    return-void
.end method

.method private final syntaxHighlight()V
    .locals 3
    .annotation runtime LF6/c;
    .end annotation

    invoke-direct {p0}, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->cancelSyntaxHighlighting()V

    new-instance v0, Lorg/blacksquircle/ui/editorkit/utils/StylingTask;

    new-instance v1, Lorg/blacksquircle/ui/editorkit/widget/internal/a;

    invoke-direct {v1, p0}, Lorg/blacksquircle/ui/editorkit/widget/internal/a;-><init>(Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;)V

    new-instance v2, Lorg/blacksquircle/ui/editorkit/widget/internal/b;

    invoke-direct {v2, p0}, Lorg/blacksquircle/ui/editorkit/widget/internal/b;-><init>(Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;)V

    invoke-direct {v0, v1, v2}, Lorg/blacksquircle/ui/editorkit/utils/StylingTask;-><init>(LMf/a;LMf/l;)V

    iput-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->task:Lorg/blacksquircle/ui/editorkit/utils/StylingTask;

    invoke-virtual {v0}, Lorg/blacksquircle/ui/editorkit/utils/StylingTask;->execute()V

    return-void
.end method

.method private static final syntaxHighlight$lambda$0(Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;)Ljava/util/List;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->language:Lorg/blacksquircle/ui/language/base/Language;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/blacksquircle/ui/language/base/Language;->getStyler()Lorg/blacksquircle/ui/language/base/styler/LanguageStyler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->colorScheme:Lorg/blacksquircle/ui/language/base/model/ColorScheme;

    invoke-interface {v0, v1, p0}, Lorg/blacksquircle/ui/language/base/styler/LanguageStyler;->execute(Ljava/lang/String;Lorg/blacksquircle/ui/language/base/model/ColorScheme;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    invoke-static {}, Lpf/H;->J()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {}, Lpf/H;->J()Ljava/util/List;

    move-result-object p0

    goto :goto_3

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {}, Lpf/H;->J()Ljava/util/List;

    move-result-object p0

    :cond_1
    :goto_3
    return-object p0
.end method

.method private static final syntaxHighlight$lambda$1(Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;Ljava/util/List;)Lnf/P0;
    .locals 1

    const-string v0, "spans"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->syntaxHighlightSpans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->syntaxHighlightSpans:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->updateSyntaxHighlighting()V

    sget-object p0, Lnf/P0;->a:Lnf/P0;

    return-object p0
.end method

.method private final updateSyntaxHighlighting()V
    .locals 12
    .annotation runtime LF6/c;
    .end annotation

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-static {p0}, Lorg/blacksquircle/ui/editorkit/utils/ExtensionsKt;->getTopVisibleLine(Landroid/widget/TextView;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    invoke-static {p0}, Lorg/blacksquircle/ui/editorkit/utils/ExtensionsKt;->getBottomVisibleLine(Landroid/widget/TextView;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v1

    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->isSyntaxHighlighting:Z

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    const-string v4, "getText(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const-class v6, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;

    const/4 v7, 0x0

    invoke-interface {v3, v7, v5, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    const-string v5, "getSpans(start, end, T::class.java)"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, [Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;

    array-length v6, v3

    move v8, v7

    :goto_0
    if-ge v8, v6, :cond_0

    aget-object v9, v3, v8

    :try_start_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-interface {v10, v9}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->syntaxHighlightSpans:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/16 v8, 0x21

    if-eqz v6, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;

    invoke-virtual {v6}, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;->getStart()I

    move-result v9

    if-ltz v9, :cond_2

    invoke-virtual {v6}, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;->getEnd()I

    move-result v9

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-gt v9, v10, :cond_2

    move v9, v2

    goto :goto_3

    :cond_2
    move v9, v7

    :goto_3
    invoke-virtual {v6}, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;->getStart()I

    move-result v10

    if-gt v0, v10, :cond_3

    if-gt v10, v1, :cond_3

    goto :goto_4

    :cond_3
    invoke-virtual {v6}, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;->getStart()I

    move-result v10

    if-gt v10, v1, :cond_4

    invoke-virtual {v6}, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;->getEnd()I

    move-result v10

    if-lt v10, v0, :cond_4

    :goto_4
    move v10, v2

    goto :goto_5

    :cond_4
    move v10, v7

    :goto_5
    if-eqz v9, :cond_1

    if-eqz v10, :cond_1

    :try_start_1
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v6}, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;->getStart()I

    move-result v10

    if-ge v10, v0, :cond_5

    move v10, v0

    goto :goto_6

    :cond_5
    invoke-virtual {v6}, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;->getStart()I

    move-result v10

    :goto_6
    invoke-virtual {v6}, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;->getEnd()I

    move-result v11

    if-le v11, v1, :cond_6

    move v11, v1

    goto :goto_7

    :cond_6
    invoke-virtual {v6}, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;->getEnd()I

    move-result v11

    :goto_7
    invoke-interface {v9, v6, v10, v11, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v6

    goto :goto_8

    :catch_2
    move-exception v6

    goto :goto_9

    :goto_8
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :goto_9
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :cond_7
    iput-boolean v7, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->isSyntaxHighlighting:Z

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    const-class v9, Lorg/blacksquircle/ui/editorkit/model/FindResultSpan;

    invoke-interface {v3, v7, v6, v9}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v5}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, [Lorg/blacksquircle/ui/editorkit/model/FindResultSpan;

    array-length v6, v3

    move v9, v7

    :goto_a
    if-ge v9, v6, :cond_8

    aget-object v10, v3, v9

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-interface {v11, v10}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    :cond_8
    iget-object v3, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->findResultSpans:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9
    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/blacksquircle/ui/editorkit/model/FindResultSpan;

    invoke-virtual {v6}, Lorg/blacksquircle/ui/editorkit/model/FindResultSpan;->getStart()I

    move-result v9

    if-ltz v9, :cond_a

    invoke-virtual {v6}, Lorg/blacksquircle/ui/editorkit/model/FindResultSpan;->getEnd()I

    move-result v9

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-gt v9, v10, :cond_a

    move v9, v2

    goto :goto_c

    :cond_a
    move v9, v7

    :goto_c
    invoke-virtual {v6}, Lorg/blacksquircle/ui/editorkit/model/FindResultSpan;->getStart()I

    move-result v10

    invoke-virtual {v6}, Lorg/blacksquircle/ui/editorkit/model/FindResultSpan;->getEnd()I

    move-result v11

    if-gt v10, v11, :cond_b

    move v10, v2

    goto :goto_d

    :cond_b
    move v10, v7

    :goto_d
    invoke-virtual {v6}, Lorg/blacksquircle/ui/editorkit/model/FindResultSpan;->getStart()I

    move-result v11

    if-gt v0, v11, :cond_c

    if-gt v11, v1, :cond_c

    goto :goto_e

    :cond_c
    invoke-virtual {v6}, Lorg/blacksquircle/ui/editorkit/model/FindResultSpan;->getStart()I

    move-result v11

    if-gt v11, v1, :cond_d

    invoke-virtual {v6}, Lorg/blacksquircle/ui/editorkit/model/FindResultSpan;->getEnd()I

    move-result v11

    if-lt v11, v0, :cond_d

    :goto_e
    move v11, v2

    goto :goto_f

    :cond_d
    move v11, v7

    :goto_f
    if-eqz v9, :cond_9

    if-eqz v10, :cond_9

    if-eqz v11, :cond_9

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v6}, Lorg/blacksquircle/ui/editorkit/model/FindResultSpan;->getStart()I

    move-result v10

    if-ge v10, v0, :cond_e

    move v10, v0

    goto :goto_10

    :cond_e
    invoke-virtual {v6}, Lorg/blacksquircle/ui/editorkit/model/FindResultSpan;->getStart()I

    move-result v10

    :goto_10
    invoke-virtual {v6}, Lorg/blacksquircle/ui/editorkit/model/FindResultSpan;->getEnd()I

    move-result v11

    if-le v11, v1, :cond_f

    move v11, v1

    goto :goto_11

    :cond_f
    invoke-virtual {v6}, Lorg/blacksquircle/ui/editorkit/model/FindResultSpan;->getEnd()I

    move-result v11

    :goto_11
    invoke-interface {v9, v6, v10, v11, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_b

    :cond_10
    iget-boolean v2, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->useSpacesInsteadOfTabs:Z

    if-nez v2, :cond_13

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2, v4}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const-class v4, Lorg/blacksquircle/ui/editorkit/model/TabWidthSpan;

    invoke-interface {v2, v7, v3, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v5}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, [Lorg/blacksquircle/ui/editorkit/model/TabWidthSpan;

    array-length v3, v2

    :goto_12
    if-ge v7, v3, :cond_11

    aget-object v4, v2, v7

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_12

    :cond_11
    const-string v2, "\t"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    :cond_12
    :goto_13
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    add-int/2addr v3, v0

    if-ltz v2, :cond_12

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-gt v3, v4, :cond_12

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    new-instance v5, Lorg/blacksquircle/ui/editorkit/model/TabWidthSpan;

    iget v6, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->tabWidth:I

    invoke-direct {v5, v6}, Lorg/blacksquircle/ui/editorkit/model/TabWidthSpan;-><init>(I)V

    const/16 v6, 0x12

    invoke-interface {v4, v5, v2, v3, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_13

    :cond_13
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :cond_14
    return-void
.end method


# virtual methods
.method public final addErrorLine(I)V
    .locals 5
    .annotation runtime LF6/c;
    .end annotation

    if-lez p1, :cond_0

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->errorSpans:Ljava/util/List;

    new-instance v1, Lorg/blacksquircle/ui/editorkit/model/ErrorEntry;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, p1, v4, v2, v3}, Lorg/blacksquircle/ui/editorkit/model/ErrorEntry;-><init>(IIILkotlin/jvm/internal/x;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final clearFindResultSpans()V
    .locals 5

    const/4 v0, 0x0

    iput v0, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->selectedFindResult:I

    iget-object v1, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->findResultSpans:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    const-string v2, "getText(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const-class v3, Lorg/blacksquircle/ui/editorkit/model/FindResultSpan;

    invoke-interface {v1, v0, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "getSpans(start, end, T::class.java)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, [Lorg/blacksquircle/ui/editorkit/model/FindResultSpan;

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public doAfterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1    # Landroid/text/Editable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-boolean p1, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->isSyntaxHighlighting:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result p1

    iget v0, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->addedTextCount:I

    invoke-direct {p0, p1, v0}, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->shiftSpans(II)V

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->addedTextCount:I

    invoke-direct {p0}, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->syntaxHighlight()V

    return-void
.end method

.method public doBeforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget v0, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->addedTextCount:I

    sub-int/2addr v0, p3

    iput v0, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->addedTextCount:I

    invoke-direct {p0}, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->cancelSyntaxHighlighting()V

    iget-boolean v0, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->isSyntaxHighlighting:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Lorg/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->doBeforeTextChanged(Ljava/lang/CharSequence;III)V

    :cond_0
    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/widget/internal/ScrollableEditText;->abortFling()V

    return-void
.end method

.method public doOnTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget v0, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->addedTextCount:I

    add-int/2addr v0, p4

    iput v0, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->addedTextCount:I

    iget-boolean v0, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->isSyntaxHighlighting:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Lorg/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->doOnTextChanged(Ljava/lang/CharSequence;III)V

    :cond_0
    return-void
.end method

.method public final find(Lorg/blacksquircle/ui/editorkit/model/FindParams;)V
    .locals 5
    .param p1    # Lorg/blacksquircle/ui/editorkit/model/FindParams;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/blacksquircle/ui/editorkit/model/FindParams;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_7

    :try_start_0
    invoke-virtual {p1}, Lorg/blacksquircle/ui/editorkit/model/FindParams;->getRegex()Z

    move-result v0

    const/16 v1, 0x42

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/blacksquircle/ui/editorkit/model/FindParams;->getMatchCase()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/blacksquircle/ui/editorkit/model/FindParams;->getQuery()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/blacksquircle/ui/editorkit/model/FindParams;->getQuery()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/blacksquircle/ui/editorkit/model/FindParams;->getWordsOnly()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lorg/blacksquircle/ui/editorkit/model/FindParams;->getMatchCase()Z

    move-result v0
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "\\s"

    if-eqz v0, :cond_2

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/blacksquircle/ui/editorkit/model/FindParams;->getQuery()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/blacksquircle/ui/editorkit/model/FindParams;->getQuery()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lorg/blacksquircle/ui/editorkit/model/FindParams;->getMatchCase()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lorg/blacksquircle/ui/editorkit/model/FindParams;->getQuery()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lorg/blacksquircle/ui/editorkit/model/FindParams;->getQuery()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p1

    :goto_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    :cond_5
    :goto_1
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->findResultStyleSpan:Lorg/blacksquircle/ui/language/base/span/StyleSpan;

    if-eqz v0, :cond_5

    new-instance v1, Lorg/blacksquircle/ui/editorkit/model/FindResultSpan;

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    invoke-direct {v1, v0, v2, v3}, Lorg/blacksquircle/ui/editorkit/model/FindResultSpan;-><init>(Lorg/blacksquircle/ui/language/base/span/StyleSpan;II)V

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->findResultSpans:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v1}, Lorg/blacksquircle/ui/editorkit/model/FindResultSpan;->getStart()I

    move-result v2

    invoke-virtual {v1}, Lorg/blacksquircle/ui/editorkit/model/FindResultSpan;->getEnd()I

    move-result v3

    const/16 v4, 0x21

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    :cond_6
    iget-object p1, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->findResultSpans:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    invoke-direct {p0}, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->selectResult()V
    :try_end_1
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_7
    return-void
.end method

.method public final findNext()V
    .locals 2

    iget v0, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->selectedFindResult:I

    iget-object v1, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->findResultSpans:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->selectedFindResult:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->selectedFindResult:I

    invoke-direct {p0}, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->selectResult()V

    :cond_0
    return-void
.end method

.method public final findPrevious()V
    .locals 2

    iget v0, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->selectedFindResult:I

    if-lez v0, :cond_0

    iget-object v1, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->findResultSpans:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->selectedFindResult:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->selectedFindResult:I

    invoke-direct {p0}, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->selectResult()V

    :cond_0
    return-void
.end method

.method public final getColorScheme()Lorg/blacksquircle/ui/language/base/model/ColorScheme;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->colorScheme:Lorg/blacksquircle/ui/language/base/model/ColorScheme;

    return-object v0
.end method

.method public final getLanguage()Lorg/blacksquircle/ui/language/base/Language;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->language:Lorg/blacksquircle/ui/language/base/Language;

    return-object v0
.end method

.method public final getTabWidth()I
    .locals 1

    iget v0, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->tabWidth:I

    return v0
.end method

.method public final getUseSpacesInsteadOfTabs()Z
    .locals 1

    iget-boolean v0, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->useSpacesInsteadOfTabs:Z

    return v0
.end method

.method public onColorSchemeChanged()V
    .locals 9

    new-instance v8, Lorg/blacksquircle/ui/language/base/span/StyleSpan;

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->colorScheme:Lorg/blacksquircle/ui/language/base/model/ColorScheme;

    invoke-virtual {v0}, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->getFindResultBackgroundColor()I

    move-result v1

    const/16 v6, 0x1e

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lorg/blacksquircle/ui/language/base/span/StyleSpan;-><init>(IZZZZILkotlin/jvm/internal/x;)V

    iput-object v8, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->findResultStyleSpan:Lorg/blacksquircle/ui/language/base/span/StyleSpan;

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->colorScheme:Lorg/blacksquircle/ui/language/base/model/ColorScheme;

    invoke-virtual {v0}, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->getTextColor()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->colorScheme:Lorg/blacksquircle/ui/language/base/model/ColorScheme;

    invoke-virtual {v0}, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->getBackgroundColor()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->colorScheme:Lorg/blacksquircle/ui/language/base/model/ColorScheme;

    invoke-virtual {v0}, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->getSelectionColor()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHighlightColor(I)V

    return-void
.end method

.method public onLanguageChanged()V
    .locals 0

    return-void
.end method

.method public onScrollChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lorg/blacksquircle/ui/editorkit/widget/internal/ScrollableEditText;->onScrollChanged(IIII)V

    invoke-direct {p0}, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->updateSyntaxHighlighting()V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-direct {p0}, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->updateSyntaxHighlighting()V

    invoke-super {p0, p1, p2, p3, p4}, Lorg/blacksquircle/ui/editorkit/widget/internal/ScrollableEditText;->onSizeChanged(IIII)V

    return-void
.end method

.method public final removeAllErrors()V
    .locals 1
    .annotation runtime LF6/c;
    .end annotation

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->errorSpans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final removeErrorLine(I)V
    .locals 3
    .annotation runtime LF6/c;
    .end annotation

    if-lez p1, :cond_1

    :goto_0
    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->errorSpans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/blacksquircle/ui/editorkit/model/ErrorEntry;

    invoke-virtual {v1}, Lorg/blacksquircle/ui/editorkit/model/ErrorEntry;->getLineNumber()I

    move-result v2

    if-ne v2, p1, :cond_0

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->errorSpans:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final replaceAllFindResults(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "replaceText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->findResultSpans:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->findResultSpans:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    const/4 v2, -0x1

    if-ge v2, v1, :cond_0

    iget-object v2, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->findResultSpans:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/blacksquircle/ui/editorkit/model/FindResultSpan;

    invoke-virtual {v2}, Lorg/blacksquircle/ui/editorkit/model/FindResultSpan;->getStart()I

    move-result v3

    invoke-virtual {v2}, Lorg/blacksquircle/ui/editorkit/model/FindResultSpan;->getEnd()I

    move-result v2

    invoke-virtual {v0, v3, v2, p1}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->findResultSpans:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public final replaceFindResult(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "replaceText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->findResultSpans:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->findResultSpans:Ljava/util/List;

    iget v1, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->selectedFindResult:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/blacksquircle/ui/editorkit/model/FindResultSpan;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0}, Lorg/blacksquircle/ui/editorkit/model/FindResultSpan;->getStart()I

    move-result v2

    invoke-virtual {v0}, Lorg/blacksquircle/ui/editorkit/model/FindResultSpan;->getEnd()I

    move-result v3

    invoke-interface {v1, v2, v3, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    iget-object p1, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->findResultSpans:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget p1, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->selectedFindResult:I

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->findResultSpans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    iget p1, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->selectedFindResult:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->selectedFindResult:I

    :cond_0
    return-void
.end method

.method public final setColorScheme(Lorg/blacksquircle/ui/language/base/model/ColorScheme;)V
    .locals 1
    .param p1    # Lorg/blacksquircle/ui/language/base/model/ColorScheme;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->colorScheme:Lorg/blacksquircle/ui/language/base/model/ColorScheme;

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->onColorSchemeChanged()V

    return-void
.end method

.method public final setLanguage(Lorg/blacksquircle/ui/language/base/Language;)V
    .locals 0
    .param p1    # Lorg/blacksquircle/ui/language/base/Language;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->language:Lorg/blacksquircle/ui/language/base/Language;

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->onLanguageChanged()V

    return-void
.end method

.method public final setTabWidth(I)V
    .locals 0

    iput p1, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->tabWidth:I

    return-void
.end method

.method public setTextContent(Landroidx/core/text/PrecomputedTextCompat;)V
    .locals 1
    .param p1    # Landroidx/core/text/PrecomputedTextCompat;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime LF6/c;
    .end annotation

    const-string v0, "textParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->syntaxHighlightSpans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->findResultSpans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-super {p0, p1}, Lorg/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->setTextContent(Landroidx/core/text/PrecomputedTextCompat;)V

    invoke-direct {p0}, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->syntaxHighlight()V

    return-void
.end method

.method public final setUseSpacesInsteadOfTabs(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->useSpacesInsteadOfTabs:Z

    return-void
.end method

.method public final tab()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-boolean v0, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->useSpacesInsteadOfTabs:Z

    if-eqz v0, :cond_0

    const-string v0, " "

    iget v1, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->tabWidth:I

    invoke-static {v0, v1}, Lag/K;->x2(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "\t"

    :goto_0
    return-object v0
.end method
