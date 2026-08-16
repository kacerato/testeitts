.class Lcom/jme3/font/LetterQuad;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LINE_DIR:F = -1.0f

.field private static final UNBOUNDED:Lcom/jme3/font/Rectangle;


# instance fields
.field private alignX:F

.field private alignY:F

.field private bitmapChar:Lcom/jme3/font/BitmapCharacter;

.field private final c:C

.field private colorInt:I

.field private eol:Z

.field private final font:Lcom/jme3/font/BitmapFont;

.field private height:F

.field private final index:I

.field private lineY:F

.field private next:Lcom/jme3/font/LetterQuad;

.field private previous:Lcom/jme3/font/LetterQuad;

.field private final rightToLeft:Z

.field private sizeScale:F

.field private style:I

.field private u0:F

.field private u1:F

.field private v0:F

.field private v1:F

.field private width:F

.field private x0:F

.field private xAdvance:F

.field private y0:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/jme3/font/Rectangle;

    const/4 v1, 0x0

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    invoke-direct {v0, v1, v1, v2, v2}, Lcom/jme3/font/Rectangle;-><init>(FFFF)V

    sput-object v0, Lcom/jme3/font/LetterQuad;->UNBOUNDED:Lcom/jme3/font/Rectangle;

    return-void
.end method

.method public constructor <init>(CLcom/jme3/font/LetterQuad;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/jme3/font/LetterQuad;->bitmapChar:Lcom/jme3/font/BitmapCharacter;

    const/high16 v0, -0x31000000

    .line 17
    iput v0, p0, Lcom/jme3/font/LetterQuad;->x0:F

    .line 18
    iput v0, p0, Lcom/jme3/font/LetterQuad;->y0:F

    .line 19
    iput v0, p0, Lcom/jme3/font/LetterQuad;->width:F

    .line 20
    iput v0, p0, Lcom/jme3/font/LetterQuad;->height:F

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/jme3/font/LetterQuad;->xAdvance:F

    const/4 v0, -0x1

    .line 22
    iput v0, p0, Lcom/jme3/font/LetterQuad;->colorInt:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 23
    iput v0, p0, Lcom/jme3/font/LetterQuad;->sizeScale:F

    .line 24
    iget-object v0, p2, Lcom/jme3/font/LetterQuad;->font:Lcom/jme3/font/BitmapFont;

    iput-object v0, p0, Lcom/jme3/font/LetterQuad;->font:Lcom/jme3/font/BitmapFont;

    .line 25
    iget-boolean v0, p2, Lcom/jme3/font/LetterQuad;->rightToLeft:Z

    iput-boolean v0, p0, Lcom/jme3/font/LetterQuad;->rightToLeft:Z

    .line 26
    iput-char p1, p0, Lcom/jme3/font/LetterQuad;->c:C

    .line 27
    iget v0, p2, Lcom/jme3/font/LetterQuad;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jme3/font/LetterQuad;->index:I

    .line 28
    invoke-virtual {p0}, Lcom/jme3/font/LetterQuad;->isLineFeed()Z

    move-result v0

    iput-boolean v0, p0, Lcom/jme3/font/LetterQuad;->eol:Z

    .line 29
    invoke-virtual {p0, p1}, Lcom/jme3/font/LetterQuad;->setBitmapChar(C)V

    .line 30
    invoke-virtual {p2, p0}, Lcom/jme3/font/LetterQuad;->insert(Lcom/jme3/font/LetterQuad;)V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/font/BitmapFont;Z)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/jme3/font/LetterQuad;->bitmapChar:Lcom/jme3/font/BitmapCharacter;

    const/high16 v1, -0x31000000

    .line 3
    iput v1, p0, Lcom/jme3/font/LetterQuad;->x0:F

    .line 4
    iput v1, p0, Lcom/jme3/font/LetterQuad;->y0:F

    .line 5
    iput v1, p0, Lcom/jme3/font/LetterQuad;->width:F

    .line 6
    iput v1, p0, Lcom/jme3/font/LetterQuad;->height:F

    const/4 v1, 0x0

    .line 7
    iput v1, p0, Lcom/jme3/font/LetterQuad;->xAdvance:F

    const/4 v1, -0x1

    .line 8
    iput v1, p0, Lcom/jme3/font/LetterQuad;->colorInt:I

    const/high16 v2, 0x3f800000    # 1.0f

    .line 9
    iput v2, p0, Lcom/jme3/font/LetterQuad;->sizeScale:F

    .line 10
    iput-object p1, p0, Lcom/jme3/font/LetterQuad;->font:Lcom/jme3/font/BitmapFont;

    const/4 p1, 0x0

    .line 11
    iput-char p1, p0, Lcom/jme3/font/LetterQuad;->c:C

    .line 12
    iput-boolean p2, p0, Lcom/jme3/font/LetterQuad;->rightToLeft:Z

    .line 13
    iput v1, p0, Lcom/jme3/font/LetterQuad;->index:I

    .line 14
    invoke-virtual {p0, v0}, Lcom/jme3/font/LetterQuad;->setBitmapChar(Lcom/jme3/font/BitmapCharacter;)V

    return-void
.end method

.method private computeLineY(Lcom/jme3/font/StringBlock;)F
    .locals 1

    invoke-virtual {p0}, Lcom/jme3/font/LetterQuad;->isHead()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/jme3/font/LetterQuad;->getBound(Lcom/jme3/font/StringBlock;)Lcom/jme3/font/Rectangle;

    move-result-object p1

    iget p1, p1, Lcom/jme3/font/Rectangle;->y:F

    return p1

    :cond_0
    iget-object p1, p0, Lcom/jme3/font/LetterQuad;->previous:Lcom/jme3/font/LetterQuad;

    iget-boolean v0, p1, Lcom/jme3/font/LetterQuad;->eol:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/jme3/font/LetterQuad;->getNextLine()F

    move-result p1

    return p1

    :cond_1
    iget p1, p1, Lcom/jme3/font/LetterQuad;->lineY:F

    return p1
