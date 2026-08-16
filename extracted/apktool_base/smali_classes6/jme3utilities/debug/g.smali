.class public Ljme3utilities/debug/g;
.super Lcom/jme3/scene/Mesh;
.source "SourceFile"


# static fields
.field public static final b:I = 0x3

.field public static final c:Ljava/util/logging/Logger;

.field public static final synthetic d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Ljme3utilities/debug/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ljme3utilities/debug/g;->c:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jme3/scene/Mesh;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/anim/Armature;Lcom/jme3/animation/Skeleton;Lcom/jme3/scene/Mesh$Mode;)V
    .locals 4

    .line 2
    invoke-direct {p0}, Lcom/jme3/scene/Mesh;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/jme3/anim/Armature;->getJointCount()I

    move-result v1

    .line 4
    invoke-static {p1}, Lif/r;->j(Lcom/jme3/anim/Armature;)I

    move-result v2

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 5
    invoke-virtual {p2}, Lcom/jme3/animation/Skeleton;->getBoneCount()I

    move-result v1

    .line 6
    invoke-static {p2}, Lif/r;->i(Lcom/jme3/animation/Skeleton;)I

    move-result v2

    goto :goto_0

    :cond_1
    move v1, v0

    move v2, v1

    :goto_0
    sub-int v2, v1, v2

    .line 7
    invoke-virtual {p0, v1}, Ljme3utilities/debug/g;->b(I)V

    .line 8
    invoke-virtual {p0, v1}, Ljme3utilities/debug/g;->d(I)V

    .line 9
    sget-object v3, Lcom/jme3/scene/Mesh$Mode;->Lines:Lcom/jme3/scene/Mesh$Mode;

    if-ne p3, v3, :cond_5

    .line 10
    invoke-virtual {p0, v1, v2}, Ljme3utilities/debug/g;->c(II)Lcom/jme3/scene/mesh/IndexBuffer;

    move-result-object v2

    :goto_1
    if-ge v0, v1, :cond_4

    if-nez p1, :cond_2

    .line 11
    invoke-virtual {p2, v0}, Lcom/jme3/animation/Skeleton;->getBone(I)Lcom/jme3/animation/Bone;

    move-result-object v3

    .line 12
    invoke-virtual {v3}, Lcom/jme3/animation/Bone;->getParent()Lcom/jme3/animation/Bone;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 13
    invoke-virtual {p2, v3}, Lcom/jme3/animation/Skeleton;->getBoneIndex(Lcom/jme3/animation/Bone;)I

    move-result v3

    .line 14
    invoke-virtual {v2, v3}, Lcom/jme3/scene/mesh/IndexBuffer;->put(I)Lcom/jme3/scene/mesh/IndexBuffer;

    .line 15
    invoke-virtual {v2, v0}, Lcom/jme3/scene/mesh/IndexBuffer;->put(I)Lcom/jme3/scene/mesh/IndexBuffer;

    goto :goto_2

    .line 16
    :cond_2
    invoke-virtual {p1, v0}, Lcom/jme3/anim/Armature;->getJoint(I)Lcom/jme3/anim/Joint;

    move-result-object v3

    .line 17
    invoke-virtual {v3}, Lcom/jme3/anim/Joint;->getParent()Lcom/jme3/anim/Joint;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 18
    invoke-virtual {v3}, Lcom/jme3/anim/Joint;->getId()I

    move-result v3

    .line 19
    invoke-virtual {v2, v3}, Lcom/jme3/scene/mesh/IndexBuffer;->put(I)Lcom/jme3/scene/mesh/IndexBuffer;

    .line 20
    invoke-virtual {v2, v0}, Lcom/jme3/scene/mesh/IndexBuffer;->put(I)Lcom/jme3/scene/mesh/IndexBuffer;

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 21
    :cond_4
    invoke-virtual {v2}, Lcom/jme3/scene/mesh/IndexBuffer;->getBuffer()Ljava/nio/Buffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    .line 22
    :cond_5
    invoke-virtual {p0, p3}, Lcom/jme3/scene/Mesh;->setMode(Lcom/jme3/scene/Mesh$Mode;)V

    return-void
.end method


# virtual methods
.method public a()Ljme3utilities/debug/g;
    .locals 1

    invoke-super {p0}, Lcom/jme3/scene/Mesh;->clone()Lcom/jme3/scene/Mesh;

    move-result-object v0

    check-cast v0, Ljme3utilities/debug/g;

    return-object v0
.end method

.method public final b(I)V
    .locals 4

    const/4 v0, 0x4

    mul-int/2addr p1, v0

    invoke-static {p1}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object p1

    new-instance v1, Lcom/jme3/scene/VertexBuffer;

    sget-object v2, Lcom/jme3/scene/VertexBuffer$Type;->Color:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-direct {v1, v2}, Lcom/jme3/scene/VertexBuffer;-><init>(Lcom/jme3/scene/VertexBuffer$Type;)V

    sget-object v2, Lcom/jme3/scene/VertexBuffer$Usage;->Stream:Lcom/jme3/scene/VertexBuffer$Usage;

    sget-object v3, Lcom/jme3/scene/VertexBuffer$Format;->Float:Lcom/jme3/scene/VertexBuffer$Format;

    invoke-virtual {v1, v2, v0, v3, p1}, Lcom/jme3/scene/VertexBuffer;->setupData(Lcom/jme3/scene/VertexBuffer$Usage;ILcom/jme3/scene/VertexBuffer$Format;Ljava/nio/Buffer;)V

    invoke-virtual {p0, v1}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer;)V

    return-void
