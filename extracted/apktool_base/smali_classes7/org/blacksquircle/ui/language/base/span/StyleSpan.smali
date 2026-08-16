.class public final Lorg/blacksquircle/ui/language/base/span/StyleSpan;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bold:Z

.field private color:I

.field private italic:Z

.field private strikethrough:Z

.field private underline:Z


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 1
    const/16 v6, 0x1f

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lorg/blacksquircle/ui/language/base/span/StyleSpan;-><init>(IZZZZILkotlin/jvm/internal/x;)V

    return-void
.end method

.method public constructor <init>(IZZZZ)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lorg/blacksquircle/ui/language/base/span/StyleSpan;->color:I

    .line 4
    iput-boolean p2, p0, Lorg/blacksquircle/ui/language/base/span/StyleSpan;->bold:Z

    .line 5
    iput-boolean p3, p0, Lorg/blacksquircle/ui/language/base/span/StyleSpan;->italic:Z

    .line 6
    iput-boolean p4, p0, Lorg/blacksquircle/ui/language/base/span/StyleSpan;->underline:Z

    .line 7
    iput-boolean p5, p0, Lorg/blacksquircle/ui/language/base/span/StyleSpan;->strikethrough:Z

    return-void
.end method

.method public synthetic constructor <init>(IZZZZILkotlin/jvm/internal/x;)V
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    const/4 p1, -0x1

    :cond_0
    and-int/lit8 p7, p6, 0x2

    const/4 v0, 0x0

    if-eqz p7, :cond_1

    move p7, v0

    goto :goto_0

    :cond_1
    move p7, p2

    :goto_0
    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    move v1, v0

    goto :goto_1

    :cond_2
    move v1, p3

    :goto_1
    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    move v2, v0

    goto :goto_2

    :cond_3
    move v2, p4

    :goto_2
    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    goto :goto_3

    :cond_4
    move v0, p5

    :goto_3
    move-object p2, p0

    move p3, p1

    move p4, p7

    move p5, v1

    move p6, v2

    move p7, v0

    .line 8
    invoke-direct/range {p2 .. p7}, Lorg/blacksquircle/ui/language/base/span/StyleSpan;-><init>(IZZZZ)V

    return-void
.end method

.method public static synthetic copy$default(Lorg/blacksquircle/ui/language/base/span/StyleSpan;IZZZZILjava/lang/Object;)Lorg/blacksquircle/ui/language/base/span/StyleSpan;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget p1, p0, Lorg/blacksquircle/ui/language/base/span/StyleSpan;->color:I

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-boolean p2, p0, Lorg/blacksquircle/ui/language/base/span/StyleSpan;->bold:Z

    :cond_1
    move p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget-boolean p3, p0, Lorg/blacksquircle/ui/language/base/span/StyleSpan;->italic:Z

    :cond_2
    move v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget-boolean p4, p0, Lorg/blacksquircle/ui/language/base/span/StyleSpan;->underline:Z

    :cond_3
    move v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    iget-boolean p5, p0, Lorg/blacksquircle/ui/language/base/span/StyleSpan;->strikethrough:Z

    :cond_4
    move v2, p5

    move-object p2, p0

    move p3, p1

    move p4, p7

    move p5, v0

    move p6, v1

    move p7, v2

    invoke-virtual/range {p2 .. p7}, Lorg/blacksquircle/ui/language/base/span/StyleSpan;->copy(IZZZZ)Lorg/blacksquircle/ui/language/base/span/StyleSpan;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lorg/blacksquircle/ui/language/base/span/StyleSpan;->color:I

    return v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lorg/blacksquircle/ui/language/base/span/StyleSpan;->bold:Z

    return v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lorg/blacksquircle/ui/language/base/span/StyleSpan;->italic:Z

    return v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lorg/blacksquircle/ui/language/base/span/StyleSpan;->underline:Z

    return v0
.end method

.method public final component5()Z
    .locals 1

    iget-boolean v0, p0, Lorg/blacksquircle/ui/language/base/span/StyleSpan;->strikethrough:Z

    return v0
