.class Lcom/jme3/font/StringBlock;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private alignment:Lcom/jme3/font/BitmapFont$Align;

.field private color:Lcom/jme3/math/ColorRGBA;

.field private ellipsisChar:C

.field private kerning:Z

.field private lineCount:I

.field private size:F

.field private tabPos:[F

.field private tabWidth:F

.field private text:Ljava/lang/String;

.field private textBox:Lcom/jme3/font/Rectangle;

.field private vAlignment:Lcom/jme3/font/BitmapFont$VAlign;

.field private wrapType:Lcom/jme3/font/LineWrapMode;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    sget-object v0, Lcom/jme3/font/BitmapFont$Align;->Left:Lcom/jme3/font/BitmapFont$Align;

    iput-object v0, p0, Lcom/jme3/font/StringBlock;->alignment:Lcom/jme3/font/BitmapFont$Align;

    .line 16
    sget-object v1, Lcom/jme3/font/BitmapFont$VAlign;->Top:Lcom/jme3/font/BitmapFont$VAlign;

    iput-object v1, p0, Lcom/jme3/font/StringBlock;->vAlignment:Lcom/jme3/font/BitmapFont$VAlign;

    .line 17
    new-instance v1, Lcom/jme3/math/ColorRGBA;

    sget-object v2, Lcom/jme3/math/ColorRGBA;->White:Lcom/jme3/math/ColorRGBA;

    invoke-direct {v1, v2}, Lcom/jme3/math/ColorRGBA;-><init>(Lcom/jme3/math/ColorRGBA;)V

    iput-object v1, p0, Lcom/jme3/font/StringBlock;->color:Lcom/jme3/math/ColorRGBA;

    .line 18
    sget-object v3, Lcom/jme3/font/LineWrapMode;->Word:Lcom/jme3/font/LineWrapMode;

    iput-object v3, p0, Lcom/jme3/font/StringBlock;->wrapType:Lcom/jme3/font/LineWrapMode;

    const/high16 v3, 0x42480000    # 50.0f

    .line 19
    iput v3, p0, Lcom/jme3/font/StringBlock;->tabWidth:F

    const/16 v3, 0x2026

    .line 20
    iput-char v3, p0, Lcom/jme3/font/StringBlock;->ellipsisChar:C

    .line 21
    const-string v3, ""

    iput-object v3, p0, Lcom/jme3/font/StringBlock;->text:Ljava/lang/String;

    const/4 v3, 0x0

    .line 22
    iput-object v3, p0, Lcom/jme3/font/StringBlock;->textBox:Lcom/jme3/font/Rectangle;

    .line 23
    iput-object v0, p0, Lcom/jme3/font/StringBlock;->alignment:Lcom/jme3/font/BitmapFont$Align;

    const/high16 v0, 0x42c80000    # 100.0f

    .line 24
    iput v0, p0, Lcom/jme3/font/StringBlock;->size:F

    .line 25
    invoke-virtual {v1, v2}, Lcom/jme3/math/ColorRGBA;->set(Lcom/jme3/math/ColorRGBA;)Lcom/jme3/math/ColorRGBA;

    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lcom/jme3/font/StringBlock;->kerning:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/jme3/font/Rectangle;Lcom/jme3/font/BitmapFont$Align;FLcom/jme3/math/ColorRGBA;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/jme3/font/BitmapFont$Align;->Left:Lcom/jme3/font/BitmapFont$Align;

    iput-object v0, p0, Lcom/jme3/font/StringBlock;->alignment:Lcom/jme3/font/BitmapFont$Align;

    .line 3
    sget-object v0, Lcom/jme3/font/BitmapFont$VAlign;->Top:Lcom/jme3/font/BitmapFont$VAlign;

    iput-object v0, p0, Lcom/jme3/font/StringBlock;->vAlignment:Lcom/jme3/font/BitmapFont$VAlign;

    .line 4
    new-instance v0, Lcom/jme3/math/ColorRGBA;

    sget-object v1, Lcom/jme3/math/ColorRGBA;->White:Lcom/jme3/math/ColorRGBA;

    invoke-direct {v0, v1}, Lcom/jme3/math/ColorRGBA;-><init>(Lcom/jme3/math/ColorRGBA;)V

    iput-object v0, p0, Lcom/jme3/font/StringBlock;->color:Lcom/jme3/math/ColorRGBA;

    .line 5
    sget-object v1, Lcom/jme3/font/LineWrapMode;->Word:Lcom/jme3/font/LineWrapMode;

    iput-object v1, p0, Lcom/jme3/font/StringBlock;->wrapType:Lcom/jme3/font/LineWrapMode;

    const/high16 v1, 0x42480000    # 50.0f

    .line 6
    iput v1, p0, Lcom/jme3/font/StringBlock;->tabWidth:F

    const/16 v1, 0x2026

    .line 7
    iput-char v1, p0, Lcom/jme3/font/StringBlock;->ellipsisChar:C

    .line 8
    iput-object p1, p0, Lcom/jme3/font/StringBlock;->text:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/jme3/font/StringBlock;->textBox:Lcom/jme3/font/Rectangle;

    .line 10
    iput-object p3, p0, Lcom/jme3/font/StringBlock;->alignment:Lcom/jme3/font/BitmapFont$Align;

    .line 11
    iput p4, p0, Lcom/jme3/font/StringBlock;->size:F

    .line 12
    invoke-virtual {v0, p5}, Lcom/jme3/math/ColorRGBA;->set(Lcom/jme3/math/ColorRGBA;)Lcom/jme3/math/ColorRGBA;

    .line 13
    iput-boolean p6, p0, Lcom/jme3/font/StringBlock;->kerning:Z

    return-void
.end method


# virtual methods
.method public clone()Lcom/jme3/font/StringBlock;
    .locals 2

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/font/StringBlock;

    .line 3
    iget-object v1, p0, Lcom/jme3/font/StringBlock;->color:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v1}, Lcom/jme3/math/ColorRGBA;->clone()Lcom/jme3/math/ColorRGBA;

    move-result-object v1

    iput-object v1, v0, Lcom/jme3/font/StringBlock;->color:Lcom/jme3/math/ColorRGBA;

    .line 4
    iget-object v1, p0, Lcom/jme3/font/StringBlock;->textBox:Lcom/jme3/font/Rectangle;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1}, Lcom/jme3/font/Rectangle;->clone()Lcom/jme3/font/Rectangle;

    move-result-object v1

    iput-object v1, v0, Lcom/jme3/font/StringBlock;->textBox:Lcom/jme3/font/Rectangle;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    .line 6
    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/jme3/font/StringBlock;->clone()Lcom/jme3/font/StringBlock;

    move-result-object v0

    return-object v0
