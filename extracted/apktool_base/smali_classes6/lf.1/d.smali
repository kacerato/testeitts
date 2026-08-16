.class public Llf/d;
.super Lcom/jme3/scene/Mesh;
.source "SourceFile"


# static fields
.field public static final b:I = 0x3

.field public static final c:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Llf/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Llf/d;->c:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    const/16 v1, 0x19

    .line 1
    invoke-direct {p0, v0, v1}, Llf/d;-><init>(FI)V

    return-void
.end method

.method public constructor <init>(FI)V
    .locals 13

    .line 2
    invoke-direct {p0}, Lcom/jme3/scene/Mesh;-><init>()V

    .line 3
    const-string v0, "radius"

    invoke-static {p1, v0}, Lif/E;->p(FLjava/lang/String;)Z

    const v0, 0x7fffffff

    .line 4
    const-string v1, "number of vertices"

    const/4 v2, 0x3

    invoke-static {p2, v1, v2, v0}, Lif/E;->i(ILjava/lang/String;II)Z

    .line 5
    sget-object v0, Lcom/jme3/scene/Mesh$Mode;->TriangleFan:Lcom/jme3/scene/Mesh$Mode;

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Mesh;->setMode(Lcom/jme3/scene/Mesh$Mode;)V

    mul-int/lit8 v0, p2, 0x3

    .line 6
    new-array v1, v0, [F

    .line 7
    new-array v0, v0, [F

    mul-int/lit8 v3, p2, 0x2

    .line 8
    new-array v3, v3, [F

    const/4 v4, 0x0

    :goto_0
    if-ge v4, p2, :cond_0

    mul-int/lit8 v5, v4, 0x3

    const/4 v6, 0x0

    .line 9
    aput v6, v1, v5

    add-int/lit8 v7, v5, 0x1

    .line 10
    aput v6, v1, v7

    add-int/lit8 v8, v5, 0x2

    const/high16 v9, 0x3f800000    # 1.0f

    .line 11
    aput v9, v1, v8

    const v10, 0x40c90fdb

    int-to-float v11, v4

    mul-float/2addr v11, v10

    int-to-float v10, p2

    div-float/2addr v11, v10

    .line 12
    invoke-static {v11}, Lcom/jme3/math/FastMath;->sin(F)F

    move-result v10

    .line 13
    invoke-static {v11}, Lcom/jme3/math/FastMath;->cos(F)F

    move-result v11

    mul-float v12, p1, v11

    .line 14
    aput v12, v0, v5

    mul-float v5, p1, v10

    .line 15
    aput v5, v0, v7

    .line 16
    aput v6, v0, v8

    mul-int/lit8 v5, v4, 0x2

    add-float/2addr v11, v9

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v11, v6

    .line 17
    aput v11, v3, v5

    add-int/lit8 v5, v5, 0x1

    add-float/2addr v10, v9

    div-float/2addr v10, v6

    .line 18
    aput v10, v3, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 19
    :cond_0
    sget-object p1, Lcom/jme3/scene/VertexBuffer$Type;->Normal:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, p1, v2, v1}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;I[F)V

    .line 20
    sget-object p1, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, p1, v2, v0}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;I[F)V

    .line 21
    sget-object p1, Lcom/jme3/scene/VertexBuffer$Type;->TexCoord:Lcom/jme3/scene/VertexBuffer$Type;

    const/4 p2, 0x2

    invoke-virtual {p0, p1, p2, v3}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;I[F)V

    .line 22
    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->updateBound()V

    .line 23
    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->setStatic()V

    return-void
.end method
