.class public Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private fh:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private fw:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private fx:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private fy:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private ih:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private imageHeight:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private imageWidth:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private iw:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private ix:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private iy:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


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
            "ix",
            "iy",
            "iw",
            "ih",
            "imageWidth",
            "imageHeight"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual/range {p0 .. p6}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->s(IIIIII)V

    return-void
.end method

.method public static a(Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;)Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rect"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v7, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;

    invoke-direct {v7}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;-><init>()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->k()I

    move-result v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->l()I

    move-result v2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->j()I

    move-result v3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->g()I

    move-result v4

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->i()I

    move-result v5

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->h()I

    move-result v6

    move-object v0, v7

    invoke-virtual/range {v0 .. v6}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->s(IIIIII)V

    return-object v7
.end method


# virtual methods
.method public A(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iw"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->iw:I

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->p()V

    return-void
.end method

.method public B(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ix"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->ix:I

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->p()V

    return-void
.end method

.method public C(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iy"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->iy:I

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->p()V

    return-void
.end method

.method public D(IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "ix",
            "iy",
            "iw",
            "ih"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->ix:I

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->iy:I

    iput p3, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->iw:I

    iput p4, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->ih:I

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->p()V

    return-void
.end method

.method public E(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "imageWidth",
            "imageHeight"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->imageWidth:I

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->imageHeight:I

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->p()V

    return-void
.end method

.method public b()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->fh:F

    return v0
.end method

.method public c()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->fw:F

    return v0
.end method

.method public d()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->fx:F

    return v0
.end method

.method public e()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->fy:F

    return v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->ih:I

    return v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->ih:I

    return v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->imageHeight:I

    return v0
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->imageWidth:I

    return v0
.end method

.method public j()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->iw:I

    return v0
.end method

.method public k()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->ix:I

    return v0
.end method

.method public l()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->iy:I

    return v0
.end method

.method public m()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->ix:I

    return v0
.end method

.method public n()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->iy:I

    return v0
.end method

.method public o()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->iw:I

    return v0
.end method

.method public final p()V
    .locals 4

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->imageWidth:I

    if-lez v0, :cond_1

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->imageHeight:I

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->ix:I

    int-to-float v2, v2

    int-to-float v3, v0

    div-float/2addr v2, v3

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->fx:F

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->iy:I

    int-to-float v2, v2

    int-to-float v3, v1

    div-float/2addr v2, v3

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->fy:F

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->iw:I

    int-to-float v2, v2

    int-to-float v0, v0

    div-float/2addr v2, v0

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->fw:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->ih:I

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->fh:F

    return-void

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->fx:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->fy:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->fw:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->fh:F

    return-void
.end method

.method public q(IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "ix",
            "iy",
            "iw",
            "ih"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->D(IIII)V

    return-void
.end method

.method public r(IIIIII)V
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
            "ix",
            "iy",
            "iw",
            "ih",
            "imageWidth",
            "imageHeight"
        }
    .end annotation

    invoke-virtual/range {p0 .. p6}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->s(IIIIII)V

    return-void
.end method

.method public s(IIIIII)V
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
            "ix",
            "iy",
            "iw",
            "ih",
            "imageWidth",
            "imageHeight"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->D(IIII)V

    iput p5, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->imageWidth:I

    iput p6, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->imageHeight:I

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->p()V

    return-void
.end method

.method public t(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fh"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->fh:F

    return-void
.end method

.method public u(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fw"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->fw:F

    return-void
.end method

.method public v(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fx"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->fx:F

    return-void
.end method

.method public w(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fy"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->fy:F

    return-void
.end method

.method public x(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ih"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->ih:I

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->p()V

    return-void
.end method

.method public y(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageHeight"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->imageHeight:I

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->p()V

    return-void
.end method

.method public z(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageWidth"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->imageWidth:I

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->p()V

    return-void
.end method
