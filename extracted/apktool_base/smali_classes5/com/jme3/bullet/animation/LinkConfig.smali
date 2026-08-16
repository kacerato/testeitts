.class public Lcom/jme3/bullet/animation/LinkConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lcom/jme3/export/Savable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/jme3/bullet/animation/LinkConfig;",
        ">;",
        "Lcom/jme3/export/Savable;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final logger:Ljava/util/logging/Logger;

.field private static final rotateIdentity:Lcom/jme3/math/Quaternion;

.field private static final tagCenterHeuristic:Ljava/lang/String; = "centerHeuristic"

.field private static final tagMassHeuristic:Ljava/lang/String; = "massHeuristic"

.field private static final tagMassParameter:Ljava/lang/String; = "massParameter"

.field private static final tagRotationOrder:Ljava/lang/String; = "rotationOrder"

.field private static final tagShapeHeuristic:Ljava/lang/String; = "shapeHeuristic"

.field private static final tagShapeScale:Ljava/lang/String; = "shapeScale"


# instance fields
.field private centerHeuristic:Lcom/jme3/bullet/animation/CenterHeuristic;

.field private massHeuristic:Lcom/jme3/bullet/animation/MassHeuristic;

.field private massParameter:F

.field private rotationOrder:Lcom/jme3/bullet/RotationOrder;

.field private shapeHeuristic:Lcom/jme3/bullet/animation/ShapeHeuristic;

