.class public final LJAVARuntime/Texture$SpriteRect;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LJAVARuntime/Texture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SpriteRect"
.end annotation


# instance fields
.field public fh:F

.field public fw:F

.field public fx:F

.field public fy:F

.field public height:I

.field public imageHeight:I

.field public imageWidth:I

.field public left:I

.field public top:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "left",
            "top",
            "width",
            "height",
            "imageWidth",
            "imageHeight"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, LJAVARuntime/Texture$SpriteRect;->left:I

    .line 4
    iput p2, p0, LJAVARuntime/Texture$SpriteRect;->top:I

    .line 5
    iput p3, p0, LJAVARuntime/Texture$SpriteRect;->width:I

    .line 6
    iput p4, p0, LJAVARuntime/Texture$SpriteRect;->height:I

    .line 7
    iput p5, p0, LJAVARuntime/Texture$SpriteRect;->imageWidth:I

    .line 8
    iput p6, p0, LJAVARuntime/Texture$SpriteRect;->imageHeight:I

    .line 9
    invoke-direct {p0}, LJAVARuntime/Texture$SpriteRect;->refreshPercentages()V

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rect"
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 11
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->k()I

    move-result v0

    iput v0, p0, LJAVARuntime/Texture$SpriteRect;->left:I

    .line 12
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->l()I

    move-result v0

    iput v0, p0, LJAVARuntime/Texture$SpriteRect;->top:I

    .line 13
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->j()I

    move-result v0

    iput v0, p0, LJAVARuntime/Texture$SpriteRect;->width:I

    .line 14
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->g()I

    move-result v0

    iput v0, p0, LJAVARuntime/Texture$SpriteRect;->height:I

    .line 15
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->i()I

    move-result v0

    iput v0, p0, LJAVARuntime/Texture$SpriteRect;->imageWidth:I

    .line 16
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->h()I

    move-result v0

    iput v0, p0, LJAVARuntime/Texture$SpriteRect;->imageHeight:I

    .line 17
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->d()F

    move-result v0

    iput v0, p0, LJAVARuntime/Texture$SpriteRect;->fx:F

    .line 18
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->e()F

    move-result v0

    iput v0, p0, LJAVARuntime/Texture$SpriteRect;->fy:F

    .line 19
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->c()F

    move-result v0

    iput v0, p0, LJAVARuntime/Texture$SpriteRect;->fw:F

    .line 20
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->b()F

    move-result p1

    iput p1, p0, LJAVARuntime/Texture$SpriteRect;->fh:F

    :cond_0
    return-void
.end method

.method private refreshPercentages()V
    .locals 4

    iget v0, p0, LJAVARuntime/Texture$SpriteRect;->imageWidth:I

    if-lez v0, :cond_1

    iget v1, p0, LJAVARuntime/Texture$SpriteRect;->imageHeight:I

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    iget v2, p0, LJAVARuntime/Texture$SpriteRect;->left:I

    int-to-float v2, v2

    int-to-float v3, v0

    div-float/2addr v2, v3

    iput v2, p0, LJAVARuntime/Texture$SpriteRect;->fx:F

    iget v2, p0, LJAVARuntime/Texture$SpriteRect;->top:I

    int-to-float v2, v2

    int-to-float v3, v1

    div-float/2addr v2, v3

    iput v2, p0, LJAVARuntime/Texture$SpriteRect;->fy:F

    iget v2, p0, LJAVARuntime/Texture$SpriteRect;->width:I

    int-to-float v2, v2

    int-to-float v0, v0

    div-float/2addr v2, v0

    iput v2, p0, LJAVARuntime/Texture$SpriteRect;->fw:F

    iget v0, p0, LJAVARuntime/Texture$SpriteRect;->height:I

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, LJAVARuntime/Texture$SpriteRect;->fh:F

    return-void

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, LJAVARuntime/Texture$SpriteRect;->fx:F

    iput v0, p0, LJAVARuntime/Texture$SpriteRect;->fy:F

    iput v0, p0, LJAVARuntime/Texture$SpriteRect;->fw:F

    iput v0, p0, LJAVARuntime/Texture$SpriteRect;->fh:F

    return-void
.end method


# virtual methods
.method public toEngineRect()Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;
    .locals 8

    new-instance v7, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;

    iget v1, p0, LJAVARuntime/Texture$SpriteRect;->left:I

    iget v2, p0, LJAVARuntime/Texture$SpriteRect;->top:I

    iget v3, p0, LJAVARuntime/Texture$SpriteRect;->width:I

    iget v4, p0, LJAVARuntime/Texture$SpriteRect;->height:I

    iget v5, p0, LJAVARuntime/Texture$SpriteRect;->imageWidth:I

    iget v6, p0, LJAVARuntime/Texture$SpriteRect;->imageHeight:I

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;-><init>(IIIIII)V

    return-object v7
.end method
