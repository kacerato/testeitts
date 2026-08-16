.class Lcom/jme3/font/Letters;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private baseAlpha:F

.field private baseColor:Lcom/jme3/math/ColorRGBA;

.field private final block:Lcom/jme3/font/StringBlock;

.field private final colorTags:Lcom/jme3/font/ColorTags;

.field private current:Lcom/jme3/font/LetterQuad;

.field private final font:Lcom/jme3/font/BitmapFont;

.field private final head:Lcom/jme3/font/LetterQuad;

.field private plainText:Ljava/lang/String;

.field private final tail:Lcom/jme3/font/LetterQuad;

.field private totalHeight:F

.field private totalWidth:F


# direct methods
.method public constructor <init>(Lcom/jme3/font/BitmapFont;Lcom/jme3/font/StringBlock;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/jme3/font/ColorTags;

    invoke-direct {v0}, Lcom/jme3/font/ColorTags;-><init>()V

    iput-object v0, p0, Lcom/jme3/font/Letters;->colorTags:Lcom/jme3/font/ColorTags;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jme3/font/Letters;->baseColor:Lcom/jme3/math/ColorRGBA;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/jme3/font/Letters;->baseAlpha:F

    invoke-virtual {p2}, Lcom/jme3/font/StringBlock;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object p2, p0, Lcom/jme3/font/Letters;->block:Lcom/jme3/font/StringBlock;

    iput-object p1, p0, Lcom/jme3/font/Letters;->font:Lcom/jme3/font/BitmapFont;

    new-instance p2, Lcom/jme3/font/LetterQuad;

    invoke-direct {p2, p1, p3}, Lcom/jme3/font/LetterQuad;-><init>(Lcom/jme3/font/BitmapFont;Z)V

    iput-object p2, p0, Lcom/jme3/font/Letters;->head:Lcom/jme3/font/LetterQuad;

    new-instance p2, Lcom/jme3/font/LetterQuad;

    invoke-direct {p2, p1, p3}, Lcom/jme3/font/LetterQuad;-><init>(Lcom/jme3/font/BitmapFont;Z)V

    iput-object p2, p0, Lcom/jme3/font/Letters;->tail:Lcom/jme3/font/LetterQuad;

    invoke-virtual {p0, v0}, Lcom/jme3/font/Letters;->setText(Ljava/lang/String;)V

    return-void
.end method

.method private align()V
    .locals 8

    iget-object v0, p0, Lcom/jme3/font/Letters;->block:Lcom/jme3/font/StringBlock;

    invoke-virtual {v0}, Lcom/jme3/font/StringBlock;->getTextBox()Lcom/jme3/font/Rectangle;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/jme3/font/Letters;->block:Lcom/jme3/font/StringBlock;

    invoke-virtual {v0}, Lcom/jme3/font/StringBlock;->getAlignment()Lcom/jme3/font/BitmapFont$Align;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/font/Letters;->block:Lcom/jme3/font/StringBlock;

    invoke-virtual {v1}, Lcom/jme3/font/StringBlock;->getVerticalAlignment()Lcom/jme3/font/BitmapFont$VAlign;

    move-result-object v1

    iget-object v2, p0, Lcom/jme3/font/Letters;->block:Lcom/jme3/font/StringBlock;

    invoke-virtual {v2}, Lcom/jme3/font/StringBlock;->getTextBox()Lcom/jme3/font/Rectangle;

    move-result-object v2

    iget v2, v2, Lcom/jme3/font/Rectangle;->width:F

    iget-object v3, p0, Lcom/jme3/font/Letters;->block:Lcom/jme3/font/StringBlock;

    invoke-virtual {v3}, Lcom/jme3/font/StringBlock;->getTextBox()Lcom/jme3/font/Rectangle;

    move-result-object v3

    iget v3, v3, Lcom/jme3/font/Rectangle;->height:F

    invoke-virtual {p0}, Lcom/jme3/font/Letters;->validateSize()V

    iget v4, p0, Lcom/jme3/font/Letters;->totalHeight:F

    cmpg-float v4, v4, v3

    const/4 v5, 0x0

    if-gez v4, :cond_3

    sget-object v4, Lcom/jme3/font/Letters$1;->$SwitchMap$com$jme3$font$BitmapFont$VAlign:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v4, v4, v6

    const/4 v6, 0x1

    if-eq v4, v6, :cond_3

    const/4 v6, 0x2

    if-eq v4, v6, :cond_2

    const/4 v6, 0x3

    if-eq v4, v6, :cond_1

    goto :goto_0

    :cond_1
    iget v4, p0, Lcom/jme3/font/Letters;->totalHeight:F

    sub-float/2addr v3, v4

    goto :goto_1

    :cond_2
    iget v4, p0, Lcom/jme3/font/Letters;->totalHeight:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    goto :goto_1

    :cond_3
    :goto_0
    move v3, v5

    :goto_1
    iget-object v4, p0, Lcom/jme3/font/Letters;->font:Lcom/jme3/font/BitmapFont;

    invoke-virtual {v4}, Lcom/jme3/font/BitmapFont;->isRightToLeft()Z

    move-result v4

    const/high16 v6, 0x40000000    # 2.0f

    if-eqz v4, :cond_8

    sget-object v2, Lcom/jme3/font/BitmapFont$Align;->Right:Lcom/jme3/font/BitmapFont$Align;

    if-ne v0, v2, :cond_4

    sget-object v2, Lcom/jme3/font/BitmapFont$VAlign;->Top:Lcom/jme3/font/BitmapFont$VAlign;

    if-ne v1, v2, :cond_4

    return-void

    :cond_4
    iget-object v1, p0, Lcom/jme3/font/Letters;->tail:Lcom/jme3/font/LetterQuad;

    invoke-virtual {v1}, Lcom/jme3/font/LetterQuad;->getPrevious()Lcom/jme3/font/LetterQuad;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/font/LetterQuad;->setEndOfLine()V

    move v2, v5

    :goto_2
    invoke-virtual {v1}, Lcom/jme3/font/LetterQuad;->isHead()Z

    move-result v4

    if-nez v4, :cond_d

    invoke-virtual {v1}, Lcom/jme3/font/LetterQuad;->isEndOfLine()Z

    move-result v4

    if-eqz v4, :cond_7

    sget-object v2, Lcom/jme3/font/BitmapFont$Align;->Left:Lcom/jme3/font/BitmapFont$Align;

    if-ne v0, v2, :cond_5

    iget-object v2, p0, Lcom/jme3/font/Letters;->block:Lcom/jme3/font/StringBlock;

    invoke-virtual {v2}, Lcom/jme3/font/StringBlock;->getTextBox()Lcom/jme3/font/Rectangle;

    move-result-object v2

    iget v2, v2, Lcom/jme3/font/Rectangle;->x:F

    invoke-virtual {v1}, Lcom/jme3/font/LetterQuad;->getX0()F

    move-result v4

    sub-float/2addr v2, v4

    goto :goto_3

    :cond_5
    sget-object v2, Lcom/jme3/font/BitmapFont$Align;->Center:Lcom/jme3/font/BitmapFont$Align;

    if-ne v0, v2, :cond_6

    iget-object v2, p0, Lcom/jme3/font/Letters;->block:Lcom/jme3/font/StringBlock;

    invoke-virtual {v2}, Lcom/jme3/font/StringBlock;->getTextBox()Lcom/jme3/font/Rectangle;

    move-result-object v2

    iget v2, v2, Lcom/jme3/font/Rectangle;->x:F

    invoke-virtual {v1}, Lcom/jme3/font/LetterQuad;->getX0()F

    move-result v4

    sub-float/2addr v2, v4

    div-float/2addr v2, v6

    goto :goto_3

    :cond_6
    move v2, v5

    :cond_7
    :goto_3
    invoke-virtual {v1, v2, v3}, Lcom/jme3/font/LetterQuad;->setAlignment(FF)V

    invoke-virtual {v1}, Lcom/jme3/font/LetterQuad;->getPrevious()Lcom/jme3/font/LetterQuad;

    move-result-object v1

    goto :goto_2

    :cond_8
    sget-object v4, Lcom/jme3/font/BitmapFont$Align;->Left:Lcom/jme3/font/BitmapFont$Align;

    if-ne v0, v4, :cond_9

    sget-object v4, Lcom/jme3/font/BitmapFont$VAlign;->Top:Lcom/jme3/font/BitmapFont$VAlign;

    if-ne v1, v4, :cond_9

    return-void

    :cond_9
    iget-object v1, p0, Lcom/jme3/font/Letters;->tail:Lcom/jme3/font/LetterQuad;

    invoke-virtual {v1}, Lcom/jme3/font/LetterQuad;->getPrevious()Lcom/jme3/font/LetterQuad;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/font/LetterQuad;->setEndOfLine()V

    move v4, v5

    :goto_4
    invoke-virtual {v1}, Lcom/jme3/font/LetterQuad;->isHead()Z

    move-result v7

    if-nez v7, :cond_d

    invoke-virtual {v1}, Lcom/jme3/font/LetterQuad;->isEndOfLine()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-virtual {v1}, Lcom/jme3/font/LetterQuad;->getX1()F

    move-result v4

    iget-object v7, p0, Lcom/jme3/font/Letters;->block:Lcom/jme3/font/StringBlock;

    invoke-virtual {v7}, Lcom/jme3/font/StringBlock;->getTextBox()Lcom/jme3/font/Rectangle;

    move-result-object v7

    iget v7, v7, Lcom/jme3/font/Rectangle;->x:F

    sub-float/2addr v4, v7

    sget-object v7, Lcom/jme3/font/BitmapFont$Align;->Center:Lcom/jme3/font/BitmapFont$Align;

    if-ne v0, v7, :cond_a

    sub-float v4, v2, v4

    div-float/2addr v4, v6

    goto :goto_5

    :cond_a
    sget-object v7, Lcom/jme3/font/BitmapFont$Align;->Right:Lcom/jme3/font/BitmapFont$Align;

    if-ne v0, v7, :cond_b

    sub-float v4, v2, v4

    goto :goto_5

    :cond_b
    move v4, v5

    :cond_c
    :goto_5
    invoke-virtual {v1, v4, v3}, Lcom/jme3/font/LetterQuad;->setAlignment(FF)V

    invoke-virtual {v1}, Lcom/jme3/font/LetterQuad;->getPrevious()Lcom/jme3/font/LetterQuad;

    move-result-object v1

    goto :goto_4

    :cond_d
    return-void
.end method

.method private lineWrap(Lcom/jme3/font/LetterQuad;)V
    .locals 1

    invoke-virtual {p1}, Lcom/jme3/font/LetterQuad;->isHead()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/jme3/font/LetterQuad;->isBlank()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/jme3/font/LetterQuad;->getPrevious()Lcom/jme3/font/LetterQuad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/font/LetterQuad;->setEndOfLine()V

    invoke-virtual {p1}, Lcom/jme3/font/LetterQuad;->invalidate()V

    iget-object v0, p0, Lcom/jme3/font/Letters;->block:Lcom/jme3/font/StringBlock;

    invoke-virtual {p1, v0}, Lcom/jme3/font/LetterQuad;->update(Lcom/jme3/font/StringBlock;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getBaseAlpha()F
    .locals 1

    iget v0, p0, Lcom/jme3/font/Letters;->baseAlpha:F

    return v0
.end method

.method public getBaseColor()Lcom/jme3/math/ColorRGBA;
    .locals 1

    iget-object v0, p0, Lcom/jme3/font/Letters;->baseColor:Lcom/jme3/math/ColorRGBA;

    return-object v0
.end method

.method public getCharacterAlignX()F
    .locals 1

    iget-object v0, p0, Lcom/jme3/font/Letters;->current:Lcom/jme3/font/LetterQuad;

    invoke-virtual {v0}, Lcom/jme3/font/LetterQuad;->getAlignX()F

    move-result v0

    return v0
.end method

.method public getCharacterAlignY()F
    .locals 1

    iget-object v0, p0, Lcom/jme3/font/Letters;->current:Lcom/jme3/font/LetterQuad;

    invoke-virtual {v0}, Lcom/jme3/font/LetterQuad;->getAlignY()F

    move-result v0

    return v0
.end method

.method public getCharacterHeight()F
    .locals 1

    iget-object v0, p0, Lcom/jme3/font/Letters;->current:Lcom/jme3/font/LetterQuad;

    invoke-virtual {v0}, Lcom/jme3/font/LetterQuad;->getHeight()F

    move-result v0

    return v0
.end method

.method public getCharacterSetPage()I
    .locals 1

    iget-object v0, p0, Lcom/jme3/font/Letters;->current:Lcom/jme3/font/LetterQuad;

    invoke-virtual {v0}, Lcom/jme3/font/LetterQuad;->getBitmapChar()Lcom/jme3/font/BitmapCharacter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/font/BitmapCharacter;->getPage()I

    move-result v0

    return v0
.end method

.method public getCharacterWidth()F
    .locals 1

    iget-object v0, p0, Lcom/jme3/font/Letters;->current:Lcom/jme3/font/LetterQuad;

    invoke-virtual {v0}, Lcom/jme3/font/LetterQuad;->getWidth()F

    move-result v0

    return v0
.end method

.method public getCharacterX0()F
    .locals 1

    iget-object v0, p0, Lcom/jme3/font/Letters;->current:Lcom/jme3/font/LetterQuad;

    invoke-virtual {v0}, Lcom/jme3/font/LetterQuad;->getX0()F

    move-result v0

    return v0
.end method

.method public getCharacterX1()F
    .locals 1

    iget-object v0, p0, Lcom/jme3/font/Letters;->current:Lcom/jme3/font/LetterQuad;

    invoke-virtual {v0}, Lcom/jme3/font/LetterQuad;->getX1()F

    move-result v0

    return v0
.end method

.method public getCharacterY0()F
    .locals 1

    iget-object v0, p0, Lcom/jme3/font/Letters;->current:Lcom/jme3/font/LetterQuad;

    invoke-virtual {v0}, Lcom/jme3/font/LetterQuad;->getY0()F

    move-result v0

    return v0
.end method

.method public getCharacterY1()F
    .locals 1

    iget-object v0, p0, Lcom/jme3/font/Letters;->current:Lcom/jme3/font/LetterQuad;

    invoke-virtual {v0}, Lcom/jme3/font/LetterQuad;->getY1()F

    move-result v0

    return v0
.end method

.method public getHead()Lcom/jme3/font/LetterQuad;
    .locals 1

    iget-object v0, p0, Lcom/jme3/font/Letters;->head:Lcom/jme3/font/LetterQuad;

    return-object v0
.end method

.method public getQuad()Lcom/jme3/font/LetterQuad;
    .locals 1

    iget-object v0, p0, Lcom/jme3/font/Letters;->current:Lcom/jme3/font/LetterQuad;

    return-object v0
.end method

.method public getScale()F
    .locals 2

    iget-object v0, p0, Lcom/jme3/font/Letters;->block:Lcom/jme3/font/StringBlock;

    invoke-virtual {v0}, Lcom/jme3/font/StringBlock;->getSize()F

    move-result v0

    iget-object v1, p0, Lcom/jme3/font/Letters;->font:Lcom/jme3/font/BitmapFont;

    invoke-virtual {v1}, Lcom/jme3/font/BitmapFont;->getCharSet()Lcom/jme3/font/BitmapCharacterSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/font/BitmapCharacterSet;->getRenderedSize()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getTail()Lcom/jme3/font/LetterQuad;
    .locals 1

    iget-object v0, p0, Lcom/jme3/font/Letters;->tail:Lcom/jme3/font/LetterQuad;

    return-object v0
.end method

.method public getTotalHeight()F
    .locals 1

    invoke-virtual {p0}, Lcom/jme3/font/Letters;->validateSize()V

    iget v0, p0, Lcom/jme3/font/Letters;->totalHeight:F

    return v0
.end method

.method public getTotalWidth()F
    .locals 1

    invoke-virtual {p0}, Lcom/jme3/font/Letters;->validateSize()V

    iget v0, p0, Lcom/jme3/font/Letters;->totalWidth:F

    return v0
.end method

.method public invalidate()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jme3/font/Letters;->head:Lcom/jme3/font/LetterQuad;

    invoke-virtual {p0, v0}, Lcom/jme3/font/Letters;->invalidate(Lcom/jme3/font/LetterQuad;)V

    return-void
.end method

.method public invalidate(Lcom/jme3/font/LetterQuad;)V
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    .line 2
    iput v0, p0, Lcom/jme3/font/Letters;->totalWidth:F

    .line 3
    iput v0, p0, Lcom/jme3/font/Letters;->totalHeight:F

    .line 4
    :goto_0
    invoke-virtual {p1}, Lcom/jme3/font/LetterQuad;->isTail()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/jme3/font/LetterQuad;->isInvalid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/jme3/font/LetterQuad;->invalidate()V

    .line 6
    invoke-virtual {p1}, Lcom/jme3/font/LetterQuad;->getNext()Lcom/jme3/font/LetterQuad;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public isPrintable()Z
    .locals 1

    iget-object v0, p0, Lcom/jme3/font/Letters;->current:Lcom/jme3/font/LetterQuad;

    invoke-virtual {v0}, Lcom/jme3/font/LetterQuad;->getBitmapChar()Lcom/jme3/font/BitmapCharacter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public nextCharacter()Z
    .locals 1

    iget-object v0, p0, Lcom/jme3/font/Letters;->current:Lcom/jme3/font/LetterQuad;

    invoke-virtual {v0}, Lcom/jme3/font/LetterQuad;->isTail()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/jme3/font/Letters;->current:Lcom/jme3/font/LetterQuad;

    invoke-virtual {v0}, Lcom/jme3/font/LetterQuad;->getNext()Lcom/jme3/font/LetterQuad;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/font/Letters;->current:Lcom/jme3/font/LetterQuad;

    const/4 v0, 0x1

    return v0
.end method

.method public rewind()V
    .locals 1

    iget-object v0, p0, Lcom/jme3/font/Letters;->head:Lcom/jme3/font/LetterQuad;

    iput-object v0, p0, Lcom/jme3/font/Letters;->current:Lcom/jme3/font/LetterQuad;

    return-void
.end method

.method public setBaseAlpha(F)V
    .locals 4

    iput p1, p0, Lcom/jme3/font/Letters;->baseAlpha:F

    iget-object v0, p0, Lcom/jme3/font/Letters;->colorTags:Lcom/jme3/font/ColorTags;

    invoke-virtual {v0, p1}, Lcom/jme3/font/ColorTags;->setBaseAlpha(F)V

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v1, p1, v0

    if-nez v1, :cond_1

    iget-object p1, p0, Lcom/jme3/font/Letters;->baseColor:Lcom/jme3/math/ColorRGBA;

    if-eqz p1, :cond_0

    iget p1, p1, Lcom/jme3/math/ColorRGBA;->a:F

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/jme3/font/Letters;->head:Lcom/jme3/font/LetterQuad;

    invoke-virtual {v1}, Lcom/jme3/font/LetterQuad;->getNext()Lcom/jme3/font/LetterQuad;

    move-result-object v1

    :goto_1
    invoke-virtual {v1}, Lcom/jme3/font/LetterQuad;->isTail()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1, p1}, Lcom/jme3/font/LetterQuad;->setAlpha(F)V

    invoke-virtual {v1}, Lcom/jme3/font/LetterQuad;->getNext()Lcom/jme3/font/LetterQuad;

    move-result-object v1

    goto :goto_1

    :cond_2
    iget p1, p0, Lcom/jme3/font/Letters;->baseAlpha:F

    cmpl-float p1, p1, v0

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/jme3/font/Letters;->colorTags:Lcom/jme3/font/ColorTags;

    invoke-virtual {p1}, Lcom/jme3/font/ColorTags;->getTags()Ljava/util/LinkedList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_3

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/font/ColorTags$Range;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/font/ColorTags$Range;

    iget v3, v1, Lcom/jme3/font/ColorTags$Range;->start:I

    iget v2, v2, Lcom/jme3/font/ColorTags$Range;->start:I

    iget-object v1, v1, Lcom/jme3/font/ColorTags$Range;->color:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {p0, v3, v2, v1}, Lcom/jme3/font/Letters;->setColor(IILcom/jme3/math/ColorRGBA;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/font/ColorTags$Range;

    iget v0, p1, Lcom/jme3/font/ColorTags$Range;->start:I

    iget-object v1, p0, Lcom/jme3/font/Letters;->plainText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object p1, p1, Lcom/jme3/font/ColorTags$Range;->color:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {p0, v0, v1, p1}, Lcom/jme3/font/Letters;->setColor(IILcom/jme3/math/ColorRGBA;)V

    :cond_4
    invoke-virtual {p0}, Lcom/jme3/font/Letters;->invalidate()V

    return-void
.end method

.method public setColor(IILcom/jme3/math/ColorRGBA;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/jme3/font/Letters;->head:Lcom/jme3/font/LetterQuad;

    invoke-virtual {v0}, Lcom/jme3/font/LetterQuad;->getNext()Lcom/jme3/font/LetterQuad;

    move-result-object v0

    .line 5
    :goto_0
    invoke-virtual {v0}, Lcom/jme3/font/LetterQuad;->isTail()Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/jme3/font/LetterQuad;->getIndex()I

    move-result v1

    if-lt v1, p1, :cond_0

    invoke-virtual {v0}, Lcom/jme3/font/LetterQuad;->getIndex()I

    move-result v1

    if-ge v1, p2, :cond_0

    .line 7
    invoke-virtual {v0, p3}, Lcom/jme3/font/LetterQuad;->setColor(Lcom/jme3/math/ColorRGBA;)V

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/jme3/font/LetterQuad;->getNext()Lcom/jme3/font/LetterQuad;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setColor(Lcom/jme3/math/ColorRGBA;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/jme3/font/Letters;->baseColor:Lcom/jme3/math/ColorRGBA;

    .line 2
    iget-object v0, p0, Lcom/jme3/font/Letters;->colorTags:Lcom/jme3/font/ColorTags;

    invoke-virtual {v0, p1}, Lcom/jme3/font/ColorTags;->setBaseColor(Lcom/jme3/math/ColorRGBA;)V

    .line 3
    iget-object v0, p0, Lcom/jme3/font/Letters;->block:Lcom/jme3/font/StringBlock;

    invoke-virtual {v0}, Lcom/jme3/font/StringBlock;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, p1}, Lcom/jme3/font/Letters;->setColor(IILcom/jme3/math/ColorRGBA;)V

    return-void
.end method

.method public setStyle(III)V
    .locals 2

    iget-object v0, p0, Lcom/jme3/font/Letters;->head:Lcom/jme3/font/LetterQuad;

    invoke-virtual {v0}, Lcom/jme3/font/LetterQuad;->getNext()Lcom/jme3/font/LetterQuad;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Lcom/jme3/font/LetterQuad;->isTail()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/jme3/font/LetterQuad;->getIndex()I

    move-result v1

    if-lt v1, p1, :cond_0

    invoke-virtual {v0}, Lcom/jme3/font/LetterQuad;->getIndex()I

    move-result v1

    if-ge v1, p2, :cond_0

    invoke-virtual {v0, p3}, Lcom/jme3/font/LetterQuad;->setStyle(I)V

    :cond_0
    invoke-virtual {v0}, Lcom/jme3/font/LetterQuad;->getNext()Lcom/jme3/font/LetterQuad;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/jme3/font/Letters;->colorTags:Lcom/jme3/font/ColorTags;

    invoke-virtual {v0, p1}, Lcom/jme3/font/ColorTags;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jme3/font/Letters;->colorTags:Lcom/jme3/font/ColorTags;

    invoke-virtual {v0}, Lcom/jme3/font/ColorTags;->getPlainText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/font/Letters;->plainText:Ljava/lang/String;

    iget-object v0, p0, Lcom/jme3/font/Letters;->head:Lcom/jme3/font/LetterQuad;

    iget-object v1, p0, Lcom/jme3/font/Letters;->tail:Lcom/jme3/font/LetterQuad;

    invoke-virtual {v0, v1}, Lcom/jme3/font/LetterQuad;->setNext(Lcom/jme3/font/LetterQuad;)V

    iget-object v0, p0, Lcom/jme3/font/Letters;->tail:Lcom/jme3/font/LetterQuad;

    iget-object v1, p0, Lcom/jme3/font/Letters;->head:Lcom/jme3/font/LetterQuad;

    invoke-virtual {v0, v1}, Lcom/jme3/font/LetterQuad;->setPrevious(Lcom/jme3/font/LetterQuad;)V

    iget-object v0, p0, Lcom/jme3/font/Letters;->head:Lcom/jme3/font/LetterQuad;

    iput-object v0, p0, Lcom/jme3/font/Letters;->current:Lcom/jme3/font/LetterQuad;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/jme3/font/Letters;->plainText:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2

    iget-object p1, p0, Lcom/jme3/font/Letters;->head:Lcom/jme3/font/LetterQuad;

    iget-object v1, p0, Lcom/jme3/font/Letters;->plainText:Ljava/lang/String;

    iget-object v2, p0, Lcom/jme3/font/Letters;->font:Lcom/jme3/font/BitmapFont;

    invoke-virtual {v2}, Lcom/jme3/font/BitmapFont;->getGlyphParser()Lcom/jme3/font/GlyphParser;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/jme3/font/Letters;->font:Lcom/jme3/font/BitmapFont;

    invoke-virtual {v1}, Lcom/jme3/font/BitmapFont;->getGlyphParser()Lcom/jme3/font/GlyphParser;

    move-result-object v1

    iget-object v2, p0, Lcom/jme3/font/Letters;->plainText:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/jme3/font/GlyphParser;->parse(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    :cond_0
    move v2, v0

    :goto_0
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {p1, v3}, Lcom/jme3/font/LetterQuad;->addNextCharacter(C)Lcom/jme3/font/LetterQuad;

    move-result-object p1

    iget-object v3, p0, Lcom/jme3/font/Letters;->baseColor:Lcom/jme3/math/ColorRGBA;

    if-eqz v3, :cond_1

    invoke-virtual {p1, v3}, Lcom/jme3/font/LetterQuad;->setColor(Lcom/jme3/math/ColorRGBA;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/jme3/font/Letters;->colorTags:Lcom/jme3/font/ColorTags;

    invoke-virtual {p1}, Lcom/jme3/font/ColorTags;->getTags()Ljava/util/LinkedList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    :goto_1
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_3

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/font/ColorTags$Range;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/font/ColorTags$Range;

    iget v3, v1, Lcom/jme3/font/ColorTags$Range;->start:I

    iget v2, v2, Lcom/jme3/font/ColorTags$Range;->start:I

    iget-object v1, v1, Lcom/jme3/font/ColorTags$Range;->color:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {p0, v3, v2, v1}, Lcom/jme3/font/Letters;->setColor(IILcom/jme3/math/ColorRGBA;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/font/ColorTags$Range;

    iget v0, p1, Lcom/jme3/font/ColorTags$Range;->start:I

    iget-object v1, p0, Lcom/jme3/font/Letters;->plainText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object p1, p1, Lcom/jme3/font/ColorTags$Range;->color:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {p0, v0, v1, p1}, Lcom/jme3/font/Letters;->setColor(IILcom/jme3/math/ColorRGBA;)V

    :cond_4
    invoke-virtual {p0}, Lcom/jme3/font/Letters;->invalidate()V

    return-void
.end method

.method public update()V
    .locals 8

    iget-object v0, p0, Lcom/jme3/font/Letters;->head:Lcom/jme3/font/LetterQuad;

    iget-object v1, p0, Lcom/jme3/font/Letters;->font:Lcom/jme3/font/BitmapFont;

    invoke-virtual {v1}, Lcom/jme3/font/BitmapFont;->getCharSet()Lcom/jme3/font/BitmapCharacterSet;

    move-result-object v1

    iget-object v2, p0, Lcom/jme3/font/Letters;->block:Lcom/jme3/font/StringBlock;

    invoke-virtual {v2}, Lcom/jme3/font/StringBlock;->getEllipsisChar()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/jme3/font/BitmapCharacterSet;->getCharacter(I)Lcom/jme3/font/BitmapCharacter;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/jme3/font/BitmapCharacter;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/jme3/font/Letters;->getScale()F

    move-result v3

    mul-float/2addr v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    move v4, v3

    :goto_1
    invoke-virtual {v0}, Lcom/jme3/font/LetterQuad;->isTail()Z

    move-result v5

    if-nez v5, :cond_c

    invoke-virtual {v0}, Lcom/jme3/font/LetterQuad;->isInvalid()Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/jme3/font/Letters;->block:Lcom/jme3/font/StringBlock;

    invoke-virtual {v0, v5}, Lcom/jme3/font/LetterQuad;->update(Lcom/jme3/font/StringBlock;)V

    iget-object v5, p0, Lcom/jme3/font/Letters;->block:Lcom/jme3/font/StringBlock;

    invoke-virtual {v0, v5}, Lcom/jme3/font/LetterQuad;->isInvalid(Lcom/jme3/font/StringBlock;)Z

    move-result v5

    if-eqz v5, :cond_a

    sget-object v5, Lcom/jme3/font/Letters$1;->$SwitchMap$com$jme3$font$LineWrapMode:[I

    iget-object v6, p0, Lcom/jme3/font/Letters;->block:Lcom/jme3/font/StringBlock;

    invoke-virtual {v6}, Lcom/jme3/font/StringBlock;->getLineWrapMode()Lcom/jme3/font/LineWrapMode;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    if-eq v5, v3, :cond_8

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-eq v5, v6, :cond_4

    const/4 v6, 0x3

    if-eq v5, v6, :cond_2

    const/4 v6, 0x4

    if-eq v5, v6, :cond_1

    goto/16 :goto_9

    :cond_1
    iget-object v5, p0, Lcom/jme3/font/Letters;->block:Lcom/jme3/font/StringBlock;

    invoke-virtual {v0, v5}, Lcom/jme3/font/LetterQuad;->clip(Lcom/jme3/font/StringBlock;)V

    invoke-virtual {v0}, Lcom/jme3/font/LetterQuad;->getNext()Lcom/jme3/font/LetterQuad;

    move-result-object v5

    :goto_2
    invoke-virtual {v5}, Lcom/jme3/font/LetterQuad;->isTail()Z

    move-result v6

    if-nez v6, :cond_a

    invoke-virtual {v5}, Lcom/jme3/font/LetterQuad;->isLineFeed()Z

    move-result v6

    if-nez v6, :cond_a

    invoke-virtual {v5, v7}, Lcom/jme3/font/LetterQuad;->setBitmapChar(Lcom/jme3/font/BitmapCharacter;)V

    iget-object v6, p0, Lcom/jme3/font/Letters;->block:Lcom/jme3/font/StringBlock;

    invoke-virtual {v5, v6}, Lcom/jme3/font/LetterQuad;->update(Lcom/jme3/font/StringBlock;)V

    invoke-virtual {v5}, Lcom/jme3/font/LetterQuad;->getNext()Lcom/jme3/font/LetterQuad;

    move-result-object v5

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lcom/jme3/font/LetterQuad;->getPrevious()Lcom/jme3/font/LetterQuad;

    move-result-object v5

    :goto_3
    iget-object v6, p0, Lcom/jme3/font/Letters;->block:Lcom/jme3/font/StringBlock;

    invoke-virtual {v5, v6, v2}, Lcom/jme3/font/LetterQuad;->isInvalid(Lcom/jme3/font/StringBlock;F)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Lcom/jme3/font/LetterQuad;->isLineStart()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v5}, Lcom/jme3/font/LetterQuad;->getPrevious()Lcom/jme3/font/LetterQuad;

    move-result-object v5

    goto :goto_3

    :cond_3
    invoke-virtual {v5, v1}, Lcom/jme3/font/LetterQuad;->setBitmapChar(Lcom/jme3/font/BitmapCharacter;)V

    iget-object v6, p0, Lcom/jme3/font/Letters;->block:Lcom/jme3/font/StringBlock;

    invoke-virtual {v5, v6}, Lcom/jme3/font/LetterQuad;->update(Lcom/jme3/font/StringBlock;)V

    invoke-virtual {v5}, Lcom/jme3/font/LetterQuad;->getNext()Lcom/jme3/font/LetterQuad;

    move-result-object v5

    :goto_4
    invoke-virtual {v5}, Lcom/jme3/font/LetterQuad;->isTail()Z

    move-result v6

    if-nez v6, :cond_a

    invoke-virtual {v5}, Lcom/jme3/font/LetterQuad;->isLineFeed()Z

    move-result v6

    if-nez v6, :cond_a

    invoke-virtual {v5, v7}, Lcom/jme3/font/LetterQuad;->setBitmapChar(Lcom/jme3/font/BitmapCharacter;)V

    iget-object v6, p0, Lcom/jme3/font/Letters;->block:Lcom/jme3/font/StringBlock;

    invoke-virtual {v5, v6}, Lcom/jme3/font/LetterQuad;->update(Lcom/jme3/font/StringBlock;)V

    invoke-virtual {v5}, Lcom/jme3/font/LetterQuad;->getNext()Lcom/jme3/font/LetterQuad;

    move-result-object v5

    goto :goto_4

    :cond_4
    invoke-virtual {v0}, Lcom/jme3/font/LetterQuad;->isBlank()Z

    move-result v5

    if-nez v5, :cond_a

    move-object v5, v0

    :goto_5
    invoke-virtual {v5}, Lcom/jme3/font/LetterQuad;->isBlank()Z

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual {v5}, Lcom/jme3/font/LetterQuad;->isLineStart()Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v5}, Lcom/jme3/font/LetterQuad;->isHead()Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_6

    :cond_5
    invoke-virtual {v5}, Lcom/jme3/font/LetterQuad;->getPrevious()Lcom/jme3/font/LetterQuad;

    move-result-object v5

    goto :goto_5

    :cond_6
    :goto_6
    invoke-direct {p0, v0}, Lcom/jme3/font/Letters;->lineWrap(Lcom/jme3/font/LetterQuad;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_7
    move-object v7, v5

    :goto_7
    if-eqz v7, :cond_a

    invoke-virtual {v7}, Lcom/jme3/font/LetterQuad;->setEndOfLine()V

    add-int/lit8 v4, v4, 0x1

    :goto_8
    if-eq v7, v0, :cond_a

    invoke-virtual {v7}, Lcom/jme3/font/LetterQuad;->getNext()Lcom/jme3/font/LetterQuad;

    move-result-object v7

    invoke-virtual {v7}, Lcom/jme3/font/LetterQuad;->invalidate()V

    iget-object v5, p0, Lcom/jme3/font/Letters;->block:Lcom/jme3/font/StringBlock;

    invoke-virtual {v7, v5}, Lcom/jme3/font/LetterQuad;->update(Lcom/jme3/font/StringBlock;)V

    goto :goto_8

    :cond_8
    invoke-direct {p0, v0}, Lcom/jme3/font/Letters;->lineWrap(Lcom/jme3/font/LetterQuad;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_9
    iget-object v5, p0, Lcom/jme3/font/Letters;->current:Lcom/jme3/font/LetterQuad;

    iget-object v6, p0, Lcom/jme3/font/Letters;->block:Lcom/jme3/font/StringBlock;

    invoke-virtual {v5, v6}, Lcom/jme3/font/LetterQuad;->isInvalid(Lcom/jme3/font/StringBlock;)Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/jme3/font/Letters;->current:Lcom/jme3/font/LetterQuad;

    invoke-virtual {p0, v5}, Lcom/jme3/font/Letters;->invalidate(Lcom/jme3/font/LetterQuad;)V

    :cond_a
    :goto_9
    invoke-virtual {v0}, Lcom/jme3/font/LetterQuad;->isEndOfLine()Z

    move-result v5

    if-eqz v5, :cond_b

    add-int/lit8 v4, v4, 0x1

    :cond_b
    invoke-virtual {v0}, Lcom/jme3/font/LetterQuad;->getNext()Lcom/jme3/font/LetterQuad;

    move-result-object v0

    goto/16 :goto_1

    :cond_c
    iget-object v0, p0, Lcom/jme3/font/Letters;->block:Lcom/jme3/font/StringBlock;

    invoke-virtual {v0, v4}, Lcom/jme3/font/StringBlock;->setLineCount(I)V

    invoke-direct {p0}, Lcom/jme3/font/Letters;->align()V

    invoke-virtual {p0}, Lcom/jme3/font/Letters;->rewind()V

    return-void
.end method

.method public validateSize()V
    .locals 3

    iget v0, p0, Lcom/jme3/font/Letters;->totalWidth:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/jme3/font/Letters;->head:Lcom/jme3/font/LetterQuad;

    :goto_0
    invoke-virtual {v0}, Lcom/jme3/font/LetterQuad;->isTail()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/jme3/font/Letters;->font:Lcom/jme3/font/BitmapFont;

    invoke-virtual {v1}, Lcom/jme3/font/BitmapFont;->isRightToLeft()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/jme3/font/Letters;->totalWidth:F

    invoke-virtual {v0}, Lcom/jme3/font/LetterQuad;->getX0()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lcom/jme3/font/Letters;->totalWidth:F

    goto :goto_1

    :cond_0
    iget v1, p0, Lcom/jme3/font/Letters;->totalWidth:F

    invoke-virtual {v0}, Lcom/jme3/font/LetterQuad;->getX1()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lcom/jme3/font/Letters;->totalWidth:F

    :goto_1
    invoke-virtual {v0}, Lcom/jme3/font/LetterQuad;->getNext()Lcom/jme3/font/LetterQuad;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/jme3/font/Letters;->font:Lcom/jme3/font/BitmapFont;

    iget-object v1, p0, Lcom/jme3/font/Letters;->block:Lcom/jme3/font/StringBlock;

    invoke-virtual {v0, v1}, Lcom/jme3/font/BitmapFont;->getLineHeight(Lcom/jme3/font/StringBlock;)F

    move-result v0

    iget-object v1, p0, Lcom/jme3/font/Letters;->block:Lcom/jme3/font/StringBlock;

    invoke-virtual {v1}, Lcom/jme3/font/StringBlock;->getLineCount()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/font/Letters;->totalHeight:F

    return-void
.end method
