.class public Lcom/jme3/font/BitmapFont;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/export/Savable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/font/BitmapFont$VAlign;,
        Lcom/jme3/font/BitmapFont$Align;
    }
.end annotation


# instance fields
.field private charSet:Lcom/jme3/font/BitmapCharacterSet;

.field private glyphParser:Lcom/jme3/font/GlyphParser;

.field private pages:[Lcom/jme3/material/Material;

.field private rightToLeft:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jme3/font/BitmapFont;->rightToLeft:Z

    return-void
.end method

.method private findKerningAmount(II)I
    .locals 1

    iget-object v0, p0, Lcom/jme3/font/BitmapFont;->charSet:Lcom/jme3/font/BitmapCharacterSet;

    invoke-virtual {v0, p1}, Lcom/jme3/font/BitmapCharacterSet;->getCharacter(I)Lcom/jme3/font/BitmapCharacter;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1, p2}, Lcom/jme3/font/BitmapCharacter;->getKerning(I)I

    move-result p1

    return p1
.end method


# virtual methods
.method public createLabel(Ljava/lang/String;)Lcom/jme3/font/BitmapText;
    .locals 2

    new-instance v0, Lcom/jme3/font/BitmapText;

    invoke-direct {v0, p0}, Lcom/jme3/font/BitmapText;-><init>(Lcom/jme3/font/BitmapFont;)V

    invoke-virtual {p0}, Lcom/jme3/font/BitmapFont;->getCharSet()Lcom/jme3/font/BitmapCharacterSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/font/BitmapCharacterSet;->getRenderedSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/jme3/font/BitmapText;->setSize(F)V

    invoke-virtual {v0, p1}, Lcom/jme3/font/BitmapText;->setText(Ljava/lang/String;)V

    return-object v0
.end method

.method public getCharSet()Lcom/jme3/font/BitmapCharacterSet;
    .locals 1

    iget-object v0, p0, Lcom/jme3/font/BitmapFont;->charSet:Lcom/jme3/font/BitmapCharacterSet;

    return-object v0
.end method

