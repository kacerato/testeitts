.class public final Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;
.super Landroid/text/style/CharacterStyle;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/text/style/CharacterStyle;",
        "Ljava/lang/Comparable<",
        "Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;",
        ">;"
    }
.end annotation


# instance fields
.field private end:I

.field private final span:Lorg/blacksquircle/ui/language/base/span/StyleSpan;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private start:I


# direct methods
.method public constructor <init>(Lorg/blacksquircle/ui/language/base/span/StyleSpan;II)V
    .locals 1
    .param p1    # Lorg/blacksquircle/ui/language/base/span/StyleSpan;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "span"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    iput-object p1, p0, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;->span:Lorg/blacksquircle/ui/language/base/span/StyleSpan;

    iput p2, p0, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;->start:I

    iput p3, p0, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;->end:I

    return-void
.end method

.method private final component1()Lorg/blacksquircle/ui/language/base/span/StyleSpan;
    .locals 1

    iget-object v0, p0, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;->span:Lorg/blacksquircle/ui/language/base/span/StyleSpan;

    return-object v0
.end method

.method public static synthetic copy$default(Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;Lorg/blacksquircle/ui/language/base/span/StyleSpan;IIILjava/lang/Object;)Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;->span:Lorg/blacksquircle/ui/language/base/span/StyleSpan;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget p2, p0, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;->start:I

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget p3, p0, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;->end:I

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;->copy(Lorg/blacksquircle/ui/language/base/span/StyleSpan;II)Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;

    invoke-virtual {p0, p1}, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;->compareTo(Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;)I
    .locals 1
    .param p1    # Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget v0, p0, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;->start:I

    iget p1, p1, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;->start:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;->start:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;->end:I

    return v0
.end method

.method public final copy(Lorg/blacksquircle/ui/language/base/span/StyleSpan;II)Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;
    .locals 1
    .param p1    # Lorg/blacksquircle/ui/language/base/span/StyleSpan;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "span"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;

    invoke-direct {v0, p1, p2, p3}, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;-><init>(Lorg/blacksquircle/ui/language/base/span/StyleSpan;II)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;

    iget-object v1, p0, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;->span:Lorg/blacksquircle/ui/language/base/span/StyleSpan;

    iget-object v3, p1, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;->span:Lorg/blacksquircle/ui/language/base/span/StyleSpan;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;->start:I

    iget v3, p1, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;->start:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;->end:I

    iget p1, p1, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;->end:I

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getEnd()I
    .locals 1

    iget v0, p0, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;->end:I

    return v0
.end method

.method public final getStart()I
    .locals 1

    iget v0, p0, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;->start:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;->span:Lorg/blacksquircle/ui/language/base/span/StyleSpan;

    invoke-virtual {v0}, Lorg/blacksquircle/ui/language/base/span/StyleSpan;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;->start:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;->end:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final setEnd(I)V
    .locals 0

    iput p1, p0, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;->end:I

    return-void
.end method

.method public final setStart(I)V
    .locals 0

    iput p1, p0, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;->start:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SyntaxHighlightSpan(span="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;->span:Lorg/blacksquircle/ui/language/base/span/StyleSpan;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;->start:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;->end:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1    # Landroid/text/TextPaint;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;->span:Lorg/blacksquircle/ui/language/base/span/StyleSpan;

    invoke-virtual {v0}, Lorg/blacksquircle/ui/language/base/span/StyleSpan;->getColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;->span:Lorg/blacksquircle/ui/language/base/span/StyleSpan;

    invoke-virtual {v0}, Lorg/blacksquircle/ui/language/base/span/StyleSpan;->getBold()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;->span:Lorg/blacksquircle/ui/language/base/span/StyleSpan;

    invoke-virtual {v0}, Lorg/blacksquircle/ui/language/base/span/StyleSpan;->getUnderline()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    :cond_2
    iget-object v0, p0, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;->span:Lorg/blacksquircle/ui/language/base/span/StyleSpan;

    invoke-virtual {v0}, Lorg/blacksquircle/ui/language/base/span/StyleSpan;->getItalic()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    const v0, -0x42333333    # -0.1f

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSkewX(F)V

    :cond_3
    iget-object v0, p0, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;->span:Lorg/blacksquircle/ui/language/base/span/StyleSpan;

    invoke-virtual {v0}, Lorg/blacksquircle/ui/language/base/span/StyleSpan;->getStrikethrough()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFlags(I)V

    :cond_4
    return-void
.end method
