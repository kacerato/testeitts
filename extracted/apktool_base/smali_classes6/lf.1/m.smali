.class public Llf/m;
.super Lcom/jme3/scene/Mesh;
.source "SourceFile"


# static fields
.field public static final c:I = 0x3

.field public static final d:Ljava/util/logging/Logger;


# instance fields
.field public final b:Ljava/nio/FloatBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Llf/m;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Llf/m;->d:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Lcom/jme3/scene/Mesh;-><init>()V

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Llf/m;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    new-instance v2, Lcom/jme3/scene/VertexBuffer;

    sget-object v3, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-direct {v2, v3}, Lcom/jme3/scene/VertexBuffer;-><init>(Lcom/jme3/scene/VertexBuffer$Type;)V

    sget-object v3, Lcom/jme3/scene/VertexBuffer$Usage;->Stream:Lcom/jme3/scene/VertexBuffer$Usage;

    sget-object v4, Lcom/jme3/scene/VertexBuffer$Format;->Float:Lcom/jme3/scene/VertexBuffer$Format;

    invoke-virtual {v2, v3, v0, v4, v1}, Lcom/jme3/scene/VertexBuffer;->setupData(Lcom/jme3/scene/VertexBuffer$Usage;ILcom/jme3/scene/VertexBuffer$Format;Ljava/nio/Buffer;)V

    invoke-virtual {p0, v2}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer;)V

    sget-object v0, Lcom/jme3/scene/Mesh$Mode;->Points:Lcom/jme3/scene/Mesh$Mode;

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Mesh;->setMode(Lcom/jme3/scene/Mesh$Mode;)V

    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->updateBound()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jme3/math/Vector3f;)V
    .locals 2

    const-string v0, "new location"

    invoke-static {p1, v0}, Lif/E;->d(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    iget-object v0, p0, Llf/m;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Llf/m;->b:Ljava/nio/FloatBuffer;

    iget v1, p1, Lcom/jme3/math/Vector3f;->x:F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Llf/m;->b:Ljava/nio/FloatBuffer;

    iget v1, p1, Lcom/jme3/math/Vector3f;->y:F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Llf/m;->b:Ljava/nio/FloatBuffer;

    iget p1, p1, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object p1, p0, Llf/m;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    sget-object p1, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, p1}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object p1

    iget-object v0, p0, Llf/m;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v0}, Lcom/jme3/scene/VertexBuffer;->updateData(Ljava/nio/Buffer;)V

    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->updateBound()V

    return-void
.end method
