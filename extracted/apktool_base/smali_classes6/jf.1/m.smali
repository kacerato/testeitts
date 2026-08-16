.class public Ljf/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/export/Savable;


# static fields
.field public static final e:I = 0x3

.field public static final f:Ljava/util/logging/Logger;

.field public static final synthetic g:Z


# instance fields
.field public b:Lcom/jme3/math/Quaternion;

.field public c:Lcom/jme3/math/Vector3f;

.field public d:Lcom/jme3/math/Vector3f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Ljf/m;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ljf/m;->f:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/jme3/math/Quaternion;

    invoke-direct {v0}, Lcom/jme3/math/Quaternion;-><init>()V

    iput-object v0, p0, Ljf/m;->b:Lcom/jme3/math/Quaternion;

    .line 3
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Ljf/m;->c:Lcom/jme3/math/Vector3f;

    .line 4
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Ljf/m;->d:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/bounding/BoundingBox;)V
    .locals 3

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/jme3/math/Quaternion;

    invoke-direct {v0}, Lcom/jme3/math/Quaternion;-><init>()V

    iput-object v0, p0, Ljf/m;->b:Lcom/jme3/math/Quaternion;

    .line 19
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Ljf/m;->c:Lcom/jme3/math/Vector3f;

    .line 20
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Ljf/m;->d:Lcom/jme3/math/Vector3f;

    .line 21
    iget-object v0, p0, Ljf/m;->c:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/bounding/BoundingBox;->getMax(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 22
    iget-object v0, p0, Ljf/m;->d:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/bounding/BoundingBox;->getMin(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 23
    iget-object p1, p0, Ljf/m;->c:Lcom/jme3/math/Vector3f;

    const-string v0, "max"

    invoke-static {p1, v0}, Lif/E;->d(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    .line 24
    iget-object p1, p0, Ljf/m;->d:Lcom/jme3/math/Vector3f;

    const-string v0, "min"

    invoke-static {p1, v0}, Lif/E;->d(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    .line 25
    iget-object p1, p0, Ljf/m;->c:Lcom/jme3/math/Vector3f;

    iget p1, p1, Lcom/jme3/math/Vector3f;->x:F

    iget-object v0, p0, Ljf/m;->d:Lcom/jme3/math/Vector3f;

    iget v0, v0, Lcom/jme3/math/Vector3f;->x:F

    cmpl-float p1, p1, v0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    const-string v2, "non-negative X extent"

    invoke-static {p1, v2}, Lif/E;->H(ZLjava/lang/String;)Z

    .line 26
    iget-object p1, p0, Ljf/m;->c:Lcom/jme3/math/Vector3f;

    iget p1, p1, Lcom/jme3/math/Vector3f;->y:F

    iget-object v2, p0, Ljf/m;->d:Lcom/jme3/math/Vector3f;

    iget v2, v2, Lcom/jme3/math/Vector3f;->y:F

    cmpl-float p1, p1, v2

    if-ltz p1, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    move p1, v0

    :goto_1
    const-string v2, "non-negative Y extent"

    invoke-static {p1, v2}, Lif/E;->H(ZLjava/lang/String;)Z

    .line 27
    iget-object p1, p0, Ljf/m;->c:Lcom/jme3/math/Vector3f;

    iget p1, p1, Lcom/jme3/math/Vector3f;->z:F

    iget-object v2, p0, Ljf/m;->d:Lcom/jme3/math/Vector3f;

    iget v2, v2, Lcom/jme3/math/Vector3f;->z:F

    cmpl-float p1, p1, v2

    if-ltz p1, :cond_2

    move v0, v1

    :cond_2
    const-string p1, "non-negative Z extent"

    invoke-static {v0, p1}, Lif/E;->H(ZLjava/lang/String;)Z

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Vector3f;)V
    .locals 2

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Lcom/jme3/math/Quaternion;

    invoke-direct {v0}, Lcom/jme3/math/Quaternion;-><init>()V

    iput-object v0, p0, Ljf/m;->b:Lcom/jme3/math/Quaternion;

    .line 90
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Ljf/m;->c:Lcom/jme3/math/Vector3f;

    .line 91
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Ljf/m;->d:Lcom/jme3/math/Vector3f;

    .line 92
    iget-object v0, p0, Ljf/m;->c:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    const/high16 v0, -0x40800000    # -1.0f

    .line 93
    iget-object v1, p0, Ljf/m;->d:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0, v1}, Lcom/jme3/math/Vector3f;->mult(FLcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Quaternion;)V
    .locals 4

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Lcom/jme3/math/Quaternion;

    invoke-direct {v0}, Lcom/jme3/math/Quaternion;-><init>()V

    iput-object v0, p0, Ljf/m;->b:Lcom/jme3/math/Quaternion;

    .line 96
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Ljf/m;->c:Lcom/jme3/math/Vector3f;

    .line 97
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Ljf/m;->d:Lcom/jme3/math/Vector3f;

    .line 98
    const-string v0, "orientation"

    invoke-static {p3, v0}, Lif/E;->y(Lcom/jme3/math/Quaternion;Ljava/lang/String;)Z

    .line 99
    const-string v0, "max"

    invoke-static {p2, v0}, Lif/E;->d(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    .line 100
    const-string v0, "min"

    invoke-static {p1, v0}, Lif/E;->d(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    .line 101
    iget v0, p1, Lcom/jme3/math/Vector3f;->x:F

    iget v1, p2, Lcom/jme3/math/Vector3f;->x:F

    cmpg-float v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gtz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v3, "min.x less than or equal to max.x"

    invoke-static {v0, v3}, Lif/E;->H(ZLjava/lang/String;)Z

    .line 102
    iget v0, p1, Lcom/jme3/math/Vector3f;->y:F

    iget v3, p2, Lcom/jme3/math/Vector3f;->y:F

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const-string v3, "min.y less than or equal to max.y"

    invoke-static {v0, v3}, Lif/E;->H(ZLjava/lang/String;)Z

    .line 103
    iget v0, p1, Lcom/jme3/math/Vector3f;->z:F

    iget v3, p2, Lcom/jme3/math/Vector3f;->z:F

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_2

    move v1, v2

    :cond_2
    const-string v0, "min.z less than or equal to max.z"

    invoke-static {v1, v0}, Lif/E;->H(ZLjava/lang/String;)Z

    .line 104
    iget-object v0, p0, Ljf/m;->c:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p2}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 105
    iget-object p2, p0, Ljf/m;->d:Lcom/jme3/math/Vector3f;

    invoke-virtual {p2, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 106
    iget-object p1, p0, Ljf/m;->b:Lcom/jme3/math/Quaternion;

    invoke-virtual {p1, p3}, Lcom/jme3/math/Quaternion;->set(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/scene/shape/AbstractBox;)V
    .locals 4

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Lcom/jme3/math/Quaternion;

    invoke-direct {v0}, Lcom/jme3/math/Quaternion;-><init>()V

    iput-object v0, p0, Ljf/m;->b:Lcom/jme3/math/Quaternion;

    .line 7
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Ljf/m;->c:Lcom/jme3/math/Vector3f;

    .line 8
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Ljf/m;->d:Lcom/jme3/math/Vector3f;

    .line 9
    iget-object v0, p1, Lcom/jme3/scene/shape/AbstractBox;->center:Lcom/jme3/math/Vector3f;

    const-string v1, "center location"

    invoke-static {v0, v1}, Lif/E;->d(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    .line 10
    iget v0, p1, Lcom/jme3/scene/shape/AbstractBox;->xExtent:F

    const-string v1, "X extent"

    invoke-static {v0, v1}, Lif/E;->p(FLjava/lang/String;)Z

    .line 11
    iget v0, p1, Lcom/jme3/scene/shape/AbstractBox;->yExtent:F

    const-string v1, "Y extent"

    invoke-static {v0, v1}, Lif/E;->p(FLjava/lang/String;)Z

    .line 12
    iget v0, p1, Lcom/jme3/scene/shape/AbstractBox;->zExtent:F

    const-string v1, "Z extent"

    invoke-static {v0, v1}, Lif/E;->p(FLjava/lang/String;)Z

    .line 13
    iget-object v0, p0, Ljf/m;->c:Lcom/jme3/math/Vector3f;

    iget-object v1, p1, Lcom/jme3/scene/shape/AbstractBox;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 14
    iget-object v0, p0, Ljf/m;->c:Lcom/jme3/math/Vector3f;

    iget v1, p1, Lcom/jme3/scene/shape/AbstractBox;->xExtent:F

    iget v2, p1, Lcom/jme3/scene/shape/AbstractBox;->yExtent:F

    iget v3, p1, Lcom/jme3/scene/shape/AbstractBox;->zExtent:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/jme3/math/Vector3f;->addLocal(FFF)Lcom/jme3/math/Vector3f;

    .line 15
    iget-object v0, p0, Ljf/m;->d:Lcom/jme3/math/Vector3f;

    iget-object v1, p1, Lcom/jme3/scene/shape/AbstractBox;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 16
    iget-object v0, p0, Ljf/m;->d:Lcom/jme3/math/Vector3f;

    iget v1, p1, Lcom/jme3/scene/shape/AbstractBox;->xExtent:F

    iget v2, p1, Lcom/jme3/scene/shape/AbstractBox;->yExtent:F

    iget p1, p1, Lcom/jme3/scene/shape/AbstractBox;->zExtent:F

    invoke-virtual {v0, v1, v2, p1}, Lcom/jme3/math/Vector3f;->subtractLocal(FFF)Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public constructor <init>(Ljava/nio/FloatBuffer;II)V
    .locals 4

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Lcom/jme3/math/Quaternion;

    invoke-direct {v0}, Lcom/jme3/math/Quaternion;-><init>()V

    iput-object v0, p0, Ljf/m;->b:Lcom/jme3/math/Quaternion;

    .line 68
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Ljf/m;->c:Lcom/jme3/math/Vector3f;

    .line 69
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Ljf/m;->d:Lcom/jme3/math/Vector3f;

    .line 70
    const-string v0, "buffer"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    add-int/lit8 v0, p3, -0x6

    .line 71
    const-string v1, "start position"

    const/4 v2, 0x0

    invoke-static {p2, v1, v2, v0}, Lif/E;->i(ILjava/lang/String;II)Z

    add-int/lit8 v0, p2, 0x6

    .line 72
    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    .line 73
    const-string v3, "end position"

    invoke-static {p3, v3, v0, v1}, Lif/E;->i(ILjava/lang/String;II)Z

    sub-int/2addr p3, p2

    .line 74
    rem-int/lit8 p2, p3, 0x3

    const/4 v0, 0x1

    if-nez p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, v2

    :goto_0
    const-string v1, "numFloats a multiple of 3"

    invoke-static {p2, v1}, Lif/E;->H(ZLjava/lang/String;)Z

    .line 75
    div-int/lit8 p2, p3, 0x3

    const/4 v1, 0x2

    if-lt p2, v1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v2

    .line 76
    :goto_1
    const-string v1, "at least 2 samples"

    invoke-static {v0, v1}, Lif/E;->H(ZLjava/lang/String;)Z

    const/4 v0, 0x0

    .line 77
    invoke-static {p1, v2, p3, v0}, Ljf/d;->a(Ljava/nio/FloatBuffer;IILcom/jme3/math/Matrix3f;)Lcom/jme3/math/Matrix3f;

    move-result-object p3

    .line 78
    new-instance v0, Lcom/jme3/math/Eigen3f;

    invoke-direct {v0, p3}, Lcom/jme3/math/Eigen3f;-><init>(Lcom/jme3/math/Matrix3f;)V

    .line 79
    invoke-virtual {v0}, Lcom/jme3/math/Eigen3f;->getEigenVectors()[Lcom/jme3/math/Vector3f;

    move-result-object p3

    .line 80
    iget-object v0, p0, Ljf/m;->b:Lcom/jme3/math/Quaternion;

    invoke-virtual {v0, p3}, Lcom/jme3/math/Quaternion;->fromAxes([Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Quaternion;

    .line 81
    iget-object p3, p0, Ljf/m;->c:Lcom/jme3/math/Vector3f;

    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    invoke-virtual {p3, v0, v0, v0}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    .line 82
    iget-object p3, p0, Ljf/m;->d:Lcom/jme3/math/Vector3f;

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    invoke-virtual {p3, v0, v0, v0}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    .line 83
    new-instance p3, Lcom/jme3/math/Vector3f;

    invoke-direct {p3}, Lcom/jme3/math/Vector3f;-><init>()V

    :goto_2
    if-ge v2, p2, :cond_2

    mul-int/lit8 v0, v2, 0x3

    .line 84
    invoke-static {p1, v0, p3}, Ljf/d;->g(Ljava/nio/FloatBuffer;ILcom/jme3/math/Vector3f;)V

    .line 85
    iget-object v0, p0, Ljf/m;->b:Lcom/jme3/math/Quaternion;

    invoke-static {v0, p3, p3}, Ljf/g;->s(Lcom/jme3/math/Quaternion;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 86
    iget-object v0, p0, Ljf/m;->c:Lcom/jme3/math/Vector3f;

    invoke-static {v0, p3}, Ljf/h;->a(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    .line 87
    iget-object v0, p0, Ljf/m;->d:Lcom/jme3/math/Vector3f;

    invoke-static {v0, p3}, Ljf/h;->b(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/jme3/math/Vector3f;",
            ">;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/jme3/math/Quaternion;

    invoke-direct {v0}, Lcom/jme3/math/Quaternion;-><init>()V

    iput-object v0, p0, Ljf/m;->b:Lcom/jme3/math/Quaternion;

    .line 30
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Ljf/m;->c:Lcom/jme3/math/Vector3f;

    .line 31
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Ljf/m;->d:Lcom/jme3/math/Vector3f;

    .line 32
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 33
    :goto_0
    const-string v1, "at least 2 samples"

    invoke-static {v0, v1}, Lif/E;->H(ZLjava/lang/String;)Z

    const/4 v0, 0x0

    .line 34
    invoke-static {p1, v0}, Ljf/h;->l(Ljava/util/Collection;Lcom/jme3/math/Matrix3f;)Lcom/jme3/math/Matrix3f;

    move-result-object v0

    .line 35
    new-instance v1, Lcom/jme3/math/Eigen3f;

    invoke-direct {v1, v0}, Lcom/jme3/math/Eigen3f;-><init>(Lcom/jme3/math/Matrix3f;)V

    .line 36
    invoke-virtual {v1}, Lcom/jme3/math/Eigen3f;->getEigenVectors()[Lcom/jme3/math/Vector3f;

    move-result-object v0

    .line 37
    iget-object v1, p0, Ljf/m;->b:Lcom/jme3/math/Quaternion;

    invoke-virtual {v1, v0}, Lcom/jme3/math/Quaternion;->fromAxes([Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Quaternion;

    .line 38
    iget-object v0, p0, Ljf/m;->c:Lcom/jme3/math/Vector3f;

    const/high16 v1, -0x800000    # Float.NEGATIVE_INFINITY

    invoke-virtual {v0, v1, v1, v1}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    .line 39
    iget-object v0, p0, Ljf/m;->d:Lcom/jme3/math/Vector3f;

    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    invoke-virtual {v0, v1, v1, v1}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    .line 40
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    .line 41
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/math/Vector3f;

    .line 42
    iget-object v2, p0, Ljf/m;->b:Lcom/jme3/math/Quaternion;

    invoke-static {v2, v1, v0}, Ljf/g;->s(Lcom/jme3/math/Quaternion;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 43
    iget-object v1, p0, Ljf/m;->c:Lcom/jme3/math/Vector3f;

    invoke-static {v1, v0}, Ljf/h;->a(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    .line 44
    iget-object v1, p0, Ljf/m;->d:Lcom/jme3/math/Vector3f;

    invoke-static {v1, v0}, Ljf/h;->b(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public constructor <init>(Ljf/m;Lcom/jme3/math/Vector3f;)V
    .locals 3

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Lcom/jme3/math/Quaternion;

    invoke-direct {v0}, Lcom/jme3/math/Quaternion;-><init>()V

    iput-object v0, p0, Ljf/m;->b:Lcom/jme3/math/Quaternion;

    .line 109
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Ljf/m;->c:Lcom/jme3/math/Vector3f;

    .line 110
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Ljf/m;->d:Lcom/jme3/math/Vector3f;

    .line 111
    const-string v0, "scale factors"

    invoke-static {p2, v0}, Lif/E;->s(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    .line 112
    iget-object v0, p1, Ljf/m;->d:Lcom/jme3/math/Vector3f;

    iget-object v1, p1, Ljf/m;->c:Lcom/jme3/math/Vector3f;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ljf/h;->M(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    .line 113
    iget-object v1, p1, Ljf/m;->c:Lcom/jme3/math/Vector3f;

    iget-object v2, p0, Ljf/m;->c:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v0, v2}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 114
    iget-object v1, p0, Ljf/m;->c:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, p2}, Lcom/jme3/math/Vector3f;->multLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 115
    iget-object v1, p0, Ljf/m;->c:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v0}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 116
    iget-object v1, p1, Ljf/m;->d:Lcom/jme3/math/Vector3f;

    iget-object v2, p0, Ljf/m;->d:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v0, v2}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 117
    iget-object v1, p0, Ljf/m;->d:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, p2}, Lcom/jme3/math/Vector3f;->multLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 118
    iget-object p2, p0, Ljf/m;->d:Lcom/jme3/math/Vector3f;

    invoke-virtual {p2, v0}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 119
    iget-object p2, p0, Ljf/m;->b:Lcom/jme3/math/Quaternion;

    iget-object p1, p1, Ljf/m;->b:Lcom/jme3/math/Quaternion;

    invoke-virtual {p2, p1}, Lcom/jme3/math/Quaternion;->set(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    return-void
.end method

.method public constructor <init>([F)V
    .locals 6

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/jme3/math/Quaternion;

    invoke-direct {v0}, Lcom/jme3/math/Quaternion;-><init>()V

    iput-object v0, p0, Ljf/m;->b:Lcom/jme3/math/Quaternion;

    .line 47
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Ljf/m;->c:Lcom/jme3/math/Vector3f;

    .line 48
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Ljf/m;->d:Lcom/jme3/math/Vector3f;

    .line 49
    array-length v0, p1

    .line 50
    rem-int/lit8 v1, v0, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const-string v4, "length a multiple of 3"

    invoke-static {v1, v4}, Lif/E;->H(ZLjava/lang/String;)Z

    .line 51
    div-int/lit8 v0, v0, 0x3

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 52
    :goto_1
    const-string v4, "at least 2 samples"

    invoke-static {v3, v4}, Lif/E;->H(ZLjava/lang/String;)Z

    const/4 v3, 0x0

    .line 53
    invoke-static {p1, v3}, Ljf/c;->d([FLcom/jme3/math/Matrix3f;)Lcom/jme3/math/Matrix3f;

    move-result-object v3

    .line 54
    new-instance v4, Lcom/jme3/math/Eigen3f;

    invoke-direct {v4, v3}, Lcom/jme3/math/Eigen3f;-><init>(Lcom/jme3/math/Matrix3f;)V

    .line 55
    invoke-virtual {v4}, Lcom/jme3/math/Eigen3f;->getEigenVectors()[Lcom/jme3/math/Vector3f;

    move-result-object v3

    .line 56
    iget-object v4, p0, Ljf/m;->b:Lcom/jme3/math/Quaternion;

    invoke-virtual {v4, v3}, Lcom/jme3/math/Quaternion;->fromAxes([Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Quaternion;

    .line 57
    iget-object v3, p0, Ljf/m;->c:Lcom/jme3/math/Vector3f;

    const/high16 v4, -0x800000    # Float.NEGATIVE_INFINITY

    invoke-virtual {v3, v4, v4, v4}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    .line 58
    iget-object v3, p0, Ljf/m;->d:Lcom/jme3/math/Vector3f;

    const/high16 v4, 0x7f800000    # Float.POSITIVE_INFINITY

    invoke-virtual {v3, v4, v4, v4}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    .line 59
    new-instance v3, Lcom/jme3/math/Vector3f;

    invoke-direct {v3}, Lcom/jme3/math/Vector3f;-><init>()V

    :goto_2
    if-ge v2, v0, :cond_2

    mul-int/lit8 v4, v2, 0x3

    .line 60
    aget v5, p1, v4

    iput v5, v3, Lcom/jme3/math/Vector3f;->x:F

    add-int/lit8 v5, v4, 0x1

    .line 61
    aget v5, p1, v5

    iput v5, v3, Lcom/jme3/math/Vector3f;->y:F

    add-int/2addr v4, v1

    .line 62
    aget v4, p1, v4

    iput v4, v3, Lcom/jme3/math/Vector3f;->z:F

    .line 63
    iget-object v4, p0, Ljf/m;->b:Lcom/jme3/math/Quaternion;

    invoke-static {v4, v3, v3}, Ljf/g;->s(Lcom/jme3/math/Quaternion;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 64
    iget-object v4, p0, Ljf/m;->c:Lcom/jme3/math/Vector3f;

    invoke-static {v4, v3}, Ljf/h;->a(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    .line 65
    iget-object v4, p0, Ljf/m;->d:Lcom/jme3/math/Vector3f;

    invoke-static {v4, v3}, Ljf/h;->b(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method


# virtual methods
.method public a(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    :cond_0
    iget-object v0, p0, Ljf/m;->c:Lcom/jme3/math/Vector3f;

    iget-object v1, p0, Ljf/m;->d:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1, p1}, Lcom/jme3/math/Vector3f;->add(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->divideLocal(F)Lcom/jme3/math/Vector3f;

    return-object p1
.end method

.method public b(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 1

    invoke-virtual {p0, p1}, Ljf/m;->a(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    iget-object v0, p0, Ljf/m;->b:Lcom/jme3/math/Quaternion;

    invoke-static {v0, p1, p1}, Ljf/g;->r(Lcom/jme3/math/Quaternion;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    return-object p1
.end method

.method public c(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    :cond_0
    iget-object v0, p0, Ljf/m;->c:Lcom/jme3/math/Vector3f;

    iget-object v1, p0, Ljf/m;->d:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1, p1}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->divideLocal(F)Lcom/jme3/math/Vector3f;

    return-object p1
.end method

.method public d()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/jme3/math/Vector3f;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Lcom/jme3/math/Vector3f;

    iget-object v2, p0, Ljf/m;->c:Lcom/jme3/math/Vector3f;

    iget v3, v2, Lcom/jme3/math/Vector3f;->x:F

    iget v4, v2, Lcom/jme3/math/Vector3f;->y:F

    iget v2, v2, Lcom/jme3/math/Vector3f;->z:F

    invoke-direct {v1, v3, v4, v2}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/jme3/math/Vector3f;

    iget-object v2, p0, Ljf/m;->c:Lcom/jme3/math/Vector3f;

    iget v3, v2, Lcom/jme3/math/Vector3f;->x:F

    iget v2, v2, Lcom/jme3/math/Vector3f;->y:F

    iget-object v4, p0, Ljf/m;->d:Lcom/jme3/math/Vector3f;

    iget v4, v4, Lcom/jme3/math/Vector3f;->z:F

    invoke-direct {v1, v3, v2, v4}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/jme3/math/Vector3f;

    iget-object v2, p0, Ljf/m;->c:Lcom/jme3/math/Vector3f;

    iget v3, v2, Lcom/jme3/math/Vector3f;->x:F

    iget-object v4, p0, Ljf/m;->d:Lcom/jme3/math/Vector3f;

    iget v4, v4, Lcom/jme3/math/Vector3f;->y:F

    iget v2, v2, Lcom/jme3/math/Vector3f;->z:F

    invoke-direct {v1, v3, v4, v2}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/jme3/math/Vector3f;

    iget-object v2, p0, Ljf/m;->c:Lcom/jme3/math/Vector3f;

    iget v2, v2, Lcom/jme3/math/Vector3f;->x:F

    iget-object v3, p0, Ljf/m;->d:Lcom/jme3/math/Vector3f;

    iget v4, v3, Lcom/jme3/math/Vector3f;->y:F

    iget v3, v3, Lcom/jme3/math/Vector3f;->z:F

    invoke-direct {v1, v2, v4, v3}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/jme3/math/Vector3f;

    iget-object v2, p0, Ljf/m;->d:Lcom/jme3/math/Vector3f;

    iget v2, v2, Lcom/jme3/math/Vector3f;->x:F

    iget-object v3, p0, Ljf/m;->c:Lcom/jme3/math/Vector3f;

    iget v4, v3, Lcom/jme3/math/Vector3f;->y:F

    iget v3, v3, Lcom/jme3/math/Vector3f;->z:F

    invoke-direct {v1, v2, v4, v3}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/jme3/math/Vector3f;

    iget-object v2, p0, Ljf/m;->d:Lcom/jme3/math/Vector3f;

    iget v3, v2, Lcom/jme3/math/Vector3f;->x:F

    iget-object v4, p0, Ljf/m;->c:Lcom/jme3/math/Vector3f;

    iget v4, v4, Lcom/jme3/math/Vector3f;->y:F

    iget v2, v2, Lcom/jme3/math/Vector3f;->z:F

    invoke-direct {v1, v3, v4, v2}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/jme3/math/Vector3f;

    iget-object v2, p0, Ljf/m;->d:Lcom/jme3/math/Vector3f;

    iget v3, v2, Lcom/jme3/math/Vector3f;->x:F

    iget v2, v2, Lcom/jme3/math/Vector3f;->y:F

    iget-object v4, p0, Ljf/m;->c:Lcom/jme3/math/Vector3f;

    iget v4, v4, Lcom/jme3/math/Vector3f;->z:F

    invoke-direct {v1, v3, v2, v4}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/jme3/math/Vector3f;

    iget-object v2, p0, Ljf/m;->d:Lcom/jme3/math/Vector3f;

    iget v3, v2, Lcom/jme3/math/Vector3f;->x:F

    iget v4, v2, Lcom/jme3/math/Vector3f;->y:F

    iget v2, v2, Lcom/jme3/math/Vector3f;->z:F

    invoke-direct {v1, v3, v4, v2}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/math/Vector3f;

    iget-object v3, p0, Ljf/m;->b:Lcom/jme3/math/Quaternion;

    invoke-static {v3, v2, v2}, Ljf/g;->r(Lcom/jme3/math/Quaternion;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public e(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Ljf/m;->b:Lcom/jme3/math/Quaternion;

    invoke-virtual {p1}, Lcom/jme3/math/Quaternion;->clone()Lcom/jme3/math/Quaternion;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ljf/m;->b:Lcom/jme3/math/Quaternion;

    invoke-virtual {p1, v0}, Lcom/jme3/math/Quaternion;->set(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public f(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 1

    const-string v0, "local"

    invoke-static {p1, v0}, Lif/E;->d(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    if-nez p2, :cond_0

    new-instance p2, Lcom/jme3/math/Vector3f;

    invoke-direct {p2}, Lcom/jme3/math/Vector3f;-><init>()V

    :cond_0
    iget-object v0, p0, Ljf/m;->b:Lcom/jme3/math/Quaternion;

    invoke-static {v0, p1, p2}, Ljf/g;->r(Lcom/jme3/math/Quaternion;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    return-object p2
.end method

.method public g(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Ljf/m;->c:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ljf/m;->c:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public h(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Ljf/m;->d:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ljf/m;->d:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public i()F
    .locals 5

    iget-object v0, p0, Ljf/m;->c:Lcom/jme3/math/Vector3f;

    iget v1, v0, Lcom/jme3/math/Vector3f;->x:F

    iget-object v2, p0, Ljf/m;->d:Lcom/jme3/math/Vector3f;

    iget v3, v2, Lcom/jme3/math/Vector3f;->x:F

    sub-float/2addr v1, v3

    iget v3, v0, Lcom/jme3/math/Vector3f;->y:F

    iget v4, v2, Lcom/jme3/math/Vector3f;->y:F

    sub-float/2addr v3, v4

    iget v0, v0, Lcom/jme3/math/Vector3f;->z:F

    iget v2, v2, Lcom/jme3/math/Vector3f;->z:F

    sub-float/2addr v0, v2

    mul-float/2addr v1, v3

    mul-float/2addr v1, v0

    return v1
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "localToWorld"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Quaternion;

    iput-object v0, p0, Ljf/m;->b:Lcom/jme3/math/Quaternion;

    const-string v0, "maxima"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Vector3f;

    iput-object v0, p0, Ljf/m;->c:Lcom/jme3/math/Vector3f;

    const-string v0, "minima"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object p1

    check-cast p1, Lcom/jme3/math/Vector3f;

    iput-object p1, p0, Ljf/m;->d:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RectangularSolid["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljf/m;->b:Lcom/jme3/math/Quaternion;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", min="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljf/m;->d:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", max="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljf/m;->c:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget-object v0, p0, Ljf/m;->b:Lcom/jme3/math/Quaternion;

    const-string v1, "localToWorld"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Ljf/m;->c:Lcom/jme3/math/Vector3f;

    const-string v1, "maxima"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Ljf/m;->d:Lcom/jme3/math/Vector3f;

    const-string v1, "minima"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    return-void
.end method
