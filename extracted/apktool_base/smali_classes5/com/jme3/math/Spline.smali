.class public Lcom/jme3/math/Spline;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/util/clone/JmeCloneable;
.implements Lcom/jme3/export/Savable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/math/Spline$SplineType;
    }
.end annotation


# instance fields
.field private CRcontrolPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jme3/math/Vector3f;",
            ">;"
        }
    .end annotation
.end field

.field private basisFunctionDegree:I

.field private controlPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jme3/math/Vector3f;",
            ">;"
        }
    .end annotation
.end field

.field private curveTension:F

.field private cycle:Z

.field private knots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private segmentsLength:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private totalLength:F

.field private type:Lcom/jme3/math/Spline$SplineType;

.field private weights:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/math/Spline;->controlPoints:Ljava/util/List;

    const/high16 v0, 0x3f000000    # 0.5f

    .line 3
    iput v0, p0, Lcom/jme3/math/Spline;->curveTension:F

    .line 4
    sget-object v0, Lcom/jme3/math/Spline$SplineType;->CatmullRom:Lcom/jme3/math/Spline$SplineType;

    iput-object v0, p0, Lcom/jme3/math/Spline;->type:Lcom/jme3/math/Spline$SplineType;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Spline$SplineType;Ljava/util/List;FZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/math/Spline$SplineType;",
            "Ljava/util/List<",
            "Lcom/jme3/math/Vector3f;",
            ">;FZ)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/math/Spline;->controlPoints:Ljava/util/List;

    const/high16 v1, 0x3f000000    # 0.5f

    .line 20
    iput v1, p0, Lcom/jme3/math/Spline;->curveTension:F

    .line 21
    sget-object v1, Lcom/jme3/math/Spline$SplineType;->CatmullRom:Lcom/jme3/math/Spline$SplineType;

    iput-object v1, p0, Lcom/jme3/math/Spline;->type:Lcom/jme3/math/Spline$SplineType;

    .line 22
    sget-object v1, Lcom/jme3/math/Spline$SplineType;->Nurb:Lcom/jme3/math/Spline$SplineType;

    if-eq p1, v1, :cond_0

    .line 23
    iput-object p1, p0, Lcom/jme3/math/Spline;->type:Lcom/jme3/math/Spline$SplineType;

    .line 24
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 25
    iput p3, p0, Lcom/jme3/math/Spline;->curveTension:F

    .line 26
    iput-boolean p4, p0, Lcom/jme3/math/Spline;->cycle:Z

    .line 27
    invoke-direct {p0}, Lcom/jme3/math/Spline;->computeTotalLength()V

    return-void

    .line 28
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "To create NURBS spline use: \'public Spline(Vector3f[] controlPoints, float[] weights, float[] nurbKnots)\' constructor!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lcom/jme3/math/Spline$SplineType;[Lcom/jme3/math/Vector3f;FZ)V
    .locals 3

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/math/Spline;->controlPoints:Ljava/util/List;

    const/high16 v0, 0x3f000000    # 0.5f

    .line 7
    iput v0, p0, Lcom/jme3/math/Spline;->curveTension:F

    .line 8
    sget-object v0, Lcom/jme3/math/Spline$SplineType;->CatmullRom:Lcom/jme3/math/Spline$SplineType;

    iput-object v0, p0, Lcom/jme3/math/Spline;->type:Lcom/jme3/math/Spline$SplineType;

    .line 9
    sget-object v0, Lcom/jme3/math/Spline$SplineType;->Nurb:Lcom/jme3/math/Spline$SplineType;

    if-eq p1, v0, :cond_1

    const/4 v0, 0x0

    .line 10
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 11
    aget-object v1, p2, v0

    .line 12
    iget-object v2, p0, Lcom/jme3/math/Spline;->controlPoints:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 13
    :cond_0
    iput-object p1, p0, Lcom/jme3/math/Spline;->type:Lcom/jme3/math/Spline$SplineType;

    .line 14
    iput p3, p0, Lcom/jme3/math/Spline;->curveTension:F

    .line 15
    iput-boolean p4, p0, Lcom/jme3/math/Spline;->cycle:Z

    .line 16
    invoke-direct {p0}, Lcom/jme3/math/Spline;->computeTotalLength()V

    return-void

    .line 17
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "To create NURBS spline use: \'public Spline(Vector3f[] controlPoints, float[] weights, float[] nurbKnots)\' constructor!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jme3/math/Vector4f;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/math/Spline;->controlPoints:Ljava/util/List;

    const/high16 v0, 0x3f000000    # 0.5f

    .line 31
    iput v0, p0, Lcom/jme3/math/Spline;->curveTension:F

    .line 32
    sget-object v0, Lcom/jme3/math/Spline$SplineType;->CatmullRom:Lcom/jme3/math/Spline$SplineType;

    iput-object v0, p0, Lcom/jme3/math/Spline;->type:Lcom/jme3/math/Spline$SplineType;

    const/4 v0, 0x0

    move v1, v0

    .line 33
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 34
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    add-int/lit8 v1, v1, 0x1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_0

    goto :goto_0

    .line 35
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The knots values cannot decrease!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 36
    :cond_1
    sget-object v1, Lcom/jme3/math/Spline$SplineType;->Nurb:Lcom/jme3/math/Spline$SplineType;

    iput-object v1, p0, Lcom/jme3/math/Spline;->type:Lcom/jme3/math/Spline$SplineType;

    .line 37
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/jme3/math/Spline;->weights:[F

    .line 38
    iput-object p2, p0, Lcom/jme3/math/Spline;->knots:Ljava/util/List;

    .line 39
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    iget-object v1, p0, Lcom/jme3/math/Spline;->weights:[F

    array-length v1, v1

    sub-int/2addr p2, v1

    iput p2, p0, Lcom/jme3/math/Spline;->basisFunctionDegree:I

    .line 40
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-ge v0, p2, :cond_2

    .line 41
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/math/Vector4f;

    .line 42
    iget-object v1, p0, Lcom/jme3/math/Spline;->controlPoints:Ljava/util/List;

    new-instance v2, Lcom/jme3/math/Vector3f;

    iget v3, p2, Lcom/jme3/math/Vector4f;->x:F

    iget v4, p2, Lcom/jme3/math/Vector4f;->y:F

    iget v5, p2, Lcom/jme3/math/Vector4f;->z:F

    invoke-direct {v2, v3, v4, v5}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    iget-object v1, p0, Lcom/jme3/math/Spline;->weights:[F

    iget p2, p2, Lcom/jme3/math/Vector4f;->w:F

    aput p2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 44
    :cond_2
    iget-object p1, p0, Lcom/jme3/math/Spline;->knots:Ljava/util/List;

    iget p2, p0, Lcom/jme3/math/Spline;->basisFunctionDegree:I

    invoke-static {p1, p2}, Lcom/jme3/math/CurveAndSurfaceMath;->prepareNurbsKnots(Ljava/util/List;I)V

    .line 45
    invoke-direct {p0}, Lcom/jme3/math/Spline;->computeTotalLength()V

    return-void
.end method

.method private computeBezierLength()V
    .locals 6

    iget-object v0, p0, Lcom/jme3/math/Spline;->controlPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/jme3/math/Spline;->controlPoints:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/jme3/math/Spline;->controlPoints:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/math/Vector3f;

    iget-object v3, p0, Lcom/jme3/math/Spline;->controlPoints:Ljava/util/List;

    add-int/lit8 v4, v0, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jme3/math/Vector3f;

    iget-object v4, p0, Lcom/jme3/math/Spline;->controlPoints:Ljava/util/List;

    add-int/lit8 v5, v0, 0x2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jme3/math/Vector3f;

    iget-object v5, p0, Lcom/jme3/math/Spline;->controlPoints:Ljava/util/List;

    add-int/lit8 v0, v0, 0x3

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jme3/math/Vector3f;

    invoke-static {v2, v3, v4, v5}, Lcom/jme3/math/FastMath;->getBezierP1toP2Length(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)F

    move-result v2

    iget-object v3, p0, Lcom/jme3/math/Spline;->segmentsLength:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v3, p0, Lcom/jme3/math/Spline;->totalLength:F

    add-float/2addr v3, v2

    iput v3, p0, Lcom/jme3/math/Spline;->totalLength:F

    goto :goto_0

    :cond_0
    return-void
.end method

.method private computeCatmulLength()V
    .locals 11

    iget-object v0, p0, Lcom/jme3/math/Spline;->controlPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/jme3/math/Spline;->controlPoints:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/jme3/math/Spline;->CRcontrolPoints:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/jme3/math/Vector3f;

    iget-object v2, p0, Lcom/jme3/math/Spline;->CRcontrolPoints:Ljava/util/List;

    add-int/lit8 v10, v0, 0x1

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/jme3/math/Vector3f;

    iget-object v2, p0, Lcom/jme3/math/Spline;->CRcontrolPoints:Ljava/util/List;

    add-int/lit8 v5, v0, 0x2

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/jme3/math/Vector3f;

    iget-object v2, p0, Lcom/jme3/math/Spline;->CRcontrolPoints:Ljava/util/List;

    add-int/lit8 v0, v0, 0x3

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/jme3/math/Vector3f;

    const/high16 v8, 0x3f800000    # 1.0f

    iget v9, p0, Lcom/jme3/math/Spline;->curveTension:F

    const/4 v7, 0x0

    invoke-static/range {v3 .. v9}, Lcom/jme3/math/FastMath;->getCatmullRomP1toP2Length(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;FFF)F

    move-result v0

    iget-object v2, p0, Lcom/jme3/math/Spline;->segmentsLength:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v2, p0, Lcom/jme3/math/Spline;->totalLength:F

    add-float/2addr v2, v0

    iput v2, p0, Lcom/jme3/math/Spline;->totalLength:F

    move v0, v10

    goto :goto_0

    :cond_0
    return-void
.end method

.method private computeNurbLength()V
    .locals 0

    return-void
.end method

.method private computeTotalLength()V
    .locals 5

    const/4 v0, 0x0

    iput v0, p0, Lcom/jme3/math/Spline;->totalLength:F

    iget-object v0, p0, Lcom/jme3/math/Spline;->segmentsLength:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/math/Spline;->segmentsLength:Ljava/util/List;

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :goto_0
    iget-object v0, p0, Lcom/jme3/math/Spline;->type:Lcom/jme3/math/Spline$SplineType;

    sget-object v1, Lcom/jme3/math/Spline$SplineType;->Linear:Lcom/jme3/math/Spline$SplineType;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/jme3/math/Spline;->controlPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_4

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/jme3/math/Spline;->controlPoints:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lcom/jme3/math/Spline;->controlPoints:Ljava/util/List;

    add-int/lit8 v3, v0, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/math/Vector3f;

    iget-object v4, p0, Lcom/jme3/math/Spline;->controlPoints:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Vector3f;

    invoke-virtual {v2, v0}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/math/Vector3f;->length()F

    move-result v0

    iget-object v2, p0, Lcom/jme3/math/Spline;->segmentsLength:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v2, p0, Lcom/jme3/math/Spline;->totalLength:F

    add-float/2addr v2, v0

    iput v2, p0, Lcom/jme3/math/Spline;->totalLength:F

    move v0, v3

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/jme3/math/Spline$SplineType;->Bezier:Lcom/jme3/math/Spline$SplineType;

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/jme3/math/Spline;->computeBezierLength()V

    goto :goto_2

    :cond_2
    sget-object v1, Lcom/jme3/math/Spline$SplineType;->Nurb:Lcom/jme3/math/Spline$SplineType;

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lcom/jme3/math/Spline;->computeNurbLength()V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/jme3/math/Spline;->controlPoints:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/jme3/math/Spline;->initCatmullRomWayPoints(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/jme3/math/Spline;->computeCatmulLength()V

    :cond_4
    :goto_2
    return-void
.end method

.method private initCatmullRomWayPoints(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jme3/math/Vector3f;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/math/Spline;->CRcontrolPoints:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/math/Spline;->CRcontrolPoints:Ljava/util/List;

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    iget-boolean v2, p0, Lcom/jme3/math/Spline;->cycle:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/jme3/math/Spline;->CRcontrolPoints:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jme3/math/Vector3f;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/jme3/math/Spline;->CRcontrolPoints:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jme3/math/Vector3f;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jme3/math/Vector3f;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jme3/math/Vector3f;

    invoke-virtual {v6, v4}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jme3/math/Vector3f;

    iget-object v5, p0, Lcom/jme3/math/Spline;->CRcontrolPoints:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    iget-boolean v2, p0, Lcom/jme3/math/Spline;->cycle:Z

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/jme3/math/Spline;->CRcontrolPoints:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/math/Vector3f;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lcom/jme3/math/Spline;->CRcontrolPoints:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jme3/math/Vector3f;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/math/Vector3f;

    add-int/lit8 v0, v0, -0x2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, p1}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/jme3/math/Vector3f;->add(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    return-void
.end method


# virtual methods
.method public addControlPoint(Lcom/jme3/math/Vector3f;)V
    .locals 4

    iget-object v0, p0, Lcom/jme3/math/Spline;->controlPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-le v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/jme3/math/Spline;->cycle:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jme3/math/Spline;->controlPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/jme3/math/Spline;->controlPoints:Ljava/util/List;

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/jme3/math/Spline;->controlPoints:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lt p1, v2, :cond_1

    iget-boolean p1, p0, Lcom/jme3/math/Spline;->cycle:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/jme3/math/Spline;->controlPoints:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Vector3f;

    invoke-virtual {v0}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object p1, p0, Lcom/jme3/math/Spline;->controlPoints:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v1, :cond_2

    invoke-direct {p0}, Lcom/jme3/math/Spline;->computeTotalLength()V

    :cond_2
    return-void
.end method

.method public clearControlPoints()V
    .locals 1

    iget-object v0, p0, Lcom/jme3/math/Spline;->controlPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/jme3/math/Spline;->totalLength:F

    return-void
.end method

.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 1

    iget-object p2, p0, Lcom/jme3/math/Spline;->controlPoints:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Lcom/jme3/math/Spline;->controlPoints:Ljava/util/List;

    iget-object p2, p0, Lcom/jme3/math/Spline;->segmentsLength:Ljava/util/List;

    if-eqz p2, :cond_0

    new-instance p2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/jme3/math/Spline;->segmentsLength:Ljava/util/List;

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p2, p0, Lcom/jme3/math/Spline;->segmentsLength:Ljava/util/List;

    :cond_0
    iget-object p2, p0, Lcom/jme3/math/Spline;->CRcontrolPoints:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Lcom/jme3/math/Spline;->CRcontrolPoints:Ljava/util/List;

    iget-object p2, p0, Lcom/jme3/math/Spline;->knots:Ljava/util/List;

    if-eqz p2, :cond_1

    new-instance p2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/jme3/math/Spline;->knots:Ljava/util/List;

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p2, p0, Lcom/jme3/math/Spline;->knots:Ljava/util/List;

    :cond_1
    iget-object p2, p0, Lcom/jme3/math/Spline;->weights:[F

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    iput-object p1, p0, Lcom/jme3/math/Spline;->weights:[F

    return-void
.end method

.method public getBasisFunctionDegree()I
    .locals 1

    iget v0, p0, Lcom/jme3/math/Spline;->basisFunctionDegree:I

    return v0
.end method

.method public getControlPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/jme3/math/Vector3f;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/math/Spline;->controlPoints:Ljava/util/List;

    return-object v0
.end method

.method public getCurveTension()F
    .locals 1

    iget v0, p0, Lcom/jme3/math/Spline;->curveTension:F

    return v0
.end method

.method public getKnots()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/math/Spline;->knots:Ljava/util/List;

    return-object v0
.end method

.method public getMaxNurbKnot()F
    .locals 2

    iget-object v0, p0, Lcom/jme3/math/Spline;->knots:Ljava/util/List;

    iget-object v1, p0, Lcom/jme3/math/Spline;->weights:[F

    array-length v1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getMinNurbKnot()F
    .locals 2

    iget-object v0, p0, Lcom/jme3/math/Spline;->knots:Ljava/util/List;

    iget v1, p0, Lcom/jme3/math/Spline;->basisFunctionDegree:I

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getSegmentsLength()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/math/Spline;->segmentsLength:Ljava/util/List;

    return-object v0
.end method

.method public getTotalLength()F
    .locals 1

    iget v0, p0, Lcom/jme3/math/Spline;->totalLength:F

    return v0
.end method

.method public getType()Lcom/jme3/math/Spline$SplineType;
    .locals 1

    iget-object v0, p0, Lcom/jme3/math/Spline;->type:Lcom/jme3/math/Spline$SplineType;

    return-object v0
.end method

.method public getWeights()[F
    .locals 1

    iget-object v0, p0, Lcom/jme3/math/Spline;->weights:[F

    return-object v0
.end method

.method public interpolate(FILcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 7

    if-nez p3, :cond_0

    new-instance p3, Lcom/jme3/math/Vector3f;

    invoke-direct {p3}, Lcom/jme3/math/Vector3f;-><init>()V

    :cond_0
    iget-object v0, p0, Lcom/jme3/math/Spline;->type:Lcom/jme3/math/Spline$SplineType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    const/4 v2, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    if-eq v0, v2, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-static {p1, p0, p3}, Lcom/jme3/math/CurveAndSurfaceMath;->interpolateNurbs(FLcom/jme3/math/Spline;Lcom/jme3/math/Vector3f;)V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/jme3/math/Spline;->controlPoints:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lcom/jme3/math/Spline;->controlPoints:Ljava/util/List;

    add-int/lit8 v3, p2, 0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lcom/jme3/math/Spline;->controlPoints:Ljava/util/List;

    add-int/lit8 v4, p2, 0x2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lcom/jme3/math/Spline;->controlPoints:Ljava/util/List;

    add-int/2addr p2, v2

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/math/Vector3f;

    move v0, p1

    move-object v2, v3

    move-object v3, v4

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/jme3/math/FastMath;->interpolateBezier(FLcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/jme3/math/Spline;->curveTension:F

    iget-object v0, p0, Lcom/jme3/math/Spline;->CRcontrolPoints:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lcom/jme3/math/Spline;->CRcontrolPoints:Ljava/util/List;

    add-int/lit8 v4, p2, 0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lcom/jme3/math/Spline;->CRcontrolPoints:Ljava/util/List;

    add-int/lit8 v5, p2, 0x2

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lcom/jme3/math/Spline;->CRcontrolPoints:Ljava/util/List;

    add-int/2addr p2, v2

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/math/Vector3f;

    move v0, p1

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/jme3/math/FastMath;->interpolateCatmullRom(FFLcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/jme3/math/Spline;->controlPoints:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Vector3f;

    iget-object v2, p0, Lcom/jme3/math/Spline;->controlPoints:Ljava/util/List;

    add-int/2addr p2, v1

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/math/Vector3f;

    invoke-static {p1, v0, p2, p3}, Lcom/jme3/math/FastMath;->interpolateLinear(FLcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    :goto_0
    return-object p3
.end method

.method public isCycle()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/math/Spline;->cycle:Z

    return v0
.end method

.method public jmeClone()Lcom/jme3/math/Spline;
    .locals 2

    .line 2
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Spline;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic jmeClone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/jme3/math/Spline;->jmeClone()Lcom/jme3/math/Spline;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "controlPoints"

    invoke-interface {p1, v1, v0}, Lcom/jme3/export/InputCapsule;->readSavableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/math/Spline;->controlPoints:Ljava/util/List;

    const-string v0, "segmentsLength"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloatArray(Ljava/lang/String;[F)[F

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    array-length v4, v0

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/jme3/math/Spline;->segmentsLength:Ljava/util/List;

    move v3, v2

    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_0

    iget-object v4, p0, Lcom/jme3/math/Spline;->segmentsLength:Ljava/util/List;

    aget v5, v0, v3

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-class v0, Lcom/jme3/math/Spline$SplineType;

    sget-object v3, Lcom/jme3/math/Spline$SplineType;->CatmullRom:Lcom/jme3/math/Spline$SplineType;

    const-string v4, "type"

    invoke-interface {p1, v4, v0, v3}, Lcom/jme3/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Spline$SplineType;

    iput-object v0, p0, Lcom/jme3/math/Spline;->type:Lcom/jme3/math/Spline$SplineType;

    const-string v0, "totalLength"

    const/4 v3, 0x0

    invoke-interface {p1, v0, v3}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/math/Spline;->totalLength:F

    const-string v0, "CRControlPoints"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/math/Spline;->CRcontrolPoints:Ljava/util/List;

    const-string v0, "curveTension"

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-interface {p1, v0, v3}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/math/Spline;->curveTension:F

    const-string v0, "cycle"

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jme3/math/Spline;->cycle:Z

    const-string v0, "knots"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloatArray(Ljava/lang/String;[F)[F

    move-result-object v0

    if-nez v0, :cond_1

    iput-object v1, p0, Lcom/jme3/math/Spline;->knots:Ljava/util/List;

    goto :goto_2

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    array-length v4, v0

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/jme3/math/Spline;->knots:Ljava/util/List;

    array-length v3, v0

    move v4, v2

    :goto_1
    if-ge v4, v3, :cond_2

    aget v5, v0, v4

    iget-object v6, p0, Lcom/jme3/math/Spline;->knots:Ljava/util/List;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    const-string v0, "weights"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloatArray(Ljava/lang/String;[F)[F

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/math/Spline;->weights:[F

    const-string v0, "basisFunctionDegree"

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/jme3/math/Spline;->basisFunctionDegree:I

    return-void
.end method

.method public removeControlPoint(Lcom/jme3/math/Vector3f;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/math/Spline;->controlPoints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/jme3/math/Spline;->controlPoints:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    invoke-direct {p0}, Lcom/jme3/math/Spline;->computeTotalLength()V

    :cond_0
    return-void
.end method

.method public setCurveTension(F)V
    .locals 1

    iput p1, p0, Lcom/jme3/math/Spline;->curveTension:F

    iget-object p1, p0, Lcom/jme3/math/Spline;->type:Lcom/jme3/math/Spline$SplineType;

    sget-object v0, Lcom/jme3/math/Spline$SplineType;->CatmullRom:Lcom/jme3/math/Spline$SplineType;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/jme3/math/Spline;->getControlPoints()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/jme3/math/Spline;->computeTotalLength()V

    :cond_0
    return-void
.end method

.method public setCycle(Z)V
    .locals 2

    iget-object v0, p0, Lcom/jme3/math/Spline;->type:Lcom/jme3/math/Spline$SplineType;

    sget-object v1, Lcom/jme3/math/Spline$SplineType;->Nurb:Lcom/jme3/math/Spline$SplineType;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/jme3/math/Spline;->controlPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/jme3/math/Spline;->cycle:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/jme3/math/Spline;->controlPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    iget-boolean v0, p0, Lcom/jme3/math/Spline;->cycle:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/jme3/math/Spline;->controlPoints:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/math/Vector3f;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iput-boolean p1, p0, Lcom/jme3/math/Spline;->cycle:Z

    invoke-direct {p0}, Lcom/jme3/math/Spline;->computeTotalLength()V

    goto :goto_0

    :cond_2
    iput-boolean p1, p0, Lcom/jme3/math/Spline;->cycle:Z

    :cond_3
    :goto_0
    return-void
.end method

.method public setType(Lcom/jme3/math/Spline$SplineType;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/math/Spline;->type:Lcom/jme3/math/Spline$SplineType;

    invoke-direct {p0}, Lcom/jme3/math/Spline;->computeTotalLength()V

    return-void
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/math/Spline;->controlPoints:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    const-string v1, "controlPoints"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->writeSavableArrayList(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/jme3/math/Spline;->type:Lcom/jme3/math/Spline$SplineType;

    const-string v1, "type"

    sget-object v3, Lcom/jme3/math/Spline$SplineType;->CatmullRom:Lcom/jme3/math/Spline$SplineType;

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget-object v0, p0, Lcom/jme3/math/Spline;->segmentsLength:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [F

    move v3, v1

    :goto_0
    iget-object v4, p0, Lcom/jme3/math/Spline;->segmentsLength:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Lcom/jme3/math/Spline;->segmentsLength:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    aput v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move-object v0, v2

    :cond_1
    const-string v3, "segmentsLength"

    invoke-interface {p1, v0, v3, v2}, Lcom/jme3/export/OutputCapsule;->write([FLjava/lang/String;[F)V

    iget v0, p0, Lcom/jme3/math/Spline;->totalLength:F

    const-string v3, "totalLength"

    const/4 v4, 0x0

    invoke-interface {p1, v0, v3, v4}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget-object v0, p0, Lcom/jme3/math/Spline;->CRcontrolPoints:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    const-string v3, "CRControlPoints"

    invoke-interface {p1, v0, v3, v2}, Lcom/jme3/export/OutputCapsule;->writeSavableArrayList(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;)V

    iget v0, p0, Lcom/jme3/math/Spline;->curveTension:F

    const-string v3, "curveTension"

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-interface {p1, v0, v3, v4}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget-boolean v0, p0, Lcom/jme3/math/Spline;->cycle:Z

    const-string v3, "cycle"

    invoke-interface {p1, v0, v3, v1}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    iget-object v0, p0, Lcom/jme3/math/Spline;->knots:Ljava/util/List;

    if-nez v0, :cond_2

    move-object v3, v2

    goto :goto_2

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [F

    move v4, v1

    :goto_1
    if-ge v4, v0, :cond_3

    iget-object v5, p0, Lcom/jme3/math/Spline;->knots:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    const-string v0, "knots"

    invoke-interface {p1, v3, v0, v2}, Lcom/jme3/export/OutputCapsule;->write([FLjava/lang/String;[F)V

    iget-object v0, p0, Lcom/jme3/math/Spline;->weights:[F

    const-string v3, "weights"

    invoke-interface {p1, v0, v3, v2}, Lcom/jme3/export/OutputCapsule;->write([FLjava/lang/String;[F)V

    iget v0, p0, Lcom/jme3/math/Spline;->basisFunctionDegree:I

    const-string v2, "basisFunctionDegree"

    invoke-interface {p1, v0, v2, v1}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    return-void
.end method
