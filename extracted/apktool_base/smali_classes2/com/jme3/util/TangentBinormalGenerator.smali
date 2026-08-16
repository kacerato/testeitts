.class public Lcom/jme3/util/TangentBinormalGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/util/TangentBinormalGenerator$VertexData;,
        Lcom/jme3/util/TangentBinormalGenerator$TriangleData;,
        Lcom/jme3/util/TangentBinormalGenerator$VertexInfo;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final ZERO_TOLERANCE:F = 1.0E-7f

.field public static debug:Z

.field private static final log:Ljava/util/logging/Logger;

.field private static toleranceDot:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/util/TangentBinormalGenerator;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/util/TangentBinormalGenerator;->log:Ljava/util/logging/Logger;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/jme3/util/TangentBinormalGenerator;->debug:Z

    const/high16 v0, 0x42340000    # 45.0f

    invoke-static {v0}, Lcom/jme3/util/TangentBinormalGenerator;->setToleranceAngle(F)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static approxEqual(Lcom/jme3/math/Vector2f;Lcom/jme3/math/Vector2f;)Z
    .locals 2

    .line 4
    iget v0, p0, Lcom/jme3/math/Vector2f;->x:F

    iget v1, p1, Lcom/jme3/math/Vector2f;->x:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v0

    const v1, 0x38d1b717    # 1.0E-4f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget p0, p0, Lcom/jme3/math/Vector2f;->y:F

    iget p1, p1, Lcom/jme3/math/Vector2f;->y:F

    sub-float/2addr p0, p1

    .line 5
    invoke-static {p0}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result p0

    cmpg-float p0, p0, v1

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static approxEqual(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/jme3/math/Vector3f;->x:F

    iget v1, p1, Lcom/jme3/math/Vector3f;->x:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v0

    const v1, 0x38d1b717    # 1.0E-4f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lcom/jme3/math/Vector3f;->y:F

    iget v2, p1, Lcom/jme3/math/Vector3f;->y:F

    sub-float/2addr v0, v2

    .line 2
    invoke-static {v0}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget p0, p0, Lcom/jme3/math/Vector3f;->z:F

    iget p1, p1, Lcom/jme3/math/Vector3f;->z:F

    sub-float/2addr p0, p1

    .line 3
    invoke-static {p0}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result p0

    cmpg-float p0, p0, v1

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static bulkPut(Lcom/jme3/scene/VertexBuffer$Format;Ljava/nio/Buffer;Ljava/nio/Buffer;)V
    .locals 2

    sget-object v0, Lcom/jme3/util/TangentBinormalGenerator$3;->$SwitchMap$com$jme3$scene$VertexBuffer$Format:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unrecognized buffer format: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    check-cast p1, Ljava/nio/DoubleBuffer;

    check-cast p2, Ljava/nio/DoubleBuffer;

    invoke-virtual {p1, p2}, Ljava/nio/DoubleBuffer;->put(Ljava/nio/DoubleBuffer;)Ljava/nio/DoubleBuffer;

    goto :goto_0

    :pswitch_1
    check-cast p1, Ljava/nio/FloatBuffer;

    check-cast p2, Ljava/nio/FloatBuffer;

    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->put(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    goto :goto_0

    :pswitch_2
    check-cast p1, Ljava/nio/IntBuffer;

    check-cast p2, Ljava/nio/IntBuffer;

    invoke-virtual {p1, p2}, Ljava/nio/IntBuffer;->put(Ljava/nio/IntBuffer;)Ljava/nio/IntBuffer;

    goto :goto_0

    :pswitch_3
    check-cast p1, Ljava/nio/ShortBuffer;

    check-cast p2, Ljava/nio/ShortBuffer;

    invoke-virtual {p1, p2}, Ljava/nio/ShortBuffer;->put(Ljava/nio/ShortBuffer;)Ljava/nio/ShortBuffer;

    goto :goto_0

    :pswitch_4
    check-cast p1, Ljava/nio/ByteBuffer;

    check-cast p2, Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static genNormalLines(Lcom/jme3/scene/Mesh;F)Lcom/jme3/scene/Mesh;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1}, Lcom/jme3/util/TangentUtils;->genNormalLines(Lcom/jme3/scene/Mesh;F)Lcom/jme3/scene/Mesh;

    move-result-object p0

    return-object p0
.end method

.method public static genTbnLines(Lcom/jme3/scene/Mesh;F)Lcom/jme3/scene/Mesh;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1}, Lcom/jme3/util/TangentUtils;->genTbnLines(Lcom/jme3/scene/Mesh;F)Lcom/jme3/scene/Mesh;

    move-result-object p0

    return-object p0
.end method