.method public getCharacterAdvance(CCF)F
    .locals 1

    iget-object v0, p0, Lcom/jme3/font/BitmapFont;->charSet:Lcom/jme3/font/BitmapCharacterSet;

    invoke-virtual {v0, p1}, Lcom/jme3/font/BitmapCharacterSet;->getCharacter(I)Lcom/jme3/font/BitmapCharacter;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Lcom/jme3/font/BitmapCharacter;->getXAdvance()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p3

    invoke-virtual {p1, p2}, Lcom/jme3/font/BitmapCharacter;->getKerning(I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, p3

    add-float/2addr v0, p1

    return v0
.end method

.method public getGlyphParser()Lcom/jme3/font/GlyphParser;
    .locals 1

    iget-object v0, p0, Lcom/jme3/font/BitmapFont;->glyphParser:Lcom/jme3/font/GlyphParser;

    return-object v0
.end method

.method public getLineHeight(Lcom/jme3/font/StringBlock;)F
    .locals 2

    iget-object v0, p0, Lcom/jme3/font/BitmapFont;->charSet:Lcom/jme3/font/BitmapCharacterSet;

    invoke-virtual {v0}, Lcom/jme3/font/BitmapCharacterSet;->getLineHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/jme3/font/StringBlock;->getSize()F

    move-result p1

    iget-object v1, p0, Lcom/jme3/font/BitmapFont;->charSet:Lcom/jme3/font/BitmapCharacterSet;

    invoke-virtual {v1}, Lcom/jme3/font/BitmapCharacterSet;->getRenderedSize()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    mul-float/2addr v0, p1

    return v0
.end method

.method public getLineWidth(Ljava/lang/CharSequence;)F
    .locals 13

    iget-object v0, p0, Lcom/jme3/font/BitmapFont;->glyphParser:Lcom/jme3/font/GlyphParser;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/jme3/font/GlyphParser;->parse(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v4, v0

    move v5, v4

    move v3, v1

    move v6, v2

    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ge v3, v7, :cond_a

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/16 v8, 0xa

    if-ne v7, v8, :cond_1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    move v5, v0

    move v6, v2

    goto/16 :goto_6

    :cond_1
    iget-object v9, p0, Lcom/jme3/font/BitmapFont;->charSet:Lcom/jme3/font/BitmapCharacterSet;

    invoke-virtual {v9, v7}, Lcom/jme3/font/BitmapCharacterSet;->getCharacter(I)Lcom/jme3/font/BitmapCharacter;

    move-result-object v9

    if-eqz v9, :cond_9

    const/16 v10, 0x5c

    if-ne v7, v10, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v10

    sub-int/2addr v10, v2

    if-ge v3, v10, :cond_3

    add-int/lit8 v10, v3, 0x1

    invoke-interface {p1, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    const/16 v11, 0x23

    if-ne v10, v11, :cond_3

    add-int/lit8 v10, v3, 0x5

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v12

    if-ge v10, v12, :cond_2

    invoke-interface {p1, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    if-ne v12, v11, :cond_2

    :goto_1
    move v3, v10

    goto :goto_6

    :cond_2
    add-int/lit8 v10, v3, 0x8

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v12

    if-ge v10, v12, :cond_3

    invoke-interface {p1, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    if-ne v12, v11, :cond_3

    goto :goto_1

    :cond_3
    const/high16 v10, 0x3f800000    # 1.0f

    if-nez v6, :cond_4

    invoke-direct {p0, v1, v7}, Lcom/jme3/font/BitmapFont;->findKerningAmount(II)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v10

    add-float/2addr v5, v7

    goto :goto_3

    :cond_4
    iget-boolean v6, p0, Lcom/jme3/font/BitmapFont;->rightToLeft:Z

    if-eqz v6, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v9}, Lcom/jme3/font/BitmapCharacter;->getXOffset()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v10

    sub-float/2addr v5, v6

    :goto_2
    move v6, v1

    :goto_3
    invoke-virtual {v9}, Lcom/jme3/font/BitmapCharacter;->getXAdvance()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v10

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v11

    sub-int/2addr v11, v2

    if-eq v3, v11, :cond_7

    add-int/lit8 v11, v3, 0x1

    invoke-interface {p1, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    if-ne v11, v8, :cond_6

    goto :goto_5

    :cond_6
    :goto_4
    add-float/2addr v5, v7

    goto :goto_6

    :cond_7
    :goto_5
    iget-boolean v8, p0, Lcom/jme3/font/BitmapFont;->rightToLeft:Z

    if-eqz v8, :cond_8

    add-float/2addr v5, v7

    invoke-virtual {v9}, Lcom/jme3/font/BitmapCharacter;->getXOffset()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v10

    sub-float/2addr v5, v7

    goto :goto_6

    :cond_8
    invoke-virtual {v9}, Lcom/jme3/font/BitmapCharacter;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v10

    add-float/2addr v5, v7

    invoke-virtual {v9}, Lcom/jme3/font/BitmapCharacter;->getXOffset()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v10

    goto :goto_4

    :cond_9
    :goto_6
    add-int/2addr v3, v2

    goto/16 :goto_0

    :cond_a
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result p1

    return p1
.end method

.method public getPage(I)Lcom/jme3/material/Material;
    .locals 1

    iget-object v0, p0, Lcom/jme3/font/BitmapFont;->pages:[Lcom/jme3/material/Material;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getPageSize()I
    .locals 1

    iget-object v0, p0, Lcom/jme3/font/BitmapFont;->pages:[Lcom/jme3/material/Material;

    array-length v0, v0

    return v0
.end method

.method public getPreferredSize()F
    .locals 1

    invoke-virtual {p0}, Lcom/jme3/font/BitmapFont;->getCharSet()Lcom/jme3/font/BitmapCharacterSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/font/BitmapCharacterSet;->getRenderedSize()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public isRightToLeft()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/font/BitmapFont;->rightToLeft:Z

    return v0
.end method

.method public merge(Lcom/jme3/font/BitmapFont;)V
    .locals 5

    iget-object v0, p0, Lcom/jme3/font/BitmapFont;->charSet:Lcom/jme3/font/BitmapCharacterSet;

    iget-object v1, p1, Lcom/jme3/font/BitmapFont;->charSet:Lcom/jme3/font/BitmapCharacterSet;

    invoke-virtual {v0, v1}, Lcom/jme3/font/BitmapCharacterSet;->merge(Lcom/jme3/font/BitmapCharacterSet;)V

    iget-object v0, p0, Lcom/jme3/font/BitmapFont;->pages:[Lcom/jme3/material/Material;

    array-length v1, v0

    iget-object v2, p1, Lcom/jme3/font/BitmapFont;->pages:[Lcom/jme3/material/Material;

    array-length v2, v2

    add-int v3, v1, v2

    new-array v3, v3, [Lcom/jme3/material/Material;

    const/4 v4, 0x0

    invoke-static {v0, v4, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p1, Lcom/jme3/font/BitmapFont;->pages:[Lcom/jme3/material/Material;

    invoke-static {p1, v4, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Lcom/jme3/font/BitmapFont;->pages:[Lcom/jme3/material/Material;

    return-void
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "charSet"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/font/BitmapCharacterSet;

    iput-object v0, p0, Lcom/jme3/font/BitmapFont;->charSet:Lcom/jme3/font/BitmapCharacterSet;

    const-string v0, "pages"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavableArray(Ljava/lang/String;[Lcom/jme3/export/Savable;)[Lcom/jme3/export/Savable;

    move-result-object v0

    array-length v2, v0

    new-array v2, v2, [Lcom/jme3/material/Material;

    iput-object v2, p0, Lcom/jme3/font/BitmapFont;->pages:[Lcom/jme3/material/Material;

    array-length v3, v2

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string v0, "rightToLeft"

    invoke-interface {p1, v0, v4}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jme3/font/BitmapFont;->rightToLeft:Z

    const-string v0, "glyphParser"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object p1

    check-cast p1, Lcom/jme3/font/GlyphParser;

    iput-object p1, p0, Lcom/jme3/font/BitmapFont;->glyphParser:Lcom/jme3/font/GlyphParser;

    return-void
.end method

.method public setCharSet(Lcom/jme3/font/BitmapCharacterSet;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/font/BitmapFont;->charSet:Lcom/jme3/font/BitmapCharacterSet;

    return-void
.end method

.method public setGlyphParser(Lcom/jme3/font/GlyphParser;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/font/BitmapFont;->glyphParser:Lcom/jme3/font/GlyphParser;

    return-void
.end method

.method public setPages([Lcom/jme3/material/Material;)V
    .locals 1

    iput-object p1, p0, Lcom/jme3/font/BitmapFont;->pages:[Lcom/jme3/material/Material;

    iget-object v0, p0, Lcom/jme3/font/BitmapFont;->charSet:Lcom/jme3/font/BitmapCharacterSet;

    array-length p1, p1

    invoke-virtual {v0, p1}, Lcom/jme3/font/BitmapCharacterSet;->setPageSize(I)V

    return-void
.end method

.method public setRightToLeft(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jme3/font/BitmapFont;->rightToLeft:Z

    return-void
.end method

.method public setStyle(I)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/font/BitmapFont;->charSet:Lcom/jme3/font/BitmapCharacterSet;

    invoke-virtual {v0, p1}, Lcom/jme3/font/BitmapCharacterSet;->setStyle(I)V

    return-void
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/font/BitmapFont;->charSet:Lcom/jme3/font/BitmapCharacterSet;

    const-string v1, "charSet"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/font/BitmapFont;->pages:[Lcom/jme3/material/Material;

    const-string v1, "pages"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write([Lcom/jme3/export/Savable;Ljava/lang/String;[Lcom/jme3/export/Savable;)V

    iget-boolean v0, p0, Lcom/jme3/font/BitmapFont;->rightToLeft:Z

    const-string v1, "rightToLeft"

    const/4 v3, 0x0

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    iget-object v0, p0, Lcom/jme3/font/BitmapFont;->glyphParser:Lcom/jme3/font/GlyphParser;

    const-string v1, "glyphParser"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    return-void
.end method