.field private shapeScale:Lcom/jme3/math/Vector3f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/bullet/animation/LinkConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/animation/LinkConfig;->logger:Ljava/util/logging/Logger;

    new-instance v0, Lcom/jme3/math/Quaternion;

    invoke-direct {v0}, Lcom/jme3/math/Quaternion;-><init>()V

    sput-object v0, Lcom/jme3/bullet/animation/LinkConfig;->rotateIdentity:Lcom/jme3/math/Quaternion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/jme3/bullet/animation/CenterHeuristic;->Mean:Lcom/jme3/bullet/animation/CenterHeuristic;

    iput-object v0, p0, Lcom/jme3/bullet/animation/LinkConfig;->centerHeuristic:Lcom/jme3/bullet/animation/CenterHeuristic;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 3
    iput v0, p0, Lcom/jme3/bullet/animation/LinkConfig;->massParameter:F

    .line 4
    sget-object v1, Lcom/jme3/bullet/animation/MassHeuristic;->Mass:Lcom/jme3/bullet/animation/MassHeuristic;

    iput-object v1, p0, Lcom/jme3/bullet/animation/LinkConfig;->massHeuristic:Lcom/jme3/bullet/animation/MassHeuristic;

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lcom/jme3/bullet/animation/LinkConfig;->rotationOrder:Lcom/jme3/bullet/RotationOrder;

    .line 6
    sget-object v1, Lcom/jme3/bullet/animation/ShapeHeuristic;->VertexHull:Lcom/jme3/bullet/animation/ShapeHeuristic;

    iput-object v1, p0, Lcom/jme3/bullet/animation/LinkConfig;->shapeHeuristic:Lcom/jme3/bullet/animation/ShapeHeuristic;

    .line 7
    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1, v0, v0, v0}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iput-object v1, p0, Lcom/jme3/bullet/animation/LinkConfig;->shapeScale:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public constructor <init>(F)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v0, "mass"

    invoke-static {p1, v0}, Lif/E;->E(FLjava/lang/String;)Z

    .line 10
    sget-object v0, Lcom/jme3/bullet/animation/CenterHeuristic;->Mean:Lcom/jme3/bullet/animation/CenterHeuristic;

    iput-object v0, p0, Lcom/jme3/bullet/animation/LinkConfig;->centerHeuristic:Lcom/jme3/bullet/animation/CenterHeuristic;

    .line 11
    iput p1, p0, Lcom/jme3/bullet/animation/LinkConfig;->massParameter:F

    .line 12
    sget-object p1, Lcom/jme3/bullet/animation/MassHeuristic;->Mass:Lcom/jme3/bullet/animation/MassHeuristic;

    iput-object p1, p0, Lcom/jme3/bullet/animation/LinkConfig;->massHeuristic:Lcom/jme3/bullet/animation/MassHeuristic;

    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Lcom/jme3/bullet/animation/LinkConfig;->rotationOrder:Lcom/jme3/bullet/RotationOrder;

    .line 14
    sget-object p1, Lcom/jme3/bullet/animation/ShapeHeuristic;->VertexHull:Lcom/jme3/bullet/animation/ShapeHeuristic;

    iput-object p1, p0, Lcom/jme3/bullet/animation/LinkConfig;->shapeHeuristic:Lcom/jme3/bullet/animation/ShapeHeuristic;

    .line 15
    new-instance p1, Lcom/jme3/math/Vector3f;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v0, v0}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iput-object p1, p0, Lcom/jme3/bullet/animation/LinkConfig;->shapeScale:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public constructor <init>(FLcom/jme3/bullet/animation/LinkConfig;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, "mass"

    invoke-static {p1, v0}, Lif/E;->E(FLjava/lang/String;)Z

    .line 18
    const-string v0, "old configuration"

    invoke-static {p2, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 19
    invoke-virtual {p2}, Lcom/jme3/bullet/animation/LinkConfig;->centerHeuristic()Lcom/jme3/bullet/animation/CenterHeuristic;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/bullet/animation/LinkConfig;->centerHeuristic:Lcom/jme3/bullet/animation/CenterHeuristic;

    .line 20
    iput p1, p0, Lcom/jme3/bullet/animation/LinkConfig;->massParameter:F

    .line 21
    sget-object p1, Lcom/jme3/bullet/animation/MassHeuristic;->Mass:Lcom/jme3/bullet/animation/MassHeuristic;

    iput-object p1, p0, Lcom/jme3/bullet/animation/LinkConfig;->massHeuristic:Lcom/jme3/bullet/animation/MassHeuristic;

    const/4 p1, 0x0

    .line 22
    iput-object p1, p0, Lcom/jme3/bullet/animation/LinkConfig;->rotationOrder:Lcom/jme3/bullet/RotationOrder;

    .line 23
    invoke-virtual {p2}, Lcom/jme3/bullet/animation/LinkConfig;->shapeHeuristic()Lcom/jme3/bullet/animation/ShapeHeuristic;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/bullet/animation/LinkConfig;->shapeHeuristic:Lcom/jme3/bullet/animation/ShapeHeuristic;

    .line 24
    invoke-virtual {p2, p1}, Lcom/jme3/bullet/animation/LinkConfig;->shapeScale(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/bullet/animation/LinkConfig;->shapeScale:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public constructor <init>(FLcom/jme3/bullet/animation/MassHeuristic;Lcom/jme3/bullet/animation/ShapeHeuristic;Lcom/jme3/math/Vector3f;Lcom/jme3/bullet/animation/CenterHeuristic;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, "mass parameter"

    invoke-static {p1, v0}, Lif/E;->E(FLjava/lang/String;)Z

    .line 27
    const-string v0, "mass heuristic"

    invoke-static {p2, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 28
    const-string v0, "shape heuristic"

    invoke-static {p3, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 29
    const-string v0, "shape scale"

    invoke-static {p4, v0}, Lif/E;->s(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    .line 30
    const-string v0, "center heuristic"

    invoke-static {p5, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 31
    iput-object p5, p0, Lcom/jme3/bullet/animation/LinkConfig;->centerHeuristic:Lcom/jme3/bullet/animation/CenterHeuristic;

    .line 32
    iput p1, p0, Lcom/jme3/bullet/animation/LinkConfig;->massParameter:F

    .line 33
    iput-object p2, p0, Lcom/jme3/bullet/animation/LinkConfig;->massHeuristic:Lcom/jme3/bullet/animation/MassHeuristic;

    const/4 p1, 0x0

    .line 34
    iput-object p1, p0, Lcom/jme3/bullet/animation/LinkConfig;->rotationOrder:Lcom/jme3/bullet/RotationOrder;

    .line 35
    iput-object p3, p0, Lcom/jme3/bullet/animation/LinkConfig;->shapeHeuristic:Lcom/jme3/bullet/animation/ShapeHeuristic;

    .line 36
    invoke-virtual {p4}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/bullet/animation/LinkConfig;->shapeScale:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public constructor <init>(FLcom/jme3/bullet/animation/MassHeuristic;Lcom/jme3/bullet/animation/ShapeHeuristic;Lcom/jme3/math/Vector3f;Lcom/jme3/bullet/animation/CenterHeuristic;Lcom/jme3/bullet/RotationOrder;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, "mass parameter"

    invoke-static {p1, v0}, Lif/E;->E(FLjava/lang/String;)Z

    .line 39
    const-string v0, "mass heuristic"

    invoke-static {p2, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 40
    const-string v0, "shape heuristic"

    invoke-static {p3, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 41
    const-string v0, "shape scale"

    invoke-static {p4, v0}, Lif/E;->s(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    .line 42
    const-string v0, "center heuristic"

    invoke-static {p5, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 43
    iput-object p5, p0, Lcom/jme3/bullet/animation/LinkConfig;->centerHeuristic:Lcom/jme3/bullet/animation/CenterHeuristic;

    .line 44
    iput p1, p0, Lcom/jme3/bullet/animation/LinkConfig;->massParameter:F

    .line 45
    iput-object p2, p0, Lcom/jme3/bullet/animation/LinkConfig;->massHeuristic:Lcom/jme3/bullet/animation/MassHeuristic;

    .line 46
    iput-object p6, p0, Lcom/jme3/bullet/animation/LinkConfig;->rotationOrder:Lcom/jme3/bullet/RotationOrder;

    .line 47
    iput-object p3, p0, Lcom/jme3/bullet/animation/LinkConfig;->shapeHeuristic:Lcom/jme3/bullet/animation/ShapeHeuristic;

    .line 48
    invoke-virtual {p4}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/bullet/animation/LinkConfig;->shapeScale:Lcom/jme3/math/Vector3f;

    return-void
.end method


# virtual methods
.method public centerHeuristic()Lcom/jme3/bullet/animation/CenterHeuristic;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/animation/LinkConfig;->centerHeuristic:Lcom/jme3/bullet/animation/CenterHeuristic;

    return-object v0
.end method

.method public compareTo(Lcom/jme3/bullet/animation/LinkConfig;)I
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/jme3/bullet/animation/LinkConfig;->centerHeuristic:Lcom/jme3/bullet/animation/CenterHeuristic;

    invoke-virtual {p1}, Lcom/jme3/bullet/animation/LinkConfig;->centerHeuristic()Lcom/jme3/bullet/animation/CenterHeuristic;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 3
    :cond_0
    iget v0, p0, Lcom/jme3/bullet/animation/LinkConfig;->massParameter:F

    invoke-virtual {p1}, Lcom/jme3/bullet/animation/LinkConfig;->massParameter()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/jme3/bullet/animation/LinkConfig;->massHeuristic:Lcom/jme3/bullet/animation/MassHeuristic;

    invoke-virtual {p1}, Lcom/jme3/bullet/animation/LinkConfig;->massHeuristic()Lcom/jme3/bullet/animation/MassHeuristic;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-eqz v0, :cond_2

    return v0

    .line 5
    :cond_2
    invoke-virtual {p1}, Lcom/jme3/bullet/animation/LinkConfig;->rotationOrder()Lcom/jme3/bullet/RotationOrder;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/jme3/bullet/animation/LinkConfig;->rotationOrder:Lcom/jme3/bullet/RotationOrder;

    if-nez v1, :cond_3

    if-eqz v0, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    if-nez v0, :cond_4

    if-eqz v1, :cond_4

    const/4 p1, -0x1

    return p1

    :cond_4
    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-eqz v0, :cond_5

    return v0

    .line 8
    :cond_5
    iget-object v0, p0, Lcom/jme3/bullet/animation/LinkConfig;->shapeHeuristic:Lcom/jme3/bullet/animation/ShapeHeuristic;

    invoke-virtual {p1}, Lcom/jme3/bullet/animation/LinkConfig;->shapeHeuristic()Lcom/jme3/bullet/animation/ShapeHeuristic;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-eqz v0, :cond_6

    return v0

    .line 9
    :cond_6
    iget-object v0, p0, Lcom/jme3/bullet/animation/LinkConfig;->shapeScale:Lcom/jme3/math/Vector3f;

    iget v0, v0, Lcom/jme3/math/Vector3f;->x:F

    iget-object v1, p1, Lcom/jme3/bullet/animation/LinkConfig;->shapeScale:Lcom/jme3/math/Vector3f;

    iget v1, v1, Lcom/jme3/math/Vector3f;->x:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_7

    return v0

    .line 10
    :cond_7
    iget-object v0, p0, Lcom/jme3/bullet/animation/LinkConfig;->shapeScale:Lcom/jme3/math/Vector3f;

    iget v0, v0, Lcom/jme3/math/Vector3f;->y:F

    iget-object v1, p1, Lcom/jme3/bullet/animation/LinkConfig;->shapeScale:Lcom/jme3/math/Vector3f;

    iget v1, v1, Lcom/jme3/math/Vector3f;->y:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_8

    return v0

    .line 11
    :cond_8
    iget-object v0, p0, Lcom/jme3/bullet/animation/LinkConfig;->shapeScale:Lcom/jme3/math/Vector3f;

    iget v0, v0, Lcom/jme3/math/Vector3f;->z:F

    iget-object p1, p1, Lcom/jme3/bullet/animation/LinkConfig;->shapeScale:Lcom/jme3/math/Vector3f;

    iget p1, p1, Lcom/jme3/math/Vector3f;->z:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/jme3/bullet/animation/LinkConfig;

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/animation/LinkConfig;->compareTo(Lcom/jme3/bullet/animation/LinkConfig;)I

    move-result p1

    return p1
.end method

.method public createShape(Lcom/jme3/math/Transform;Lcom/jme3/math/Vector3f;Ljf/o;)Lcom/jme3/bullet/collision/shapes/CollisionShape;
    .locals 4

    const-string v0, "transform"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "center"

    invoke-static {p2, v0}, Lif/E;->d(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    invoke-interface {p3}, Ljf/o;->m()I

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    invoke-interface {p3}, Ljf/o;->j()Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    :goto_0
    invoke-virtual {v1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->mark()Ljava/nio/Buffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->get()F

    move-result v2

    iput v2, v0, Lcom/jme3/math/Vector3f;->x:F

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->get()F

    move-result v2

    iput v2, v0, Lcom/jme3/math/Vector3f;->y:F

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->get()F

    move-result v2

    iput v2, v0, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {v0, p2}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-static {p1, v0, v0}, Ljf/f;->S(Lcom/jme3/math/Transform;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    sget-object v2, Lcom/jme3/bullet/animation/LinkConfig$1;->$SwitchMap$com$jme3$bullet$animation$ShapeHeuristic:[I

    iget-object v3, p0, Lcom/jme3/bullet/animation/LinkConfig;->shapeHeuristic:Lcom/jme3/bullet/animation/ShapeHeuristic;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/jme3/bullet/animation/LinkConfig;->shapeScale:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v2}, Lcom/jme3/math/Vector3f;->multLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    :goto_1
    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->reset()Ljava/nio/Buffer;

    iget v2, v0, Lcom/jme3/math/Vector3f;->x:F

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget v2, v0, Lcom/jme3/math/Vector3f;->y:F

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget v2, v0, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/jme3/bullet/animation/LinkConfig$1;->$SwitchMap$com$jme3$bullet$animation$ShapeHeuristic:[I

    iget-object p2, p0, Lcom/jme3/bullet/animation/LinkConfig;->shapeHeuristic:Lcom/jme3/bullet/animation/ShapeHeuristic;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "heuristic = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/jme3/bullet/animation/LinkConfig;->shapeHeuristic:Lcom/jme3/bullet/animation/ShapeHeuristic;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_0
    iget-object p1, p0, Lcom/jme3/bullet/animation/LinkConfig;->shapeScale:Lcom/jme3/math/Vector3f;

    invoke-static {p3, p1}, Lcom/jme3/bullet/animation/RagUtils;->makeRectangularSolid(Ljf/o;Lcom/jme3/math/Vector3f;)Ljf/m;

    move-result-object p1

    new-instance p2, Lcom/jme3/bullet/collision/shapes/MultiSphere;

    const/high16 p3, 0x3f000000    # 0.5f

    invoke-direct {p2, p1, p3}, Lcom/jme3/bullet/collision/shapes/MultiSphere;-><init>(Ljf/m;F)V

    goto :goto_2

    :pswitch_1
    iget-object p1, p0, Lcom/jme3/bullet/animation/LinkConfig;->shapeScale:Lcom/jme3/math/Vector3f;

    invoke-static {p3, p1}, Lcom/jme3/bullet/animation/RagUtils;->makeRectangularSolid(Ljf/o;Lcom/jme3/math/Vector3f;)Ljf/m;

    move-result-object p1

    new-instance p2, Lcom/jme3/bullet/collision/shapes/HullCollisionShape;

    invoke-direct {p2, p1}, Lcom/jme3/bullet/collision/shapes/HullCollisionShape;-><init>(Ljf/m;)V

    goto :goto_2

    :pswitch_2
    iget-object p1, p0, Lcom/jme3/bullet/animation/LinkConfig;->shapeScale:Lcom/jme3/math/Vector3f;

    invoke-static {p3, p1}, Lcom/jme3/bullet/animation/RagUtils;->makeRectangularSolid(Ljf/o;Lcom/jme3/math/Vector3f;)Ljf/m;

    move-result-object p1

    new-instance p2, Lcom/jme3/bullet/collision/shapes/MultiSphere;

    invoke-direct {p2, p1}, Lcom/jme3/bullet/collision/shapes/MultiSphere;-><init>(Ljf/m;)V

    goto :goto_2

    :pswitch_3
    iget-object p1, p0, Lcom/jme3/bullet/animation/LinkConfig;->shapeScale:Lcom/jme3/math/Vector3f;

    invoke-static {p3, p1}, Lcom/jme3/bullet/animation/RagUtils;->makeCylinder(Ljf/o;Lcom/jme3/math/Vector3f;)Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;

    move-result-object p2

    goto :goto_2

    :pswitch_4
    new-instance p2, Lcom/jme3/bullet/collision/shapes/HullCollisionShape;

    invoke-direct {p2, v1}, Lcom/jme3/bullet/collision/shapes/HullCollisionShape;-><init>(Ljava/nio/FloatBuffer;)V

    goto :goto_2

    :pswitch_5
    invoke-interface {p3}, Ljf/o;->l()F

    move-result p1

    new-instance p2, Lcom/jme3/bullet/collision/shapes/MultiSphere;

    invoke-direct {p2, p1}, Lcom/jme3/bullet/collision/shapes/MultiSphere;-><init>(F)V

    goto :goto_2

    :pswitch_6
    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    new-instance p2, Lcom/jme3/math/Vector3f;

    invoke-direct {p2}, Lcom/jme3/math/Vector3f;-><init>()V

    invoke-interface {p3, p1, p2}, Ljf/o;->g(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    new-instance p3, Ljf/m;

    sget-object v0, Lcom/jme3/bullet/animation/LinkConfig;->rotateIdentity:Lcom/jme3/math/Quaternion;

    invoke-direct {p3, p2, p1, v0}, Ljf/m;-><init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Quaternion;)V

    new-instance p2, Lcom/jme3/bullet/collision/shapes/HullCollisionShape;

    invoke-direct {p2, p3}, Lcom/jme3/bullet/collision/shapes/HullCollisionShape;-><init>(Ljf/m;)V

    :goto_2
    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_1

    check-cast p1, Lcom/jme3/bullet/animation/LinkConfig;

    invoke-virtual {p1}, Lcom/jme3/bullet/animation/LinkConfig;->massParameter()F

    move-result v2

    iget-object v3, p0, Lcom/jme3/bullet/animation/LinkConfig;->centerHeuristic:Lcom/jme3/bullet/animation/CenterHeuristic;

    invoke-virtual {p1}, Lcom/jme3/bullet/animation/LinkConfig;->centerHeuristic()Lcom/jme3/bullet/animation/CenterHeuristic;

    move-result-object v4

    if-ne v3, v4, :cond_1

    iget v3, p0, Lcom/jme3/bullet/animation/LinkConfig;->massParameter:F

    invoke-static {v3, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/jme3/bullet/animation/LinkConfig;->massHeuristic:Lcom/jme3/bullet/animation/MassHeuristic;

    invoke-virtual {p1}, Lcom/jme3/bullet/animation/LinkConfig;->massHeuristic()Lcom/jme3/bullet/animation/MassHeuristic;

    move-result-object v3

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/jme3/bullet/animation/LinkConfig;->rotationOrder:Lcom/jme3/bullet/RotationOrder;

    invoke-virtual {p1}, Lcom/jme3/bullet/animation/LinkConfig;->rotationOrder()Lcom/jme3/bullet/RotationOrder;

    move-result-object v3

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/jme3/bullet/animation/LinkConfig;->shapeHeuristic:Lcom/jme3/bullet/animation/ShapeHeuristic;

    invoke-virtual {p1}, Lcom/jme3/bullet/animation/LinkConfig;->shapeHeuristic()Lcom/jme3/bullet/animation/ShapeHeuristic;

    move-result-object v3

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/jme3/bullet/animation/LinkConfig;->shapeScale:Lcom/jme3/math/Vector3f;

    iget-object p1, p1, Lcom/jme3/bullet/animation/LinkConfig;->shapeScale:Lcom/jme3/math/Vector3f;

    invoke-virtual {v2, p1}, Lcom/jme3/math/Vector3f;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/jme3/bullet/animation/LinkConfig;->centerHeuristic:Lcom/jme3/bullet/animation/CenterHeuristic;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x11

    mul-int/lit8 v0, v0, 0xb

    iget v1, p0, Lcom/jme3/bullet/animation/LinkConfig;->massParameter:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0xb

    iget-object v1, p0, Lcom/jme3/bullet/animation/LinkConfig;->massHeuristic:Lcom/jme3/bullet/animation/MassHeuristic;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0xb

    iget-object v1, p0, Lcom/jme3/bullet/animation/LinkConfig;->rotationOrder:Lcom/jme3/bullet/RotationOrder;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0xb

    iget-object v1, p0, Lcom/jme3/bullet/animation/LinkConfig;->shapeHeuristic:Lcom/jme3/bullet/animation/ShapeHeuristic;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0xb

    iget-object v1, p0, Lcom/jme3/bullet/animation/LinkConfig;->shapeScale:Lcom/jme3/math/Vector3f;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public mass()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jme3/bullet/animation/LinkConfig;->massHeuristic:Lcom/jme3/bullet/animation/MassHeuristic;

    sget-object v1, Lcom/jme3/bullet/animation/MassHeuristic;->Mass:Lcom/jme3/bullet/animation/MassHeuristic;

    if-ne v0, v1, :cond_0

    .line 2
    iget v0, p0, Lcom/jme3/bullet/animation/LinkConfig;->massParameter:F

    goto :goto_0

    :cond_0
    const/high16 v0, 0x7fc00000    # Float.NaN

    :goto_0
    return v0
.end method

.method public mass(F)F
    .locals 2

    .line 3
    const-string v0, "volume"

    invoke-static {p1, v0}, Lif/E;->p(FLjava/lang/String;)Z

    .line 4
    sget-object v0, Lcom/jme3/bullet/animation/LinkConfig$1;->$SwitchMap$com$jme3$bullet$animation$MassHeuristic:[I

    iget-object v1, p0, Lcom/jme3/bullet/animation/LinkConfig;->massHeuristic:Lcom/jme3/bullet/animation/MassHeuristic;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p1, 0x2

    if-ne v0, p1, :cond_0

    .line 5
    iget p1, p0, Lcom/jme3/bullet/animation/LinkConfig;->massParameter:F

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "heuristic = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/jme3/bullet/animation/LinkConfig;->massHeuristic:Lcom/jme3/bullet/animation/MassHeuristic;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_2

    const p1, 0x358637bd    # 1.0E-6f

    goto :goto_0

    .line 8
    :cond_2
    iget v0, p0, Lcom/jme3/bullet/animation/LinkConfig;->massParameter:F

    mul-float/2addr p1, v0

    :goto_0
    return p1
.end method

.method public massHeuristic()Lcom/jme3/bullet/animation/MassHeuristic;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/animation/LinkConfig;->massHeuristic:Lcom/jme3/bullet/animation/MassHeuristic;

    return-object v0
.end method

.method public massParameter()F
    .locals 1

    iget v0, p0, Lcom/jme3/bullet/animation/LinkConfig;->massParameter:F

    return v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-class v0, Lcom/jme3/bullet/animation/CenterHeuristic;

    sget-object v1, Lcom/jme3/bullet/animation/CenterHeuristic;->Mean:Lcom/jme3/bullet/animation/CenterHeuristic;

    const-string v2, "centerHeuristic"

    invoke-interface {p1, v2, v0, v1}, Lcom/jme3/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/bullet/animation/CenterHeuristic;

    iput-object v0, p0, Lcom/jme3/bullet/animation/LinkConfig;->centerHeuristic:Lcom/jme3/bullet/animation/CenterHeuristic;

    const-string v0, "massParameter"

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/bullet/animation/LinkConfig;->massParameter:F

    const-class v0, Lcom/jme3/bullet/animation/MassHeuristic;

    sget-object v1, Lcom/jme3/bullet/animation/MassHeuristic;->Mass:Lcom/jme3/bullet/animation/MassHeuristic;

    const-string v2, "massHeuristic"

    invoke-interface {p1, v2, v0, v1}, Lcom/jme3/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/bullet/animation/MassHeuristic;

    iput-object v0, p0, Lcom/jme3/bullet/animation/LinkConfig;->massHeuristic:Lcom/jme3/bullet/animation/MassHeuristic;

    const-string v0, "rotationOrder"

    const-class v1, Lcom/jme3/bullet/RotationOrder;

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/bullet/RotationOrder;

    iput-object v0, p0, Lcom/jme3/bullet/animation/LinkConfig;->rotationOrder:Lcom/jme3/bullet/RotationOrder;

    const-class v0, Lcom/jme3/bullet/animation/ShapeHeuristic;

    sget-object v1, Lcom/jme3/bullet/animation/ShapeHeuristic;->VertexHull:Lcom/jme3/bullet/animation/ShapeHeuristic;

    const-string v3, "shapeHeuristic"

    invoke-interface {p1, v3, v0, v1}, Lcom/jme3/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/bullet/animation/ShapeHeuristic;

    iput-object v0, p0, Lcom/jme3/bullet/animation/LinkConfig;->shapeHeuristic:Lcom/jme3/bullet/animation/ShapeHeuristic;

    const-string v0, "shapeScale"

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object p1

    check-cast p1, Lcom/jme3/math/Vector3f;

    iput-object p1, p0, Lcom/jme3/bullet/animation/LinkConfig;->shapeScale:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public rotationOrder()Lcom/jme3/bullet/RotationOrder;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/animation/LinkConfig;->rotationOrder:Lcom/jme3/bullet/RotationOrder;

    return-object v0
.end method

.method public shapeHeuristic()Lcom/jme3/bullet/animation/ShapeHeuristic;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/animation/LinkConfig;->shapeHeuristic:Lcom/jme3/bullet/animation/ShapeHeuristic;

    return-object v0
.end method

.method public shapeScale(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    :cond_0
    iget-object v0, p0, Lcom/jme3/bullet/animation/LinkConfig;->shapeScale:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    return-object p1
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

    iget-object v0, p0, Lcom/jme3/bullet/animation/LinkConfig;->centerHeuristic:Lcom/jme3/bullet/animation/CenterHeuristic;

    const-string v1, "centerHeuristic"

    sget-object v2, Lcom/jme3/bullet/animation/CenterHeuristic;->Mean:Lcom/jme3/bullet/animation/CenterHeuristic;

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget v0, p0, Lcom/jme3/bullet/animation/LinkConfig;->massParameter:F

    const-string v1, "massParameter"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget-object v0, p0, Lcom/jme3/bullet/animation/LinkConfig;->massHeuristic:Lcom/jme3/bullet/animation/MassHeuristic;

    const-string v1, "massHeuristic"

    sget-object v2, Lcom/jme3/bullet/animation/MassHeuristic;->Mass:Lcom/jme3/bullet/animation/MassHeuristic;

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget-object v0, p0, Lcom/jme3/bullet/animation/LinkConfig;->rotationOrder:Lcom/jme3/bullet/RotationOrder;

    const-string v1, "rotationOrder"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget-object v0, p0, Lcom/jme3/bullet/animation/LinkConfig;->shapeHeuristic:Lcom/jme3/bullet/animation/ShapeHeuristic;

    const-string v1, "shapeHeuristic"

    sget-object v3, Lcom/jme3/bullet/animation/ShapeHeuristic;->VertexHull:Lcom/jme3/bullet/animation/ShapeHeuristic;

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget-object v0, p0, Lcom/jme3/bullet/animation/LinkConfig;->shapeScale:Lcom/jme3/math/Vector3f;

    const-string v1, "shapeScale"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    return-void
.end method
