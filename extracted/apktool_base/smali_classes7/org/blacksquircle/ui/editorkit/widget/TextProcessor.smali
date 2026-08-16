.class public Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;
.super Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;
.source "SourceFile"

# interfaces
.implements Lorg/blacksquircle/ui/editorkit/plugin/base/PluginContainer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/blacksquircle/ui/editorkit/widget/TextProcessor$Companion;,
        Lorg/blacksquircle/ui/editorkit/widget/TextProcessor$OnTextSizeChangedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextProcessor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextProcessor.kt\norg/blacksquircle/ui/editorkit/widget/TextProcessor\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,304:1\n1#2:305\n1807#3,3:306\n*S KotlinDebug\n*F\n+ 1 TextProcessor.kt\norg/blacksquircle/ui/editorkit/widget/TextProcessor\n*L\n301#1:306,3\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nTextProcessor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextProcessor.kt\norg/blacksquircle/ui/editorkit/widget/TextProcessor\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,304:1\n1#2:305\n1807#3,3:306\n*S KotlinDebug\n*F\n+ 1 TextProcessor.kt\norg/blacksquircle/ui/editorkit/widget/TextProcessor\n*L\n301#1:306,3\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lorg/blacksquircle/ui/editorkit/widget/TextProcessor$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "TextProcessor"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private onTextChangeListener:Lorg/blacksquircle/ui/editorkit/utils/OnTextChangeListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private onTextSizeChangedListener:Lorg/blacksquircle/ui/editorkit/widget/TextProcessor$OnTextSizeChangedListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final plugins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private requestLineTips:Lorg/blacksquircle/ui/editorkit/utils/RequestLineTips;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/blacksquircle/ui/editorkit/widget/TextProcessor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/blacksquircle/ui/editorkit/widget/TextProcessor$Companion;-><init>(Lkotlin/jvm/internal/x;)V

    sput-object v0, Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;->Companion:Lorg/blacksquircle/ui/editorkit/widget/TextProcessor$Companion;

    return-void
.end method

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

    invoke-direct/range {v1 .. v6}, Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/x;)V

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

    invoke-direct/range {v1 .. v6}, Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/x;)V

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
    invoke-direct {p0, p1, p2, p3}, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;->plugins:Ljava/util/List;

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

    .line 5
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic c(Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;II)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;->onSelectionChanged$lambda$0(Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;II)V

    return-void
.end method

