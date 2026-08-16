.class Lcom/jme3/bullet/util/DebugMeshCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final logger:Ljava/util/logging/Logger;

.field private static final numAxes:I = 0x3

.field private static final vpt:I = 0x3


# instance fields
.field private final list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/jme3/math/Vector3f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/bullet/util/DebugMeshCallback;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/util/DebugMeshCallback;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xfa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/jme3/bullet/util/DebugMeshCallback;->list:Ljava/util/ArrayList;

    return-void
.end method

.method private addVector(FFFII)V
    .locals 0

    iget-object p4, p0, Lcom/jme3/bullet/util/DebugMeshCallback;->list:Ljava/util/ArrayList;

    new-instance p5, Lcom/jme3/math/Vector3f;

    invoke-direct {p5, p1, p2, p3}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-virtual {p4, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public footprint(Lcom/jme3/math/Transform;)[Lcom/jme3/math/Vector3f;
    .locals 8

    new-instance v0, Ljf/p;

    iget-object v1, p0, Lcom/jme3/bullet/util/DebugMeshCallback;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljf/p;-><init>(IZ)V

    iget-object v1, p0, Lcom/jme3/bullet/util/DebugMeshCallback;->list:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Ljf/o;->b(Ljava/lang/Iterable;)V

    invoke-interface {v0}, Ljf/o;->j()Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v1

    invoke-static {v0, v2, v1, p1}, Ljf/d;->x(Ljava/nio/FloatBuffer;IILcom/jme3/math/Transform;)V

    div-int/lit8 p1, v1, 0x3

    const/high16 v3, 0x7f800000    # Float.POSITIVE_INFINITY

    move v4, v2

    :goto_0
    if-ge v4, p1, :cond_1

    mul-int/lit8 v5, v4, 0x3

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v5

    cmpg-float v6, v5, v3

    if-gez v6, :cond_0

    move v3, v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_1
    if-ge v4, p1, :cond_2

    mul-int/lit8 v5, v4, 0x3

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    new-instance p1, Ljf/m;

    invoke-direct {p1, v0, v2, v1}, Ljf/m;-><init>(Ljava/nio/FloatBuffer;II)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljf/m;->g(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {p1, v0}, Ljf/m;->h(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    iget v3, v0, Lcom/jme3/math/Vector3f;->x:F

    iget v4, v1, Lcom/jme3/math/Vector3f;->x:F

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    new-instance v4, Lcom/jme3/math/Vector3f;

    iget v5, v1, Lcom/jme3/math/Vector3f;->y:F

    iget v6, v1, Lcom/jme3/math/Vector3f;->z:F

    invoke-direct {v4, v3, v5, v6}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    new-instance v5, Lcom/jme3/math/Vector3f;

    iget v6, v0, Lcom/jme3/math/Vector3f;->y:F

    iget v7, v1, Lcom/jme3/math/Vector3f;->z:F

    invoke-direct {v5, v3, v6, v7}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    new-instance v6, Lcom/jme3/math/Vector3f;

    iget v1, v1, Lcom/jme3/math/Vector3f;->y:F

    iget v7, v0, Lcom/jme3/math/Vector3f;->z:F

    invoke-direct {v6, v3, v1, v7}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    new-instance v1, Lcom/jme3/math/Vector3f;

    iget v7, v0, Lcom/jme3/math/Vector3f;->y:F

    iget v0, v0, Lcom/jme3/math/Vector3f;->z:F

    invoke-direct {v1, v3, v7, v0}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    filled-new-array {v4, v5, v6, v1}, [Lcom/jme3/math/Vector3f;

    move-result-object v0

    :goto_2
    const/4 v1, 0x4

    if-ge v2, v1, :cond_3

    aget-object v1, v0, v2

    invoke-virtual {p1, v1, v1}, Ljf/m;->f(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    return-object v0
.end method

.method public getFaceNormals()Ljava/nio/FloatBuffer;
    .locals 10

    iget-object v0, p0, Lcom/jme3/bullet/util/DebugMeshCallback;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    div-int/lit8 v1, v0, 0x3

    const/4 v2, 0x3

    mul-int/2addr v0, v2

    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    new-instance v3, Lcom/jme3/math/Triangle;

    invoke-direct {v3}, Lcom/jme3/math/Triangle;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v1, :cond_1

    mul-int/lit8 v6, v5, 0x3

    iget-object v7, p0, Lcom/jme3/bullet/util/DebugMeshCallback;->list:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jme3/math/Vector3f;

    iget-object v8, p0, Lcom/jme3/bullet/util/DebugMeshCallback;->list:Ljava/util/ArrayList;

    add-int/lit8 v9, v6, 0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/jme3/math/Vector3f;

    iget-object v9, p0, Lcom/jme3/bullet/util/DebugMeshCallback;->list:Ljava/util/ArrayList;

    add-int/lit8 v6, v6, 0x2

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jme3/math/Vector3f;

    invoke-virtual {v3, v7, v8, v6}, Lcom/jme3/math/Triangle;->set(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    invoke-virtual {v3}, Lcom/jme3/math/Triangle;->getNormal()Lcom/jme3/math/Vector3f;

    move-result-object v6

    move v7, v4

    :goto_1
    if-ge v7, v2, :cond_0

    iget v8, v6, Lcom/jme3/math/Vector3f;->x:F

    invoke-virtual {v0, v8}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget v8, v6, Lcom/jme3/math/Vector3f;->y:F

    invoke-virtual {v0, v8}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget v8, v6, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {v0, v8}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    return-object v0
.end method

.method public getVertices()Ljava/nio/FloatBuffer;
    .locals 4

    iget-object v0, p0, Lcom/jme3/bullet/util/DebugMeshCallback;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/bullet/util/DebugMeshCallback;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/math/Vector3f;

    iget v3, v2, Lcom/jme3/math/Vector3f;->x:F

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget v3, v2, Lcom/jme3/math/Vector3f;->y:F

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget v2, v2, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public maxDistance(Lcom/jme3/math/Transform;)F
    .locals 7

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iget-object v1, p0, Lcom/jme3/bullet/util/DebugMeshCallback;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide/16 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jme3/math/Vector3f;

    invoke-static {p1, v4, v0}, Ljf/f;->S(Lcom/jme3/math/Transform;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-static {v0}, Ljf/h;->F(Lcom/jme3/math/Vector3f;)D

    move-result-wide v4

    cmpl-double v6, v4, v2

    if-lez v6, :cond_0

    move-wide v2, v4

    goto :goto_0

    :cond_1
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method public volumeConvex()F
    .locals 9

    iget-object v0, p0, Lcom/jme3/bullet/util/DebugMeshCallback;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    const-wide/16 v1, 0x0

    if-lez v0, :cond_0

    iget-object v3, p0, Lcom/jme3/bullet/util/DebugMeshCallback;->list:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jme3/math/Vector3f;

    :goto_0
    if-ge v4, v0, :cond_0

    mul-int/lit8 v5, v4, 0x3

    iget-object v6, p0, Lcom/jme3/bullet/util/DebugMeshCallback;->list:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jme3/math/Vector3f;

    iget-object v7, p0, Lcom/jme3/bullet/util/DebugMeshCallback;->list:Ljava/util/ArrayList;

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jme3/math/Vector3f;

    iget-object v8, p0, Lcom/jme3/bullet/util/DebugMeshCallback;->list:Ljava/util/ArrayList;

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jme3/math/Vector3f;

    invoke-static {v6, v7, v5, v3}, Ljf/i;->f(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)D

    move-result-wide v5

    add-double/2addr v1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    double-to-float v0, v1

    return v0
.end method