.end method

.method public final copy(IZZZZ)Lorg/blacksquircle/ui/language/base/span/StyleSpan;
    .locals 7
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v6, Lorg/blacksquircle/ui/language/base/span/StyleSpan;

    move-object v0, v6

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/blacksquircle/ui/language/base/span/StyleSpan;-><init>(IZZZZ)V

    return-object v6
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
    instance-of v1, p1, Lorg/blacksquircle/ui/language/base/span/StyleSpan;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/blacksquircle/ui/language/base/span/StyleSpan;

    iget v1, p0, Lorg/blacksquircle/ui/language/base/span/StyleSpan;->color:I

    iget v3, p1, Lorg/blacksquircle/ui/language/base/span/StyleSpan;->color:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lorg/blacksquircle/ui/language/base/span/StyleSpan;->bold:Z

    iget-boolean v3, p1, Lorg/blacksquircle/ui/language/base/span/StyleSpan;->bold:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lorg/blacksquircle/ui/language/base/span/StyleSpan;->italic:Z

    iget-boolean v3, p1, Lorg/blacksquircle/ui/language/base/span/StyleSpan;->italic:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lorg/blacksquircle/ui/language/base/span/StyleSpan;->underline:Z

    iget-boolean v3, p1, Lorg/blacksquircle/ui/language/base/span/StyleSpan;->underline:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lorg/blacksquircle/ui/language/base/span/StyleSpan;->strikethrough:Z

    iget-boolean p1, p1, Lorg/blacksquircle/ui/language/base/span/StyleSpan;->strikethrough:Z

    if-eq v1, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getBold()Z
    .locals 1

    iget-boolean v0, p0, Lorg/blacksquircle/ui/language/base/span/StyleSpan;->bold:Z

    return v0
.end method

.method public final getColor()I
    .locals 1

    iget v0, p0, Lorg/blacksquircle/ui/language/base/span/StyleSpan;->color:I

    return v0
.end method

.method public final getItalic()Z
    .locals 1

    iget-boolean v0, p0, Lorg/blacksquircle/ui/language/base/span/StyleSpan;->italic:Z

    return v0
.end method

.method public final getStrikethrough()Z
    .locals 1

    iget-boolean v0, p0, Lorg/blacksquircle/ui/language/base/span/StyleSpan;->strikethrough:Z

    return v0
.end method

.method public final getUnderline()Z
    .locals 1

    iget-boolean v0, p0, Lorg/blacksquircle/ui/language/base/span/StyleSpan;->underline:Z

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lorg/blacksquircle/ui/language/base/span/StyleSpan;->color:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lorg/blacksquircle/ui/language/base/span/StyleSpan;->bold:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lorg/blacksquircle/ui/language/base/span/StyleSpan;->italic:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lorg/blacksquircle/ui/language/base/span/StyleSpan;->underline:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lorg/blacksquircle/ui/language/base/span/StyleSpan;->strikethrough:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final setBold(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/blacksquircle/ui/language/base/span/StyleSpan;->bold:Z

    return-void
.end method

.method public final setColor(I)V
    .locals 0

    iput p1, p0, Lorg/blacksquircle/ui/language/base/span/StyleSpan;->color:I

    return-void
.end method

.method public final setItalic(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/blacksquircle/ui/language/base/span/StyleSpan;->italic:Z

    return-void
.end method

.method public final setStrikethrough(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/blacksquircle/ui/language/base/span/StyleSpan;->strikethrough:Z

    return-void
.end method

.method public final setUnderline(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/blacksquircle/ui/language/base/span/StyleSpan;->underline:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StyleSpan(color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/blacksquircle/ui/language/base/span/StyleSpan;->color:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/blacksquircle/ui/language/base/span/StyleSpan;->bold:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", italic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/blacksquircle/ui/language/base/span/StyleSpan;->italic:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", underline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/blacksquircle/ui/language/base/span/StyleSpan;->underline:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", strikethrough="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/blacksquircle/ui/language/base/span/StyleSpan;->strikethrough:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
