.class Lcom/jme3/font/ColorTags$Range;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/font/ColorTags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Range"
.end annotation


# instance fields
.field color:Lcom/jme3/math/ColorRGBA;

.field start:I

.field final synthetic this$0:Lcom/jme3/font/ColorTags;


# direct methods
.method public constructor <init>(Lcom/jme3/font/ColorTags;ILjava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/jme3/font/ColorTags$Range;->this$0:Lcom/jme3/font/ColorTags;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/jme3/font/ColorTags$Range;->start:I

    new-instance p2, Lcom/jme3/math/ColorRGBA;

    invoke-direct {p2}, Lcom/jme3/math/ColorRGBA;-><init>()V

    iput-object p2, p0, Lcom/jme3/font/ColorTags$Range;->color:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/16 v5, 0x10

    const/4 v6, 0x6

    if-lt p2, v6, :cond_1

    iget-object p2, p0, Lcom/jme3/font/ColorTags$Range;->color:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {p3, v2, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v7, 0x437f0000    # 255.0f

    div-float/2addr v2, v7

    invoke-virtual {p3, v4, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v7

    invoke-virtual {p3, v3, v6}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v7

    invoke-virtual {p2, v2, v4, v3, v1}, Lcom/jme3/math/ColorRGBA;->set(FFFF)Lcom/jme3/math/ColorRGBA;

    invoke-static {p1}, Lcom/jme3/font/ColorTags;->access$000(Lcom/jme3/font/ColorTags;)F

    move-result p2

    cmpl-float p2, p2, v0

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/jme3/font/ColorTags$Range;->color:Lcom/jme3/math/ColorRGBA;

    invoke-static {p1}, Lcom/jme3/font/ColorTags;->access$000(Lcom/jme3/font/ColorTags;)F

    move-result p1

    iput p1, p2, Lcom/jme3/math/ColorRGBA;->a:F

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    const/16 p2, 0x8

    if-ne p1, p2, :cond_3

    iget-object p1, p0, Lcom/jme3/font/ColorTags$Range;->color:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {p3, v6, p2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v7

    iput p2, p1, Lcom/jme3/math/ColorRGBA;->a:F

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/jme3/font/ColorTags$Range;->color:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {p3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v6, 0x41700000    # 15.0f

    div-float/2addr v2, v6

    const/4 v7, 0x1

    invoke-virtual {p3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v6

    invoke-virtual {p3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v6

    invoke-virtual {p2, v2, v7, v4, v1}, Lcom/jme3/math/ColorRGBA;->set(FFFF)Lcom/jme3/math/ColorRGBA;

    invoke-static {p1}, Lcom/jme3/font/ColorTags;->access$000(Lcom/jme3/font/ColorTags;)F

    move-result p2

    cmpl-float p2, p2, v0

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/jme3/font/ColorTags$Range;->color:Lcom/jme3/math/ColorRGBA;

    invoke-static {p1}, Lcom/jme3/font/ColorTags;->access$000(Lcom/jme3/font/ColorTags;)F

    move-result p1

    iput p1, p2, Lcom/jme3/math/ColorRGBA;->a:F

    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    if-ne p1, v3, :cond_3

    iget-object p1, p0, Lcom/jme3/font/ColorTags$Range;->color:Lcom/jme3/math/ColorRGBA;

    const/4 p2, 0x3

    invoke-virtual {p3, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    invoke-static {p2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v6

    iput p2, p1, Lcom/jme3/math/ColorRGBA;->a:F

    :cond_3
    :goto_0
    return-void
.end method
