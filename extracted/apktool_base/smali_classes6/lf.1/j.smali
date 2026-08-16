.class public Llf/j;
.super Lcom/jme3/scene/Mesh;
.source "SourceFile"


# static fields
.field public static final b:I = 0x3

.field public static final c:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Llf/j;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Llf/j;->c:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jme3/scene/Mesh;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    invoke-direct {p0, p1, v0}, Llf/j;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 3

    .line 3
    invoke-direct {p0}, Lcom/jme3/scene/Mesh;-><init>()V

    const/4 v0, 0x3

    const v1, 0x7fffffff

    .line 4
    const-string v2, "vertex count"

    invoke-static {p1, v2, v0, v1}, Lif/E;->i(ILjava/lang/String;II)Z

    .line 5
    const-string v0, "radius"

    invoke-static {p2, v0}, Lif/E;->p(FLjava/lang/String;)Z

    .line 6
    sget-object v0, Lcom/jme3/scene/Mesh$Mode;->LineLoop:Lcom/jme3/scene/Mesh$Mode;

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Mesh;->setMode(Lcom/jme3/scene/Mesh$Mode;)V

    .line 7
    invoke-virtual {p0, p1, p2}, Llf/j;->a(IF)V

    .line 8
    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->updateBound()V

    .line 9
    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->setStatic()V

    return-void
.end method

.method public constructor <init>([Lcom/jme3/math/Vector3f;)V
    .locals 4

    .line 10
    invoke-direct {p0}, Lcom/jme3/scene/Mesh;-><init>()V

    .line 11
    const-string v0, "corner array"

    invoke-static {p1, v0}, Lif/E;->u([Ljava/lang/Object;Ljava/lang/String;)Z

    .line 12
    array-length v0, p1

    const v1, 0x7fffffff

    .line 13
    const-string v2, "length of corner array"

    const/4 v3, 0x3

    invoke-static {v0, v2, v3, v1}, Lif/E;->i(ILjava/lang/String;II)Z

    .line 14
    sget-object v0, Lcom/jme3/scene/Mesh$Mode;->LineLoop:Lcom/jme3/scene/Mesh$Mode;

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Mesh;->setMode(Lcom/jme3/scene/Mesh$Mode;)V

    .line 15
    invoke-static {p1}, Lcom/jme3/util/BufferUtils;->createFloatBuffer([Lcom/jme3/math/Vector3f;)Ljava/nio/FloatBuffer;

    move-result-object p1

    .line 16
    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v0, v3, p1}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    .line 17
    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->updateBound()V

    .line 18
    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->setStatic()V

    return-void
.end method


# virtual methods
.method public final a(IF)V
    .locals 6

    mul-int/lit8 v0, p1, 0x3

    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    const v1, 0x40c90fdb

    int-to-float v2, p1

    div-float/2addr v1, v2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    int-to-float v3, v2

    mul-float/2addr v3, v1

    invoke-static {v3}, Lcom/jme3/math/FastMath;->cos(F)F

    move-result v4

    mul-float/2addr v4, p2

    invoke-static {v3}, Lcom/jme3/math/FastMath;->sin(F)F

    move-result v3

    mul-float/2addr v3, p2

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    sget-object p1, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    const/4 p2, 0x3

    invoke-virtual {p0, p1, p2, v0}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    return-void
.end method