.method public static synthetic d(Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;Landroid/graphics/Typeface;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;->setTypeface$lambda$0(Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;Landroid/graphics/Typeface;)V

    return-void
.end method

.method public static synthetic e(Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;F)V
    .locals 0

    invoke-static {p0, p1}, Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;->setTextSize$lambda$0(Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;F)V

    return-void
.end method

.method private static final onSelectionChanged$lambda$0(Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;II)V
    .locals 1

    iget-object p0, p0, Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;->plugins:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;

    invoke-virtual {v0, p1, p2}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->onSelectionChanged(II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static final setTextSize$lambda$0(Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;F)V
    .locals 1

    iget-object p0, p0, Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;->plugins:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;

    invoke-virtual {v0, p1}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->setTextSize(F)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static final setTypeface$lambda$0(Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;Landroid/graphics/Typeface;)V
    .locals 1

    iget-object p0, p0, Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;->plugins:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;

    invoke-virtual {v0, p1}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addLine(III)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lorg/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->addLine(III)V

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;->plugins:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;

    invoke-virtual {v1, p1, p2, p3}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->addLine(III)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public clearText()V
    .locals 2

    invoke-super {p0}, Lorg/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->clearText()V

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;->plugins:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;

    invoke-virtual {v1}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->setEmptyText()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public doAfterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1    # Landroid/text/Editable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->doAfterTextChanged(Landroid/text/Editable;)V

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;->plugins:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;

    invoke-virtual {v1, p1}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->afterTextChanged(Landroid/text/Editable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public doBeforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3, p4}, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->doBeforeTextChanged(Ljava/lang/CharSequence;III)V

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;->plugins:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;

    invoke-virtual {v1, p1, p2, p3, p4}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public doOnTextChanged(Ljava/lang/CharSequence;III)V
    .locals 7
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime LF6/c;
    .end annotation

    invoke-super {p0, p1, p2, p3, p4}, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->doOnTextChanged(Ljava/lang/CharSequence;III)V

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;->plugins:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;

    invoke-virtual {v1, p1, p2, p3, p4}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->onTextChanged(Ljava/lang/CharSequence;III)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;->onTextChangeListener:Lorg/blacksquircle/ui/editorkit/utils/OnTextChangeListener;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result p3

    int-to-float p3, p3

    add-float/2addr p1, p3

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p3

    sub-int v6, p2, p3

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result p2

    float-to-int p2, p2

    add-int/2addr p2, v6

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f060061

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    float-to-int p3, p3

    add-int/2addr p2, p3

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;->getVisibleHeight()I

    move-result p3

    if-le p2, p3, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result p2

    float-to-int p2, p2

    sub-int p2, v6, p2

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result p2

    float-to-int p2, p2

    add-int/2addr p2, v6

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    float-to-int p3, p3

    add-int/2addr p2, p3

    :goto_1
    invoke-virtual {p0, p2}, Landroid/widget/AutoCompleteTextView;->setDropDownVerticalOffset(I)V

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;->onTextChangeListener:Lorg/blacksquircle/ui/editorkit/utils/OnTextChangeListener;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    float-to-int v5, p1

    move-object v1, p0

    invoke-interface/range {v0 .. v6}, Lorg/blacksquircle/ui/editorkit/utils/OnTextChangeListener;->afterTextChange(Landroid/view/View;IIIII)V

    :cond_2
    return-void
.end method

.method public findPlugin(Ljava/lang/String;)Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "pluginId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;->plugins:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;

    invoke-virtual {v3}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getPluginId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    instance-of p1, v1, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;

    if-eqz p1, :cond_2

    move-object v2, v1

    check-cast v2, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;

    :cond_2
    return-object v2
.end method

.method public final getOnTextChangeListener()Lorg/blacksquircle/ui/editorkit/utils/OnTextChangeListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;->onTextChangeListener:Lorg/blacksquircle/ui/editorkit/utils/OnTextChangeListener;

    return-object v0
.end method

.method public final getOnTextSizeChangedListener()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor$OnTextSizeChangedListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;->onTextSizeChangedListener:Lorg/blacksquircle/ui/editorkit/widget/TextProcessor$OnTextSizeChangedListener;

    return-object v0
.end method

.method public final getRequestLineTips()Lorg/blacksquircle/ui/editorkit/utils/RequestLineTips;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;->requestLineTips:Lorg/blacksquircle/ui/editorkit/utils/RequestLineTips;

    return-object v0
.end method

.method public final getVisibleHeight()I
    .locals 2
    .annotation runtime LF6/c;
    .end annotation

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v0

    return v1
.end method

.method public hasPlugin(Ljava/lang/String;)Z
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "pluginId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;->plugins:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;

    invoke-virtual {v1}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getPluginId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :cond_2
    :goto_0
    return v2
.end method

.method public installPlugin(Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;)V
    .locals 2
    .param p1    # Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;",
            ">(TT;)V"
        }
    .end annotation

    const-string v0, "plugin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getPluginId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;->hasPlugin(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;->plugins:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->onAttached(Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Plugin "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is already attached."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TextProcessor"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onColorSchemeChanged()V
    .locals 3

    invoke-super {p0}, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->onColorSchemeChanged()V

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;->plugins:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->getColorScheme()Lorg/blacksquircle/ui/language/base/model/ColorScheme;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->onColorSchemeChanged(Lorg/blacksquircle/ui/language/base/model/ColorScheme;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;->plugins:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;

    invoke-virtual {v1, p1}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->beforeDraw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;->plugins:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;

    invoke-virtual {v1, p1}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->afterDraw(Landroid/graphics/Canvas;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p2    # Landroid/view/KeyEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;->plugins:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;

    invoke-virtual {v1, p1, p2}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p2    # Landroid/view/KeyEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;->plugins:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;

    invoke-virtual {v1, p1, p2}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onLanguageChanged()V
    .locals 3

    invoke-super {p0}, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->onLanguageChanged()V

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;->plugins:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->getLanguage()Lorg/blacksquircle/ui/language/base/Language;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->onLanguageChanged(Lorg/blacksquircle/ui/language/base/Language;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 8

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;->plugins:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->onLayout(ZIIII)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;->plugins:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;

    invoke-virtual {v1, p1, p2}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->onMeasure(II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onScrollChanged(IIII)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->onScrollChanged(IIII)V

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;->plugins:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;

    invoke-virtual {v1, p1, p2, p3, p4}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->onScrollChanged(IIII)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSelectionChanged(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onSelectionChanged(II)V

    new-instance v0, Lmh/c;

    invoke-direct {v0, p0, p1, p2}, Lmh/c;-><init>(Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;II)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->onSizeChanged(IIII)V

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;->plugins:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;

    invoke-virtual {v1, p1, p2, p3, p4}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->onSizeChanged(IIII)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;->plugins:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;

    invoke-virtual {v1, p1}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-super {p0, p1}, Lorg/blacksquircle/ui/editorkit/widget/internal/ScrollableEditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public plugins(Lorg/blacksquircle/ui/editorkit/plugin/base/PluginSupplier;)V
    .locals 2
    .param p1    # Lorg/blacksquircle/ui/editorkit/plugin/base/PluginSupplier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "supplier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;->plugins:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-virtual {p1}, Lorg/blacksquircle/ui/editorkit/plugin/base/PluginSupplier;->supply()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v0, v1}, Lpf/S;->h6(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-virtual {p1}, Lorg/blacksquircle/ui/editorkit/plugin/base/PluginSupplier;->supply()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v0, v1}, Lpf/S;->n3(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v0, v1}, Lpf/S;->A5(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;

    invoke-virtual {v1}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getPluginId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;->uninstallPlugin(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/blacksquircle/ui/editorkit/plugin/base/PluginSupplier;->supply()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;

    invoke-virtual {p0, v0}, Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;->installPlugin(Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public removeLine(I)V
    .locals 2

    invoke-super {p0, p1}, Lorg/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->removeLine(I)V

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;->plugins:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;

    invoke-virtual {v1, p1}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->removeLine(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public replaceText(IILjava/lang/CharSequence;)V
    .locals 2
    .param p3    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "newText"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lorg/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->replaceText(IILjava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;->plugins:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;

    invoke-virtual {v1, p1, p2, p3}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->onTextReplaced(IILjava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .locals 0
    .param p1    # Landroid/view/ActionMode$Callback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/widget/TextView;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    return-void
.end method

.method public final setOnTextChangeListener(Lorg/blacksquircle/ui/editorkit/utils/OnTextChangeListener;)V
    .locals 0
    .param p1    # Lorg/blacksquircle/ui/editorkit/utils/OnTextChangeListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;->onTextChangeListener:Lorg/blacksquircle/ui/editorkit/utils/OnTextChangeListener;

    return-void
.end method

.method public final setOnTextSizeChangedListener(Lorg/blacksquircle/ui/editorkit/widget/TextProcessor$OnTextSizeChangedListener;)V
    .locals 0
    .param p1    # Lorg/blacksquircle/ui/editorkit/widget/TextProcessor$OnTextSizeChangedListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;->onTextSizeChangedListener:Lorg/blacksquircle/ui/editorkit/widget/TextProcessor$OnTextSizeChangedListener;

    return-void
.end method

.method public final setRequestLineTips(Lorg/blacksquircle/ui/editorkit/utils/RequestLineTips;)V
    .locals 0
    .param p1    # Lorg/blacksquircle/ui/editorkit/utils/RequestLineTips;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;->requestLineTips:Lorg/blacksquircle/ui/editorkit/utils/RequestLineTips;

    return-void
.end method

.method public setTextContent(Landroidx/core/text/PrecomputedTextCompat;)V
    .locals 2
    .param p1    # Landroidx/core/text/PrecomputedTextCompat;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "textParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;->plugins:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;

    invoke-virtual {v1}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->clearLines()V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->setTextContent(Landroidx/core/text/PrecomputedTextCompat;)V

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;->plugins:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;

    invoke-virtual {v1, p1}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->setTextContent(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public setTextSize(F)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v0, Lmh/b;

    invoke-direct {v0, p0, p1}, Lmh/b;-><init>(Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;F)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;->onTextSizeChangedListener:Lorg/blacksquircle/ui/editorkit/widget/TextProcessor$OnTextSizeChangedListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/blacksquircle/ui/editorkit/widget/TextProcessor$OnTextSizeChangedListener;->onChanged(F)V

    :cond_0
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1    # Landroid/graphics/Typeface;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    new-instance v0, Lmh/a;

    invoke-direct {v0, p0, p1}, Lmh/a;-><init>(Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;Landroid/graphics/Typeface;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showDropDown()V
    .locals 2

    invoke-super {p0}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;->plugins:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;

    invoke-virtual {v1}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->showDropDown()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public uninstallPlugin(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "pluginId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;->hasPlugin(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;->findPlugin(Ljava/lang/String;)Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;->plugins:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1, p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->onDetached(Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Plugin "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not attached."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TextProcessor"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