.method public static generate(Lcom/jme3/scene/Mesh;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcom/jme3/util/TangentBinormalGenerator;->generate(Lcom/jme3/scene/Mesh;ZZ)V

    return-void
.end method

.method public static generate(Lcom/jme3/scene/Mesh;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-static {p0, p1, v0}, Lcom/jme3/util/TangentBinormalGenerator;->generate(Lcom/jme3/scene/Mesh;ZZ)V

    return-void
.end method

.method public static generate(Lcom/jme3/scene/Mesh;ZZ)V
    .locals 6

    const/4 v0, 0x3

    .line 12
    new-array v1, v0, [I

    .line 13
    new-array v2, v0, [Lcom/jme3/math/Vector3f;

    .line 14
    new-array v3, v0, [Lcom/jme3/math/Vector2f;

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_0

    .line 15
    new-instance v5, Lcom/jme3/math/Vector3f;

    invoke-direct {v5}, Lcom/jme3/math/Vector3f;-><init>()V

    aput-object v5, v2, v4

    .line 16
    new-instance v5, Lcom/jme3/math/Vector2f;

    invoke-direct {v5}, Lcom/jme3/math/Vector2f;-><init>()V

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 17
    :cond_0
    sget-object v4, Lcom/jme3/scene/VertexBuffer$Type;->Normal:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v4}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 18
    sget-object v4, Lcom/jme3/util/TangentBinormalGenerator$3;->$SwitchMap$com$jme3$scene$Mesh$Mode:[I

    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->getMode()Lcom/jme3/scene/Mesh$Mode;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    if-ne v4, v0, :cond_1

    .line 19
    invoke-static {p0, v1, v2, v3}, Lcom/jme3/util/TangentBinormalGenerator;->processTriangleFan(Lcom/jme3/scene/Mesh;[I[Lcom/jme3/math/Vector3f;[Lcom/jme3/math/Vector2f;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 20
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->getMode()Lcom/jme3/scene/Mesh$Mode;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is not supported."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_2
    invoke-static {p0, v1, v2, v3}, Lcom/jme3/util/TangentBinormalGenerator;->processTriangleStrip(Lcom/jme3/scene/Mesh;[I[Lcom/jme3/math/Vector3f;[Lcom/jme3/math/Vector2f;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 22
    :cond_3
    invoke-static {p0, v1, v2, v3, p2}, Lcom/jme3/util/TangentBinormalGenerator;->processTriangles(Lcom/jme3/scene/Mesh;[I[Lcom/jme3/math/Vector3f;[Lcom/jme3/math/Vector2f;Z)Ljava/util/List;

    move-result-object v0

    if-eqz p2, :cond_4

    .line 23
    invoke-static {p0, v0, p2}, Lcom/jme3/util/TangentBinormalGenerator;->splitVertices(Lcom/jme3/scene/Mesh;Ljava/util/List;Z)Ljava/util/List;

    .line 24
    :cond_4
    :goto_1
    invoke-static {p0, v0, p1, p2}, Lcom/jme3/util/TangentBinormalGenerator;->processTriangleData(Lcom/jme3/scene/Mesh;Ljava/util/List;ZZ)V

    .line 25
    invoke-static {p0}, Lcom/jme3/util/TangentUtils;->generateBindPoseTangentsIfNecessary(Lcom/jme3/scene/Mesh;)V

    return-void

    .line 26
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The given mesh has no normal data!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static generate(Lcom/jme3/scene/Spatial;)V
    .locals 1

    const/4 v0, 0x0

    .line 11
    invoke-static {p0, v0}, Lcom/jme3/util/TangentBinormalGenerator;->generate(Lcom/jme3/scene/Spatial;Z)V

    return-void
.end method

.method public static generate(Lcom/jme3/scene/Spatial;Z)V
    .locals 2

    .line 2
    instance-of v0, p0, Lcom/jme3/scene/Node;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Lcom/jme3/scene/Node;

    .line 4
    invoke-virtual {p0}, Lcom/jme3/scene/Node;->getChildren()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Spatial;

    .line 5
    invoke-static {v0, p1}, Lcom/jme3/util/TangentBinormalGenerator;->generate(Lcom/jme3/scene/Spatial;Z)V

    goto :goto_0

    .line 6
    :cond_0
    check-cast p0, Lcom/jme3/scene/Geometry;

    .line 7
    invoke-virtual {p0}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v0

    .line 8
    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->TexCoord:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->Normal:Lcom/jme3/scene/VertexBuffer$Type;

    .line 9
    invoke-virtual {v0, v1}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {p0}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lcom/jme3/util/TangentBinormalGenerator;->generate(Lcom/jme3/scene/Mesh;ZZ)V

    :cond_1
    return-void
.end method

.method public static generateParallel(Lcom/jme3/scene/Spatial;Ljava/util/concurrent/ExecutorService;)V
    .locals 3

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Lcom/jme3/util/TangentBinormalGenerator$1;

    invoke-direct {v1, v0}, Lcom/jme3/util/TangentBinormalGenerator$1;-><init>(Ljava/util/Set;)V

    invoke-virtual {p0, v1}, Lcom/jme3/scene/Spatial;->breadthFirstTraversal(Lcom/jme3/scene/SceneGraphVisitor;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/scene/Mesh;

    new-instance v2, Lcom/jme3/util/TangentBinormalGenerator$2;

    invoke-direct {v2, v1}, Lcom/jme3/util/TangentBinormalGenerator$2;-><init>(Lcom/jme3/scene/Mesh;)V

    invoke-interface {p1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Future;

    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    sget-object v0, Lcom/jme3/util/TangentBinormalGenerator;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "Error while computing tangents"

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private static initVertexData(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/jme3/util/TangentBinormalGenerator$VertexData;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    new-instance v2, Lcom/jme3/util/TangentBinormalGenerator$VertexData;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/jme3/util/TangentBinormalGenerator$VertexData;-><init>(Lcom/jme3/util/TangentBinormalGenerator$1;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static isDegenerateTriangle(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p0

    invoke-virtual {p2, p1}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jme3/math/Vector3f;->cross(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p0

    invoke-virtual {p0}, Lcom/jme3/math/Vector3f;->lengthSquared()F

    move-result p0

    const/4 p1, 0x0

    cmpl-float p0, p0, p1

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static linkVertices(Lcom/jme3/scene/Mesh;Z)Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/scene/Mesh;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Lcom/jme3/util/TangentBinormalGenerator$VertexInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v1}, Lcom/jme3/scene/Mesh;->getFloatBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Ljava/nio/FloatBuffer;

    move-result-object v1

    sget-object v2, Lcom/jme3/scene/VertexBuffer$Type;->Normal:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v2}, Lcom/jme3/scene/Mesh;->getFloatBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Ljava/nio/FloatBuffer;

    move-result-object v2

    sget-object v3, Lcom/jme3/scene/VertexBuffer$Type;->TexCoord:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v3}, Lcom/jme3/scene/Mesh;->getFloatBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Ljava/nio/FloatBuffer;

    move-result-object p0

    new-instance v3, Lcom/jme3/math/Vector3f;

    invoke-direct {v3}, Lcom/jme3/math/Vector3f;-><init>()V

    new-instance v4, Lcom/jme3/math/Vector3f;

    invoke-direct {v4}, Lcom/jme3/math/Vector3f;-><init>()V

    new-instance v5, Lcom/jme3/math/Vector2f;

    invoke-direct {v5}, Lcom/jme3/math/Vector2f;-><init>()V

    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    move-result v6

    div-int/lit8 v6, v6, 0x3

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    if-ge v8, v6, :cond_2

    invoke-static {v3, v1, v8}, Lcom/jme3/util/BufferUtils;->populateFromBuffer(Lcom/jme3/math/Vector3f;Ljava/nio/FloatBuffer;I)V

    invoke-static {v4, v2, v8}, Lcom/jme3/util/BufferUtils;->populateFromBuffer(Lcom/jme3/math/Vector3f;Ljava/nio/FloatBuffer;I)V

    invoke-static {v5, p0, v8}, Lcom/jme3/util/BufferUtils;->populateFromBuffer(Lcom/jme3/math/Vector2f;Ljava/nio/FloatBuffer;I)V

    if-nez p1, :cond_1

    move v9, v7

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_1

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/jme3/util/TangentBinormalGenerator$VertexInfo;

    iget-object v11, v10, Lcom/jme3/util/TangentBinormalGenerator$VertexInfo;->position:Lcom/jme3/math/Vector3f;

    invoke-static {v11, v3}, Lcom/jme3/util/TangentBinormalGenerator;->approxEqual(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Z

    move-result v11

    if-eqz v11, :cond_0

    iget-object v11, v10, Lcom/jme3/util/TangentBinormalGenerator$VertexInfo;->normal:Lcom/jme3/math/Vector3f;

    invoke-static {v11, v4}, Lcom/jme3/util/TangentBinormalGenerator;->approxEqual(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Z

    move-result v11

    if-eqz v11, :cond_0

    iget-object v11, v10, Lcom/jme3/util/TangentBinormalGenerator$VertexInfo;->texCoord:Lcom/jme3/math/Vector2f;

    invoke-static {v11, v5}, Lcom/jme3/util/TangentBinormalGenerator;->approxEqual(Lcom/jme3/math/Vector2f;Lcom/jme3/math/Vector2f;)Z

    move-result v11

    if-eqz v11, :cond_0

    iget-object v9, v10, Lcom/jme3/util/TangentBinormalGenerator$VertexInfo;->indices:Ljava/util/ArrayList;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    new-instance v9, Lcom/jme3/util/TangentBinormalGenerator$VertexInfo;

    invoke-virtual {v3}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v10

    invoke-virtual {v4}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v11

    invoke-virtual {v5}, Lcom/jme3/math/Vector2f;->clone()Lcom/jme3/math/Vector2f;

    move-result-object v12

    invoke-direct {v9, v10, v11, v12}, Lcom/jme3/util/TangentBinormalGenerator$VertexInfo;-><init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector2f;)V

    iget-object v10, v9, Lcom/jme3/util/TangentBinormalGenerator$VertexInfo;->indices:Ljava/util/ArrayList;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static parity(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result p0

    const/4 p1, 0x0

    cmpg-float p0, p0, p1

    if-gez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static processTriangle([I[Lcom/jme3/math/Vector3f;[Lcom/jme3/math/Vector2f;)Lcom/jme3/util/TangentBinormalGenerator$TriangleData;
    .locals 26

    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v1

    :try_start_0
    iget-object v0, v1, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    iget-object v2, v1, Lcom/jme3/util/TempVars;->vect2:Lcom/jme3/math/Vector3f;

    iget-object v3, v1, Lcom/jme3/util/TempVars;->vect2d:Lcom/jme3/math/Vector2f;

    iget-object v4, v1, Lcom/jme3/util/TempVars;->vect2d2:Lcom/jme3/math/Vector2f;

    iget-object v5, v1, Lcom/jme3/util/TempVars;->vect3:Lcom/jme3/math/Vector3f;

    iget-object v6, v1, Lcom/jme3/util/TempVars;->vect4:Lcom/jme3/math/Vector3f;

    iget-object v7, v1, Lcom/jme3/util/TempVars;->vect5:Lcom/jme3/math/Vector3f;

    const/4 v8, 0x1

    aget-object v9, p2, v8

    const/4 v10, 0x0

    aget-object v11, p2, v10

    invoke-virtual {v9, v11, v3}, Lcom/jme3/math/Vector2f;->subtract(Lcom/jme3/math/Vector2f;Lcom/jme3/math/Vector2f;)Lcom/jme3/math/Vector2f;

    const/4 v9, 0x2

    aget-object v11, p2, v9

    aget-object v12, p2, v10

    invoke-virtual {v11, v12, v4}, Lcom/jme3/math/Vector2f;->subtract(Lcom/jme3/math/Vector2f;Lcom/jme3/math/Vector2f;)Lcom/jme3/math/Vector2f;

    iget v11, v3, Lcom/jme3/math/Vector2f;->x:F

    iget v12, v4, Lcom/jme3/math/Vector2f;->y:F

    mul-float/2addr v11, v12

    iget v12, v3, Lcom/jme3/math/Vector2f;->y:F

    iget v13, v4, Lcom/jme3/math/Vector2f;->x:F

    mul-float/2addr v12, v13

    sub-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v12

    const v13, 0x33d6bf95    # 1.0E-7f

    cmpg-float v12, v12, v13

    const/high16 v14, 0x3f800000    # 1.0f

    if-gez v12, :cond_0

    sget-object v11, Lcom/jme3/util/TangentBinormalGenerator;->log:Ljava/util/logging/Logger;

    sget-object v12, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v15, "Collinear uv coordinates for triangle [{0}, {1}, {2}]; tex0 = [{3}, {4}], tex1 = [{5}, {6}], tex2 = [{7}, {8}]"

    aget v16, p0, v10

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aget v16, p0, v8

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aget v16, p0, v9

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aget-object v13, p2, v10

    iget v13, v13, Lcom/jme3/math/Vector2f;->x:F

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v20

    aget-object v13, p2, v10

    iget v13, v13, Lcom/jme3/math/Vector2f;->y:F

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v21

    aget-object v13, p2, v8

    iget v13, v13, Lcom/jme3/math/Vector2f;->x:F

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    aget-object v13, p2, v8

    iget v13, v13, Lcom/jme3/math/Vector2f;->y:F

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v23

    aget-object v13, p2, v9

    iget v13, v13, Lcom/jme3/math/Vector2f;->x:F

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v24

    aget-object v13, p2, v9

    iget v13, v13, Lcom/jme3/math/Vector2f;->y:F

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v25

    filled-new-array/range {v17 .. v25}, [Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v11, v12, v15, v13}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    move v12, v8

    move v11, v14

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_2

    :cond_0
    move v12, v10

    :goto_0
    aget-object v13, p1, v8

    aget-object v15, p1, v10

    invoke-virtual {v13, v15, v0}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    aget-object v13, p1, v9

    aget-object v15, p1, v10

    invoke-virtual {v13, v15, v2}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {v5, v0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {v5}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    invoke-virtual {v6, v2}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {v6}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    invoke-virtual {v5, v6}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v13

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    sub-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    const v15, 0x33d6bf95    # 1.0E-7f

    cmpg-float v13, v13, v15

    if-gez v13, :cond_1

    sget-object v13, Lcom/jme3/util/TangentBinormalGenerator;->log:Ljava/util/logging/Logger;

    sget-object v15, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v14, "Vertices are on the same line for triangle [{0}, {1}, {2}]."

    aget v10, p0, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aget v8, p0, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aget v9, p0, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v10, v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v13, v15, v14, v8}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    const/high16 v8, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    move v8, v14

    :goto_1
    div-float v14, v8, v11

    iget v8, v4, Lcom/jme3/math/Vector2f;->y:F

    iget v9, v0, Lcom/jme3/math/Vector3f;->x:F

    mul-float/2addr v9, v8

    iget v10, v3, Lcom/jme3/math/Vector2f;->y:F

    iget v11, v2, Lcom/jme3/math/Vector3f;->x:F

    mul-float/2addr v11, v10

    sub-float/2addr v9, v11

    mul-float/2addr v9, v14

    iput v9, v5, Lcom/jme3/math/Vector3f;->x:F

    iget v9, v0, Lcom/jme3/math/Vector3f;->y:F

    mul-float/2addr v9, v8

    iget v11, v2, Lcom/jme3/math/Vector3f;->y:F

    mul-float/2addr v11, v10

    sub-float/2addr v9, v11

    mul-float/2addr v9, v14

    iput v9, v5, Lcom/jme3/math/Vector3f;->y:F

    iget v9, v0, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v8, v9

    iget v9, v2, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v10, v9

    sub-float/2addr v8, v10

    mul-float/2addr v8, v14

    iput v8, v5, Lcom/jme3/math/Vector3f;->z:F

    if-eqz v12, :cond_2

    invoke-virtual {v5}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    :cond_2
    iget v3, v3, Lcom/jme3/math/Vector2f;->x:F

    iget v8, v2, Lcom/jme3/math/Vector3f;->x:F

    mul-float/2addr v8, v3

    iget v4, v4, Lcom/jme3/math/Vector2f;->x:F

    iget v9, v0, Lcom/jme3/math/Vector3f;->x:F

    mul-float/2addr v9, v4

    sub-float/2addr v8, v9

    mul-float/2addr v8, v14

    iput v8, v6, Lcom/jme3/math/Vector3f;->x:F

    iget v8, v2, Lcom/jme3/math/Vector3f;->y:F

    mul-float/2addr v8, v3

    iget v9, v0, Lcom/jme3/math/Vector3f;->y:F

    mul-float/2addr v9, v4

    sub-float/2addr v8, v9

    mul-float/2addr v8, v14

    iput v8, v6, Lcom/jme3/math/Vector3f;->y:F

    iget v2, v2, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v3, v2

    iget v0, v0, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v4, v0

    sub-float/2addr v3, v4

    mul-float/2addr v3, v14

    iput v3, v6, Lcom/jme3/math/Vector3f;->z:F

    if-eqz v12, :cond_3

    invoke-virtual {v6}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    :cond_3
    invoke-virtual {v5, v6, v7}, Lcom/jme3/math/Vector3f;->cross(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {v7}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    new-instance v0, Lcom/jme3/util/TangentBinormalGenerator$TriangleData;

    invoke-virtual {v5}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-virtual {v6}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v3

    invoke-virtual {v7}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/jme3/util/TangentBinormalGenerator$TriangleData;-><init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Lcom/jme3/util/TempVars;->release()V

    return-object v0

    :goto_2
    invoke-virtual {v1}, Lcom/jme3/util/TempVars;->release()V

    throw v0
.end method

.method private static processTriangleData(Lcom/jme3/scene/Mesh;Ljava/util/List;ZZ)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/scene/Mesh;",
            "Ljava/util/List<",
            "Lcom/jme3/util/TangentBinormalGenerator$VertexData;",
            ">;ZZ)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-static {v0, v2}, Lcom/jme3/util/TangentBinormalGenerator;->linkVertices(Lcom/jme3/scene/Mesh;Z)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x4

    mul-int/2addr v3, v4

    invoke-static {v3}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v3

    sget-boolean v5, Lcom/jme3/util/TangentBinormalGenerator;->debug:Z

    if-eqz v5, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Lcom/jme3/math/ColorRGBA;

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    new-instance v6, Lcom/jme3/math/Vector3f;

    invoke-direct {v6}, Lcom/jme3/math/Vector3f;-><init>()V

    new-instance v7, Lcom/jme3/math/Vector3f;

    invoke-direct {v7}, Lcom/jme3/math/Vector3f;-><init>()V

    new-instance v8, Lcom/jme3/math/Vector3f;

    invoke-direct {v8}, Lcom/jme3/math/Vector3f;-><init>()V

    new-instance v9, Lcom/jme3/math/Vector3f;

    invoke-direct {v9}, Lcom/jme3/math/Vector3f;-><init>()V

    new-instance v10, Lcom/jme3/math/Vector3f;

    invoke-direct {v10}, Lcom/jme3/math/Vector3f;-><init>()V

    const/4 v11, 0x0

    move v12, v11

    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v12, v13, :cond_13

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/jme3/util/TangentBinormalGenerator$VertexInfo;

    iget-object v14, v13, Lcom/jme3/util/TangentBinormalGenerator$VertexInfo;->normal:Lcom/jme3/math/Vector3f;

    invoke-virtual {v8, v14}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {v8}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    iget-object v14, v13, Lcom/jme3/util/TangentBinormalGenerator$VertexInfo;->indices:Ljava/util/ArrayList;

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/jme3/util/TangentBinormalGenerator$VertexData;

    iget-object v14, v14, Lcom/jme3/util/TangentBinormalGenerator$VertexData;->triangles:Ljava/util/ArrayList;

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/jme3/util/TangentBinormalGenerator$TriangleData;

    iget-object v15, v14, Lcom/jme3/util/TangentBinormalGenerator$TriangleData;->tangent:Lcom/jme3/math/Vector3f;

    invoke-virtual {v6, v15}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {v6}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    iget-object v15, v14, Lcom/jme3/util/TangentBinormalGenerator$TriangleData;->binormal:Lcom/jme3/math/Vector3f;

    invoke-virtual {v7, v15}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {v7}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    iget-object v15, v13, Lcom/jme3/util/TangentBinormalGenerator$VertexInfo;->indices:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v4, v16

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/jme3/util/TangentBinormalGenerator$VertexData;

    iget-object v11, v11, Lcom/jme3/util/TangentBinormalGenerator$VertexData;->triangles:Ljava/util/ArrayList;

    move-object/from16 v17, v2

    move-object/from16 v18, v15

    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v2, v15, :cond_3

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/jme3/util/TangentBinormalGenerator$TriangleData;

    move-object/from16 v19, v11

    iget-object v11, v15, Lcom/jme3/util/TangentBinormalGenerator$TriangleData;->tangent:Lcom/jme3/math/Vector3f;

    invoke-virtual {v9, v11}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {v9}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    invoke-virtual {v6, v9}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v11

    sget v20, Lcom/jme3/util/TangentBinormalGenerator;->toleranceDot:F

    cmpg-float v11, v11, v20

    if-gez v11, :cond_1

    sget-object v2, Lcom/jme3/util/TangentBinormalGenerator;->log:Ljava/util/logging/Logger;

    sget-object v11, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v15, "Angle between tangents exceeds tolerance for vertex {0}."

    invoke-virtual {v2, v11, v15, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    :cond_1
    if-nez p2, :cond_2

    iget-object v11, v15, Lcom/jme3/util/TangentBinormalGenerator$TriangleData;->binormal:Lcom/jme3/math/Vector3f;

    invoke-virtual {v10, v11}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {v10}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    invoke-virtual {v7, v10}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v11

    sget v15, Lcom/jme3/util/TangentBinormalGenerator;->toleranceDot:F

    cmpg-float v11, v11, v15

    if-gez v11, :cond_2

    sget-object v2, Lcom/jme3/util/TangentBinormalGenerator;->log:Ljava/util/logging/Logger;

    sget-object v11, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v15, "Angle between binormals exceeds tolerance for vertex {0}."

    invoke-virtual {v2, v11, v15, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    :cond_2
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v11, v19

    goto :goto_3

    :cond_3
    :goto_4
    move-object/from16 v2, v17

    move-object/from16 v15, v18

    const/4 v4, 0x4

    const/4 v11, 0x0

    goto :goto_2

    :cond_4
    move-object/from16 v17, v2

    const/4 v2, 0x0

    invoke-virtual {v6, v2, v2, v2}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    invoke-virtual {v7, v2, v2, v2}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    iget-object v4, v13, Lcom/jme3/util/TangentBinormalGenerator$VertexInfo;->indices:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v11, 0x0

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v2, v18

    check-cast v2, Lcom/jme3/util/TangentBinormalGenerator$VertexData;

    iget-object v2, v2, Lcom/jme3/util/TangentBinormalGenerator$VertexData;->triangles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v18

    add-int v11, v11, v18

    sget-boolean v18, Lcom/jme3/util/TangentBinormalGenerator;->debug:Z

    if-eqz v18, :cond_5

    sget-object v18, Lcom/jme3/math/ColorRGBA;->White:Lcom/jme3/math/ColorRGBA;

    aput-object v18, v5, v15

    :cond_5
    move-object/from16 v18, v4

    const/4 v15, 0x0

    :goto_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v15, v4, :cond_6

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jme3/util/TangentBinormalGenerator$TriangleData;

    move-object/from16 v20, v2

    iget-object v2, v4, Lcom/jme3/util/TangentBinormalGenerator$TriangleData;->tangent:Lcom/jme3/math/Vector3f;

    invoke-virtual {v6, v2}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object v2, v4, Lcom/jme3/util/TangentBinormalGenerator$TriangleData;->binormal:Lcom/jme3/math/Vector3f;

    invoke-virtual {v7, v2}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, v20

    goto :goto_6

    :cond_6
    move-object/from16 v4, v18

    const/4 v2, 0x0

    goto :goto_5

    :cond_7
    iget-object v2, v13, Lcom/jme3/util/TangentBinormalGenerator$VertexInfo;->indices:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    invoke-virtual {v6}, Lcom/jme3/math/Vector3f;->length()F

    move-result v15

    const v16, 0x33d6bf95    # 1.0E-7f

    cmpg-float v15, v15, v16

    if-gez v15, :cond_9

    sget-object v15, Lcom/jme3/util/TangentBinormalGenerator;->log:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v1, "Shared tangent is zero for vertex {0}."

    invoke-virtual {v15, v4, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v7}, Lcom/jme3/math/Vector3f;->length()F

    move-result v1

    cmpl-float v1, v1, v16

    if-ltz v1, :cond_8

    invoke-virtual {v7, v8, v6}, Lcom/jme3/math/Vector3f;->cross(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {v6}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    goto :goto_7

    :cond_8
    iget-object v1, v14, Lcom/jme3/util/TangentBinormalGenerator$TriangleData;->tangent:Lcom/jme3/math/Vector3f;

    invoke-virtual {v6, v1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    goto :goto_7

    :cond_9
    int-to-float v1, v11

    invoke-virtual {v6, v1}, Lcom/jme3/math/Vector3f;->divideLocal(F)Lcom/jme3/math/Vector3f;

    :goto_7
    invoke-virtual {v9, v6}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {v9}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    invoke-virtual {v9, v8}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v16

    if-gez v1, :cond_a

    sget-object v1, Lcom/jme3/util/TangentBinormalGenerator;->log:Ljava/util/logging/Logger;

    sget-object v15, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Normal and tangent are parallel for vertex {0}."

    invoke-virtual {v1, v15, v4, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_a
    if-nez p2, :cond_e

    invoke-virtual {v7}, Lcom/jme3/math/Vector3f;->length()F

    move-result v1

    cmpg-float v1, v1, v16

    if-gez v1, :cond_c

    sget-object v1, Lcom/jme3/util/TangentBinormalGenerator;->log:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v11, "Shared binormal is zero for vertex {0}."

    invoke-virtual {v1, v4, v11, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v6}, Lcom/jme3/math/Vector3f;->length()F

    move-result v1

    cmpl-float v1, v1, v16

    if-ltz v1, :cond_b

    invoke-virtual {v8, v6, v7}, Lcom/jme3/math/Vector3f;->cross(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {v7}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    goto :goto_8

    :cond_b
    iget-object v1, v14, Lcom/jme3/util/TangentBinormalGenerator$TriangleData;->binormal:Lcom/jme3/math/Vector3f;

    invoke-virtual {v7, v1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    goto :goto_8

    :cond_c
    int-to-float v1, v11

    invoke-virtual {v7, v1}, Lcom/jme3/math/Vector3f;->divideLocal(F)Lcom/jme3/math/Vector3f;

    :goto_8
    invoke-virtual {v10, v7}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {v10}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    invoke-virtual {v10, v8}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v16

    if-gez v1, :cond_d

    sget-object v1, Lcom/jme3/util/TangentBinormalGenerator;->log:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v11, "Normal and binormal are parallel for vertex {0}."

    invoke-virtual {v1, v4, v11, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_d
    invoke-virtual {v10, v9}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v16

    if-gez v1, :cond_f

    sget-object v1, Lcom/jme3/util/TangentBinormalGenerator;->log:Ljava/util/logging/Logger;

    sget-object v11, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v14, "Tangent and binormal are parallel for vertex {0}."

    invoke-virtual {v1, v11, v14, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_9

    :cond_e
    const/high16 v4, 0x3f800000    # 1.0f

    :cond_f
    :goto_9
    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1}, Lcom/jme3/math/Vector3f;-><init>()V

    new-instance v2, Lcom/jme3/math/Vector3f;

    invoke-direct {v2}, Lcom/jme3/math/Vector3f;-><init>()V

    iget-object v11, v13, Lcom/jme3/util/TangentBinormalGenerator$VertexInfo;->indices:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const/high16 v14, -0x40800000    # -1.0f

    :goto_a
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_12

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-eqz p2, :cond_11

    invoke-virtual {v1, v6}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v14

    invoke-virtual {v2, v8}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v4

    invoke-virtual {v8, v6}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v13

    invoke-virtual {v4, v13}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    move-result-object v4

    invoke-virtual {v14, v4}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {v1}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    invoke-virtual {v2, v8}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/jme3/math/Vector3f;->crossLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v4

    const/4 v13, 0x0

    cmpg-float v4, v4, v13

    if-gez v4, :cond_10

    const/high16 v4, -0x40800000    # -1.0f

    goto :goto_b

    :cond_10
    const/high16 v4, 0x3f800000    # 1.0f

    :goto_b
    mul-int/lit8 v15, v15, 0x4

    iget v14, v1, Lcom/jme3/math/Vector3f;->x:F

    invoke-virtual {v3, v15, v14}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-int/lit8 v14, v15, 0x1

    iget v13, v1, Lcom/jme3/math/Vector3f;->y:F

    invoke-virtual {v3, v14, v13}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-int/lit8 v13, v15, 0x2

    iget v14, v1, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {v3, v13, v14}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-int/lit8 v15, v15, 0x3

    invoke-virtual {v3, v15, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    move v14, v4

    goto :goto_c

    :cond_11
    mul-int/lit8 v15, v15, 0x4

    iget v4, v6, Lcom/jme3/math/Vector3f;->x:F

    invoke-virtual {v3, v15, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-int/lit8 v4, v15, 0x1

    iget v13, v6, Lcom/jme3/math/Vector3f;->y:F

    invoke-virtual {v3, v4, v13}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-int/lit8 v4, v15, 0x2

    iget v13, v6, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {v3, v4, v13}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-int/lit8 v15, v15, 0x3

    invoke-virtual {v3, v15, v14}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    :goto_c
    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_a

    :cond_12
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    const/4 v4, 0x4

    const/4 v11, 0x0

    goto/16 :goto_1

    :cond_13
    invoke-virtual {v3}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/nio/FloatBuffer;->limit(I)Ljava/nio/Buffer;

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->Tangent:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Mesh;->clearBuffer(Lcom/jme3/scene/VertexBuffer$Type;)V

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2, v3}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    invoke-virtual/range {p0 .. p0}, Lcom/jme3/scene/Mesh;->isAnimated()Z

    move-result v1

    if-eqz v1, :cond_14

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->BindPoseNormal:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Mesh;->clearBuffer(Lcom/jme3/scene/VertexBuffer$Type;)V

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->BindPosePosition:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Mesh;->clearBuffer(Lcom/jme3/scene/VertexBuffer$Type;)V

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->BindPoseTangent:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Mesh;->clearBuffer(Lcom/jme3/scene/VertexBuffer$Type;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Mesh;->generateBindPose(Z)V

    :cond_14
    sget-boolean v1, Lcom/jme3/util/TangentBinormalGenerator;->debug:Z

    if-eqz v1, :cond_15

    move-object/from16 v1, p1

    invoke-static {v1, v5, v0}, Lcom/jme3/util/TangentBinormalGenerator;->writeColorBuffer(Ljava/util/List;[Lcom/jme3/math/ColorRGBA;Lcom/jme3/scene/Mesh;)V

    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/jme3/scene/Mesh;->updateBound()V

    invoke-virtual/range {p0 .. p0}, Lcom/jme3/scene/Mesh;->updateCounts()V

    return-void
.end method

.method private static processTriangleFan(Lcom/jme3/scene/Mesh;[I[Lcom/jme3/math/Vector3f;[Lcom/jme3/math/Vector2f;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/scene/Mesh;",
            "[I[",
            "Lcom/jme3/math/Vector3f;",
            "[",
            "Lcom/jme3/math/Vector2f;",
            ")",
            "Ljava/util/List<",
            "Lcom/jme3/util/TangentBinormalGenerator$VertexData;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->getIndexBuffer()Lcom/jme3/scene/mesh/IndexBuffer;

    move-result-object v0

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v1}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/FloatBuffer;

    sget-object v2, Lcom/jme3/scene/VertexBuffer$Type;->TexCoord:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v2}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object p0

    check-cast p0, Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    invoke-static {v2}, Lcom/jme3/util/TangentBinormalGenerator;->initVertexData(I)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/jme3/scene/mesh/IndexBuffer;->get(I)I

    move-result v4

    aput v4, p1, v3

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/jme3/scene/mesh/IndexBuffer;->get(I)I

    move-result v5

    aput v5, p1, v4

    aget-object v5, p2, v3

    aget v6, p1, v3

    invoke-static {v5, v1, v6}, Lcom/jme3/util/BufferUtils;->populateFromBuffer(Lcom/jme3/math/Vector3f;Ljava/nio/FloatBuffer;I)V

    aget-object v5, p2, v4

    aget v6, p1, v4

    invoke-static {v5, v1, v6}, Lcom/jme3/util/BufferUtils;->populateFromBuffer(Lcom/jme3/math/Vector3f;Ljava/nio/FloatBuffer;I)V

    aget-object v5, p3, v3

    aget v6, p1, v3

    invoke-static {v5, p0, v6}, Lcom/jme3/util/BufferUtils;->populateFromBuffer(Lcom/jme3/math/Vector2f;Ljava/nio/FloatBuffer;I)V

    aget-object v5, p3, v4

    aget v6, p1, v4

    invoke-static {v5, p0, v6}, Lcom/jme3/util/BufferUtils;->populateFromBuffer(Lcom/jme3/math/Vector2f;Ljava/nio/FloatBuffer;I)V

    const/4 v5, 0x2

    move v6, v5

    :goto_0
    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    move-result v7

    div-int/lit8 v7, v7, 0x3

    if-ge v6, v7, :cond_0

    invoke-virtual {v0, v6}, Lcom/jme3/scene/mesh/IndexBuffer;->get(I)I

    move-result v7

    aput v7, p1, v5

    aget-object v8, p2, v5

    invoke-static {v8, v1, v7}, Lcom/jme3/util/BufferUtils;->populateFromBuffer(Lcom/jme3/math/Vector3f;Ljava/nio/FloatBuffer;I)V

    aget-object v7, p3, v5

    aget v8, p1, v5

    invoke-static {v7, p0, v8}, Lcom/jme3/util/BufferUtils;->populateFromBuffer(Lcom/jme3/math/Vector2f;Ljava/nio/FloatBuffer;I)V

    invoke-static {p1, p2, p3}, Lcom/jme3/util/TangentBinormalGenerator;->processTriangle([I[Lcom/jme3/math/Vector3f;[Lcom/jme3/math/Vector2f;)Lcom/jme3/util/TangentBinormalGenerator$TriangleData;

    move-result-object v7

    aget v8, p1, v3

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/jme3/util/TangentBinormalGenerator$VertexData;

    iget-object v8, v8, Lcom/jme3/util/TangentBinormalGenerator$VertexData;->triangles:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget v8, p1, v4

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/jme3/util/TangentBinormalGenerator$VertexData;

    iget-object v8, v8, Lcom/jme3/util/TangentBinormalGenerator$VertexData;->triangles:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget v8, p1, v5

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/jme3/util/TangentBinormalGenerator$VertexData;

    iget-object v8, v8, Lcom/jme3/util/TangentBinormalGenerator$VertexData;->triangles:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v7, p2, v4

    aget-object v8, p2, v5

    aput-object v8, p2, v4

    aput-object v7, p2, v5

    aget-object v7, p3, v4

    aget-object v8, p3, v5

    aput-object v8, p3, v4

    aput-object v7, p3, v5

    aget v7, p1, v5

    aput v7, p1, v4

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method private static processTriangleStrip(Lcom/jme3/scene/Mesh;[I[Lcom/jme3/math/Vector3f;[Lcom/jme3/math/Vector2f;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/scene/Mesh;",
            "[I[",
            "Lcom/jme3/math/Vector3f;",
            "[",
            "Lcom/jme3/math/Vector2f;",
            ")",
            "Ljava/util/List<",
            "Lcom/jme3/util/TangentBinormalGenerator$VertexData;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->getIndexBuffer()Lcom/jme3/scene/mesh/IndexBuffer;

    move-result-object v0

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v1}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/FloatBuffer;

    sget-object v2, Lcom/jme3/scene/VertexBuffer$Type;->TexCoord:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v2}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object p0

    check-cast p0, Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    invoke-static {v2}, Lcom/jme3/util/TangentBinormalGenerator;->initVertexData(I)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/jme3/scene/mesh/IndexBuffer;->get(I)I

    move-result v4

    aput v4, p1, v3

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/jme3/scene/mesh/IndexBuffer;->get(I)I

    move-result v5

    aput v5, p1, v4

    aget-object v5, p2, v3

    aget v6, p1, v3

    invoke-static {v5, v1, v6}, Lcom/jme3/util/BufferUtils;->populateFromBuffer(Lcom/jme3/math/Vector3f;Ljava/nio/FloatBuffer;I)V

    aget-object v5, p2, v4

    aget v6, p1, v4

    invoke-static {v5, v1, v6}, Lcom/jme3/util/BufferUtils;->populateFromBuffer(Lcom/jme3/math/Vector3f;Ljava/nio/FloatBuffer;I)V

    aget-object v5, p3, v3

    aget v6, p1, v3

    invoke-static {v5, p0, v6}, Lcom/jme3/util/BufferUtils;->populateFromBuffer(Lcom/jme3/math/Vector2f;Ljava/nio/FloatBuffer;I)V

    aget-object v5, p3, v4

    aget v6, p1, v4

    invoke-static {v5, p0, v6}, Lcom/jme3/util/BufferUtils;->populateFromBuffer(Lcom/jme3/math/Vector2f;Ljava/nio/FloatBuffer;I)V

    const/4 v5, 0x2

    move v6, v5

    :goto_0
    invoke-virtual {v0}, Lcom/jme3/scene/mesh/IndexBuffer;->size()I

    move-result v7

    if-ge v6, v7, :cond_1

    invoke-virtual {v0, v6}, Lcom/jme3/scene/mesh/IndexBuffer;->get(I)I

    move-result v7

    aput v7, p1, v5

    aget-object v8, p2, v5

    invoke-static {v8, v1, v7}, Lcom/jme3/util/BufferUtils;->populateFromBuffer(Lcom/jme3/math/Vector3f;Ljava/nio/FloatBuffer;I)V

    aget-object v7, p3, v5

    aget v8, p1, v5

    invoke-static {v7, p0, v8}, Lcom/jme3/util/BufferUtils;->populateFromBuffer(Lcom/jme3/math/Vector2f;Ljava/nio/FloatBuffer;I)V

    aget-object v7, p2, v3

    aget-object v8, p2, v4

    aget-object v9, p2, v5

    invoke-static {v7, v8, v9}, Lcom/jme3/util/TangentBinormalGenerator;->isDegenerateTriangle(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Z

    move-result v7

    invoke-static {p1, p2, p3}, Lcom/jme3/util/TangentBinormalGenerator;->processTriangle([I[Lcom/jme3/math/Vector3f;[Lcom/jme3/math/Vector2f;)Lcom/jme3/util/TangentBinormalGenerator$TriangleData;

    move-result-object v8

    if-nez v7, :cond_0

    aget v7, p1, v3

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jme3/util/TangentBinormalGenerator$VertexData;

    iget-object v7, v7, Lcom/jme3/util/TangentBinormalGenerator$VertexData;->triangles:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget v7, p1, v4

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jme3/util/TangentBinormalGenerator$VertexData;

    iget-object v7, v7, Lcom/jme3/util/TangentBinormalGenerator$VertexData;->triangles:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget v7, p1, v5

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jme3/util/TangentBinormalGenerator$VertexData;

    iget-object v7, v7, Lcom/jme3/util/TangentBinormalGenerator$VertexData;->triangles:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    aget-object v7, p2, v3

    aget-object v8, p2, v4

    aput-object v8, p2, v3

    aget-object v8, p2, v5

    aput-object v8, p2, v4

    aput-object v7, p2, v5

    aget-object v7, p3, v3

    aget-object v8, p3, v4

    aput-object v8, p3, v3

    aget-object v8, p3, v5

    aput-object v8, p3, v4

    aput-object v7, p3, v5

    aget v7, p1, v4

    aput v7, p1, v3

    aget v7, p1, v5

    aput v7, p1, v4

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method private static processTriangles(Lcom/jme3/scene/Mesh;[I[Lcom/jme3/math/Vector3f;[Lcom/jme3/math/Vector2f;Z)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/scene/Mesh;",
            "[I[",
            "Lcom/jme3/math/Vector3f;",
            "[",
            "Lcom/jme3/math/Vector2f;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/jme3/util/TangentBinormalGenerator$VertexData;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->getIndexBuffer()Lcom/jme3/scene/mesh/IndexBuffer;

    move-result-object v0

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v1}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/FloatBuffer;

    sget-object v2, Lcom/jme3/scene/VertexBuffer$Type;->TexCoord:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v2}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, v2}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object p0

    check-cast p0, Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    move-result v2

    const/4 v3, 0x3

    div-int/2addr v2, v3

    invoke-static {v2}, Lcom/jme3/util/TangentBinormalGenerator;->initVertexData(I)Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    invoke-virtual {v0}, Lcom/jme3/scene/mesh/IndexBuffer;->size()I

    move-result v6

    div-int/2addr v6, v3

    if-ge v5, v6, :cond_2

    move v6, v4

    :goto_1
    if-ge v6, v3, :cond_0

    mul-int/lit8 v7, v5, 0x3

    add-int/2addr v7, v6

    invoke-virtual {v0, v7}, Lcom/jme3/scene/mesh/IndexBuffer;->get(I)I

    move-result v7

    aput v7, p1, v6

    aget-object v8, p2, v6

    invoke-static {v8, v1, v7}, Lcom/jme3/util/BufferUtils;->populateFromBuffer(Lcom/jme3/math/Vector3f;Ljava/nio/FloatBuffer;I)V

    aget-object v7, p3, v6

    aget v8, p1, v6

    invoke-static {v7, p0, v8}, Lcom/jme3/util/BufferUtils;->populateFromBuffer(Lcom/jme3/math/Vector2f;Ljava/nio/FloatBuffer;I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    invoke-static {p1, p2, p3}, Lcom/jme3/util/TangentBinormalGenerator;->processTriangle([I[Lcom/jme3/math/Vector3f;[Lcom/jme3/math/Vector2f;)Lcom/jme3/util/TangentBinormalGenerator$TriangleData;

    move-result-object v6

    if-eqz p4, :cond_1

    invoke-virtual {v6, p1}, Lcom/jme3/util/TangentBinormalGenerator$TriangleData;->setIndex([I)V

    mul-int/lit8 v7, v5, 0x3

    iput v7, v6, Lcom/jme3/util/TangentBinormalGenerator$TriangleData;->triangleOffset:I

    :cond_1
    aget v7, p1, v4

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jme3/util/TangentBinormalGenerator$VertexData;

    iget-object v7, v7, Lcom/jme3/util/TangentBinormalGenerator$VertexData;->triangles:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x1

    aget v7, p1, v7

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jme3/util/TangentBinormalGenerator$VertexData;

    iget-object v7, v7, Lcom/jme3/util/TangentBinormalGenerator$VertexData;->triangles:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x2

    aget v7, p1, v7

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jme3/util/TangentBinormalGenerator$VertexData;

    iget-object v7, v7, Lcom/jme3/util/TangentBinormalGenerator$VertexData;->triangles:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    return-object v2

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can only generate tangents for meshes with texture coordinates"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static putValue(Lcom/jme3/scene/VertexBuffer$Format;Ljava/nio/Buffer;Ljava/nio/Buffer;I)V
    .locals 2

    sget-object v0, Lcom/jme3/util/TangentBinormalGenerator$3;->$SwitchMap$com$jme3$scene$VertexBuffer$Format:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unrecognized buffer format: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    check-cast p2, Ljava/nio/DoubleBuffer;

    invoke-virtual {p2, p3}, Ljava/nio/DoubleBuffer;->get(I)D

    move-result-wide p2

    check-cast p1, Ljava/nio/DoubleBuffer;

    invoke-virtual {p1, p2, p3}, Ljava/nio/DoubleBuffer;->put(D)Ljava/nio/DoubleBuffer;

    goto :goto_0

    :pswitch_1
    check-cast p2, Ljava/nio/FloatBuffer;

    invoke-virtual {p2, p3}, Ljava/nio/FloatBuffer;->get(I)F

    move-result p0

    check-cast p1, Ljava/nio/FloatBuffer;

    invoke-virtual {p1, p0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    goto :goto_0

    :pswitch_2
    check-cast p2, Ljava/nio/IntBuffer;

    invoke-virtual {p2, p3}, Ljava/nio/IntBuffer;->get(I)I

    move-result p0

    check-cast p1, Ljava/nio/IntBuffer;

    invoke-virtual {p1, p0}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    goto :goto_0

    :pswitch_3
    check-cast p2, Ljava/nio/ShortBuffer;

    invoke-virtual {p2, p3}, Ljava/nio/ShortBuffer;->get(I)S

    move-result p0

    check-cast p1, Ljava/nio/ShortBuffer;

    invoke-virtual {p1, p0}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    goto :goto_0

    :pswitch_4
    check-cast p2, Ljava/nio/ByteBuffer;

    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static setToleranceAngle(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x43330000    # 179.0f

    cmpl-float v0, p0, v0

    if-gtz v0, :cond_0

    const v0, 0x3c8efa35

    mul-float/2addr p0, v0

    invoke-static {p0}, Lcom/jme3/math/FastMath;->cos(F)F

    move-result p0

    sput p0, Lcom/jme3/util/TangentBinormalGenerator;->toleranceDot:F

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The angle must be between 0 and 179 degrees."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static splitVertices(Lcom/jme3/scene/Mesh;Ljava/util/List;Z)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/scene/Mesh;",
            "Ljava/util/List<",
            "Lcom/jme3/util/TangentBinormalGenerator$VertexData;",
            ">;Z)",
            "Ljava/util/List<",
            "Lcom/jme3/util/TangentBinormalGenerator$VertexData;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v0, v2}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jme3/scene/VertexBuffer;->getNumElements()I

    move-result v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sget-object v5, Lcom/jme3/scene/VertexBuffer$Type;->Normal:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v0, v5}, Lcom/jme3/scene/Mesh;->getFloatBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Ljava/nio/FloatBuffer;

    move-result-object v5

    const/4 v7, 0x0

    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_6

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/jme3/util/TangentBinormalGenerator$VertexData;

    iget-object v8, v8, Lcom/jme3/util/TangentBinormalGenerator$VertexData;->triangles:Ljava/util/ArrayList;

    new-instance v9, Lcom/jme3/math/Vector3f;

    invoke-direct {v9}, Lcom/jme3/math/Vector3f;-><init>()V

    invoke-static {v9, v5, v7}, Lcom/jme3/util/BufferUtils;->populateFromBuffer(Lcom/jme3/math/Vector3f;Ljava/nio/FloatBuffer;I)V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v12, 0x0

    :goto_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v12, v13, :cond_1

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/jme3/util/TangentBinormalGenerator$TriangleData;

    iget-object v14, v13, Lcom/jme3/util/TangentBinormalGenerator$TriangleData;->normal:Lcom/jme3/math/Vector3f;

    invoke-static {v9, v14}, Lcom/jme3/util/TangentBinormalGenerator;->parity(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)I

    move-result v14

    if-lez v14, :cond_0

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5

    sget-object v8, Lcom/jme3/util/TangentBinormalGenerator;->log:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "Splitting vertex {0}"

    invoke-virtual {v8, v9, v13, v12}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/jme3/util/TangentBinormalGenerator$VertexData;

    iget-object v8, v8, Lcom/jme3/util/TangentBinormalGenerator$VertexData;->triangles:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/jme3/util/TangentBinormalGenerator$VertexData;

    iget-object v8, v8, Lcom/jme3/util/TangentBinormalGenerator$VertexData;->triangles:Ljava/util/ArrayList;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v8, Lcom/jme3/util/TangentBinormalGenerator$VertexData;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lcom/jme3/util/TangentBinormalGenerator$VertexData;-><init>(Lcom/jme3/util/TangentBinormalGenerator$1;)V

    iget-object v9, v8, Lcom/jme3/util/TangentBinormalGenerator$VertexData;->triangles:Ljava/util/ArrayList;

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v4, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, v8, Lcom/jme3/util/TangentBinormalGenerator$VertexData;->triangles:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/jme3/util/TangentBinormalGenerator$TriangleData;

    const/4 v10, 0x0

    :goto_3
    iget-object v11, v9, Lcom/jme3/util/TangentBinormalGenerator$TriangleData;->index:[I

    array-length v12, v11

    if-ge v10, v12, :cond_2

    aget v12, v11, v10

    if-ne v12, v7, :cond_3

    aput v2, v11, v10

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_6
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_14

    invoke-static {}, Lcom/jme3/scene/VertexBuffer$Type;->values()[Lcom/jme3/scene/VertexBuffer$Type;

    move-result-object v5

    array-length v7, v5

    const/4 v8, 0x0

    :goto_4
    if-ge v8, v7, :cond_13

    aget-object v9, v5, v8

    sget-object v10, Lcom/jme3/scene/VertexBuffer$Type;->Tangent:Lcom/jme3/scene/VertexBuffer$Type;

    if-eq v9, v10, :cond_7

    sget-object v10, Lcom/jme3/scene/VertexBuffer$Type;->BindPoseTangent:Lcom/jme3/scene/VertexBuffer$Type;

    if-ne v9, v10, :cond_8

    :cond_7
    :goto_5
    move-object/from16 v16, v5

    goto/16 :goto_d

    :cond_8
    invoke-virtual {v0, v9}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v10

    if-eqz v10, :cond_7

    invoke-virtual {v10}, Lcom/jme3/scene/VertexBuffer;->getNumComponents()I

    move-result v11

    if-nez v11, :cond_9

    goto :goto_5

    :cond_9
    invoke-virtual {v10}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v11

    sget-object v12, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    if-ne v9, v12, :cond_f

    invoke-virtual {v10}, Lcom/jme3/scene/VertexBuffer;->getFormat()Lcom/jme3/scene/VertexBuffer$Format;

    move-result-object v9

    sget-object v12, Lcom/jme3/scene/VertexBuffer$Format;->UnsignedShort:Lcom/jme3/scene/VertexBuffer$Format;

    if-ne v9, v12, :cond_a

    const/4 v9, 0x1

    goto :goto_6

    :cond_a
    const/4 v9, 0x0

    :goto_6
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_7
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_e

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/jme3/util/TangentBinormalGenerator$VertexData;

    iget-object v13, v13, Lcom/jme3/util/TangentBinormalGenerator$VertexData;->triangles:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_8
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_d

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/jme3/util/TangentBinormalGenerator$TriangleData;

    const/4 v15, 0x0

    :goto_9
    iget-object v6, v14, Lcom/jme3/util/TangentBinormalGenerator$TriangleData;->index:[I

    array-length v0, v6

    if-ge v15, v0, :cond_c

    if-eqz v9, :cond_b

    move-object v0, v11

    check-cast v0, Ljava/nio/ShortBuffer;

    move-object/from16 v16, v5

    iget v5, v14, Lcom/jme3/util/TangentBinormalGenerator$TriangleData;->triangleOffset:I

    add-int/2addr v5, v15

    aget v6, v6, v15

    int-to-short v6, v6

    invoke-virtual {v0, v5, v6}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    goto :goto_a

    :cond_b
    move-object/from16 v16, v5

    move-object v0, v11

    check-cast v0, Ljava/nio/IntBuffer;

    iget v5, v14, Lcom/jme3/util/TangentBinormalGenerator$TriangleData;->triangleOffset:I

    add-int/2addr v5, v15

    aget v6, v6, v15

    invoke-virtual {v0, v5, v6}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    :goto_a
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    move-object/from16 v5, v16

    goto :goto_9

    :cond_c
    move-object/from16 v0, p0

    goto :goto_8

    :cond_d
    move-object/from16 v0, p0

    goto :goto_7

    :cond_e
    move-object/from16 v16, v5

    invoke-virtual {v10}, Lcom/jme3/util/NativeObject;->setUpdateNeeded()V

    goto :goto_d

    :cond_f
    move-object/from16 v16, v5

    invoke-virtual {v10}, Lcom/jme3/scene/VertexBuffer;->getFormat()Lcom/jme3/scene/VertexBuffer$Format;

    move-result-object v0

    invoke-virtual {v10}, Lcom/jme3/scene/VertexBuffer;->getNumComponents()I

    move-result v5

    invoke-static {v0, v5, v2}, Lcom/jme3/scene/VertexBuffer;->createBuffer(Lcom/jme3/scene/VertexBuffer$Format;II)Ljava/nio/Buffer;

    move-result-object v0

    if-eqz v11, :cond_12

    invoke-virtual {v11}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v10}, Lcom/jme3/scene/VertexBuffer;->getFormat()Lcom/jme3/scene/VertexBuffer$Format;

    move-result-object v5

    invoke-static {v5, v0, v11}, Lcom/jme3/util/TangentBinormalGenerator;->bulkPut(Lcom/jme3/scene/VertexBuffer$Format;Ljava/nio/Buffer;Ljava/nio/Buffer;)V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v10}, Lcom/jme3/scene/VertexBuffer;->getNumComponents()I

    move-result v9

    mul-int/2addr v6, v9

    invoke-virtual {v0, v6}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    const/4 v6, 0x0

    :goto_b
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    if-ge v6, v9, :cond_11

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v12, 0x0

    :goto_c
    invoke-virtual {v10}, Lcom/jme3/scene/VertexBuffer;->getNumComponents()I

    move-result v13

    if-ge v12, v13, :cond_10

    invoke-virtual {v10}, Lcom/jme3/scene/VertexBuffer;->getFormat()Lcom/jme3/scene/VertexBuffer$Format;

    move-result-object v13

    invoke-virtual {v10}, Lcom/jme3/scene/VertexBuffer;->getNumComponents()I

    move-result v14

    mul-int/2addr v14, v9

    add-int/2addr v14, v12

    invoke-static {v13, v0, v11, v14}, Lcom/jme3/util/TangentBinormalGenerator;->putValue(Lcom/jme3/scene/VertexBuffer$Format;Ljava/nio/Buffer;Ljava/nio/Buffer;I)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_c

    :cond_10
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    :cond_11
    invoke-virtual {v10, v0}, Lcom/jme3/scene/VertexBuffer;->updateData(Ljava/nio/Buffer;)V

    invoke-static {v11}, Lcom/jme3/util/BufferUtils;->destroyDirectBuffer(Ljava/nio/Buffer;)V

    :cond_12
    :goto_d
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    move-object/from16 v5, v16

    goto/16 :goto_4

    :cond_13
    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/jme3/scene/Mesh;->updateCounts()V

    :cond_14
    return-object v1
.end method

.method private static writeColorBuffer(Ljava/util/List;[Lcom/jme3/math/ColorRGBA;Lcom/jme3/scene/Mesh;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jme3/util/TangentBinormalGenerator$VertexData;",
            ">;[",
            "Lcom/jme3/math/ColorRGBA;",
            "Lcom/jme3/scene/Mesh;",
            ")V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x4

    mul-int/2addr p0, v0

    invoke-static {p0}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    iget v4, v3, Lcom/jme3/math/ColorRGBA;->r:F

    invoke-virtual {p0, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget v4, v3, Lcom/jme3/math/ColorRGBA;->g:F

    invoke-virtual {p0, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget v4, v3, Lcom/jme3/math/ColorRGBA;->b:F

    invoke-virtual {p0, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget v3, v3, Lcom/jme3/math/ColorRGBA;->a:F

    invoke-virtual {p0, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/jme3/scene/VertexBuffer$Type;->Color:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p2, p1}, Lcom/jme3/scene/Mesh;->clearBuffer(Lcom/jme3/scene/VertexBuffer$Type;)V

    invoke-virtual {p2, p1, v0, p0}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    return-void
.end method