.end method

.method private getBound(Lcom/jme3/font/StringBlock;)Lcom/jme3/font/Rectangle;
    .locals 1

    invoke-virtual {p1}, Lcom/jme3/font/StringBlock;->getTextBox()Lcom/jme3/font/Rectangle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/jme3/font/StringBlock;->getTextBox()Lcom/jme3/font/Rectangle;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object p1, Lcom/jme3/font/LetterQuad;->UNBOUNDED:Lcom/jme3/font/Rectangle;

    return-object p1
.end method


# virtual methods
.method public addNextCharacter(C)Lcom/jme3/font/LetterQuad;
    .locals 1

    new-instance v0, Lcom/jme3/font/LetterQuad;

    invoke-direct {v0, p1, p0}, Lcom/jme3/font/LetterQuad;-><init>(CLcom/jme3/font/LetterQuad;)V

    return-object v0
.end method

.method public appendColors(Ljava/nio/ByteBuffer;)V
    .locals 1

    iget v0, p0, Lcom/jme3/font/LetterQuad;->colorInt:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/jme3/font/LetterQuad;->colorInt:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/jme3/font/LetterQuad;->colorInt:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/jme3/font/LetterQuad;->colorInt:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public appendIndices(Ljava/nio/ShortBuffer;I)V
    .locals 4

    mul-int/lit8 p2, p2, 0x4

    int-to-short p2, p2

    add-int/lit8 v0, p2, 0x1

    int-to-short v0, v0

    add-int/lit8 v1, p2, 0x2

    int-to-short v1, v1

    add-int/lit8 v2, p2, 0x3

    int-to-short v2, v2

    invoke-virtual {p1, p2}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    invoke-virtual {p1, p2}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    return-void
.end method

