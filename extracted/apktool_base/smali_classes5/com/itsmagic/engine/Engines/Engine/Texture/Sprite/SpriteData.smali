.class public Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private alphaThreshold:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private framesPerSecond:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private gridCellCountX:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private gridCellCountY:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private gridCellHeight:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private gridCellWidth:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private gridOffsetX:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private gridOffsetY:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private minIslandSizePixels:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private sliceType:LAb/b;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private final sprites:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1e

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->framesPerSecond:I

    sget-object v0, LAb/b;->Automatic:LAb/b;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->sliceType:LAb/b;

    const/4 v0, 0x3

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->alphaThreshold:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->minIslandSizePixels:I

    const/16 v0, 0x20

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->gridCellWidth:I

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->gridCellHeight:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->gridCellCountX:I

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->gridCellCountY:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->gridOffsetX:I

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->gridOffsetY:I

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->sprites:Ljava/util/List;

    return-void
.end method

.method public static d(Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;)Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "spriteData"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;-><init>()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->r(I)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->n()LAb/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->z(LAb/b;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->q(I)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->m()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->y(I)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->j()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->v(I)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->u(I)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->s(I)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->t(I)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->w(I)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->l()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->x(I)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->C()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->B(I)Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;

    move-result-object v2

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->a(Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;)Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->a(Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public A(ILcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "rect"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->sprites:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public B(I)Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->sprites:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;

    return-object p1
.end method

.method public C()I
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->sprites:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public a(Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rect"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->sprites:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rects"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->sprites:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->sprites:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->alphaThreshold:I

    return v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->framesPerSecond:I

    return v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->gridCellCountX:I

    return v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->gridCellCountY:I

    return v0
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->gridCellHeight:I

    return v0
.end method

.method public j()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->gridCellWidth:I

    return v0
.end method

.method public k()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->gridOffsetX:I

    return v0
.end method

.method public l()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->gridOffsetY:I

    return v0
.end method

.method public m()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->minIslandSizePixels:I

    return v0
.end method

.method public n()LAb/b;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->sliceType:LAb/b;

    return-object v0
.end method

.method public o(Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rect"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->sprites:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public p(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->sprites:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public q(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "alphaThreshold"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->alphaThreshold:I

    return-void
.end method

.method public r(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "framesPerSecond"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->framesPerSecond:I

    return-void
.end method

.method public s(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gridCellCountX"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->gridCellCountX:I

    return-void
.end method

.method public t(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gridCellCountY"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->gridCellCountY:I

    return-void
.end method

.method public u(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gridCellHeight"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->gridCellHeight:I

    return-void
.end method

.method public v(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gridCellWidth"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->gridCellWidth:I

    return-void
.end method

.method public w(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gridOffsetX"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->gridOffsetX:I

    return-void
.end method

.method public x(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gridOffsetY"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->gridOffsetY:I

    return-void
.end method

.method public y(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "minIslandSizePixels"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->minIslandSizePixels:I

    return-void
.end method

.method public z(LAb/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sliceType"
        }
    .end annotation

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, LAb/b;->Automatic:LAb/b;

    :goto_0
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->sliceType:LAb/b;

    return-void
.end method