.end method

.method public final c(II)Lcom/jme3/scene/mesh/IndexBuffer;
    .locals 3

    mul-int/lit8 p2, p2, 0x2

    invoke-static {p1, p2}, Lcom/jme3/scene/mesh/IndexBuffer;->createIndexBuffer(II)Lcom/jme3/scene/mesh/IndexBuffer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/scene/mesh/IndexBuffer;->getFormat()Lcom/jme3/scene/VertexBuffer$Format;

    move-result-object p2

    invoke-virtual {p1}, Lcom/jme3/scene/mesh/IndexBuffer;->getBuffer()Ljava/nio/Buffer;

    move-result-object v0

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2, p2, v0}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILcom/jme3/scene/VertexBuffer$Format;Ljava/nio/Buffer;)V

    return-object p1
.end method

.method public bridge synthetic clone()Lcom/jme3/scene/Mesh;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljme3utilities/debug/g;->a()Ljme3utilities/debug/g;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Ljme3utilities/debug/g;->a()Ljme3utilities/debug/g;

    move-result-object v0

    return-object v0
.end method

.method public final d(I)V
    .locals 4

    const/4 v0, 0x3

    mul-int/2addr p1, v0

    invoke-static {p1}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object p1

    new-instance v1, Lcom/jme3/scene/VertexBuffer;

    sget-object v2, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-direct {v1, v2}, Lcom/jme3/scene/VertexBuffer;-><init>(Lcom/jme3/scene/VertexBuffer$Type;)V

    sget-object v2, Lcom/jme3/scene/VertexBuffer$Usage;->Stream:Lcom/jme3/scene/VertexBuffer$Usage;

    sget-object v3, Lcom/jme3/scene/VertexBuffer$Format;->Float:Lcom/jme3/scene/VertexBuffer$Format;

    invoke-virtual {v1, v2, v0, v3, p1}, Lcom/jme3/scene/VertexBuffer;->setupData(Lcom/jme3/scene/VertexBuffer$Usage;ILcom/jme3/scene/VertexBuffer$Format;Ljava/nio/Buffer;)V

    invoke-virtual {p0, v1}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer;)V

    return-void
.end method

.method public e(Ljme3utilities/debug/h;)V
    .locals 6

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Color:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Mesh;->getFloatBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {p1}, Ljme3utilities/debug/h;->i()I

    move-result v1

    new-instance v2, Lcom/jme3/math/ColorRGBA;

    invoke-direct {v2}, Lcom/jme3/math/ColorRGBA;-><init>()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-virtual {p1, v3, v2}, Ljme3utilities/debug/h;->g(ILcom/jme3/math/ColorRGBA;)Lcom/jme3/math/ColorRGBA;

    iget v4, v2, Lcom/jme3/math/ColorRGBA;->r:F

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    iget v5, v2, Lcom/jme3/math/ColorRGBA;->g:F

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    iget v5, v2, Lcom/jme3/math/ColorRGBA;->b:F

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    iget v5, v2, Lcom/jme3/math/ColorRGBA;->a:F

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    sget-object p1, Lcom/jme3/scene/VertexBuffer$Type;->Color:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, p1}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/jme3/scene/VertexBuffer;->updateData(Ljava/nio/Buffer;)V

    return-void
.end method

.method public f(Lcom/jme3/anim/Armature;Lcom/jme3/animation/Skeleton;)V
    .locals 6

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Mesh;->getFloatBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/jme3/anim/Armature;->getJointCount()I

    move-result v2

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/jme3/animation/Skeleton;->getBoneCount()I

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    if-ge v1, v2, :cond_3

    if-nez p1, :cond_2

    invoke-virtual {p2, v1}, Lcom/jme3/animation/Skeleton;->getBone(I)Lcom/jme3/animation/Bone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jme3/animation/Bone;->getModelSpacePosition()Lcom/jme3/math/Vector3f;

    move-result-object v3

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v1}, Lcom/jme3/anim/Armature;->getJoint(I)Lcom/jme3/anim/Joint;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jme3/anim/Joint;->getModelTransform()Lcom/jme3/math/Transform;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jme3/math/Transform;->getTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v3

    :goto_1
    iget v4, v3, Lcom/jme3/math/Vector3f;->x:F

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    iget v5, v3, Lcom/jme3/math/Vector3f;->y:F

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    iget v3, v3, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {v4, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    sget-object p1, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, p1}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/jme3/scene/VertexBuffer;->updateData(Ljava/nio/Buffer;)V

    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->updateBound()V

    return-void
.end method