.method public appendPositions(Ljava/nio/FloatBuffer;)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/jme3/font/LetterQuad;->x0:F

    iget v1, p0, Lcom/jme3/font/LetterQuad;->alignX:F

    add-float/2addr v0, v1

    .line 2
    iget v1, p0, Lcom/jme3/font/LetterQuad;->y0:F

    iget v2, p0, Lcom/jme3/font/LetterQuad;->alignY:F

    sub-float/2addr v1, v2

    .line 3
    iget v2, p0, Lcom/jme3/font/LetterQuad;->width:F

    add-float/2addr v2, v0

    .line 4
    iget v3, p0, Lcom/jme3/font/LetterQuad;->height:F

    sub-float v3, v1, v3

    .line 5
    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 6
    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 7
    invoke-virtual {p1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 8
    invoke-virtual {p1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    return-void
.end method

.method public appendPositions(Ljava/nio/ShortBuffer;)V
    .locals 6

    .line 9
    invoke-virtual {p0}, Lcom/jme3/font/LetterQuad;->getX1()F

    move-result v0

    .line 10
    invoke-virtual {p0}, Lcom/jme3/font/LetterQuad;->getY1()F

    move-result v1

    .line 11
    iget v2, p0, Lcom/jme3/font/LetterQuad;->x0:F

    float-to-int v2, v2

    int-to-short v2, v2

    .line 12
    iget v3, p0, Lcom/jme3/font/LetterQuad;->y0:F

    float-to-int v3, v3

    int-to-short v3, v3

    float-to-int v0, v0

    int-to-short v0, v0

    float-to-int v1, v1

    int-to-short v1, v1

    .line 13
    invoke-virtual {p1, v2}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    .line 14
    invoke-virtual {p1, v2}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    .line 15
    invoke-virtual {p1, v0}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    .line 16
    invoke-virtual {p1, v0}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    return-void
.end method

.method public appendTexCoords(Ljava/nio/FloatBuffer;)V
    .locals 3

    iget v0, p0, Lcom/jme3/font/LetterQuad;->v0:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    iget v2, p0, Lcom/jme3/font/LetterQuad;->v1:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/jme3/font/LetterQuad;->u0:F

    invoke-virtual {p1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget v2, p0, Lcom/jme3/font/LetterQuad;->u0:F

    invoke-virtual {p1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget v2, p0, Lcom/jme3/font/LetterQuad;->u1:F

    invoke-virtual {p1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget v1, p0, Lcom/jme3/font/LetterQuad;->u1:F

    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    return-void
.end method

.method public clip(Lcom/jme3/font/StringBlock;)V
    .locals 3

    invoke-virtual {p1}, Lcom/jme3/font/StringBlock;->getTextBox()Lcom/jme3/font/Rectangle;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p1, Lcom/jme3/font/Rectangle;->x:F

    iget p1, p1, Lcom/jme3/font/Rectangle;->width:F

    add-float/2addr v0, p1

    iget p1, p0, Lcom/jme3/font/LetterQuad;->x0:F

    iget v1, p0, Lcom/jme3/font/LetterQuad;->width:F

    add-float/2addr p1, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iget v0, p0, Lcom/jme3/font/LetterQuad;->x0:F

    sub-float v0, p1, v0

    invoke-virtual {p0}, Lcom/jme3/font/LetterQuad;->isRightToLeft()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    iget v0, p0, Lcom/jme3/font/LetterQuad;->width:F

    cmpl-float v1, p1, v0

    if-nez v1, :cond_2

    return-void

    :cond_2
    div-float v0, p1, v0

    iget v1, p0, Lcom/jme3/font/LetterQuad;->u0:F

    iget v2, p0, Lcom/jme3/font/LetterQuad;->u1:F

    sub-float/2addr v2, v1

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    iput v1, p0, Lcom/jme3/font/LetterQuad;->u1:F

    iput p1, p0, Lcom/jme3/font/LetterQuad;->width:F

    return-void
.end method

.method public getAlignX()F
    .locals 1

    iget v0, p0, Lcom/jme3/font/LetterQuad;->alignX:F

    return v0
.end method

.method public getAlignY()F
    .locals 1

    iget v0, p0, Lcom/jme3/font/LetterQuad;->alignY:F

    return v0
.end method

.method public getBitmapChar()Lcom/jme3/font/BitmapCharacter;
    .locals 1

    iget-object v0, p0, Lcom/jme3/font/LetterQuad;->bitmapChar:Lcom/jme3/font/BitmapCharacter;

    return-object v0
.end method

.method public getChar()C
    .locals 1

    iget-char v0, p0, Lcom/jme3/font/LetterQuad;->c:C

    return v0
.end method

.method public getHeight()F
    .locals 1

    iget v0, p0, Lcom/jme3/font/LetterQuad;->height:F

    return v0
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Lcom/jme3/font/LetterQuad;->index:I

    return v0
.end method

.method public getNext()Lcom/jme3/font/LetterQuad;
    .locals 1

    iget-object v0, p0, Lcom/jme3/font/LetterQuad;->next:Lcom/jme3/font/LetterQuad;

    return-object v0
.end method

.method public getNextLine()F
    .locals 3

    iget v0, p0, Lcom/jme3/font/LetterQuad;->lineY:F

    iget-object v1, p0, Lcom/jme3/font/LetterQuad;->font:Lcom/jme3/font/BitmapFont;

    invoke-virtual {v1}, Lcom/jme3/font/BitmapFont;->getCharSet()Lcom/jme3/font/BitmapCharacterSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/font/BitmapCharacterSet;->getLineHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, -0x40800000    # -1.0f

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/jme3/font/LetterQuad;->sizeScale:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public getNextX()F
    .locals 2

    iget-boolean v0, p0, Lcom/jme3/font/LetterQuad;->rightToLeft:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/jme3/font/LetterQuad;->x0:F

    iget v1, p0, Lcom/jme3/font/LetterQuad;->xAdvance:F

    sub-float/2addr v0, v1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/jme3/font/LetterQuad;->x0:F

    iget v1, p0, Lcom/jme3/font/LetterQuad;->xAdvance:F

    add-float/2addr v0, v1

    :goto_0
    return v0
.end method

.method public getPrevious()Lcom/jme3/font/LetterQuad;
    .locals 1

    iget-object v0, p0, Lcom/jme3/font/LetterQuad;->previous:Lcom/jme3/font/LetterQuad;

    return-object v0
.end method

.method public getU0()F
    .locals 1

    iget v0, p0, Lcom/jme3/font/LetterQuad;->u0:F

    return v0
.end method

.method public getU1()F
    .locals 1

    iget v0, p0, Lcom/jme3/font/LetterQuad;->u1:F

    return v0
.end method

.method public getV0()F
    .locals 1

    iget v0, p0, Lcom/jme3/font/LetterQuad;->v0:F

    return v0
.end method

.method public getV1()F
    .locals 1

    iget v0, p0, Lcom/jme3/font/LetterQuad;->v1:F

    return v0
.end method

.method public getWidth()F
    .locals 1

    iget v0, p0, Lcom/jme3/font/LetterQuad;->width:F

    return v0
.end method

.method public getX0()F
    .locals 1

    iget v0, p0, Lcom/jme3/font/LetterQuad;->x0:F

    return v0
.end method

.method public getX1()F
    .locals 2

    iget v0, p0, Lcom/jme3/font/LetterQuad;->x0:F

    iget v1, p0, Lcom/jme3/font/LetterQuad;->width:F

    add-float/2addr v0, v1

    return v0
.end method

.method public getY0()F
    .locals 1

    iget v0, p0, Lcom/jme3/font/LetterQuad;->y0:F

    return v0
.end method

.method public getY1()F
    .locals 2

    iget v0, p0, Lcom/jme3/font/LetterQuad;->y0:F

    iget v1, p0, Lcom/jme3/font/LetterQuad;->height:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public insert(Lcom/jme3/font/LetterQuad;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/font/LetterQuad;->next:Lcom/jme3/font/LetterQuad;

    iput-object p1, p0, Lcom/jme3/font/LetterQuad;->next:Lcom/jme3/font/LetterQuad;

    iput-object v0, p1, Lcom/jme3/font/LetterQuad;->next:Lcom/jme3/font/LetterQuad;

    iput-object p0, p1, Lcom/jme3/font/LetterQuad;->previous:Lcom/jme3/font/LetterQuad;

    iput-object p1, v0, Lcom/jme3/font/LetterQuad;->previous:Lcom/jme3/font/LetterQuad;

    return-void
.end method

.method public invalidate()V
    .locals 3

    invoke-virtual {p0}, Lcom/jme3/font/LetterQuad;->isLineFeed()Z

    move-result v0

    iput-boolean v0, p0, Lcom/jme3/font/LetterQuad;->eol:Z

    iget-object v0, p0, Lcom/jme3/font/LetterQuad;->font:Lcom/jme3/font/BitmapFont;

    invoke-virtual {v0}, Lcom/jme3/font/BitmapFont;->getCharSet()Lcom/jme3/font/BitmapCharacterSet;

    move-result-object v0

    iget-char v1, p0, Lcom/jme3/font/LetterQuad;->c:C

    iget v2, p0, Lcom/jme3/font/LetterQuad;->style:I

    invoke-virtual {v0, v1, v2}, Lcom/jme3/font/BitmapCharacterSet;->getCharacter(II)Lcom/jme3/font/BitmapCharacter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jme3/font/LetterQuad;->setBitmapChar(Lcom/jme3/font/BitmapCharacter;)V

    return-void
.end method

.method public isBlank()Z
    .locals 2

    iget-char v0, p0, Lcom/jme3/font/LetterQuad;->c:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/jme3/font/LetterQuad;->isTab()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isEndOfLine()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/font/LetterQuad;->eol:Z

    return v0
.end method

.method public isHead()Z
    .locals 1

    iget-object v0, p0, Lcom/jme3/font/LetterQuad;->previous:Lcom/jme3/font/LetterQuad;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInvalid()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/jme3/font/LetterQuad;->x0:F

    const/high16 v1, -0x31000000

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInvalid(Lcom/jme3/font/StringBlock;)Z
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/jme3/font/LetterQuad;->isInvalid(Lcom/jme3/font/StringBlock;F)Z

    move-result p1

    return p1
.end method

.method public isInvalid(Lcom/jme3/font/StringBlock;F)Z
    .locals 4

    .line 3
    invoke-virtual {p0}, Lcom/jme3/font/LetterQuad;->isHead()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/jme3/font/LetterQuad;->isTail()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget v0, p0, Lcom/jme3/font/LetterQuad;->x0:F

    const/high16 v2, -0x31000000

    cmpl-float v0, v0, v2

    const/4 v3, 0x1

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/jme3/font/LetterQuad;->y0:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/jme3/font/StringBlock;->getTextBox()Lcom/jme3/font/Rectangle;

    move-result-object p1

    if-nez p1, :cond_2

    return v1

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/jme3/font/LetterQuad;->isRightToLeft()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 7
    iget p2, p0, Lcom/jme3/font/LetterQuad;->x0:F

    cmpg-float v0, p2, v2

    if-gez v0, :cond_3

    iget p1, p1, Lcom/jme3/font/Rectangle;->x:F

    cmpg-float p1, p2, p1

    if-gez p1, :cond_3

    move v1, v3

    :cond_3
    return v1

    .line 8
    :cond_4
    iget v0, p0, Lcom/jme3/font/LetterQuad;->x0:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_5

    iget v0, p1, Lcom/jme3/font/Rectangle;->x:F

    iget p1, p1, Lcom/jme3/font/Rectangle;->width:F

    add-float/2addr v0, p1

    sub-float/2addr v0, p2

    invoke-virtual {p0}, Lcom/jme3/font/LetterQuad;->getX1()F

    move-result p1

    cmpg-float p1, v0, p1

    if-gez p1, :cond_5

    move v1, v3

    :cond_5
    return v1

    :cond_6
    :goto_0
    return v3

    :cond_7
    :goto_1
    return v1
.end method

.method public isLineFeed()Z
    .locals 2

    iget-char v0, p0, Lcom/jme3/font/LetterQuad;->c:C

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLineStart()Z
    .locals 2

    iget v0, p0, Lcom/jme3/font/LetterQuad;->x0:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jme3/font/LetterQuad;->previous:Lcom/jme3/font/LetterQuad;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/jme3/font/LetterQuad;->eol:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isLineWrap()Z
    .locals 1

    invoke-virtual {p0}, Lcom/jme3/font/LetterQuad;->isHead()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/jme3/font/LetterQuad;->isTail()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jme3/font/LetterQuad;->bitmapChar:Lcom/jme3/font/BitmapCharacter;

    if-nez v0, :cond_0

    iget-char v0, p0, Lcom/jme3/font/LetterQuad;->c:C

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRightToLeft()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/font/LetterQuad;->rightToLeft:Z

    return v0
.end method

.method public isTab()Z
    .locals 2

    iget-char v0, p0, Lcom/jme3/font/LetterQuad;->c:C

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTail()Z
    .locals 1

    iget-object v0, p0, Lcom/jme3/font/LetterQuad;->next:Lcom/jme3/font/LetterQuad;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public remove()Lcom/jme3/font/LetterQuad;
    .locals 2

    iget-object v0, p0, Lcom/jme3/font/LetterQuad;->previous:Lcom/jme3/font/LetterQuad;

    iget-object v1, p0, Lcom/jme3/font/LetterQuad;->next:Lcom/jme3/font/LetterQuad;

    iput-object v1, v0, Lcom/jme3/font/LetterQuad;->next:Lcom/jme3/font/LetterQuad;

    iget-object v1, p0, Lcom/jme3/font/LetterQuad;->next:Lcom/jme3/font/LetterQuad;

    iput-object v0, v1, Lcom/jme3/font/LetterQuad;->previous:Lcom/jme3/font/LetterQuad;

    return-object v1
.end method

.method public setAlignment(FF)V
    .locals 0

    iput p1, p0, Lcom/jme3/font/LetterQuad;->alignX:F

    iput p2, p0, Lcom/jme3/font/LetterQuad;->alignY:F

    return-void
.end method

.method public setAlpha(F)V
    .locals 1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    and-int/lit16 p1, p1, 0xff

    iget v0, p0, Lcom/jme3/font/LetterQuad;->colorInt:I

    and-int/lit16 v0, v0, -0x100

    or-int/2addr p1, v0

    iput p1, p0, Lcom/jme3/font/LetterQuad;->colorInt:I

    invoke-virtual {p0}, Lcom/jme3/font/LetterQuad;->invalidate()V

    return-void
.end method

.method public setBitmapChar(C)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jme3/font/LetterQuad;->font:Lcom/jme3/font/BitmapFont;

    invoke-virtual {v0}, Lcom/jme3/font/BitmapFont;->getCharSet()Lcom/jme3/font/BitmapCharacterSet;

    move-result-object v0

    .line 2
    iget v1, p0, Lcom/jme3/font/LetterQuad;->style:I

    invoke-virtual {v0, p1, v1}, Lcom/jme3/font/BitmapCharacterSet;->getCharacter(II)Lcom/jme3/font/BitmapCharacter;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1}, Lcom/jme3/font/LetterQuad;->setBitmapChar(Lcom/jme3/font/BitmapCharacter;)V

    return-void
.end method

.method public setBitmapChar(Lcom/jme3/font/BitmapCharacter;)V
    .locals 4

    const/high16 v0, -0x31000000

    .line 4
    iput v0, p0, Lcom/jme3/font/LetterQuad;->x0:F

    .line 5
    iput v0, p0, Lcom/jme3/font/LetterQuad;->y0:F

    .line 6
    iput v0, p0, Lcom/jme3/font/LetterQuad;->width:F

    .line 7
    iput v0, p0, Lcom/jme3/font/LetterQuad;->height:F

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/jme3/font/LetterQuad;->alignX:F

    .line 9
    iput v0, p0, Lcom/jme3/font/LetterQuad;->alignY:F

    .line 10
    iget-object v1, p0, Lcom/jme3/font/LetterQuad;->font:Lcom/jme3/font/BitmapFont;

    invoke-virtual {v1}, Lcom/jme3/font/BitmapFont;->getCharSet()Lcom/jme3/font/BitmapCharacterSet;

    move-result-object v1

    .line 11
    iput-object p1, p0, Lcom/jme3/font/LetterQuad;->bitmapChar:Lcom/jme3/font/BitmapCharacter;

    if-eqz p1, :cond_0

    .line 12
    invoke-virtual {p1}, Lcom/jme3/font/BitmapCharacter;->getX()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1}, Lcom/jme3/font/BitmapCharacterSet;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    iput v0, p0, Lcom/jme3/font/LetterQuad;->u0:F

    .line 13
    invoke-virtual {p1}, Lcom/jme3/font/BitmapCharacter;->getY()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1}, Lcom/jme3/font/BitmapCharacterSet;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    iput v0, p0, Lcom/jme3/font/LetterQuad;->v0:F

    .line 14
    iget v0, p0, Lcom/jme3/font/LetterQuad;->u0:F

    invoke-virtual {p1}, Lcom/jme3/font/BitmapCharacter;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1}, Lcom/jme3/font/BitmapCharacterSet;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    add-float/2addr v0, v2

    iput v0, p0, Lcom/jme3/font/LetterQuad;->u1:F

    .line 15
    iget v0, p0, Lcom/jme3/font/LetterQuad;->v0:F

    invoke-virtual {p1}, Lcom/jme3/font/BitmapCharacter;->getHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v1}, Lcom/jme3/font/BitmapCharacterSet;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    add-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/font/LetterQuad;->v1:F

    goto :goto_0

    .line 16
    :cond_0
    iput v0, p0, Lcom/jme3/font/LetterQuad;->u0:F

    .line 17
    iput v0, p0, Lcom/jme3/font/LetterQuad;->v0:F

    .line 18
    iput v0, p0, Lcom/jme3/font/LetterQuad;->u1:F

    .line 19
    iput v0, p0, Lcom/jme3/font/LetterQuad;->v1:F

    :goto_0
    return-void
.end method

.method public setColor(Lcom/jme3/math/ColorRGBA;)V
    .locals 0

    invoke-virtual {p1}, Lcom/jme3/math/ColorRGBA;->asIntRGBA()I

    move-result p1

    iput p1, p0, Lcom/jme3/font/LetterQuad;->colorInt:I

    invoke-virtual {p0}, Lcom/jme3/font/LetterQuad;->invalidate()V

    return-void
.end method

.method public setEndOfLine()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/font/LetterQuad;->eol:Z

    return-void
.end method

.method public setNext(Lcom/jme3/font/LetterQuad;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/font/LetterQuad;->next:Lcom/jme3/font/LetterQuad;

    return-void
.end method

.method public setPrevious(Lcom/jme3/font/LetterQuad;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/font/LetterQuad;->previous:Lcom/jme3/font/LetterQuad;

    return-void
.end method

.method public setStyle(I)V
    .locals 0

    iput p1, p0, Lcom/jme3/font/LetterQuad;->style:I

    invoke-virtual {p0}, Lcom/jme3/font/LetterQuad;->invalidate()V

    return-void
.end method

.method public storeToArrays([F[F[S[BI)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p4

    iget v2, v0, Lcom/jme3/font/LetterQuad;->x0:F

    iget v3, v0, Lcom/jme3/font/LetterQuad;->alignX:F

    add-float/2addr v2, v3

    iget v3, v0, Lcom/jme3/font/LetterQuad;->y0:F

    iget v4, v0, Lcom/jme3/font/LetterQuad;->alignY:F

    sub-float/2addr v3, v4

    iget v4, v0, Lcom/jme3/font/LetterQuad;->width:F

    add-float/2addr v4, v2

    iget v5, v0, Lcom/jme3/font/LetterQuad;->height:F

    sub-float v5, v3, v5

    const/4 v6, 0x0

    aput v2, p1, v6

    const/4 v7, 0x1

    aput v3, p1, v7

    const/4 v8, 0x2

    const/4 v9, 0x0

    aput v9, p1, v8

    const/4 v10, 0x3

    aput v2, p1, v10

    const/4 v2, 0x4

    aput v5, p1, v2

    const/4 v11, 0x5

    aput v9, p1, v11

    const/4 v12, 0x6

    aput v4, p1, v12

    const/4 v13, 0x7

    aput v5, p1, v13

    const/16 v5, 0x8

    aput v9, p1, v5

    const/16 v14, 0x9

    aput v4, p1, v14

    const/16 v4, 0xa

    aput v3, p1, v4

    const/16 v3, 0xb

    aput v9, p1, v3

    iget v3, v0, Lcom/jme3/font/LetterQuad;->v0:F

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v3, v4, v3

    iget v9, v0, Lcom/jme3/font/LetterQuad;->v1:F

    sub-float/2addr v4, v9

    iget v9, v0, Lcom/jme3/font/LetterQuad;->u0:F

    aput v9, p2, v6

    aput v3, p2, v7

    aput v9, p2, v8

    aput v4, p2, v10

    iget v9, v0, Lcom/jme3/font/LetterQuad;->u1:F

    aput v9, p2, v2

    aput v4, p2, v11

    aput v9, p2, v12

    aput v3, p2, v13

    iget v3, v0, Lcom/jme3/font/LetterQuad;->colorInt:I

    and-int/lit16 v4, v3, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v10

    shr-int/lit8 v4, v3, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v8

    shr-int/lit8 v4, v3, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v7

    shr-int/lit8 v3, v3, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v6

    invoke-static {v1, v6, v1, v2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v1, v6, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v3, 0xc

    invoke-static {v1, v6, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    mul-int/lit8 v1, p5, 0x4

    int-to-short v1, v1

    add-int/lit8 v3, v1, 0x1

    int-to-short v3, v3

    add-int/lit8 v4, v1, 0x2

    int-to-short v4, v4

    add-int/lit8 v5, v1, 0x3

    int-to-short v5, v5

    aput-short v1, p3, v6

    aput-short v3, p3, v7

    aput-short v4, p3, v8

    aput-short v1, p3, v10

    aput-short v4, p3, v2

    aput-short v5, p3, v11

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-char v0, p0, Lcom/jme3/font/LetterQuad;->c:C

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(Lcom/jme3/font/StringBlock;)V
    .locals 9

    invoke-virtual {p1}, Lcom/jme3/font/StringBlock;->getTabPosition()[F

    move-result-object v0

    invoke-virtual {p1}, Lcom/jme3/font/StringBlock;->getTabWidth()F

    move-result v1

    invoke-direct {p0, p1}, Lcom/jme3/font/LetterQuad;->getBound(Lcom/jme3/font/StringBlock;)Lcom/jme3/font/Rectangle;

    move-result-object v2

    invoke-virtual {p1}, Lcom/jme3/font/StringBlock;->getSize()F

    move-result v3

    iget-object v4, p0, Lcom/jme3/font/LetterQuad;->font:Lcom/jme3/font/BitmapFont;

    invoke-virtual {v4}, Lcom/jme3/font/BitmapFont;->getCharSet()Lcom/jme3/font/BitmapCharacterSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jme3/font/BitmapCharacterSet;->getRenderedSize()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, p0, Lcom/jme3/font/LetterQuad;->sizeScale:F

    invoke-direct {p0, p1}, Lcom/jme3/font/LetterQuad;->computeLineY(Lcom/jme3/font/StringBlock;)F

    move-result v3

    iput v3, p0, Lcom/jme3/font/LetterQuad;->lineY:F

    invoke-virtual {p0}, Lcom/jme3/font/LetterQuad;->isHead()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-direct {p0, p1}, Lcom/jme3/font/LetterQuad;->getBound(Lcom/jme3/font/StringBlock;)Lcom/jme3/font/Rectangle;

    move-result-object v0

    iget v0, v0, Lcom/jme3/font/Rectangle;->x:F

    iput v0, p0, Lcom/jme3/font/LetterQuad;->x0:F

    invoke-virtual {p0}, Lcom/jme3/font/LetterQuad;->isRightToLeft()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/jme3/font/LetterQuad;->getBound(Lcom/jme3/font/StringBlock;)Lcom/jme3/font/Rectangle;

    move-result-object v0

    sget-object v1, Lcom/jme3/font/LetterQuad;->UNBOUNDED:Lcom/jme3/font/Rectangle;

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/jme3/font/LetterQuad;->x0:F

    invoke-direct {p0, p1}, Lcom/jme3/font/LetterQuad;->getBound(Lcom/jme3/font/StringBlock;)Lcom/jme3/font/Rectangle;

    move-result-object p1

    iget p1, p1, Lcom/jme3/font/Rectangle;->width:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/font/LetterQuad;->x0:F

    :cond_0
    iget p1, p0, Lcom/jme3/font/LetterQuad;->lineY:F

    iput p1, p0, Lcom/jme3/font/LetterQuad;->y0:F

    iput v4, p0, Lcom/jme3/font/LetterQuad;->width:F

    iput v4, p0, Lcom/jme3/font/LetterQuad;->height:F

    iput v4, p0, Lcom/jme3/font/LetterQuad;->xAdvance:F

    goto/16 :goto_5

    :cond_1
    invoke-virtual {p0}, Lcom/jme3/font/LetterQuad;->isTab()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object p1, p0, Lcom/jme3/font/LetterQuad;->previous:Lcom/jme3/font/LetterQuad;

    invoke-virtual {p1}, Lcom/jme3/font/LetterQuad;->getNextX()F

    move-result p1

    iput p1, p0, Lcom/jme3/font/LetterQuad;->x0:F

    iput v1, p0, Lcom/jme3/font/LetterQuad;->width:F

    iget v1, p0, Lcom/jme3/font/LetterQuad;->lineY:F

    iput v1, p0, Lcom/jme3/font/LetterQuad;->y0:F

    iput v4, p0, Lcom/jme3/font/LetterQuad;->height:F

    if-eqz v0, :cond_3

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget v1, v0, v1

    cmpg-float p1, p1, v1

    if-gez p1, :cond_3

    const/4 p1, 0x0

    :goto_0
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge p1, v1, :cond_3

    iget v1, p0, Lcom/jme3/font/LetterQuad;->x0:F

    aget v3, v0, p1

    cmpl-float v3, v1, v3

    if-lez v3, :cond_2

    add-int/lit8 v3, p1, 0x1

    aget v3, v0, v3

    cmpg-float v4, v1, v3

    if-gez v4, :cond_2

    sub-float/2addr v3, v1

    iput v3, p0, Lcom/jme3/font/LetterQuad;->width:F

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    iget p1, p0, Lcom/jme3/font/LetterQuad;->width:F

    iput p1, p0, Lcom/jme3/font/LetterQuad;->xAdvance:F

    goto/16 :goto_5

    :cond_4
    iget-object v0, p0, Lcom/jme3/font/LetterQuad;->bitmapChar:Lcom/jme3/font/BitmapCharacter;

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/jme3/font/LetterQuad;->getPrevious()Lcom/jme3/font/LetterQuad;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/font/LetterQuad;->getX1()F

    move-result p1

    iput p1, p0, Lcom/jme3/font/LetterQuad;->x0:F

    iget-boolean p1, p0, Lcom/jme3/font/LetterQuad;->rightToLeft:Z

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/jme3/font/LetterQuad;->getPrevious()Lcom/jme3/font/LetterQuad;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/font/LetterQuad;->getX0()F

    move-result p1

    iput p1, p0, Lcom/jme3/font/LetterQuad;->x0:F

    :cond_5
    iget p1, p0, Lcom/jme3/font/LetterQuad;->lineY:F

    iput p1, p0, Lcom/jme3/font/LetterQuad;->y0:F

    iput v4, p0, Lcom/jme3/font/LetterQuad;->width:F

    iput v4, p0, Lcom/jme3/font/LetterQuad;->height:F

    iput v4, p0, Lcom/jme3/font/LetterQuad;->xAdvance:F

    goto/16 :goto_5

    :cond_6
    invoke-virtual {v0}, Lcom/jme3/font/BitmapCharacter;->getXOffset()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/jme3/font/LetterQuad;->sizeScale:F

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/jme3/font/LetterQuad;->bitmapChar:Lcom/jme3/font/BitmapCharacter;

    invoke-virtual {v1}, Lcom/jme3/font/BitmapCharacter;->getYOffset()I

    move-result v1

    int-to-float v1, v1

    iget v3, p0, Lcom/jme3/font/LetterQuad;->sizeScale:F

    mul-float/2addr v1, v3

    iget-object v3, p0, Lcom/jme3/font/LetterQuad;->bitmapChar:Lcom/jme3/font/BitmapCharacter;

    invoke-virtual {v3}, Lcom/jme3/font/BitmapCharacter;->getXAdvance()I

    move-result v3

    int-to-float v3, v3

    iget v5, p0, Lcom/jme3/font/LetterQuad;->sizeScale:F

    mul-float/2addr v3, v5

    iput v3, p0, Lcom/jme3/font/LetterQuad;->xAdvance:F

    iget-object v3, p0, Lcom/jme3/font/LetterQuad;->bitmapChar:Lcom/jme3/font/BitmapCharacter;

    invoke-virtual {v3}, Lcom/jme3/font/BitmapCharacter;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v5, p0, Lcom/jme3/font/LetterQuad;->sizeScale:F

    mul-float/2addr v3, v5

    iput v3, p0, Lcom/jme3/font/LetterQuad;->width:F

    iget-object v3, p0, Lcom/jme3/font/LetterQuad;->bitmapChar:Lcom/jme3/font/BitmapCharacter;

    invoke-virtual {v3}, Lcom/jme3/font/BitmapCharacter;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v5, p0, Lcom/jme3/font/LetterQuad;->sizeScale:F

    mul-float/2addr v3, v5

    iput v3, p0, Lcom/jme3/font/LetterQuad;->height:F

    iget-boolean v3, p0, Lcom/jme3/font/LetterQuad;->rightToLeft:Z

    const/high16 v5, -0x40800000    # -1.0f

    if-eqz v3, :cond_7

    move v3, v5

    goto :goto_1

    :cond_7
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_1
    iget-object v6, p0, Lcom/jme3/font/LetterQuad;->previous:Lcom/jme3/font/LetterQuad;

    invoke-virtual {v6}, Lcom/jme3/font/LetterQuad;->isHead()Z

    move-result v6

    if-nez v6, :cond_a

    iget-object v6, p0, Lcom/jme3/font/LetterQuad;->previous:Lcom/jme3/font/LetterQuad;

    iget-boolean v6, v6, Lcom/jme3/font/LetterQuad;->eol:Z

    if-eqz v6, :cond_8

    goto :goto_2

    :cond_8
    invoke-virtual {p0}, Lcom/jme3/font/LetterQuad;->isRightToLeft()Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/jme3/font/LetterQuad;->previous:Lcom/jme3/font/LetterQuad;

    invoke-virtual {v4}, Lcom/jme3/font/LetterQuad;->getNextX()F

    move-result v4

    iget v6, p0, Lcom/jme3/font/LetterQuad;->xAdvance:F

    sub-float/2addr v4, v6

    mul-float v6, v0, v3

    sub-float/2addr v4, v6

    iput v4, p0, Lcom/jme3/font/LetterQuad;->x0:F

    neg-float v0, v0

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/jme3/font/LetterQuad;->xAdvance:F

    goto :goto_4

    :cond_9
    iget-object v4, p0, Lcom/jme3/font/LetterQuad;->previous:Lcom/jme3/font/LetterQuad;

    invoke-virtual {v4}, Lcom/jme3/font/LetterQuad;->getNextX()F

    move-result v4

    mul-float/2addr v0, v3

    add-float/2addr v4, v0

    iput v4, p0, Lcom/jme3/font/LetterQuad;->x0:F

    iget v4, p0, Lcom/jme3/font/LetterQuad;->xAdvance:F

    sub-float/2addr v4, v0

    iput v4, p0, Lcom/jme3/font/LetterQuad;->xAdvance:F

    goto :goto_4

    :cond_a
    :goto_2
    iget-boolean v6, p0, Lcom/jme3/font/LetterQuad;->rightToLeft:Z

    if-eqz v6, :cond_e

    iget-object v6, p0, Lcom/jme3/font/LetterQuad;->previous:Lcom/jme3/font/LetterQuad;

    invoke-virtual {v6}, Lcom/jme3/font/LetterQuad;->isHead()Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v4, p0, Lcom/jme3/font/LetterQuad;->previous:Lcom/jme3/font/LetterQuad;

    invoke-virtual {v4}, Lcom/jme3/font/LetterQuad;->getNextX()F

    move-result v4

    iget v6, p0, Lcom/jme3/font/LetterQuad;->xAdvance:F

    sub-float/2addr v4, v6

    mul-float v6, v0, v3

    sub-float/2addr v4, v6

    iput v4, p0, Lcom/jme3/font/LetterQuad;->x0:F

    goto :goto_3

    :cond_b
    iget-object v6, p0, Lcom/jme3/font/LetterQuad;->previous:Lcom/jme3/font/LetterQuad;

    iget-boolean v6, v6, Lcom/jme3/font/LetterQuad;->eol:Z

    if-eqz v6, :cond_d

    invoke-direct {p0, p1}, Lcom/jme3/font/LetterQuad;->getBound(Lcom/jme3/font/StringBlock;)Lcom/jme3/font/Rectangle;

    move-result-object v6

    iget v6, v6, Lcom/jme3/font/Rectangle;->x:F

    invoke-direct {p0, p1}, Lcom/jme3/font/LetterQuad;->getBound(Lcom/jme3/font/StringBlock;)Lcom/jme3/font/Rectangle;

    move-result-object v7

    sget-object v8, Lcom/jme3/font/LetterQuad;->UNBOUNDED:Lcom/jme3/font/Rectangle;

    if-eq v7, v8, :cond_c

    invoke-direct {p0, p1}, Lcom/jme3/font/LetterQuad;->getBound(Lcom/jme3/font/StringBlock;)Lcom/jme3/font/Rectangle;

    move-result-object v4

    iget v4, v4, Lcom/jme3/font/Rectangle;->width:F

    :cond_c
    add-float/2addr v6, v4

    iget v4, p0, Lcom/jme3/font/LetterQuad;->xAdvance:F

    sub-float/2addr v6, v4

    mul-float v4, v0, v3

    sub-float/2addr v6, v4

    iput v6, p0, Lcom/jme3/font/LetterQuad;->x0:F

    :cond_d
    :goto_3
    neg-float v0, v0

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/jme3/font/LetterQuad;->xAdvance:F

    goto :goto_4

    :cond_e
    iget v4, v2, Lcom/jme3/font/Rectangle;->x:F

    iput v4, p0, Lcom/jme3/font/LetterQuad;->x0:F

    iget v4, p0, Lcom/jme3/font/LetterQuad;->xAdvance:F

    mul-float/2addr v0, v3

    sub-float/2addr v4, v0

    iput v4, p0, Lcom/jme3/font/LetterQuad;->xAdvance:F

    :goto_4
    iget v0, p0, Lcom/jme3/font/LetterQuad;->lineY:F

    mul-float/2addr v1, v5

    add-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/font/LetterQuad;->y0:F

    iget-object v0, p0, Lcom/jme3/font/LetterQuad;->previous:Lcom/jme3/font/LetterQuad;

    invoke-virtual {v0}, Lcom/jme3/font/LetterQuad;->getBitmapChar()Lcom/jme3/font/BitmapCharacter;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Lcom/jme3/font/StringBlock;->isKerning()Z

    move-result p1

    if-eqz p1, :cond_f

    iget-char p1, p0, Lcom/jme3/font/LetterQuad;->c:C

    invoke-virtual {v0, p1}, Lcom/jme3/font/BitmapCharacter;->getKerning(I)I

    move-result p1

    int-to-float p1, p1

    iget v0, p0, Lcom/jme3/font/LetterQuad;->sizeScale:F

    mul-float/2addr p1, v0

    iget v0, p0, Lcom/jme3/font/LetterQuad;->x0:F

    mul-float/2addr p1, v3

    add-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/font/LetterQuad;->x0:F

    :cond_f
    :goto_5
    invoke-virtual {p0}, Lcom/jme3/font/LetterQuad;->isEndOfLine()Z

    move-result p1

    if-eqz p1, :cond_10

    iget p1, v2, Lcom/jme3/font/Rectangle;->x:F

    iget v0, p0, Lcom/jme3/font/LetterQuad;->x0:F

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/jme3/font/LetterQuad;->xAdvance:F

    :cond_10
    return-void
.end method
