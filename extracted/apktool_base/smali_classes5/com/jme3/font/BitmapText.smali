.class public Lcom/jme3/font/BitmapText;
.super Lcom/jme3/scene/Node;
.source "SourceFile"


# instance fields
.field private block:Lcom/jme3/font/StringBlock;

.field private font:Lcom/jme3/font/BitmapFont;

.field private letters:Lcom/jme3/font/Letters;

.field private needRefresh:Z

.field private textPages:[Lcom/jme3/font/BitmapTextPage;


# direct methods
.method public constructor <init>(Lcom/jme3/font/BitmapFont;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/jme3/font/BitmapFont;->isRightToLeft()Z

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/jme3/font/BitmapText;-><init>(Lcom/jme3/font/BitmapFont;ZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/font/BitmapFont;Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/jme3/font/BitmapText;-><init>(Lcom/jme3/font/BitmapFont;ZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/font/BitmapFont;ZZ)V
    .locals 3

    .line 3
    invoke-direct {p0}, Lcom/jme3/scene/Node;-><init>()V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/jme3/font/BitmapText;->needRefresh:Z

    .line 5
    invoke-virtual {p1}, Lcom/jme3/font/BitmapFont;->getPageSize()I

    move-result v0

    new-array v0, v0, [Lcom/jme3/font/BitmapTextPage;

    iput-object v0, p0, Lcom/jme3/font/BitmapText;->textPages:[Lcom/jme3/font/BitmapTextPage;

    const/4 v0, 0x0

    .line 6
    :goto_0
    iget-object v1, p0, Lcom/jme3/font/BitmapText;->textPages:[Lcom/jme3/font/BitmapTextPage;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 7
    new-instance v2, Lcom/jme3/font/BitmapTextPage;

    invoke-direct {v2, p1, p3, v0}, Lcom/jme3/font/BitmapTextPage;-><init>(Lcom/jme3/font/BitmapFont;ZI)V

    aput-object v2, v1, v0

    .line 8
    iget-object v1, p0, Lcom/jme3/font/BitmapText;->textPages:[Lcom/jme3/font/BitmapTextPage;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9
    :cond_0
    iput-object p1, p0, Lcom/jme3/font/BitmapText;->font:Lcom/jme3/font/BitmapFont;

    .line 10
    new-instance p3, Lcom/jme3/font/StringBlock;

    invoke-direct {p3}, Lcom/jme3/font/StringBlock;-><init>()V

    iput-object p3, p0, Lcom/jme3/font/BitmapText;->block:Lcom/jme3/font/StringBlock;

    .line 11
    invoke-virtual {p1}, Lcom/jme3/font/BitmapFont;->getPreferredSize()F

    move-result v0

    invoke-virtual {p3, v0}, Lcom/jme3/font/StringBlock;->setSize(F)V

    .line 12
    new-instance p3, Lcom/jme3/font/Letters;

    iget-object v0, p0, Lcom/jme3/font/BitmapText;->block:Lcom/jme3/font/StringBlock;

    invoke-direct {p3, p1, v0, p2}, Lcom/jme3/font/Letters;-><init>(Lcom/jme3/font/BitmapFont;Lcom/jme3/font/StringBlock;Z)V

    iput-object p3, p0, Lcom/jme3/font/BitmapText;->letters:Lcom/jme3/font/Letters;

    return-void
.end method

.method private assemble()V
    .locals 6

    iget-object v0, p0, Lcom/jme3/font/BitmapText;->letters:Lcom/jme3/font/Letters;

    invoke-virtual {v0}, Lcom/jme3/font/Letters;->update()V

    iget-object v0, p0, Lcom/jme3/font/BitmapText;->textPages:[Lcom/jme3/font/BitmapTextPage;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    iget-object v5, p0, Lcom/jme3/font/BitmapText;->letters:Lcom/jme3/font/Letters;

    invoke-virtual {v4, v5}, Lcom/jme3/font/BitmapTextPage;->assemble(Lcom/jme3/font/Letters;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iput-boolean v2, p0, Lcom/jme3/font/BitmapText;->needRefresh:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/jme3/asset/CloneableSmartAsset;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/jme3/font/BitmapText;->clone()Lcom/jme3/font/BitmapText;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/jme3/font/BitmapText;
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-super {p0, v0}, Lcom/jme3/scene/Node;->clone(Z)Lcom/jme3/scene/Node;

    move-result-object v0

    check-cast v0, Lcom/jme3/font/BitmapText;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/jme3/scene/Spatial;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/jme3/font/BitmapText;->clone()Lcom/jme3/font/BitmapText;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lcom/jme3/font/BitmapText;->clone()Lcom/jme3/font/BitmapText;

    move-result-object v0

    return-object v0
.end method

.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/jme3/scene/Node;->cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/jme3/font/BitmapText;->textPages:[Lcom/jme3/font/BitmapTextPage;

    invoke-virtual {p2}, [Lcom/jme3/font/BitmapTextPage;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/jme3/font/BitmapTextPage;

    iput-object p2, p0, Lcom/jme3/font/BitmapText;->textPages:[Lcom/jme3/font/BitmapTextPage;

    const/4 p2, 0x0

    :goto_0
    iget-object v0, p0, Lcom/jme3/font/BitmapText;->textPages:[Lcom/jme3/font/BitmapTextPage;

    array-length v1, v0

    if-ge p2, v1, :cond_0

    aget-object v1, v0, p2

    invoke-virtual {p1, v1}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/font/BitmapTextPage;

    aput-object v1, v0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/jme3/font/BitmapText;->block:Lcom/jme3/font/StringBlock;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/jme3/font/StringBlock;->clone()Lcom/jme3/font/StringBlock;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iput-object p1, p0, Lcom/jme3/font/BitmapText;->block:Lcom/jme3/font/StringBlock;

    new-instance p2, Lcom/jme3/font/Letters;

    iget-object v0, p0, Lcom/jme3/font/BitmapText;->font:Lcom/jme3/font/BitmapFont;

    iget-object v1, p0, Lcom/jme3/font/BitmapText;->letters:Lcom/jme3/font/Letters;

    invoke-virtual {v1}, Lcom/jme3/font/Letters;->getQuad()Lcom/jme3/font/LetterQuad;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/font/LetterQuad;->isRightToLeft()Z

    move-result v1

    invoke-direct {p2, v0, p1, v1}, Lcom/jme3/font/Letters;-><init>(Lcom/jme3/font/BitmapFont;Lcom/jme3/font/StringBlock;Z)V

    iput-object p2, p0, Lcom/jme3/font/BitmapText;->letters:Lcom/jme3/font/Letters;

    return-void
.end method

.method public getAlignment()Lcom/jme3/font/BitmapFont$Align;
    .locals 1

    iget-object v0, p0, Lcom/jme3/font/BitmapText;->block:Lcom/jme3/font/StringBlock;

    invoke-virtual {v0}, Lcom/jme3/font/StringBlock;->getAlignment()Lcom/jme3/font/BitmapFont$Align;

    move-result-object v0

    return-object v0
.end method

.method public getAlpha()F
    .locals 1

    iget-object v0, p0, Lcom/jme3/font/BitmapText;->letters:Lcom/jme3/font/Letters;

    invoke-virtual {v0}, Lcom/jme3/font/Letters;->getBaseAlpha()F

    move-result v0

    return v0
.end method

.method public getColor()Lcom/jme3/math/ColorRGBA;
    .locals 1

    iget-object v0, p0, Lcom/jme3/font/BitmapText;->letters:Lcom/jme3/font/Letters;

    invoke-virtual {v0}, Lcom/jme3/font/Letters;->getBaseColor()Lcom/jme3/math/ColorRGBA;

    move-result-object v0

    return-object v0
.end method

.method public getFont()Lcom/jme3/font/BitmapFont;
    .locals 1

    iget-object v0, p0, Lcom/jme3/font/BitmapText;->font:Lcom/jme3/font/BitmapFont;

    return-object v0
.end method

.method public getHeight()F
    .locals 2

    iget-boolean v0, p0, Lcom/jme3/font/BitmapText;->needRefresh:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/jme3/font/BitmapText;->assemble()V

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/font/BitmapText;->getLineHeight()F

    move-result v0

    iget-object v1, p0, Lcom/jme3/font/BitmapText;->block:Lcom/jme3/font/StringBlock;

    invoke-virtual {v1}, Lcom/jme3/font/StringBlock;->getLineCount()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/jme3/font/BitmapText;->block:Lcom/jme3/font/StringBlock;

    invoke-virtual {v1}, Lcom/jme3/font/StringBlock;->getTextBox()Lcom/jme3/font/Rectangle;

    move-result-object v1

    if-eqz v1, :cond_1

    iget v1, v1, Lcom/jme3/font/Rectangle;->height:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    :cond_1
    return v0
.end method

.method public getLineCount()I
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/font/BitmapText;->needRefresh:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/jme3/font/BitmapText;->assemble()V

    :cond_0
    iget-object v0, p0, Lcom/jme3/font/BitmapText;->block:Lcom/jme3/font/StringBlock;

    invoke-virtual {v0}, Lcom/jme3/font/StringBlock;->getLineCount()I

    move-result v0

    return v0
.end method

.method public getLineHeight()F
    .locals 2

    iget-object v0, p0, Lcom/jme3/font/BitmapText;->font:Lcom/jme3/font/BitmapFont;

    iget-object v1, p0, Lcom/jme3/font/BitmapText;->block:Lcom/jme3/font/StringBlock;

    invoke-virtual {v0, v1}, Lcom/jme3/font/BitmapFont;->getLineHeight(Lcom/jme3/font/StringBlock;)F

    move-result v0

    return v0
.end method

.method public getLineWidth()F
    .locals 2

    iget-boolean v0, p0, Lcom/jme3/font/BitmapText;->needRefresh:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/jme3/font/BitmapText;->assemble()V

    :cond_0
    iget-object v0, p0, Lcom/jme3/font/BitmapText;->block:Lcom/jme3/font/StringBlock;

    invoke-virtual {v0}, Lcom/jme3/font/StringBlock;->getTextBox()Lcom/jme3/font/Rectangle;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/jme3/font/BitmapText;->letters:Lcom/jme3/font/Letters;

    invoke-virtual {v1}, Lcom/jme3/font/Letters;->getTotalWidth()F

    move-result v1

    iget v0, v0, Lcom/jme3/font/Rectangle;->width:F

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/jme3/font/BitmapText;->letters:Lcom/jme3/font/Letters;

    invoke-virtual {v0}, Lcom/jme3/font/Letters;->getTotalWidth()F

    move-result v0

    return v0
.end method

.method public getLineWrapMode()Lcom/jme3/font/LineWrapMode;
    .locals 1

    iget-object v0, p0, Lcom/jme3/font/BitmapText;->block:Lcom/jme3/font/StringBlock;

    invoke-virtual {v0}, Lcom/jme3/font/StringBlock;->getLineWrapMode()Lcom/jme3/font/LineWrapMode;

    move-result-object v0

    return-object v0
.end method

.method public getSize()F
    .locals 1

    iget-object v0, p0, Lcom/jme3/font/BitmapText;->block:Lcom/jme3/font/StringBlock;

    invoke-virtual {v0}, Lcom/jme3/font/StringBlock;->getSize()F

    move-result v0

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jme3/font/BitmapText;->block:Lcom/jme3/font/StringBlock;

    invoke-virtual {v0}, Lcom/jme3/font/StringBlock;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVerticalAlignment()Lcom/jme3/font/BitmapFont$VAlign;
    .locals 1

    iget-object v0, p0, Lcom/jme3/font/BitmapText;->block:Lcom/jme3/font/StringBlock;

    invoke-virtual {v0}, Lcom/jme3/font/StringBlock;->getVerticalAlignment()Lcom/jme3/font/BitmapFont$VAlign;

    move-result-object v0

    return-object v0
.end method

.method public render(Lcom/jme3/renderer/RenderManager;Lcom/jme3/math/ColorRGBA;)V
    .locals 6

    iget-object p2, p0, Lcom/jme3/font/BitmapText;->textPages:[Lcom/jme3/font/BitmapTextPage;

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    invoke-virtual {v2}, Lcom/jme3/scene/Geometry;->getMaterial()Lcom/jme3/material/Material;

    move-result-object v3

    const-string v4, "ColorMap"

    invoke-virtual {v2}, Lcom/jme3/font/BitmapTextPage;->getTexture()Lcom/jme3/texture/Texture2D;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/jme3/material/Material;->setTexture(Ljava/lang/String;Lcom/jme3/texture/Texture;)V

    invoke-virtual {v3, v2, p1}, Lcom/jme3/material/Material;->render(Lcom/jme3/scene/Geometry;Lcom/jme3/renderer/RenderManager;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setAlignment(Lcom/jme3/font/BitmapFont$Align;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/font/BitmapText;->block:Lcom/jme3/font/StringBlock;

    invoke-virtual {v0}, Lcom/jme3/font/StringBlock;->getTextBox()Lcom/jme3/font/Rectangle;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/jme3/font/BitmapFont$Align;->Left:Lcom/jme3/font/BitmapFont$Align;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Bound is not set"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/jme3/font/BitmapText;->block:Lcom/jme3/font/StringBlock;

    invoke-virtual {v0, p1}, Lcom/jme3/font/StringBlock;->setAlignment(Lcom/jme3/font/BitmapFont$Align;)V

    iget-object p1, p0, Lcom/jme3/font/BitmapText;->letters:Lcom/jme3/font/Letters;

    invoke-virtual {p1}, Lcom/jme3/font/Letters;->invalidate()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/jme3/font/BitmapText;->needRefresh:Z

    return-void
.end method

.method public setAlpha(F)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/font/BitmapText;->letters:Lcom/jme3/font/Letters;

    invoke-virtual {v0, p1}, Lcom/jme3/font/Letters;->setBaseAlpha(F)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/jme3/font/BitmapText;->needRefresh:Z

    return-void
.end method

.method public setBox(Lcom/jme3/font/Rectangle;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/font/BitmapText;->block:Lcom/jme3/font/StringBlock;

    invoke-virtual {v0, p1}, Lcom/jme3/font/StringBlock;->setTextBox(Lcom/jme3/font/Rectangle;)V

    iget-object p1, p0, Lcom/jme3/font/BitmapText;->letters:Lcom/jme3/font/Letters;

    invoke-virtual {p1}, Lcom/jme3/font/Letters;->invalidate()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/jme3/font/BitmapText;->needRefresh:Z

    return-void
.end method

.method public setColor(IILcom/jme3/math/ColorRGBA;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/jme3/font/BitmapText;->letters:Lcom/jme3/font/Letters;

    invoke-virtual {v0, p1, p2, p3}, Lcom/jme3/font/Letters;->setColor(IILcom/jme3/math/ColorRGBA;)V

    .line 5
    iget-object p1, p0, Lcom/jme3/font/BitmapText;->letters:Lcom/jme3/font/Letters;

    invoke-virtual {p1}, Lcom/jme3/font/Letters;->invalidate()V

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/jme3/font/BitmapText;->needRefresh:Z

    return-void
.end method

.method public setColor(Lcom/jme3/math/ColorRGBA;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jme3/font/BitmapText;->letters:Lcom/jme3/font/Letters;

    invoke-virtual {v0, p1}, Lcom/jme3/font/Letters;->setColor(Lcom/jme3/math/ColorRGBA;)V

    .line 2
    iget-object p1, p0, Lcom/jme3/font/BitmapText;->letters:Lcom/jme3/font/Letters;

    invoke-virtual {p1}, Lcom/jme3/font/Letters;->invalidate()V

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/jme3/font/BitmapText;->needRefresh:Z

    return-void
.end method

.method public setColor(Ljava/lang/String;Lcom/jme3/math/ColorRGBA;)V
    .locals 3

    .line 7
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    .line 8
    iget-object v0, p0, Lcom/jme3/font/BitmapText;->block:Lcom/jme3/font/StringBlock;

    invoke-virtual {v0}, Lcom/jme3/font/StringBlock;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 9
    :goto_0
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/jme3/font/BitmapText;->letters:Lcom/jme3/font/Letters;

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    invoke-virtual {v0, v1, v2, p2}, Lcom/jme3/font/Letters;->setColor(IILcom/jme3/math/ColorRGBA;)V

    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/jme3/font/BitmapText;->letters:Lcom/jme3/font/Letters;

    invoke-virtual {p1}, Lcom/jme3/font/Letters;->invalidate()V

    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lcom/jme3/font/BitmapText;->needRefresh:Z

    return-void
.end method

.method public setEllipsisChar(C)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/font/BitmapText;->block:Lcom/jme3/font/StringBlock;

    invoke-virtual {v0, p1}, Lcom/jme3/font/StringBlock;->setEllipsisChar(C)V

    iget-object p1, p0, Lcom/jme3/font/BitmapText;->letters:Lcom/jme3/font/Letters;

    invoke-virtual {p1}, Lcom/jme3/font/Letters;->invalidate()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/jme3/font/BitmapText;->needRefresh:Z

    return-void
.end method

.method public setLineWrapMode(Lcom/jme3/font/LineWrapMode;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/font/BitmapText;->block:Lcom/jme3/font/StringBlock;

    invoke-virtual {v0}, Lcom/jme3/font/StringBlock;->getLineWrapMode()Lcom/jme3/font/LineWrapMode;

    move-result-object v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/jme3/font/BitmapText;->block:Lcom/jme3/font/StringBlock;

    invoke-virtual {v0, p1}, Lcom/jme3/font/StringBlock;->setLineWrapMode(Lcom/jme3/font/LineWrapMode;)V

    iget-object p1, p0, Lcom/jme3/font/BitmapText;->letters:Lcom/jme3/font/Letters;

    invoke-virtual {p1}, Lcom/jme3/font/Letters;->invalidate()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/jme3/font/BitmapText;->needRefresh:Z

    :cond_0
    return-void
.end method

.method public setSize(F)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/font/BitmapText;->block:Lcom/jme3/font/StringBlock;

    invoke-virtual {v0, p1}, Lcom/jme3/font/StringBlock;->setSize(F)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/jme3/font/BitmapText;->needRefresh:Z

    iget-object p1, p0, Lcom/jme3/font/BitmapText;->letters:Lcom/jme3/font/Letters;

    invoke-virtual {p1}, Lcom/jme3/font/Letters;->invalidate()V

    return-void
.end method

.method public setStyle(III)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jme3/font/BitmapText;->letters:Lcom/jme3/font/Letters;

    invoke-virtual {v0, p1, p2, p3}, Lcom/jme3/font/Letters;->setStyle(III)V

    return-void
.end method

.method public setStyle(Ljava/lang/String;I)V
    .locals 2

    .line 2
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/jme3/font/BitmapText;->block:Lcom/jme3/font/StringBlock;

    invoke-virtual {v0}, Lcom/jme3/font/StringBlock;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 4
    :goto_0
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    invoke-virtual {p0, v0, v1, p2}, Lcom/jme3/font/BitmapText;->setStyle(III)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs setTabPosition([F)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/font/BitmapText;->block:Lcom/jme3/font/StringBlock;

    invoke-virtual {v0, p1}, Lcom/jme3/font/StringBlock;->setTabPosition([F)V

    iget-object p1, p0, Lcom/jme3/font/BitmapText;->letters:Lcom/jme3/font/Letters;

    invoke-virtual {p1}, Lcom/jme3/font/Letters;->invalidate()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/jme3/font/BitmapText;->needRefresh:Z

    return-void
.end method

.method public setTabWidth(F)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/font/BitmapText;->block:Lcom/jme3/font/StringBlock;

    invoke-virtual {v0, p1}, Lcom/jme3/font/StringBlock;->setTabWidth(F)V

    iget-object p1, p0, Lcom/jme3/font/BitmapText;->letters:Lcom/jme3/font/Letters;

    invoke-virtual {p1}, Lcom/jme3/font/Letters;->invalidate()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/jme3/font/BitmapText;->needRefresh:Z

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/jme3/font/BitmapText;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    .line 2
    const-string p1, ""

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/jme3/font/BitmapText;->block:Lcom/jme3/font/StringBlock;

    invoke-virtual {v0}, Lcom/jme3/font/StringBlock;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/jme3/font/BitmapText;->block:Lcom/jme3/font/StringBlock;

    invoke-virtual {v0, p1}, Lcom/jme3/font/StringBlock;->setText(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/jme3/font/BitmapText;->letters:Lcom/jme3/font/Letters;

    invoke-virtual {v0, p1}, Lcom/jme3/font/Letters;->setText(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/jme3/font/BitmapText;->needRefresh:Z

    return-void
.end method

.method public setVerticalAlignment(Lcom/jme3/font/BitmapFont$VAlign;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/font/BitmapText;->block:Lcom/jme3/font/StringBlock;

    invoke-virtual {v0}, Lcom/jme3/font/StringBlock;->getTextBox()Lcom/jme3/font/Rectangle;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/jme3/font/BitmapFont$VAlign;->Top:Lcom/jme3/font/BitmapFont$VAlign;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Bound is not set"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/jme3/font/BitmapText;->block:Lcom/jme3/font/StringBlock;

    invoke-virtual {v0, p1}, Lcom/jme3/font/StringBlock;->setVerticalAlignment(Lcom/jme3/font/BitmapFont$VAlign;)V

    iget-object p1, p0, Lcom/jme3/font/BitmapText;->letters:Lcom/jme3/font/Letters;

    invoke-virtual {p1}, Lcom/jme3/font/Letters;->invalidate()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/jme3/font/BitmapText;->needRefresh:Z

    return-void
.end method

.method public updateLogicalState(F)V
    .locals 0

    invoke-super {p0, p1}, Lcom/jme3/scene/Node;->updateLogicalState(F)V

    iget-boolean p1, p0, Lcom/jme3/font/BitmapText;->needRefresh:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/jme3/font/BitmapText;->assemble()V

    :cond_0
    return-void
.end method