.end method

.method public getAlignment()Lcom/jme3/font/BitmapFont$Align;
    .locals 1

    iget-object v0, p0, Lcom/jme3/font/StringBlock;->alignment:Lcom/jme3/font/BitmapFont$Align;

    return-object v0
.end method

.method public getColor()Lcom/jme3/math/ColorRGBA;
    .locals 1

    iget-object v0, p0, Lcom/jme3/font/StringBlock;->color:Lcom/jme3/math/ColorRGBA;

    return-object v0
.end method

.method public getEllipsisChar()I
    .locals 1

    iget-char v0, p0, Lcom/jme3/font/StringBlock;->ellipsisChar:C

    return v0
.end method

.method public getLineCount()I
    .locals 1

    iget v0, p0, Lcom/jme3/font/StringBlock;->lineCount:I

    return v0
.end method

.method public getLineWrapMode()Lcom/jme3/font/LineWrapMode;
    .locals 1

    iget-object v0, p0, Lcom/jme3/font/StringBlock;->wrapType:Lcom/jme3/font/LineWrapMode;

    return-object v0
.end method

.method public getSize()F
    .locals 1

    iget v0, p0, Lcom/jme3/font/StringBlock;->size:F

    return v0
.end method

.method public getTabPosition()[F
    .locals 1

    iget-object v0, p0, Lcom/jme3/font/StringBlock;->tabPos:[F

    return-object v0
.end method

.method public getTabWidth()F
    .locals 1

    iget v0, p0, Lcom/jme3/font/StringBlock;->tabWidth:F

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jme3/font/StringBlock;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTextBox()Lcom/jme3/font/Rectangle;
    .locals 1

    iget-object v0, p0, Lcom/jme3/font/StringBlock;->textBox:Lcom/jme3/font/Rectangle;

    return-object v0
.end method

.method public getVerticalAlignment()Lcom/jme3/font/BitmapFont$VAlign;
    .locals 1

    iget-object v0, p0, Lcom/jme3/font/StringBlock;->vAlignment:Lcom/jme3/font/BitmapFont$VAlign;

    return-object v0
.end method

.method public isKerning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/font/StringBlock;->kerning:Z

    return v0
.end method

.method public setAlignment(Lcom/jme3/font/BitmapFont$Align;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/font/StringBlock;->alignment:Lcom/jme3/font/BitmapFont$Align;

    return-void
.end method

.method public setColor(Lcom/jme3/math/ColorRGBA;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/font/StringBlock;->color:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v0, p1}, Lcom/jme3/math/ColorRGBA;->set(Lcom/jme3/math/ColorRGBA;)Lcom/jme3/math/ColorRGBA;

    return-void
.end method

.method public setEllipsisChar(C)V
    .locals 0

    iput-char p1, p0, Lcom/jme3/font/StringBlock;->ellipsisChar:C

    return-void
.end method

.method public setKerning(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jme3/font/StringBlock;->kerning:Z

    return-void
.end method

.method public setLineCount(I)V
    .locals 0

    iput p1, p0, Lcom/jme3/font/StringBlock;->lineCount:I

    return-void
.end method

.method public setLineWrapMode(Lcom/jme3/font/LineWrapMode;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/font/StringBlock;->wrapType:Lcom/jme3/font/LineWrapMode;

    return-void
.end method

.method public setSize(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/font/StringBlock;->size:F

    return-void
.end method

.method public setTabPosition([F)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/font/StringBlock;->tabPos:[F

    return-void
.end method

.method public setTabWidth(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/font/StringBlock;->tabWidth:F

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lcom/jme3/font/StringBlock;->text:Ljava/lang/String;

    return-void
.end method

.method public setTextBox(Lcom/jme3/font/Rectangle;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/font/StringBlock;->textBox:Lcom/jme3/font/Rectangle;

    return-void
.end method

.method public setVerticalAlignment(Lcom/jme3/font/BitmapFont$VAlign;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/font/StringBlock;->vAlignment:Lcom/jme3/font/BitmapFont$VAlign;

    return-void
.end method
