.class public abstract Lorg/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;
.super Lorg/blacksquircle/ui/editorkit/widget/internal/ScrollableEditText;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLineNumbersEditText.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LineNumbersEditText.kt\norg/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,142:1\n1915#2,2:143\n*S KotlinDebug\n*F\n+ 1 LineNumbersEditText.kt\norg/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText\n*L\n96#1:143,2\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nLineNumbersEditText.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LineNumbersEditText.kt\norg/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,142:1\n1915#2,2:143\n*S KotlinDebug\n*F\n+ 1 LineNumbersEditText.kt\norg/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText\n*L\n96#1:143,2\n*E\n"
    }
.end annotation


# instance fields
.field private final lines:Lorg/blacksquircle/ui/editorkit/model/LinesCollection;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private softKeyboard:Z

.field private textChangeEnd:I

.field private textChangeStart:I

.field private textChangedNewText:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final textContent:Landroid/text/SpannableStringBuilder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final textWatcher:Lorg/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText$textWatcher$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


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

    invoke-direct/range {v1 .. v6}, Lorg/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/x;)V

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

    invoke-direct/range {v1 .. v6}, Lorg/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/x;)V

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
    invoke-direct {p0, p1, p2, p3}, Lorg/blacksquircle/ui/editorkit/widget/internal/ScrollableEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p1, Lorg/blacksquircle/ui/editorkit/model/LinesCollection;

    invoke-direct {p1}, Lorg/blacksquircle/ui/editorkit/model/LinesCollection;-><init>()V

    iput-object p1, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->lines:Lorg/blacksquircle/ui/editorkit/model/LinesCollection;

    .line 5
    new-instance p1, Landroid/text/SpannableStringBuilder;

    const-string p2, ""

    invoke-direct {p1, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object p1, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->textContent:Landroid/text/SpannableStringBuilder;

    .line 6
    new-instance p1, Lorg/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText$textWatcher$1;

    invoke-direct {p1, p0}, Lorg/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText$textWatcher$1;-><init>(Lorg/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;)V

    iput-object p1, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->textWatcher:Lorg/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText$textWatcher$1;

    .line 7
    iput-object p2, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->textChangedNewText:Ljava/lang/String;

    const p1, 0x800033

    .line 8
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setGravity(I)V

    const p1, 0xa0001

    .line 9
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setInputType(I)V

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

    .line 10
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lorg/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public addLine(III)V
    .locals 0

    iget-object p3, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->lines:Lorg/blacksquircle/ui/editorkit/model/LinesCollection;

    invoke-virtual {p3, p1, p2}, Lorg/blacksquircle/ui/editorkit/model/LinesCollection;->add(II)V

    return-void
.end method

.method public doAfterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1    # Landroid/text/Editable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public doBeforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput p2, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->textChangeStart:I

    add-int/2addr p2, p3

    iput p2, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->textChangeEnd:I

    return-void
.end method

.method public doOnTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    add-int/2addr p4, p2

    invoke-interface {p1, p2, p4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->textChangedNewText:Ljava/lang/String;

    iget p2, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->textChangeStart:I

    iget p3, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->textChangeEnd:I

    invoke-virtual {p0, p2, p3, p1}, Lorg/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->replaceText(IILjava/lang/CharSequence;)V

    return-void
.end method

.method public final getLines()Lorg/blacksquircle/ui/editorkit/model/LinesCollection;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->lines:Lorg/blacksquircle/ui/editorkit/model/LinesCollection;

    return-object v0
.end method

.method public final getSoftKeyboard()Z
    .locals 1

    iget-boolean v0, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->softKeyboard:Z

    return v0
.end method

.method public removeLine(I)V
    .locals 1

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->lines:Lorg/blacksquircle/ui/editorkit/model/LinesCollection;

    invoke-virtual {v0, p1}, Lorg/blacksquircle/ui/editorkit/model/LinesCollection;->remove(I)V

    return-void
.end method

.method public replaceText(IILjava/lang/CharSequence;)V
    .locals 6
    .param p3    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "newText"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-gez p1, :cond_0

    move p1, v0

    :cond_0
    iget-object v1, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->textContent:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lt p2, v1, :cond_1

    iget-object p2, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->textContent:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p2

    :cond_1
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int v2, p2, p1

    sub-int/2addr v1, v2

    iget-object v2, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->lines:Lorg/blacksquircle/ui/editorkit/model/LinesCollection;

    invoke-virtual {v2, p1}, Lorg/blacksquircle/ui/editorkit/model/LinesCollection;->getLineForIndex(I)I

    move-result v2

    move v3, p1

    :goto_0
    const/16 v4, 0xa

    if-ge v3, p2, :cond_3

    iget-object v5, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->textContent:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5, v3}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v5

    if-ne v5, v4, :cond_2

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Lorg/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->removeLine(I)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->lines:Lorg/blacksquircle/ui/editorkit/model/LinesCollection;

    invoke-virtual {v2, p1}, Lorg/blacksquircle/ui/editorkit/model/LinesCollection;->getLineForIndex(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3, v1}, Lorg/blacksquircle/ui/editorkit/model/LinesCollection;->shiftIndexes(II)V

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_5

    invoke-interface {p3, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_4

    iget-object v2, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->lines:Lorg/blacksquircle/ui/editorkit/model/LinesCollection;

    add-int v3, p1, v0

    invoke-virtual {v2, v3}, Lorg/blacksquircle/ui/editorkit/model/LinesCollection;->getLineForIndex(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v5, v3}, Lorg/blacksquircle/ui/editorkit/model/LinesCollection;->add(II)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    :try_start_0
    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->textContent:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public final setSoftKeyboard(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->softKeyboard:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x10000000

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setImeOptions(I)V

    return-void
.end method

.method public setTextContent(Landroidx/core/text/PrecomputedTextCompat;)V
    .locals 4
    .param p1    # Landroidx/core/text/PrecomputedTextCompat;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "textParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->textWatcher:Lorg/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText$textWatcher$1;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->textContent:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 4
    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->textContent:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    invoke-virtual {p1}, Landroidx/core/text/PrecomputedTextCompat;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "toString(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, p1}, Lorg/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->replaceText(IILjava/lang/CharSequence;)V

    .line 5
    iget-object p1, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->lines:Lorg/blacksquircle/ui/editorkit/model/LinesCollection;

    invoke-virtual {p1}, Lorg/blacksquircle/ui/editorkit/model/LinesCollection;->clear()V

    .line 6
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    const-string v0, "getText(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lag/P;->g4(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 7
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v0, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 8
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v1, v0, v3}, Lorg/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->addLine(III)V

    .line 9
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->lines:Lorg/blacksquircle/ui/editorkit/model/LinesCollection;

    invoke-virtual {p1, v1, v0}, Lorg/blacksquircle/ui/editorkit/model/LinesCollection;->add(II)V

    .line 11
    iget-object p1, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->textWatcher:Lorg/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText$textWatcher$1;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public final setTextContent(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-static {p0}, Landroidx/core/widget/TextViewCompat;->getTextMetricsParams(Landroid/widget/TextView;)Landroidx/core/text/PrecomputedTextCompat$Params;

    move-result-object v0

    const-string v1, "getTextMetricsParams(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-static {p1, v0}, Landroidx/core/text/PrecomputedTextCompat;->create(Ljava/lang/CharSequence;Landroidx/core/text/PrecomputedTextCompat$Params;)Landroidx/core/text/PrecomputedTextCompat;

    move-result-object p1

    .line 14
    invoke-static {p1}, Lkotlin/jvm/internal/M;->m(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lorg/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->setTextContent(Landroidx/core/text/PrecomputedTextCompat;)V

    return-void
.end method
