.class public Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field public A:I

.field public B:I

.field public C:LK9/d;

.field public D:Z

.field public E:Z

.field public F:I

.field public G:F

.field public H:F

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Landroid/content/Context;

.field public e:F

.field public f:F

.field public g:I

.field public h:Z

.field public final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public l:Landroid/graphics/PointF;

.field public m:Landroid/graphics/Bitmap;

.field public n:Landroid/graphics/Canvas;

.field public final o:Landroid/graphics/Path;

.field public final p:Landroid/graphics/Paint;

.field public final q:Landroid/graphics/Paint;

.field public final r:Landroid/graphics/Paint;

.field public final s:Landroid/graphics/Paint;

.field public final t:Landroid/graphics/Paint;

.field public u:I

.field public v:I

.field public w:I

.field public x:Landroid/graphics/PointF;

.field public y:Landroid/graphics/PointF;

.field public z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;FF)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "c",
            "vgW",
            "vgH"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 47
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->g:I

    .line 48
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->h:Z

    .line 49
    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->i:Ljava/util/List;

    const/16 v2, 0xc

    .line 50
    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->u:I

    const/16 v2, 0x14

    .line 51
    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->v:I

    .line 52
    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->w:I

    const/4 v2, -0x1

    .line 53
    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->z:I

    const/16 v2, 0x32

    .line 54
    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->A:I

    const/16 v2, 0x64

    .line 55
    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->B:I

    const/4 v2, 0x1

    .line 56
    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->D:Z

    .line 57
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->E:Z

    const/16 v0, 0xc8

    .line 58
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->F:I

    .line 59
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->d:Landroid/content/Context;

    .line 60
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->o:Landroid/graphics/Path;

    .line 61
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->p:Landroid/graphics/Paint;

    .line 62
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->q:Landroid/graphics/Paint;

    .line 63
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 64
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setDither(Z)V

    const/high16 v3, -0x1000000

    .line 65
    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 66
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 67
    sget-object v4, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 68
    sget-object v4, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 69
    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->u:I

    int-to-float v4, v4

    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 70
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->r:Landroid/graphics/Paint;

    .line 71
    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 72
    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->u:I

    add-int/2addr v4, v0

    int-to-float v0, v4

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 73
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 74
    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->e:F

    .line 75
    iput p3, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->f:F

    .line 76
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->x:Landroid/graphics/PointF;

    .line 77
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->y:Landroid/graphics/PointF;

    .line 78
    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->x:Landroid/graphics/PointF;

    const/4 p3, 0x0

    iput p3, p2, Landroid/graphics/PointF;->x:F

    .line 79
    iget p3, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->f:F

    iput p3, p2, Landroid/graphics/PointF;->y:F

    .line 80
    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->e:F

    iget p3, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->A:I

    int-to-float v0, p3

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v0, v4

    sub-float/2addr p2, v0

    iput p2, p1, Landroid/graphics/PointF;->x:F

    int-to-float p2, p3

    mul-float/2addr p2, v4

    .line 81
    iput p2, p1, Landroid/graphics/PointF;->y:F

    .line 82
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 83
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->x:Landroid/graphics/PointF;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    new-instance p1, Landroid/graphics/PointF;

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->e:F

    const/high16 p3, 0x40400000    # 3.0f

    div-float/2addr p2, p3

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->f:F

    mul-float/2addr v0, v4

    div-float/2addr v0, p3

    invoke-direct {p1, p2, v0}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    new-instance p1, Landroid/graphics/PointF;

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->e:F

    mul-float/2addr p2, v4

    div-float/2addr p2, p3

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->f:F

    div-float/2addr v0, p3

    invoke-direct {p1, p2, v0}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->y:Landroid/graphics/PointF;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->s:Landroid/graphics/Paint;

    .line 88
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 89
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const p2, -0x333334

    .line 90
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 p2, 0x40a00000    # 5.0f

    .line 91
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 92
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->t:Landroid/graphics/Paint;

    .line 93
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 94
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 95
    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 96
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 97
    new-instance p1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->j:Ljava/util/List;

    .line 98
    new-instance p1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->k:Ljava/util/List;

    .line 99
    new-instance p1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->b:Ljava/util/List;

    .line 100
    new-instance p1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->c:Ljava/util/List;

    .line 101
    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->e:F

    float-to-int p1, p1

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->f:F

    float-to-int p2, p2

    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->m:Landroid/graphics/Bitmap;

    .line 102
    new-instance p1, Landroid/graphics/Canvas;

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->m:Landroid/graphics/Bitmap;

    invoke-direct {p1, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->n:Landroid/graphics/Canvas;

    .line 103
    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->A:I

    int-to-float p3, p2

    int-to-float p2, p2

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "c",
            "attrs"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->g:I

    .line 3
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->h:Z

    .line 4
    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->i:Ljava/util/List;

    const/16 v1, 0xc

    .line 5
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->u:I

    const/16 v1, 0x14

    .line 6
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->v:I

    .line 7
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->w:I

    const/4 v2, -0x1

    .line 8
    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->z:I

    const/16 v2, 0x32

    .line 9
    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->A:I

    const/16 v2, 0x64

    .line 10
    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->B:I

    const/4 v2, 0x1

    .line 11
    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->D:Z

    .line 12
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->E:Z

    const/16 v3, 0xc8

    .line 13
    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->F:I

    .line 14
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->d:Landroid/content/Context;

    .line 15
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->o:Landroid/graphics/Path;

    .line 16
    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->p:Landroid/graphics/Paint;

    .line 17
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->q:Landroid/graphics/Paint;

    .line 18
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 19
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 20
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 21
    sget-object v5, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 22
    sget-object v5, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 23
    iget v5, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->u:I

    int-to-float v5, v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 24
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->r:Landroid/graphics/Paint;

    .line 25
    iget v5, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->u:I

    add-int/2addr v5, v4

    int-to-float v4, v5

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 26
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 27
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->s:Landroid/graphics/Paint;

    .line 28
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 29
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const v4, -0x333334

    .line 30
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v4, 0x40a00000    # 5.0f

    .line 31
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 32
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->t:Landroid/graphics/Paint;

    .line 33
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 34
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/high16 v5, -0x1000000

    .line 35
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 36
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 37
    new-instance v3, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v3}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->j:Ljava/util/List;

    .line 38
    new-instance v3, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v3}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->k:Ljava/util/List;

    .line 39
    new-instance v3, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v3}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->b:Ljava/util/List;

    .line 40
    new-instance v3, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v3}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->c:Ljava/util/List;

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v3, Lt3/b$s;->vj:[I

    invoke-virtual {p1, p2, v3, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/high16 p2, 0x41400000    # 12.0f

    .line 42
    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->u:I

    .line 43
    invoke-virtual {p0, p2}, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->setLineThickness(I)V

    const/4 p2, 0x2

    .line 44
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->w:I

    .line 45
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->setTouchTolerance(I)V

    return-void
.end method


# virtual methods
.method public a(FF)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->i:Ljava/util/List;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Landroid/graphics/PointF;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointF"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c()V
    .locals 12

    new-instance v0, Landroid/graphics/PathMeasure;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->o:Landroid/graphics/Path;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    const/4 v1, 0x2

    new-array v3, v1, [F

    new-array v1, v1, [F

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    move v4, v2

    :goto_0
    int-to-float v5, v4

    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v6

    cmpg-float v6, v5, v6

    if-gtz v6, :cond_0

    invoke-virtual {v0, v5, v3, v1}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->b:Ljava/util/List;

    new-instance v6, Landroid/graphics/PointF;

    aget v7, v3, v2

    const/4 v8, 0x1

    aget v9, v3, v8

    invoke-direct {v6, v7, v9}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Landroid/graphics/PointF;

    aget v6, v3, v2

    iget v7, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->e:F

    iget v9, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->A:I

    int-to-float v10, v9

    const/high16 v11, 0x40000000    # 2.0f

    mul-float/2addr v10, v11

    sub-float/2addr v7, v10

    div-float/2addr v6, v7

    aget v7, v3, v8

    iget v8, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->f:F

    int-to-float v9, v9

    mul-float/2addr v9, v11

    sub-float/2addr v8, v9

    div-float/2addr v7, v8

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v8, v7

    invoke-direct {v5, v6, v8}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->c:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final e()V
    .locals 15

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->n:Landroid/graphics/Canvas;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->z:I

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->n:Landroid/graphics/Canvas;

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->f:F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->A:I

    int-to-float v1, v1

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v1, v8

    sub-float v6, v0, v1

    iget-object v7, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->t:Landroid/graphics/Paint;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v9, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->n:Landroid/graphics/Canvas;

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->f:F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->A:I

    int-to-float v2, v1

    mul-float/2addr v2, v8

    sub-float v11, v0, v2

    iget v12, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->e:F

    int-to-float v1, v1

    mul-float/2addr v1, v8

    sub-float v13, v0, v1

    iget-object v14, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->t:Landroid/graphics/Paint;

    const/4 v10, 0x0

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->e:F

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->A:I

    int-to-float v4, v3

    mul-float/2addr v4, v8

    sub-float/2addr v2, v4

    float-to-int v2, v2

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->B:I

    div-int/2addr v2, v4

    if-ge v1, v2, :cond_0

    iget-object v9, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->n:Landroid/graphics/Canvas;

    add-int/lit8 v1, v1, 0x1

    mul-int v2, v4, v1

    int-to-float v10, v2

    mul-int/2addr v4, v1

    int-to-float v12, v4

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->f:F

    int-to-float v3, v3

    mul-float/2addr v3, v8

    sub-float v13, v2, v3

    iget-object v14, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->s:Landroid/graphics/Paint;

    const/4 v11, 0x0

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_1
    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->f:F

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->A:I

    int-to-float v4, v3

    mul-float/2addr v4, v8

    sub-float v4, v2, v4

    float-to-int v4, v4

    iget v5, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->B:I

    div-int/2addr v4, v5

    if-ge v1, v4, :cond_1

    iget-object v9, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->n:Landroid/graphics/Canvas;

    int-to-float v4, v3

    mul-float/2addr v4, v8

    sub-float v4, v2, v4

    add-int/lit8 v1, v1, 0x1

    mul-int v6, v5, v1

    int-to-float v6, v6

    sub-float v11, v4, v6

    iget v12, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->e:F

    int-to-float v3, v3

    mul-float/2addr v3, v8

    sub-float/2addr v2, v3

    mul-int/2addr v5, v1

    int-to-float v3, v5

    sub-float v13, v2, v3

    iget-object v14, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->s:Landroid/graphics/Paint;

    const/4 v10, 0x0

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->n:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->o:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->q:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_2
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->i:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->n:Landroid/graphics/Canvas;

    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->f:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v1

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->A:I

    int-to-float v1, v1

    mul-float/2addr v1, v8

    sub-float/2addr v4, v1

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->v:I

    int-to-float v1, v1

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->r:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v4, v1, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public f(F)F
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "no points yet!"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_0
    cmpg-float v2, p1, v0

    if-ltz v2, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v2

    if-gtz v2, :cond_1

    goto :goto_1

    :cond_1
    :try_start_3
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "x-value needs to be between 0 and 1"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception v2

    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    add-int/lit8 v2, v1, -0x1

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->c:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    cmpl-float v3, p1, v3

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->c:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->c:Ljava/util/List;

    add-int/lit8 v1, v1, -0x2

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->c:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->c:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v1

    div-float/2addr v3, v4

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->c:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->c:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    iget v0, v2, Landroid/graphics/PointF;->x:F

    mul-float/2addr v0, v3

    sub-float/2addr v1, v0

    mul-float/2addr v3, p1

    add-float/2addr v3, v1

    return v3

    :catch_2
    move-exception p1

    goto/16 :goto_3

    :cond_2
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->c:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    cmpg-float v1, p1, v1

    const/4 v3, 0x1

    if-gez v1, :cond_3

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->c:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->c:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v4

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->c:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->c:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v3

    div-float/2addr v1, v4

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->c:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->c:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    iget v0, v2, Landroid/graphics/PointF;->x:F

    mul-float/2addr v0, v1

    sub-float/2addr v3, v0

    mul-float/2addr v1, p1

    add-float/2addr v1, v3

    return v1

    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    if-ge v2, v1, :cond_5

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->c:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-static {v1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->c:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    cmpl-float v1, p1, v1

    if-lez v1, :cond_4

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->c:Ljava/util/List;

    add-int/lit8 v4, v2, 0x1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    cmpg-float v1, p1, v1

    if-gez v1, :cond_4

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->c:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->c:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v0, v1, Landroid/graphics/PointF;->y:F
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    add-float/2addr p1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    return p1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    return v0
.end method

.method public final g(FFFF)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "startX",
            "endX",
            "startY",
            "endY"
        }
    .end annotation

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sub-float/2addr p3, p4

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget p3, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->F:I

    int-to-float p4, p3

    cmpl-float p1, p1, p4

    if-gtz p1, :cond_0

    int-to-float p1, p3

    cmpl-float p1, p2, p1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getEditPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->i:Ljava/util/List;

    return-object v0
.end method

.method public getNormalizedPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->c:Ljava/util/List;

    return-object v0
.end method

.method public final h(FF)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->w:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    cmpl-float v2, p1, v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->w:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    cmpg-float v2, p1, v2

    if-gez v2, :cond_0

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->w:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    cmpl-float v2, p2, v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->w:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    cmpg-float v2, p2, v2

    if-gez v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public i(I)Landroid/graphics/PointF;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idx"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/PointF;

    return-object p1
.end method

.method public j()I
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public k()V
    .locals 13

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->r()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->i:Ljava/util/List;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->j:Ljava/util/List;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->k:Ljava/util/List;

    invoke-static {v0, v1, v2}, LK9/b;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->o:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->o:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->i:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->f:F

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->i:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->A:I

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->moveTo(FF)V

    :goto_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v2, 0x1

    if-le v0, v1, :cond_0

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->o:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->j:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v7, v0, Landroid/graphics/PointF;->x:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->f:F

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->j:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v3

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->A:I

    int-to-float v3, v3

    mul-float/2addr v3, v5

    sub-float v8, v0, v3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->k:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v9, v0, Landroid/graphics/PointF;->x:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->f:F

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->k:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->A:I

    int-to-float v2, v2

    mul-float/2addr v2, v5

    sub-float v10, v0, v2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v11, v0, Landroid/graphics/PointF;->x:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->f:F

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->i:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->A:I

    int-to-float v2, v2

    mul-float/2addr v2, v5

    sub-float v12, v0, v2

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->e()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->h:Z

    return-void
.end method

.method public l(Landroid/graphics/PointF;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointF"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public m()V
    .locals 13

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->l:Landroid/graphics/PointF;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->i:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->r()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->i:Ljava/util/List;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->j:Ljava/util/List;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->k:Ljava/util/List;

    invoke-static {v0, v1, v2}, LK9/b;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->o:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->o:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->i:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->f:F

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->i:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->A:I

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->moveTo(FF)V

    :goto_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v2, 0x1

    if-le v0, v1, :cond_0

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->o:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->j:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v7, v0, Landroid/graphics/PointF;->x:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->f:F

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->j:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v3

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->A:I

    int-to-float v3, v3

    mul-float/2addr v3, v5

    sub-float v8, v0, v3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->k:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v9, v0, Landroid/graphics/PointF;->x:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->f:F

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->k:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->A:I

    int-to-float v2, v2

    mul-float/2addr v2, v5

    sub-float v10, v0, v2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v11, v0, Landroid/graphics/PointF;->x:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->f:F

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->i:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->A:I

    int-to-float v2, v2

    mul-float/2addr v2, v5

    sub-float v12, v0, v2

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->e()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->h:Z

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->l:Landroid/graphics/PointF;

    invoke-virtual {v0}, Landroid/graphics/PointF;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "edit_pt: "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->l:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->C:LK9/d;

    if-eqz v0, :cond_2

    invoke-interface {v0}, LK9/d;->a()V

    :cond_2
    return-void

    :cond_3
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/NoPointSelected;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/NoPointSelected;-><init>()V

    throw v0

    :cond_4
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/MinimalRequiredException;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/MinimalRequiredException;-><init>()V

    throw v0
.end method

.method public n()V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->e()V

    return-void
.end method

.method public o()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->f:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->e:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->g:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    const-string v0, "TAG"

    const-string v1, "reset called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    if-gtz v0, :cond_0

    if-gtz v1, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    :try_start_0
    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->e:F

    int-to-float v1, v1

    cmpl-float v2, v2, v1

    const/4 v3, 0x0

    if-nez v2, :cond_1

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->f:F

    int-to-float v4, v0

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_4

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_2

    :cond_1
    :goto_0
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->e:F

    int-to-float v0, v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->f:F

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->m:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->m:Landroid/graphics/Bitmap;

    :cond_2
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->e:F

    float-to-int v0, v0

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->f:F

    float-to-int v1, v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->m:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->m:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->n:Landroid/graphics/Canvas;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->A:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->g:I

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->E:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_3
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->C:LK9/d;

    if-eqz v0, :cond_4

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->e:F

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->f:F

    invoke-interface {v0, v1, v2}, LK9/d;->c(FF)V

    :cond_4
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->q:Landroid/graphics/Paint;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->u:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->m:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->p:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->g:I

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->o:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->o:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->i:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->f:F

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->i:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v4

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->A:I

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    sub-float/2addr v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->i:Ljava/util/List;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->j:Ljava/util/List;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->k:Ljava/util/List;

    invoke-static {v0, v1, v2}, LK9/b;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    :goto_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_6

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v3, 0x1

    if-le v0, v1, :cond_5

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->o:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->j:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v7, v0, Landroid/graphics/PointF;->x:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->f:F

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->j:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->A:I

    int-to-float v2, v2

    mul-float/2addr v2, v5

    sub-float v8, v0, v2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->k:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v9, v0, Landroid/graphics/PointF;->x:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->f:F

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->k:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->A:I

    int-to-float v2, v2

    mul-float/2addr v2, v5

    sub-float v10, v0, v2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v11, v0, Landroid/graphics/PointF;->x:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->f:F

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->i:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->A:I

    int-to-float v2, v2

    mul-float/2addr v2, v5

    sub-float v12, v0, v2

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    :cond_5
    move v3, v1

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->e()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->g:I

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_7
    :goto_3
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->A:I

    int-to-float v3, v2

    sub-float/2addr v0, v3

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v3, :cond_1

    const/4 p1, 0x2

    if-eq v2, p1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->D:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->l:Landroid/graphics/PointF;

    if-eqz p1, :cond_5

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->e:F

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->A:I

    int-to-float v2, v2

    mul-float/2addr v2, v4

    sub-float/2addr p1, v2

    invoke-static {v5, v0, p1}, LNc/b;->E(FFF)F

    move-result p1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->f:F

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->A:I

    int-to-float v2, v2

    mul-float/2addr v2, v4

    sub-float/2addr v0, v2

    invoke-static {v5, v1, v0}, LNc/b;->E(FFF)F

    move-result v0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->s(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_1

    :cond_1
    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->D:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->l:Landroid/graphics/PointF;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->u()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->c()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->C:LK9/d;

    if-eqz v0, :cond_2

    invoke-interface {v0}, LK9/d;->a()V

    :cond_2
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->C:LK9/d;

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->G:F

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->H:F

    invoke-virtual {p0, v1, v0, v2, p1}, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->g(FFFF)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->C:LK9/d;

    invoke-interface {p1, p0}, LK9/d;->b(Landroid/view/View;)V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->C:LK9/d;

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->G:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->H:F

    :cond_4
    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->D:Z

    if-eqz p1, :cond_5

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->e:F

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->A:I

    int-to-float v2, v2

    mul-float/2addr v2, v4

    sub-float/2addr p1, v2

    invoke-static {v5, v0, p1}, LNc/b;->E(FFF)F

    move-result p1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->f:F

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->A:I

    int-to-float v2, v2

    mul-float/2addr v2, v4

    sub-float/2addr v0, v2

    invoke-static {v5, v1, v0}, LNc/b;->E(FFF)F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->t(FF)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_5
    :goto_1
    return v3
.end method

.method public p()F
    .locals 3

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->e:F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->A:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method public q()F
    .locals 3

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->f:F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->A:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method public final r()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->i:Ljava/util/List;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView$a;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public final s(FF)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "xc",
            "yc"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->l:Landroid/graphics/PointF;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->h:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->r()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->i:Ljava/util/List;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->j:Ljava/util/List;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->k:Ljava/util/List;

    invoke-static {v0, v1, v2}, LK9/b;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->o:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->l:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->e:F

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->A:I

    int-to-float v5, v4

    mul-float/2addr v5, v3

    sub-float/2addr v2, v5

    float-to-int v2, v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iput p1, v0, Landroid/graphics/PointF;->x:F

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->f:F

    sub-float/2addr p1, p2

    int-to-float p2, v4

    mul-float/2addr p2, v3

    sub-float/2addr p1, p2

    iput p1, v0, Landroid/graphics/PointF;->y:F

    goto :goto_1

    :cond_1
    :goto_0
    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->f:F

    sub-float/2addr p1, p2

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->A:I

    int-to-float p2, p2

    mul-float/2addr p2, v3

    sub-float/2addr p1, p2

    iput p1, v0, Landroid/graphics/PointF;->y:F

    :goto_1
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->o:Landroid/graphics/Path;

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->i:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->f:F

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->i:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->A:I

    int-to-float v2, v2

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-virtual {p1, p2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    :goto_2
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->j:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_3

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->i:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p2, v0, 0x1

    if-le p1, p2, :cond_2

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->o:Landroid/graphics/Path;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->j:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/PointF;

    iget v5, p1, Landroid/graphics/PointF;->x:F

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->f:F

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->j:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v1

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->A:I

    int-to-float v1, v1

    mul-float/2addr v1, v3

    sub-float v6, p1, v1

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->k:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/PointF;

    iget v7, p1, Landroid/graphics/PointF;->x:F

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->f:F

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->k:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->A:I

    int-to-float v0, v0

    mul-float/2addr v0, v3

    sub-float v8, p1, v0

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->i:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/PointF;

    iget v9, p1, Landroid/graphics/PointF;->x:F

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->f:F

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->i:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->A:I

    int-to-float v0, v0

    mul-float/2addr v0, v3

    sub-float v10, p1, v0

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    :cond_2
    move v0, p2

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->e()V

    :cond_4
    return-void
.end method

.method public setBackColor(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "backgroundColor"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->z:I

    return-void
.end method

.method public setBorderColor(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->t:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setDotColor(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->r:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setDotThickness(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dotThickness"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->v:I

    return-void
.end method

.method public setEditPoints(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "editPoints"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setEditable(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "editable"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->D:Z

    return-void
.end method

.method public setGridColor(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->s:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setGridSpacing(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gridSpacing"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->B:I

    return-void
.end method

.method public setInternalPadding(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "internalPadding"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->A:I

    return-void
.end method

.method public setLineColor(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->q:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setLineThickness(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "thickness"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->u:I

    return-void
.end method

.method public setListener(LK9/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->C:LK9/d;

    return-void
.end method

.method public setTouchTolerance(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->w:I

    return-void
.end method

.method public final t(FF)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->h(FF)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    const/high16 v4, 0x40000000    # 2.0f

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->i:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    iget v5, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, p1

    float-to-double v5, v5

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    iget v9, v2, Landroid/graphics/PointF;->y:F

    iget v10, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->f:F

    sub-float/2addr v10, p2

    iget v11, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->A:I

    int-to-float v11, v11

    mul-float/2addr v11, v4

    sub-float/2addr v10, v11

    sub-float/2addr v9, v10

    float-to-double v9, v9

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    add-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    iget v6, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->w:I

    int-to-double v6, v6

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_0

    iput-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->h:Z

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->l:Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->e()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->h:Z

    if-nez v1, :cond_4

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->l:Landroid/graphics/PointF;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->i:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->r()V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->j:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->k:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->i:Ljava/util/List;

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->j:Ljava/util/List;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->k:Ljava/util/List;

    invoke-static {p1, p2, v1}, LK9/b;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->o:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->o:Landroid/graphics/Path;

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->i:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->f:F

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->i:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->A:I

    int-to-float v2, v2

    mul-float/2addr v2, v4

    sub-float/2addr v1, v2

    invoke-virtual {p1, p2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    :goto_1
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->j:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_3

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->i:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p2, v0, 0x1

    if-le p1, p2, :cond_2

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->o:Landroid/graphics/Path;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->j:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/PointF;

    iget v6, p1, Landroid/graphics/PointF;->x:F

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->f:F

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->j:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v1

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->A:I

    int-to-float v1, v1

    mul-float/2addr v1, v4

    sub-float v7, p1, v1

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->k:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/PointF;

    iget v8, p1, Landroid/graphics/PointF;->x:F

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->f:F

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->k:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->A:I

    int-to-float v0, v0

    mul-float/2addr v0, v4

    sub-float v9, p1, v0

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->i:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/PointF;

    iget v10, p1, Landroid/graphics/PointF;->x:F

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->f:F

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->i:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->A:I

    int-to-float v0, v0

    mul-float/2addr v0, v4

    sub-float v11, p1, v0

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    :cond_2
    move v0, p2

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->e()V

    iput-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->h:Z

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->l:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/graphics/PointF;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "edit_pt: "

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method public final u()V
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->h:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->c()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->h:Z

    return-void
.end method

.method public v()V
    .locals 13

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->r()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->o:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->o:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->i:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->f:F

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->i:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->A:I

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->i:Ljava/util/List;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->j:Ljava/util/List;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->k:Ljava/util/List;

    invoke-static {v0, v1, v3}, LK9/b;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    move v0, v2

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v3, v0, 0x1

    if-le v1, v3, :cond_0

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->o:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->j:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v7, v1, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->f:F

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->j:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v4

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->A:I

    int-to-float v4, v4

    mul-float/2addr v4, v5

    sub-float v8, v1, v4

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->k:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v9, v1, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->f:F

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->k:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->A:I

    int-to-float v0, v0

    mul-float/2addr v0, v5

    sub-float v10, v1, v0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->i:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v11, v0, Landroid/graphics/PointF;->x:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->f:F

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->i:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->A:I

    int-to-float v1, v1

    mul-float/2addr v1, v5

    sub-float v12, v0, v1

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->c()V

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->g:I

    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Curve needs to have at least 2 points"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
