.class public final Lif/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = 0x4

.field public static final b:I = 0x3

.field public static final c:I = 0x2

.field public static final d:I = 0x3

.field public static final e:Ljava/util/logging/Logger;

.field public static final f:Lcom/jme3/math/Matrix4f;

.field public static final g:Lcom/jme3/math/Vector3f;

.field public static final synthetic h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lif/p;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lif/p;->e:Ljava/util/logging/Logger;

    new-instance v0, Lcom/jme3/math/Matrix4f;

    invoke-direct {v0}, Lcom/jme3/math/Matrix4f;-><init>()V

    sput-object v0, Lif/p;->f:Lcom/jme3/math/Matrix4f;

    new-instance v0, Lcom/jme3/math/Vector3f;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-direct {v0, v1, v1, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    sput-object v0, Lif/p;->g:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(Lcom/jme3/scene/Mesh;I)I
    .locals 10

    const-string v0, "bone index"

    invoke-static {p1, v0}, Lif/E;->q(ILjava/lang/String;)Z

    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->getMaxNumWeights()I

    move-result v0

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->BoneIndex:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v1}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/scene/VertexBuffer;->getDataReadOnly()Ljava/nio/Buffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    const/4 v3, 0x4

    div-int/2addr v2, v3

    sget-object v4, Lcom/jme3/scene/VertexBuffer$Type;->BoneWeight:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v4}, Lcom/jme3/scene/Mesh;->getFloatBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Ljava/nio/FloatBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_0
    if-ge v5, v2, :cond_2

    move v7, v4

    :goto_1
    if-ge v7, v3, :cond_1

    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->get()F

    move-result v8

    invoke-static {v1}, Ljf/d;->r(Ljava/nio/Buffer;)I

    move-result v9

    if-ge v7, v0, :cond_0

    if-ne v9, p1, :cond_0

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_0

    add-int/lit8 v6, v6, 0x1

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    return v6
.end method

.method public static B(Lcom/jme3/scene/Mesh;)V
    .locals 4

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Normal:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Mesh;->getFloatBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Ljava/nio/FloatBuffer;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v2

    sget-object v3, Lif/p;->g:Lcom/jme3/math/Vector3f;

    invoke-static {v0, v1, v2, v3}, Ljf/d;->u(Ljava/nio/FloatBuffer;IILcom/jme3/math/Vector3f;)V

    :cond_0
    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->BindPoseNormal:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Mesh;->getFloatBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Ljava/nio/FloatBuffer;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    sget-object v2, Lif/p;->g:Lcom/jme3/math/Vector3f;

    invoke-static {p0, v1, v0, v2}, Ljf/d;->u(Ljava/nio/FloatBuffer;IILcom/jme3/math/Vector3f;)V

    :cond_1
    return-void
.end method

.method public static C(Lcom/jme3/scene/Mesh;)V
    .locals 6

    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->getMode()Lcom/jme3/scene/Mesh$Mode;

    move-result-object v0

    sget-object v1, Lcom/jme3/scene/Mesh$Mode;->Triangles:Lcom/jme3/scene/Mesh$Mode;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v1, "be in Triangles mode"

    invoke-static {v0, v1}, Lif/E;->H(ZLjava/lang/String;)Z

    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->updateCounts()V

    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->getTriangleCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->getIndexBuffer()Lcom/jme3/scene/mesh/IndexBuffer;

    move-result-object v1

    if-eqz v1, :cond_1

    :goto_1
    if-ge v2, v0, :cond_3

    mul-int/lit8 p0, v2, 0x3

    add-int/lit8 v3, p0, 0x2

    invoke-virtual {v1, p0}, Lcom/jme3/scene/mesh/IndexBuffer;->get(I)I

    move-result v4

    invoke-virtual {v1, v3}, Lcom/jme3/scene/mesh/IndexBuffer;->get(I)I

    move-result v5

    invoke-virtual {v1, p0, v5}, Lcom/jme3/scene/mesh/IndexBuffer;->put(II)Lcom/jme3/scene/mesh/IndexBuffer;

    invoke-virtual {v1, v3, v4}, Lcom/jme3/scene/mesh/IndexBuffer;->put(II)Lcom/jme3/scene/mesh/IndexBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->getBufferList()Lcom/jme3/util/SafeArrayList;

    move-result-object p0

    invoke-virtual {p0}, Lcom/jme3/util/SafeArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/scene/VertexBuffer;

    move v3, v2

    :goto_2
    if-ge v3, v0, :cond_2

    mul-int/lit8 v4, v3, 0x3

    add-int/lit8 v5, v4, 0x2

    invoke-static {v1, v4, v5}, Lif/e;->e(Lcom/jme3/scene/VertexBuffer;II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public static D(Lcom/jme3/scene/Mesh;Lcom/jme3/math/Quaternion;)V
    .locals 1

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-static {p0, v0, p1}, Lif/p;->E(Lcom/jme3/scene/Mesh;Lcom/jme3/scene/VertexBuffer$Type;Lcom/jme3/math/Quaternion;)V

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->BindPosePosition:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-static {p0, v0, p1}, Lif/p;->E(Lcom/jme3/scene/Mesh;Lcom/jme3/scene/VertexBuffer$Type;Lcom/jme3/math/Quaternion;)V

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Normal:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-static {p0, v0, p1}, Lif/p;->E(Lcom/jme3/scene/Mesh;Lcom/jme3/scene/VertexBuffer$Type;Lcom/jme3/math/Quaternion;)V

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->BindPoseNormal:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-static {p0, v0, p1}, Lif/p;->E(Lcom/jme3/scene/Mesh;Lcom/jme3/scene/VertexBuffer$Type;Lcom/jme3/math/Quaternion;)V

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Tangent:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-static {p0, v0, p1}, Lif/p;->F(Lcom/jme3/scene/Mesh;Lcom/jme3/scene/VertexBuffer$Type;Lcom/jme3/math/Quaternion;)V

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->BindPoseTangent:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-static {p0, v0, p1}, Lif/p;->F(Lcom/jme3/scene/Mesh;Lcom/jme3/scene/VertexBuffer$Type;Lcom/jme3/math/Quaternion;)V

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Binormal:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-static {p0, v0, p1}, Lif/p;->E(Lcom/jme3/scene/Mesh;Lcom/jme3/scene/VertexBuffer$Type;Lcom/jme3/math/Quaternion;)V

    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->updateBound()V

    return-void
.end method

.method public static E(Lcom/jme3/scene/Mesh;Lcom/jme3/scene/VertexBuffer$Type;Lcom/jme3/math/Quaternion;)V
    .locals 2

    const-string v0, "buffer type"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "rotation"

    invoke-static {p2, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-virtual {p0, p1}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/FloatBuffer;

    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->getVertexCount()I

    move-result p0

    mul-int/lit8 p0, p0, 0x3

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p2}, Ljf/d;->s(Ljava/nio/FloatBuffer;IILcom/jme3/math/Quaternion;)V

    invoke-virtual {p1}, Lcom/jme3/util/NativeObject;->setUpdateNeeded()V

    :cond_0
    return-void
.end method

.method public static F(Lcom/jme3/scene/Mesh;Lcom/jme3/scene/VertexBuffer$Type;Lcom/jme3/math/Quaternion;)V
    .locals 9

    const-string v0, "buffer type"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "rotation"

    invoke-static {p2, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-virtual {p0, p1}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/FloatBuffer;

    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->getVertexCount()I

    move-result v2

    new-instance v3, Lcom/jme3/math/Vector3f;

    invoke-direct {v3}, Lcom/jme3/math/Vector3f;-><init>()V

    new-instance v4, Lcom/jme3/math/Vector4f;

    invoke-direct {v4}, Lcom/jme3/math/Vector4f;-><init>()V

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_0

    invoke-static {p0, p1, v5, v4}, Lif/p;->a0(Lcom/jme3/scene/Mesh;Lcom/jme3/scene/VertexBuffer$Type;ILcom/jme3/math/Vector4f;)Lcom/jme3/math/Vector4f;

    iget v6, v4, Lcom/jme3/math/Vector4f;->x:F

    iget v7, v4, Lcom/jme3/math/Vector4f;->y:F

    iget v8, v4, Lcom/jme3/math/Vector4f;->z:F

    invoke-virtual {v3, v6, v7, v8}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    invoke-static {p2, v3, v3}, Ljf/g;->r(Lcom/jme3/math/Quaternion;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget v6, v3, Lcom/jme3/math/Vector3f;->x:F

    iput v6, v4, Lcom/jme3/math/Vector4f;->x:F

    iget v7, v3, Lcom/jme3/math/Vector3f;->y:F

    iput v7, v4, Lcom/jme3/math/Vector4f;->y:F

    iget v7, v3, Lcom/jme3/math/Vector3f;->z:F

    iput v7, v4, Lcom/jme3/math/Vector4f;->z:F

    mul-int/lit8 v7, v5, 0x3

    invoke-virtual {v1, v7, v6}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-int/lit8 v6, v7, 0x1

    iget v8, v4, Lcom/jme3/math/Vector4f;->y:F

    invoke-virtual {v1, v6, v8}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-int/lit8 v6, v7, 0x2

    iget v8, v4, Lcom/jme3/math/Vector4f;->z:F

    invoke-virtual {v1, v6, v8}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-int/lit8 v7, v7, 0x3

    iget v6, v4, Lcom/jme3/math/Vector4f;->w:F

    invoke-virtual {v1, v7, v6}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/jme3/util/NativeObject;->setUpdateNeeded()V

    :cond_1
    return-void
.end method

.method public static G(Lcom/jme3/scene/Mesh;F)V
    .locals 4

    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->getVertexCount()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1, p1, p1, p1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    sget-object p1, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, p1}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/FloatBuffer;

    const/4 v3, 0x0

    invoke-static {v2, v3, v0, v1}, Ljf/d;->u(Ljava/nio/FloatBuffer;IILcom/jme3/math/Vector3f;)V

    invoke-virtual {p1}, Lcom/jme3/util/NativeObject;->setUpdateNeeded()V

    sget-object p1, Lcom/jme3/scene/VertexBuffer$Type;->BindPosePosition:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, p1}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/FloatBuffer;

    invoke-static {v2, v3, v0, v1}, Ljf/d;->u(Ljava/nio/FloatBuffer;IILcom/jme3/math/Vector3f;)V

    invoke-virtual {p1}, Lcom/jme3/util/NativeObject;->setUpdateNeeded()V

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->updateBound()V

    return-void
.end method

.method public static H(Lcom/jme3/scene/Mesh;ILcom/jme3/scene/mesh/IndexBuffer;)V
    .locals 3

    const-string v0, "mesh"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const/4 v0, 0x1

    const/4 v1, 0x4

    const-string v2, "weights per vertex"

    invoke-static {p1, v2, v0, v1}, Lif/E;->i(ILjava/lang/String;II)Z

    invoke-virtual {p2}, Lcom/jme3/scene/mesh/IndexBuffer;->getBuffer()Ljava/nio/Buffer;

    move-result-object p2

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->BoneIndex:Lcom/jme3/scene/VertexBuffer$Type;

    instance-of v1, p2, Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_0

    check-cast p2, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0, p1, p2}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_0
    instance-of v1, p2, Ljava/nio/IntBuffer;

    if-eqz v1, :cond_1

    check-cast p2, Ljava/nio/IntBuffer;

    invoke-virtual {p0, v0, p1, p2}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/IntBuffer;)V

    goto :goto_0

    :cond_1
    instance-of v1, p2, Ljava/nio/ShortBuffer;

    if-eqz v1, :cond_2

    check-cast p2, Ljava/nio/ShortBuffer;

    invoke-virtual {p0, v0, p1, p2}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/ShortBuffer;)V

    :goto_0
    return-void

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static I(Lcom/jme3/scene/Mesh;)V
    .locals 2

    const-string v0, "mesh"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-static {p0}, Lif/p;->o(Lcom/jme3/scene/Mesh;)Z

    move-result v0

    const-string v1, "have normals"

    invoke-static {v0, v1}, Lif/E;->H(ZLjava/lang/String;)Z

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Normal:Lcom/jme3/scene/VertexBuffer$Type;

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-static {p0, v0, v1}, Lif/p;->J(Lcom/jme3/scene/Mesh;Lcom/jme3/scene/VertexBuffer$Type;Lcom/jme3/scene/VertexBuffer$Type;)V

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->BindPoseNormal:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->BindPosePosition:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-static {p0, v0, v1}, Lif/p;->J(Lcom/jme3/scene/Mesh;Lcom/jme3/scene/VertexBuffer$Type;Lcom/jme3/scene/VertexBuffer$Type;)V

    :cond_0
    return-void
.end method

.method public static J(Lcom/jme3/scene/Mesh;Lcom/jme3/scene/VertexBuffer$Type;Lcom/jme3/scene/VertexBuffer$Type;)V
    .locals 11

    const-string v0, "mesh"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-virtual {p0, p2}, Lcom/jme3/scene/Mesh;->getFloatBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Ljava/nio/FloatBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/Buffer;->limit()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v0, :cond_1

    mul-int/lit8 v5, v3, 0x3

    new-instance v6, Lcom/jme3/math/Vector3f;

    invoke-direct {v6}, Lcom/jme3/math/Vector3f;-><init>()V

    invoke-static {p2, v5, v6}, Ljf/d;->g(Ljava/nio/FloatBuffer;ILcom/jme3/math/Vector3f;)V

    invoke-static {v6, v6}, Ljf/h;->U(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-interface {v1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-array v3, v4, [Lcom/jme3/math/Vector3f;

    move v5, v2

    :goto_1
    if-ge v5, v4, :cond_2

    new-instance v6, Lcom/jme3/math/Vector3f;

    const/4 v7, 0x0

    invoke-direct {v6, v7, v7, v7}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    aput-object v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->getIndicesAsList()Lcom/jme3/scene/mesh/IndexBuffer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jme3/scene/mesh/IndexBuffer;->size()I

    move-result v6

    invoke-virtual {p0, p1}, Lcom/jme3/scene/Mesh;->getFloatBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Ljava/nio/FloatBuffer;

    move-result-object p0

    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    new-instance v7, Lcom/jme3/math/Vector3f;

    invoke-direct {v7}, Lcom/jme3/math/Vector3f;-><init>()V

    move v8, v2

    :goto_2
    if-ge v8, v6, :cond_3

    invoke-virtual {v5, v8}, Lcom/jme3/scene/mesh/IndexBuffer;->get(I)I

    move-result v9

    mul-int/lit8 v9, v9, 0x3

    invoke-static {p2, v9, p1}, Ljf/d;->g(Ljava/nio/FloatBuffer;ILcom/jme3/math/Vector3f;)V

    invoke-static {p1, p1}, Ljf/h;->U(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {p0, v9, v7}, Ljf/d;->g(Ljava/nio/FloatBuffer;ILcom/jme3/math/Vector3f;)V

    aget-object v9, v3, v10

    invoke-virtual {v9, v7}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_3
    move v5, v2

    :goto_3
    if-ge v5, v4, :cond_4

    aget-object v6, v3, v5

    invoke-static {v6}, Ljf/h;->P(Lcom/jme3/math/Vector3f;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_4
    :goto_4
    if-ge v2, v0, :cond_5

    mul-int/lit8 v4, v2, 0x3

    invoke-static {p2, v4, p1}, Ljf/d;->g(Ljava/nio/FloatBuffer;ILcom/jme3/math/Vector3f;)V

    invoke-static {p1, p1}, Ljf/h;->U(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v5, v3, v5

    invoke-static {p0, v4, v5}, Ljf/d;->p(Ljava/nio/FloatBuffer;ILcom/jme3/math/Vector3f;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5
    return-void
.end method

.method public static K(Lcom/jme3/scene/Mesh;I)Lcom/jme3/scene/Mesh;
    .locals 23

    move-object/from16 v0, p0

    move/from16 v1, p1

    const-string v2, "input mesh"

    invoke-static {v0, v2}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/jme3/scene/Mesh;->getMode()Lcom/jme3/scene/Mesh$Mode;

    move-result-object v2

    sget-object v3, Lcom/jme3/scene/Mesh$Mode;->Lines:Lcom/jme3/scene/Mesh$Mode;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_0

    move v2, v5

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    const-string v3, "be in Lines mode"

    invoke-static {v2, v3}, Lif/E;->H(ZLjava/lang/String;)Z

    const-string v2, "ratio"

    const v3, 0x7fffffff

    const/4 v6, 0x2

    invoke-static {v1, v2, v6, v3}, Lif/E;->i(ILjava/lang/String;II)Z

    invoke-virtual/range {p0 .. p0}, Lcom/jme3/scene/Mesh;->getIndicesAsList()Lcom/jme3/scene/mesh/IndexBuffer;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/jme3/scene/Mesh;->getTriangleCount()I

    move-result v3

    invoke-virtual {v2}, Lcom/jme3/scene/mesh/IndexBuffer;->size()I

    move-result v6

    mul-int/2addr v6, v1

    invoke-virtual/range {p0 .. p0}, Lcom/jme3/scene/Mesh;->clone()Lcom/jme3/scene/Mesh;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/jme3/scene/Mesh;->getBufferList()Lcom/jme3/util/SafeArrayList;

    move-result-object v8

    invoke-virtual {v8}, Lcom/jme3/util/SafeArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/jme3/scene/VertexBuffer;

    invoke-virtual {v9}, Lcom/jme3/scene/VertexBuffer;->getBufferType()Lcom/jme3/scene/VertexBuffer$Type;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/jme3/scene/Mesh;->clearBuffer(Lcom/jme3/scene/VertexBuffer$Type;)V

    sget-object v11, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    if-eq v10, v11, :cond_1

    sget-object v11, Lcom/jme3/scene/VertexBuffer$Format;->Float:Lcom/jme3/scene/VertexBuffer$Format;

    invoke-virtual {v9}, Lcom/jme3/scene/VertexBuffer;->getNumComponents()I

    move-result v9

    const/4 v12, 0x4

    invoke-static {v9, v5, v12}, Ljf/f;->h(III)I

    move-result v9

    invoke-static {v11, v9, v6}, Lcom/jme3/scene/VertexBuffer;->createBuffer(Lcom/jme3/scene/VertexBuffer$Format;II)Ljava/nio/Buffer;

    move-result-object v12

    invoke-virtual {v7, v10, v9, v11, v12}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILcom/jme3/scene/VertexBuffer$Format;Ljava/nio/Buffer;)V

    goto :goto_1

    :cond_2
    move v6, v4

    move v8, v6

    :goto_2
    if-ge v6, v3, :cond_6

    mul-int/lit8 v9, v6, 0x2

    invoke-virtual {v2, v9}, Lcom/jme3/scene/mesh/IndexBuffer;->get(I)I

    move-result v16

    add-int/2addr v9, v5

    invoke-virtual {v2, v9}, Lcom/jme3/scene/mesh/IndexBuffer;->get(I)I

    move-result v9

    move v10, v4

    :goto_3
    if-ge v10, v1, :cond_5

    int-to-float v11, v10

    int-to-float v12, v1

    div-float v17, v11, v12

    add-int/lit8 v15, v10, 0x1

    int-to-float v10, v15

    div-float v18, v10, v12

    invoke-virtual {v7}, Lcom/jme3/scene/Mesh;->getBufferList()Lcom/jme3/util/SafeArrayList;

    move-result-object v10

    invoke-virtual {v10}, Lcom/jme3/util/SafeArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_4
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v20, v10

    check-cast v20, Lcom/jme3/scene/VertexBuffer;

    invoke-virtual/range {v20 .. v20}, Lcom/jme3/scene/VertexBuffer;->getBufferType()Lcom/jme3/scene/VertexBuffer$Type;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/jme3/scene/VertexBuffer;->getNumElements()I

    move-result v10

    if-lez v10, :cond_3

    move/from16 v10, v17

    move-object/from16 v11, v21

    move/from16 v12, v16

    move v13, v9

    move-object/from16 v14, v20

    move/from16 v22, v15

    move v15, v8

    invoke-static/range {v10 .. v15}, Lif/e;->c(FLcom/jme3/scene/VertexBuffer;IILcom/jme3/scene/VertexBuffer;I)V

    add-int/lit8 v15, v8, 0x1

    move/from16 v10, v18

    invoke-static/range {v10 .. v15}, Lif/e;->c(FLcom/jme3/scene/VertexBuffer;IILcom/jme3/scene/VertexBuffer;I)V

    add-int/lit8 v8, v8, 0x2

    goto :goto_5

    :cond_3
    move/from16 v22, v15

    :goto_5
    move/from16 v15, v22

    goto :goto_4

    :cond_4
    move/from16 v22, v15

    move/from16 v10, v22

    goto :goto_3

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {v7}, Lcom/jme3/scene/Mesh;->getBufferList()Lcom/jme3/util/SafeArrayList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/scene/VertexBuffer;

    invoke-virtual {v1}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/Buffer;->capacity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    goto :goto_6

    :cond_7
    invoke-virtual {v7}, Lcom/jme3/scene/Mesh;->updateCounts()V

    return-object v7
.end method

.method public static L(Lcom/jme3/scene/Mesh;I)Lcom/jme3/scene/Mesh;
    .locals 29

    move-object/from16 v0, p0

    move/from16 v1, p1

    const-string v2, "input mesh"

    invoke-static {v0, v2}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/jme3/scene/Mesh;->getMode()Lcom/jme3/scene/Mesh$Mode;

    move-result-object v2

    sget-object v3, Lcom/jme3/scene/Mesh$Mode;->Triangles:Lcom/jme3/scene/Mesh$Mode;

    const/4 v5, 0x1

    if-ne v2, v3, :cond_0

    move v2, v5

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "be in Triangles mode"

    invoke-static {v2, v3}, Lif/E;->H(ZLjava/lang/String;)Z

    const-string v2, "ratio"

    const v3, 0x7fffffff

    const/4 v6, 0x2

    invoke-static {v1, v2, v6, v3}, Lif/E;->i(ILjava/lang/String;II)Z

    invoke-virtual/range {p0 .. p0}, Lcom/jme3/scene/Mesh;->getIndicesAsList()Lcom/jme3/scene/mesh/IndexBuffer;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/jme3/scene/Mesh;->getTriangleCount()I

    move-result v3

    invoke-virtual {v2}, Lcom/jme3/scene/mesh/IndexBuffer;->size()I

    move-result v7

    mul-int/2addr v7, v1

    mul-int/2addr v7, v1

    invoke-virtual/range {p0 .. p0}, Lcom/jme3/scene/Mesh;->clone()Lcom/jme3/scene/Mesh;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/jme3/scene/Mesh;->getBufferList()Lcom/jme3/util/SafeArrayList;

    move-result-object v9

    invoke-virtual {v9}, Lcom/jme3/util/SafeArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/jme3/scene/VertexBuffer;

    invoke-virtual {v10}, Lcom/jme3/scene/VertexBuffer;->getBufferType()Lcom/jme3/scene/VertexBuffer$Type;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/jme3/scene/Mesh;->clearBuffer(Lcom/jme3/scene/VertexBuffer$Type;)V

    sget-object v12, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    if-eq v11, v12, :cond_1

    sget-object v12, Lcom/jme3/scene/VertexBuffer$Format;->Float:Lcom/jme3/scene/VertexBuffer$Format;

    invoke-virtual {v10}, Lcom/jme3/scene/VertexBuffer;->getNumComponents()I

    move-result v10

    const/4 v13, 0x4

    invoke-static {v10, v5, v13}, Ljf/f;->h(III)I

    move-result v10

    invoke-static {v12, v10, v7}, Lcom/jme3/scene/VertexBuffer;->createBuffer(Lcom/jme3/scene/VertexBuffer$Format;II)Ljava/nio/Buffer;

    move-result-object v13

    invoke-virtual {v8, v11, v10, v12, v13}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILcom/jme3/scene/VertexBuffer$Format;Ljava/nio/Buffer;)V

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    const/4 v9, 0x0

    :goto_2
    if-ge v7, v3, :cond_b

    mul-int/lit8 v10, v7, 0x3

    invoke-virtual {v2, v10}, Lcom/jme3/scene/mesh/IndexBuffer;->get(I)I

    move-result v19

    add-int/lit8 v11, v10, 0x1

    invoke-virtual {v2, v11}, Lcom/jme3/scene/mesh/IndexBuffer;->get(I)I

    move-result v20

    add-int/2addr v10, v6

    invoke-virtual {v2, v10}, Lcom/jme3/scene/mesh/IndexBuffer;->get(I)I

    move-result v10

    const/4 v15, 0x0

    :goto_3
    if-ge v15, v1, :cond_6

    const/4 v11, 0x0

    :goto_4
    sub-int v12, v1, v15

    if-ge v11, v12, :cond_5

    sub-int/2addr v12, v11

    add-int/lit8 v13, v12, -0x1

    int-to-float v14, v11

    int-to-float v4, v1

    div-float v21, v14, v4

    add-int/lit8 v14, v11, 0x1

    int-to-float v11, v14

    div-float v22, v11, v4

    int-to-float v11, v13

    div-float v23, v11, v4

    int-to-float v11, v12

    div-float v4, v11, v4

    invoke-virtual {v8}, Lcom/jme3/scene/Mesh;->getBufferList()Lcom/jme3/util/SafeArrayList;

    move-result-object v11

    invoke-virtual {v11}, Lcom/jme3/util/SafeArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :goto_5
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v25, v11

    check-cast v25, Lcom/jme3/scene/VertexBuffer;

    invoke-virtual/range {v25 .. v25}, Lcom/jme3/scene/VertexBuffer;->getBufferType()Lcom/jme3/scene/VertexBuffer$Type;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/jme3/scene/VertexBuffer;->getNumElements()I

    move-result v11

    if-lez v11, :cond_3

    move/from16 v11, v21

    move/from16 v12, v23

    move-object/from16 v13, v26

    move/from16 v27, v14

    move/from16 v14, v19

    move/from16 v28, v15

    move/from16 v15, v20

    move/from16 v16, v10

    move-object/from16 v17, v25

    move/from16 v18, v9

    invoke-static/range {v11 .. v18}, Lif/e;->d(FFLcom/jme3/scene/VertexBuffer;IIILcom/jme3/scene/VertexBuffer;I)V

    add-int/lit8 v18, v9, 0x1

    move/from16 v11, v22

    invoke-static/range {v11 .. v18}, Lif/e;->d(FFLcom/jme3/scene/VertexBuffer;IIILcom/jme3/scene/VertexBuffer;I)V

    add-int/lit8 v18, v9, 0x2

    move/from16 v11, v21

    move v12, v4

    invoke-static/range {v11 .. v18}, Lif/e;->d(FFLcom/jme3/scene/VertexBuffer;IIILcom/jme3/scene/VertexBuffer;I)V

    goto :goto_6

    :cond_3
    move/from16 v27, v14

    move/from16 v28, v15

    :goto_6
    move/from16 v14, v27

    move/from16 v15, v28

    goto :goto_5

    :cond_4
    move/from16 v27, v14

    move/from16 v28, v15

    add-int/lit8 v9, v9, 0x3

    move/from16 v11, v27

    goto :goto_4

    :cond_5
    move/from16 v28, v15

    add-int/lit8 v15, v28, 0x1

    goto :goto_3

    :cond_6
    const/4 v4, 0x0

    :goto_7
    add-int/lit8 v11, v1, -0x1

    if-ge v4, v11, :cond_a

    const/4 v11, 0x0

    :goto_8
    sub-int v12, v1, v4

    add-int/lit8 v13, v12, -0x1

    if-ge v11, v13, :cond_9

    sub-int/2addr v12, v11

    add-int/lit8 v13, v12, -0x2

    int-to-float v14, v11

    int-to-float v15, v1

    div-float v21, v14, v15

    add-int/lit8 v14, v11, 0x1

    int-to-float v11, v14

    div-float v22, v11, v15

    int-to-float v11, v13

    div-float v23, v11, v15

    sub-int/2addr v12, v5

    int-to-float v11, v12

    div-float v24, v11, v15

    invoke-virtual {v8}, Lcom/jme3/scene/Mesh;->getBufferList()Lcom/jme3/util/SafeArrayList;

    move-result-object v11

    invoke-virtual {v11}, Lcom/jme3/util/SafeArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :goto_9
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v26, v11

    check-cast v26, Lcom/jme3/scene/VertexBuffer;

    invoke-virtual/range {v26 .. v26}, Lcom/jme3/scene/VertexBuffer;->getBufferType()Lcom/jme3/scene/VertexBuffer$Type;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/jme3/scene/VertexBuffer;->getNumElements()I

    move-result v11

    if-lez v11, :cond_7

    move/from16 v11, v22

    move/from16 v12, v23

    move-object/from16 v13, v27

    move/from16 v28, v14

    move/from16 v14, v19

    move/from16 v15, v20

    move/from16 v16, v10

    move-object/from16 v17, v26

    move/from16 v18, v9

    invoke-static/range {v11 .. v18}, Lif/e;->d(FFLcom/jme3/scene/VertexBuffer;IIILcom/jme3/scene/VertexBuffer;I)V

    add-int/lit8 v18, v9, 0x1

    move/from16 v12, v24

    invoke-static/range {v11 .. v18}, Lif/e;->d(FFLcom/jme3/scene/VertexBuffer;IIILcom/jme3/scene/VertexBuffer;I)V

    add-int/lit8 v18, v9, 0x2

    move/from16 v11, v21

    invoke-static/range {v11 .. v18}, Lif/e;->d(FFLcom/jme3/scene/VertexBuffer;IIILcom/jme3/scene/VertexBuffer;I)V

    goto :goto_a

    :cond_7
    move/from16 v28, v14

    :goto_a
    move/from16 v14, v28

    goto :goto_9

    :cond_8
    move/from16 v28, v14

    add-int/lit8 v9, v9, 0x3

    move/from16 v11, v28

    goto :goto_8

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    :cond_b
    invoke-virtual {v8}, Lcom/jme3/scene/Mesh;->getBufferList()Lcom/jme3/util/SafeArrayList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/scene/VertexBuffer;

    invoke-virtual {v1}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/Buffer;->capacity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    goto :goto_b

    :cond_c
    invoke-virtual {v8}, Lcom/jme3/scene/Mesh;->updateCounts()V

    return-object v8
.end method

.method public static M(Lcom/jme3/scene/Mesh;[Lcom/jme3/math/Matrix4f;)V
    .locals 8

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->BindPosePosition:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v0

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->BindPoseNormal:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v1}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v1

    sget-object v2, Lcom/jme3/scene/VertexBuffer$Type;->BindPoseTangent:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v2}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v2

    invoke-virtual {v0}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/FloatBuffer;

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move-object v1, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/FloatBuffer;

    :goto_0
    if-nez v2, :cond_1

    move-object v2, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/FloatBuffer;

    :goto_1
    new-instance v4, Lcom/jme3/math/Vector3f;

    invoke-direct {v4}, Lcom/jme3/math/Vector3f;-><init>()V

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    new-instance v3, Lcom/jme3/math/Vector4f;

    invoke-direct {v3}, Lcom/jme3/math/Vector4f;-><init>()V

    :goto_2
    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->getVertexCount()I

    move-result v5

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v5, :cond_5

    invoke-static {p0, v6, p1, v4}, Lif/p;->U(Lcom/jme3/scene/Mesh;I[Lcom/jme3/math/Matrix4f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    mul-int/lit8 v7, v6, 0x3

    invoke-static {v0, v7, v4}, Ljf/d;->p(Ljava/nio/FloatBuffer;ILcom/jme3/math/Vector3f;)V

    if-eqz v1, :cond_3

    invoke-static {p0, v6, p1, v4}, Lif/p;->V(Lcom/jme3/scene/Mesh;I[Lcom/jme3/math/Matrix4f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-static {v1, v7, v4}, Ljf/d;->p(Ljava/nio/FloatBuffer;ILcom/jme3/math/Vector3f;)V

    :cond_3
    if-eqz v2, :cond_4

    invoke-static {p0, v6, p1, v3}, Lif/p;->X(Lcom/jme3/scene/Mesh;I[Lcom/jme3/math/Matrix4f;Lcom/jme3/math/Vector4f;)Lcom/jme3/math/Vector4f;

    mul-int/lit8 v7, v6, 0x4

    invoke-static {v2, v7, v3}, Ljf/d;->q(Ljava/nio/FloatBuffer;ILcom/jme3/math/Vector4f;)V

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_5
    return-void
.end method

.method public static N(Lcom/jme3/scene/Mesh;Lcom/jme3/scene/VertexBuffer$Type;Lcom/jme3/math/Transform;)V
    .locals 2

    const-string v0, "buffer type"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "transform"

    invoke-static {p2, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-virtual {p0, p1}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/FloatBuffer;

    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->getVertexCount()I

    move-result p0

    mul-int/lit8 p0, p0, 0x3

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p2}, Ljf/d;->x(Ljava/nio/FloatBuffer;IILcom/jme3/math/Transform;)V

    invoke-virtual {p1}, Lcom/jme3/util/NativeObject;->setUpdateNeeded()V

    :cond_0
    return-void
.end method

.method public static O(Lcom/jme3/scene/Mesh;Lcom/jme3/math/Vector3f;)V
    .locals 4

    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->getVertexCount()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v1}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/FloatBuffer;

    const/4 v3, 0x0

    invoke-static {v2, v3, v0, p1}, Ljf/d;->y(Ljava/nio/FloatBuffer;IILcom/jme3/math/Vector3f;)V

    invoke-virtual {v1}, Lcom/jme3/util/NativeObject;->setUpdateNeeded()V

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->BindPosePosition:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v1}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/FloatBuffer;

    invoke-static {v2, v3, v0, p1}, Ljf/d;->y(Ljava/nio/FloatBuffer;IILcom/jme3/math/Vector3f;)V

    invoke-virtual {v1}, Lcom/jme3/util/NativeObject;->setUpdateNeeded()V

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->updateBound()V

    return-void
.end method

.method public static P(Lcom/jme3/scene/mesh/IndexBuffer;I)Lcom/jme3/scene/mesh/IndexBuffer;
    .locals 7

    const-string v0, "index list"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/jme3/scene/mesh/IndexBuffer;->size()I

    move-result v0

    rem-int/lit8 v0, v0, 0x3

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v2, "size a multiple of 3"

    invoke-static {v0, v2}, Lif/E;->H(ZLjava/lang/String;)Z

    const-string v0, "number of vertices"

    invoke-static {p1, v0}, Lif/E;->F(ILjava/lang/String;)Z

    invoke-virtual {p0}, Lcom/jme3/scene/mesh/IndexBuffer;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    new-instance v2, Ljava/util/HashSet;

    mul-int/lit8 v3, v0, 0x3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    :goto_1
    if-ge v1, v0, :cond_1

    mul-int/lit8 v3, v1, 0x3

    invoke-virtual {p0, v3}, Lcom/jme3/scene/mesh/IndexBuffer;->get(I)I

    move-result v4

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v5}, Lcom/jme3/scene/mesh/IndexBuffer;->get(I)I

    move-result v5

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, v3}, Lcom/jme3/scene/mesh/IndexBuffer;->get(I)I

    move-result v3

    new-instance v6, Ljf/b;

    invoke-direct {v6, v4, v5}, Ljf/b;-><init>(II)V

    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v6, Ljf/b;

    invoke-direct {v6, v4, v3}, Ljf/b;-><init>(II)V

    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljf/b;

    invoke-direct {v4, v5, v3}, Ljf/b;-><init>(II)V

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    invoke-static {p1, p0}, Lcom/jme3/scene/mesh/IndexBuffer;->createIndexBuffer(II)Lcom/jme3/scene/mesh/IndexBuffer;

    move-result-object p0

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljf/b;

    invoke-virtual {v0}, Ljf/b;->c()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/jme3/scene/mesh/IndexBuffer;->put(I)Lcom/jme3/scene/mesh/IndexBuffer;

    invoke-virtual {v0}, Ljf/b;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jme3/scene/mesh/IndexBuffer;->put(I)Lcom/jme3/scene/mesh/IndexBuffer;

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/jme3/scene/mesh/IndexBuffer;->getBuffer()Ljava/nio/Buffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    return-object p0
.end method

.method public static Q(Lcom/jme3/scene/Mesh;)V
    .locals 4

    const-string v0, "mesh"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-static {p0}, Lif/p;->t(Lcom/jme3/scene/Mesh;)Z

    move-result v0

    const-string v1, "contain triangles"

    invoke-static {v0, v1}, Lif/E;->H(ZLjava/lang/String;)Z

    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->getIndicesAsList()Lcom/jme3/scene/mesh/IndexBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->getVertexCount()I

    move-result v1

    invoke-static {v0, v1}, Lif/p;->P(Lcom/jme3/scene/mesh/IndexBuffer;I)Lcom/jme3/scene/mesh/IndexBuffer;

    move-result-object v0

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v1}, Lcom/jme3/scene/Mesh;->clearBuffer(Lcom/jme3/scene/VertexBuffer$Type;)V

    invoke-virtual {v0}, Lcom/jme3/scene/mesh/IndexBuffer;->getFormat()Lcom/jme3/scene/VertexBuffer$Format;

    move-result-object v2

    invoke-virtual {v0}, Lcom/jme3/scene/mesh/IndexBuffer;->getBuffer()Ljava/nio/Buffer;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {p0, v1, v3, v2, v0}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILcom/jme3/scene/VertexBuffer$Format;Ljava/nio/Buffer;)V

    sget-object v0, Lcom/jme3/scene/Mesh$Mode;->Lines:Lcom/jme3/scene/Mesh$Mode;

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Mesh;->setMode(Lcom/jme3/scene/Mesh$Mode;)V

    return-void
.end method

.method public static R(Lcom/jme3/scene/Mesh;I[I)[I
    .locals 3

    const-string v0, "mesh"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "vertex index"

    invoke-static {p1, v0}, Lif/E;->q(ILjava/lang/String;)Z

    const/4 v0, 0x4

    if-nez p2, :cond_0

    new-array p2, v0, [I

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->getMaxNumWeights()I

    move-result v1

    if-gtz v1, :cond_1

    const/4 v1, 0x1

    :cond_1
    sget-object v2, Lcom/jme3/scene/VertexBuffer$Type;->BoneIndex:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v2}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/jme3/scene/VertexBuffer;->getDataReadOnly()Ljava/nio/Buffer;

    move-result-object p0

    mul-int/2addr p1, v0

    invoke-virtual {p0, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v1, :cond_2

    invoke-static {p0}, Ljf/d;->r(Ljava/nio/Buffer;)I

    move-result v0

    aput v0, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    array-length p0, p2

    :goto_1
    if-ge v1, p0, :cond_3

    const/4 p1, -0x1

    aput p1, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-object p2
.end method

.method public static S(Lcom/jme3/scene/Mesh;I[F)[F
    .locals 3

    const-string v0, "mesh"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "vertex index"

    invoke-static {p1, v0}, Lif/E;->q(ILjava/lang/String;)Z

    const/4 v0, 0x4

    if-nez p2, :cond_0

    new-array p2, v0, [F

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->getMaxNumWeights()I

    move-result v1

    if-gtz v1, :cond_1

    const/4 v1, 0x1

    :cond_1
    sget-object v2, Lcom/jme3/scene/VertexBuffer$Type;->BoneWeight:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v2}, Lcom/jme3/scene/Mesh;->getFloatBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Ljava/nio/FloatBuffer;

    move-result-object p0

    mul-int/2addr p1, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    add-int v2, p1, v0

    invoke-virtual {p0, v2}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v2

    aput v2, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    array-length p0, p2

    :goto_1
    if-ge v1, p0, :cond_3

    const/4 p1, 0x0

    aput p1, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-object p2
.end method

.method public static T(Lcom/jme3/scene/Mesh;ILcom/jme3/math/ColorRGBA;)Lcom/jme3/math/ColorRGBA;
    .locals 7

    const-string v0, "mesh"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "vertex index"

    invoke-static {p1, v0}, Lif/E;->q(ILjava/lang/String;)Z

    if-nez p2, :cond_0

    new-instance p2, Lcom/jme3/math/ColorRGBA;

    invoke-direct {p2}, Lcom/jme3/math/ColorRGBA;-><init>()V

    :cond_0
    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Color:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/jme3/scene/VertexBuffer;->getNumComponents()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v3, 0x1

    :goto_1
    const-string v4, "3 or 4 components per element"

    invoke-static {v3, v4}, Lif/E;->H(ZLjava/lang/String;)Z

    mul-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/jme3/scene/VertexBuffer;->getDataReadOnly()Ljava/nio/Buffer;

    move-result-object p0

    instance-of v3, p0, Ljava/nio/ByteBuffer;

    if-eqz v3, :cond_4

    check-cast p0, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    const/16 v4, 0xff

    and-int/2addr v3, v4

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/2addr v5, v4

    add-int/lit8 v6, p1, 0x2

    invoke-virtual {p0, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    and-int/2addr v6, v4

    if-ne v0, v1, :cond_3

    add-int/2addr p1, v2

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    and-int/2addr v4, p0

    :cond_3
    int-to-float p0, v3

    int-to-float p1, v5

    int-to-float v0, v6

    int-to-float v1, v4

    invoke-virtual {p2, p0, p1, v0, v1}, Lcom/jme3/math/ColorRGBA;->set(FFFF)Lcom/jme3/math/ColorRGBA;

    const p0, 0x3b808081

    invoke-virtual {p2, p0}, Lcom/jme3/math/ColorRGBA;->multLocal(F)Lcom/jme3/math/ColorRGBA;

    goto :goto_2

    :cond_4
    check-cast p0, Ljava/nio/FloatBuffer;

    invoke-virtual {p0, p1}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v3

    iput v3, p2, Lcom/jme3/math/ColorRGBA;->r:F

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {p0, v3}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v3

    iput v3, p2, Lcom/jme3/math/ColorRGBA;->g:F

    add-int/lit8 v3, p1, 0x2

    invoke-virtual {p0, v3}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v3

    iput v3, p2, Lcom/jme3/math/ColorRGBA;->b:F

    if-ne v0, v1, :cond_5

    add-int/2addr p1, v2

    invoke-virtual {p0, p1}, Ljava/nio/FloatBuffer;->get(I)F

    move-result p0

    iput p0, p2, Lcom/jme3/math/ColorRGBA;->a:F

    goto :goto_2

    :cond_5
    const/high16 p0, 0x3f800000    # 1.0f

    iput p0, p2, Lcom/jme3/math/ColorRGBA;->a:F

    :goto_2
    return-object p2
.end method

.method public static U(Lcom/jme3/scene/Mesh;I[Lcom/jme3/math/Matrix4f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 11

    const-string v0, "mesh"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "vertex index"

    invoke-static {p1, v0}, Lif/E;->q(ILjava/lang/String;)Z

    const-string v0, "skinning matrices"

    invoke-static {p2, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    if-nez p3, :cond_0

    new-instance p3, Lcom/jme3/math/Vector3f;

    invoke-direct {p3}, Lcom/jme3/math/Vector3f;-><init>()V

    :cond_0
    invoke-static {p0}, Lif/p;->v(Lcom/jme3/scene/Mesh;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->BindPosePosition:Lcom/jme3/scene/VertexBuffer$Type;

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Lif/p;->Z(Lcom/jme3/scene/Mesh;Lcom/jme3/scene/VertexBuffer$Type;ILcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->BoneWeight:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v1}, Lcom/jme3/scene/Mesh;->getFloatBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Ljava/nio/FloatBuffer;

    move-result-object v1

    mul-int/lit8 p1, p1, 0x4

    invoke-virtual {v1, p1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    sget-object v2, Lcom/jme3/scene/VertexBuffer$Type;->BoneIndex:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v2}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jme3/scene/VertexBuffer;->getDataReadOnly()Ljava/nio/Buffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p3}, Lcom/jme3/math/Vector3f;->zero()Lcom/jme3/math/Vector3f;

    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->getMaxNumWeights()I

    move-result p0

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p0, :cond_4

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->get()F

    move-result v3

    invoke-static {v2}, Ljf/d;->r(Ljava/nio/Buffer;)I

    move-result v4

    const/4 v5, 0x0

    cmpl-float v5, v3, v5

    if-eqz v5, :cond_2

    array-length v5, p2

    if-ge v4, v5, :cond_1

    aget-object v4, p2, v4

    goto :goto_1

    :cond_1
    sget-object v4, Lif/p;->f:Lcom/jme3/math/Matrix4f;

    :goto_1
    iget v5, v4, Lcom/jme3/math/Matrix4f;->m00:F

    iget v6, v0, Lcom/jme3/math/Vector3f;->x:F

    mul-float/2addr v5, v6

    iget v7, v4, Lcom/jme3/math/Matrix4f;->m01:F

    iget v8, v0, Lcom/jme3/math/Vector3f;->y:F

    mul-float/2addr v7, v8

    add-float/2addr v5, v7

    iget v7, v4, Lcom/jme3/math/Matrix4f;->m02:F

    iget v9, v0, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v7, v9

    add-float/2addr v5, v7

    iget v7, v4, Lcom/jme3/math/Matrix4f;->m03:F

    add-float/2addr v5, v7

    iget v7, v4, Lcom/jme3/math/Matrix4f;->m10:F

    mul-float/2addr v7, v6

    iget v10, v4, Lcom/jme3/math/Matrix4f;->m11:F

    mul-float/2addr v10, v8

    add-float/2addr v7, v10

    iget v10, v4, Lcom/jme3/math/Matrix4f;->m12:F

    mul-float/2addr v10, v9

    add-float/2addr v7, v10

    iget v10, v4, Lcom/jme3/math/Matrix4f;->m13:F

    add-float/2addr v7, v10

    iget v10, v4, Lcom/jme3/math/Matrix4f;->m20:F

    mul-float/2addr v10, v6

    iget v6, v4, Lcom/jme3/math/Matrix4f;->m21:F

    mul-float/2addr v6, v8

    add-float/2addr v10, v6

    iget v6, v4, Lcom/jme3/math/Matrix4f;->m22:F

    mul-float/2addr v6, v9

    add-float/2addr v10, v6

    iget v4, v4, Lcom/jme3/math/Matrix4f;->m23:F

    add-float/2addr v10, v4

    iget v4, p3, Lcom/jme3/math/Vector3f;->x:F

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    iput v4, p3, Lcom/jme3/math/Vector3f;->x:F

    iget v4, p3, Lcom/jme3/math/Vector3f;->y:F

    mul-float/2addr v7, v3

    add-float/2addr v4, v7

    iput v4, p3, Lcom/jme3/math/Vector3f;->y:F

    iget v4, p3, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v3, v10

    add-float/2addr v4, v3

    iput v4, p3, Lcom/jme3/math/Vector3f;->z:F

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    sget-object p2, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-static {p0, p2, p1, p3}, Lif/p;->Z(Lcom/jme3/scene/Mesh;Lcom/jme3/scene/VertexBuffer$Type;ILcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    :cond_4
    return-object p3
.end method

.method public static V(Lcom/jme3/scene/Mesh;I[Lcom/jme3/math/Matrix4f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 11

    const-string v0, "mesh"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "vertex index"

    invoke-static {p1, v0}, Lif/E;->q(ILjava/lang/String;)Z

    const-string v0, "skinning matrices"

    invoke-static {p2, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    if-nez p3, :cond_0

    new-instance p3, Lcom/jme3/math/Vector3f;

    invoke-direct {p3}, Lcom/jme3/math/Vector3f;-><init>()V

    :cond_0
    invoke-static {p0}, Lif/p;->v(Lcom/jme3/scene/Mesh;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->BindPoseNormal:Lcom/jme3/scene/VertexBuffer$Type;

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Lif/p;->Z(Lcom/jme3/scene/Mesh;Lcom/jme3/scene/VertexBuffer$Type;ILcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->BoneWeight:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v1}, Lcom/jme3/scene/Mesh;->getFloatBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Ljava/nio/FloatBuffer;

    move-result-object v1

    mul-int/lit8 p1, p1, 0x4

    invoke-virtual {v1, p1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    sget-object v2, Lcom/jme3/scene/VertexBuffer$Type;->BoneIndex:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v2}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jme3/scene/VertexBuffer;->getDataReadOnly()Ljava/nio/Buffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p3}, Lcom/jme3/math/Vector3f;->zero()Lcom/jme3/math/Vector3f;

    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->getMaxNumWeights()I

    move-result p0

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p0, :cond_3

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->get()F

    move-result v3

    invoke-static {v2}, Ljf/d;->r(Ljava/nio/Buffer;)I

    move-result v4

    const/4 v5, 0x0

    cmpl-float v5, v3, v5

    if-eqz v5, :cond_2

    array-length v5, p2

    if-ge v4, v5, :cond_1

    aget-object v4, p2, v4

    goto :goto_1

    :cond_1
    sget-object v4, Lif/p;->f:Lcom/jme3/math/Matrix4f;

    :goto_1
    iget v5, v4, Lcom/jme3/math/Matrix4f;->m00:F

    iget v6, v0, Lcom/jme3/math/Vector3f;->x:F

    mul-float/2addr v5, v6

    iget v7, v4, Lcom/jme3/math/Matrix4f;->m01:F

    iget v8, v0, Lcom/jme3/math/Vector3f;->y:F

    mul-float/2addr v7, v8

    add-float/2addr v5, v7

    iget v7, v4, Lcom/jme3/math/Matrix4f;->m02:F

    iget v9, v0, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v7, v9

    add-float/2addr v5, v7

    iget v7, v4, Lcom/jme3/math/Matrix4f;->m10:F

    mul-float/2addr v7, v6

    iget v10, v4, Lcom/jme3/math/Matrix4f;->m11:F

    mul-float/2addr v10, v8

    add-float/2addr v7, v10

    iget v10, v4, Lcom/jme3/math/Matrix4f;->m12:F

    mul-float/2addr v10, v9

    add-float/2addr v7, v10

    iget v10, v4, Lcom/jme3/math/Matrix4f;->m20:F

    mul-float/2addr v10, v6

    iget v6, v4, Lcom/jme3/math/Matrix4f;->m21:F

    mul-float/2addr v6, v8

    add-float/2addr v10, v6

    iget v4, v4, Lcom/jme3/math/Matrix4f;->m22:F

    mul-float/2addr v4, v9

    add-float/2addr v10, v4

    iget v4, p3, Lcom/jme3/math/Vector3f;->x:F

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    iput v4, p3, Lcom/jme3/math/Vector3f;->x:F

    iget v4, p3, Lcom/jme3/math/Vector3f;->y:F

    mul-float/2addr v7, v3

    add-float/2addr v4, v7

    iput v4, p3, Lcom/jme3/math/Vector3f;->y:F

    iget v4, p3, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v3, v10

    add-float/2addr v4, v3

    iput v4, p3, Lcom/jme3/math/Vector3f;->z:F

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    invoke-static {p3}, Ljf/h;->P(Lcom/jme3/math/Vector3f;)V

    goto :goto_2

    :cond_4
    sget-object p2, Lcom/jme3/scene/VertexBuffer$Type;->Normal:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-static {p0, p2, p1, p3}, Lif/p;->Z(Lcom/jme3/scene/Mesh;Lcom/jme3/scene/VertexBuffer$Type;ILcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    :goto_2
    return-object p3
.end method

.method public static W(Lcom/jme3/scene/Mesh;I)F
    .locals 1

    const-string v0, "mesh"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "vertex index"

    invoke-static {p1, v0}, Lif/E;->q(ILjava/lang/String;)Z

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Size:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Mesh;->getFloatBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Ljava/nio/FloatBuffer;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/nio/FloatBuffer;->get(I)F

    move-result p0

    return p0
.end method

.method public static X(Lcom/jme3/scene/Mesh;I[Lcom/jme3/math/Matrix4f;Lcom/jme3/math/Vector4f;)Lcom/jme3/math/Vector4f;
    .locals 11

    const-string v0, "mesh"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "vertex index"

    invoke-static {p1, v0}, Lif/E;->q(ILjava/lang/String;)Z

    const-string v0, "skinning matrices"

    invoke-static {p2, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    if-nez p3, :cond_0

    new-instance p3, Lcom/jme3/math/Vector4f;

    invoke-direct {p3}, Lcom/jme3/math/Vector4f;-><init>()V

    :cond_0
    invoke-static {p0}, Lif/p;->v(Lcom/jme3/scene/Mesh;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->BindPoseTangent:Lcom/jme3/scene/VertexBuffer$Type;

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Lif/p;->a0(Lcom/jme3/scene/Mesh;Lcom/jme3/scene/VertexBuffer$Type;ILcom/jme3/math/Vector4f;)Lcom/jme3/math/Vector4f;

    move-result-object v0

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->BoneWeight:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v1}, Lcom/jme3/scene/Mesh;->getFloatBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Ljava/nio/FloatBuffer;

    move-result-object v1

    mul-int/lit8 p1, p1, 0x4

    invoke-virtual {v1, p1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    sget-object v2, Lcom/jme3/scene/VertexBuffer$Type;->BoneIndex:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v2}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jme3/scene/VertexBuffer;->getDataReadOnly()Ljava/nio/Buffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p3}, Lcom/jme3/math/Vector4f;->zero()Lcom/jme3/math/Vector4f;

    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->getMaxNumWeights()I

    move-result p0

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p0, :cond_3

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->get()F

    move-result v3

    invoke-static {v2}, Ljf/d;->r(Ljava/nio/Buffer;)I

    move-result v4

    const/4 v5, 0x0

    cmpl-float v5, v3, v5

    if-eqz v5, :cond_2

    array-length v5, p2

    if-ge v4, v5, :cond_1

    aget-object v4, p2, v4

    goto :goto_1

    :cond_1
    sget-object v4, Lif/p;->f:Lcom/jme3/math/Matrix4f;

    :goto_1
    iget v5, v4, Lcom/jme3/math/Matrix4f;->m00:F

    iget v6, v0, Lcom/jme3/math/Vector4f;->x:F

    mul-float/2addr v5, v6

    iget v7, v4, Lcom/jme3/math/Matrix4f;->m01:F

    iget v8, v0, Lcom/jme3/math/Vector4f;->y:F

    mul-float/2addr v7, v8

    add-float/2addr v5, v7

    iget v7, v4, Lcom/jme3/math/Matrix4f;->m02:F

    iget v9, v0, Lcom/jme3/math/Vector4f;->z:F

    mul-float/2addr v7, v9

    add-float/2addr v5, v7

    iget v7, v4, Lcom/jme3/math/Matrix4f;->m10:F

    mul-float/2addr v7, v6

    iget v10, v4, Lcom/jme3/math/Matrix4f;->m11:F

    mul-float/2addr v10, v8

    add-float/2addr v7, v10

    iget v10, v4, Lcom/jme3/math/Matrix4f;->m12:F

    mul-float/2addr v10, v9

    add-float/2addr v7, v10

    iget v10, v4, Lcom/jme3/math/Matrix4f;->m20:F

    mul-float/2addr v10, v6

    iget v6, v4, Lcom/jme3/math/Matrix4f;->m21:F

    mul-float/2addr v6, v8

    add-float/2addr v10, v6

    iget v4, v4, Lcom/jme3/math/Matrix4f;->m22:F

    mul-float/2addr v4, v9

    add-float/2addr v10, v4

    iget v4, p3, Lcom/jme3/math/Vector4f;->x:F

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    iput v4, p3, Lcom/jme3/math/Vector4f;->x:F

    iget v4, p3, Lcom/jme3/math/Vector4f;->y:F

    mul-float/2addr v7, v3

    add-float/2addr v4, v7

    iput v4, p3, Lcom/jme3/math/Vector4f;->y:F

    iget v4, p3, Lcom/jme3/math/Vector4f;->z:F

    mul-float/2addr v3, v10

    add-float/2addr v4, v3

    iput v4, p3, Lcom/jme3/math/Vector4f;->z:F

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p3}, Lcom/jme3/math/Vector4f;->normalizeLocal()Lcom/jme3/math/Vector4f;

    iget p0, v0, Lcom/jme3/math/Vector4f;->w:F

    iput p0, p3, Lcom/jme3/math/Vector4f;->w:F

    goto :goto_2

    :cond_4
    sget-object p2, Lcom/jme3/scene/VertexBuffer$Type;->Tangent:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-static {p0, p2, p1, p3}, Lif/p;->a0(Lcom/jme3/scene/Mesh;Lcom/jme3/scene/VertexBuffer$Type;ILcom/jme3/math/Vector4f;)Lcom/jme3/math/Vector4f;

    :goto_2
    return-object p3
.end method

.method public static Y(Lcom/jme3/scene/Mesh;Lcom/jme3/scene/VertexBuffer$Type;ILcom/jme3/math/Vector2f;)Lcom/jme3/math/Vector2f;
    .locals 1

    const-string v0, "vertex index"

    invoke-static {p2, v0}, Lif/E;->q(ILjava/lang/String;)Z

    if-nez p3, :cond_0

    new-instance p3, Lcom/jme3/math/Vector2f;

    invoke-direct {p3}, Lcom/jme3/math/Vector2f;-><init>()V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/jme3/scene/Mesh;->getFloatBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Ljava/nio/FloatBuffer;

    move-result-object p0

    mul-int/lit8 p2, p2, 0x2

    invoke-virtual {p0, p2}, Ljava/nio/FloatBuffer;->get(I)F

    move-result p1

    iput p1, p3, Lcom/jme3/math/Vector2f;->x:F

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p0, p2}, Ljava/nio/FloatBuffer;->get(I)F

    move-result p0

    iput p0, p3, Lcom/jme3/math/Vector2f;->y:F

    return-object p3
.end method

.method public static Z(Lcom/jme3/scene/Mesh;Lcom/jme3/scene/VertexBuffer$Type;ILcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 1

    const-string v0, "vertex index"

    invoke-static {p2, v0}, Lif/E;->q(ILjava/lang/String;)Z

    if-nez p3, :cond_0

    new-instance p3, Lcom/jme3/math/Vector3f;

    invoke-direct {p3}, Lcom/jme3/math/Vector3f;-><init>()V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/jme3/scene/Mesh;->getFloatBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Ljava/nio/FloatBuffer;

    move-result-object p0

    mul-int/lit8 p2, p2, 0x3

    invoke-static {p0, p2, p3}, Ljf/d;->g(Ljava/nio/FloatBuffer;ILcom/jme3/math/Vector3f;)V

    return-object p3
.end method

.method public static a(Lcom/jme3/scene/Mesh;)Lcom/jme3/scene/Mesh;
    .locals 13

    const-string v0, "input mesh"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-static {p0}, Lif/p;->q(Lcom/jme3/scene/Mesh;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "not have an index buffer"

    invoke-static {v0, v2}, Lif/E;->H(ZLjava/lang/String;)Z

    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->getVertexCount()I

    move-result v0

    new-array v2, v0, [I

    new-array v3, v0, [I

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_0
    if-ge v5, v0, :cond_3

    const/4 v7, -0x1

    aput v7, v2, v5

    aput v7, v3, v5

    move v8, v4

    :goto_1
    if-ge v8, v6, :cond_1

    aget v9, v3, v8

    invoke-static {p0, v5, v9}, Lif/p;->d(Lcom/jme3/scene/Mesh;II)Z

    move-result v9

    if-eqz v9, :cond_0

    aput v8, v2, v5

    goto :goto_2

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    aget v8, v2, v5

    if-ne v8, v7, :cond_2

    aput v6, v2, v5

    aput v5, v3, v6

    add-int/lit8 v6, v6, 0x1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->clone()Lcom/jme3/scene/Mesh;

    move-result-object v5

    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->getBufferList()Lcom/jme3/util/SafeArrayList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/jme3/util/SafeArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/jme3/scene/VertexBuffer;

    invoke-virtual {v8}, Lcom/jme3/scene/VertexBuffer;->getBufferType()Lcom/jme3/scene/VertexBuffer$Type;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/jme3/scene/Mesh;->clearBuffer(Lcom/jme3/scene/VertexBuffer$Type;)V

    invoke-virtual {v8}, Lcom/jme3/scene/VertexBuffer;->getFormat()Lcom/jme3/scene/VertexBuffer$Format;

    move-result-object v10

    if-nez v10, :cond_4

    sget-object v10, Lcom/jme3/scene/VertexBuffer$Format;->Float:Lcom/jme3/scene/VertexBuffer$Format;

    :cond_4
    invoke-virtual {v8}, Lcom/jme3/scene/VertexBuffer;->getNumComponents()I

    move-result v8

    const/4 v11, 0x4

    invoke-static {v8, v1, v11}, Ljf/f;->h(III)I

    move-result v8

    invoke-static {v10, v8, v6}, Lcom/jme3/scene/VertexBuffer;->createBuffer(Lcom/jme3/scene/VertexBuffer$Format;II)Ljava/nio/Buffer;

    move-result-object v11

    invoke-virtual {v5, v9, v8, v10, v11}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILcom/jme3/scene/VertexBuffer$Format;Ljava/nio/Buffer;)V

    goto :goto_3

    :cond_5
    move v7, v4

    :goto_4
    if-ge v7, v6, :cond_8

    aget v8, v3, v7

    invoke-virtual {v5}, Lcom/jme3/scene/Mesh;->getBufferList()Lcom/jme3/util/SafeArrayList;

    move-result-object v9

    invoke-virtual {v9}, Lcom/jme3/util/SafeArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_6
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/jme3/scene/VertexBuffer;

    invoke-virtual {v10}, Lcom/jme3/scene/VertexBuffer;->getBufferType()Lcom/jme3/scene/VertexBuffer$Type;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v11

    invoke-virtual {v11}, Lcom/jme3/scene/VertexBuffer;->getNumElements()I

    move-result v12

    if-lez v12, :cond_6

    invoke-static {v11, v8, v10, v7}, Lif/e;->a(Lcom/jme3/scene/VertexBuffer;ILcom/jme3/scene/VertexBuffer;I)V

    goto :goto_5

    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_8
    invoke-static {v6, v0}, Lcom/jme3/scene/mesh/IndexBuffer;->createIndexBuffer(II)Lcom/jme3/scene/mesh/IndexBuffer;

    move-result-object p0

    :goto_6
    if-ge v4, v0, :cond_9

    aget v3, v2, v4

    invoke-virtual {p0, v4, v3}, Lcom/jme3/scene/mesh/IndexBuffer;->put(II)Lcom/jme3/scene/mesh/IndexBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_9
    invoke-virtual {p0}, Lcom/jme3/scene/mesh/IndexBuffer;->getFormat()Lcom/jme3/scene/VertexBuffer$Format;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jme3/scene/mesh/IndexBuffer;->getBuffer()Ljava/nio/Buffer;

    move-result-object p0

    sget-object v2, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v5, v2, v1, v0, p0}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILcom/jme3/scene/VertexBuffer$Format;Ljava/nio/Buffer;)V

    invoke-virtual {v5}, Lcom/jme3/scene/Mesh;->getBufferList()Lcom/jme3/util/SafeArrayList;

    move-result-object p0

    invoke-virtual {p0}, Lcom/jme3/util/SafeArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/VertexBuffer;

    invoke-virtual {v0}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    goto :goto_7

    :cond_a
    invoke-virtual {v5}, Lcom/jme3/scene/Mesh;->updateCounts()V

    return-object v5
.end method

.method public static a0(Lcom/jme3/scene/Mesh;Lcom/jme3/scene/VertexBuffer$Type;ILcom/jme3/math/Vector4f;)Lcom/jme3/math/Vector4f;
    .locals 1

    const-string v0, "vertex index"

    invoke-static {p2, v0}, Lif/E;->q(ILjava/lang/String;)Z

    if-nez p3, :cond_0

    new-instance p3, Lcom/jme3/math/Vector4f;

    invoke-direct {p3}, Lcom/jme3/math/Vector4f;-><init>()V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/jme3/scene/Mesh;->getFloatBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Ljava/nio/FloatBuffer;

    move-result-object p0

    mul-int/lit8 p2, p2, 0x4

    invoke-virtual {p0, p2}, Ljava/nio/FloatBuffer;->get(I)F

    move-result p1

    iput p1, p3, Lcom/jme3/math/Vector4f;->x:F

    add-int/lit8 p1, p2, 0x1

    invoke-virtual {p0, p1}, Ljava/nio/FloatBuffer;->get(I)F

    move-result p1

    iput p1, p3, Lcom/jme3/math/Vector4f;->y:F

    add-int/lit8 p1, p2, 0x2

    invoke-virtual {p0, p1}, Ljava/nio/FloatBuffer;->get(I)F

    move-result p1

    iput p1, p3, Lcom/jme3/math/Vector4f;->z:F

    add-int/lit8 p2, p2, 0x3

    invoke-virtual {p0, p2}, Ljava/nio/FloatBuffer;->get(I)F

    move-result p0

    iput p0, p3, Lcom/jme3/math/Vector4f;->w:F

    return-object p3
.end method

.method public static b(Lcom/jme3/scene/Mesh;)V
    .locals 2

    const-string v0, "mesh"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-static {p0}, Lif/p;->o(Lcom/jme3/scene/Mesh;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "not have normals"

    invoke-static {v0, v1}, Lif/E;->H(ZLjava/lang/String;)Z

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Normal:Lcom/jme3/scene/VertexBuffer$Type;

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-static {p0, v0, v1}, Lif/p;->m(Lcom/jme3/scene/Mesh;Lcom/jme3/scene/VertexBuffer$Type;Lcom/jme3/scene/VertexBuffer$Type;)V

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->BindPosePosition:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->BindPoseNormal:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-static {p0, v1, v0}, Lif/p;->m(Lcom/jme3/scene/Mesh;Lcom/jme3/scene/VertexBuffer$Type;Lcom/jme3/scene/VertexBuffer$Type;)V

    :cond_0
    return-void
.end method

.method public static b0(Lcom/jme3/scene/Geometry;I[Lcom/jme3/math/Matrix4f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 2

    const-string v0, "vertex index"

    invoke-static {p1, v0}, Lif/E;->q(ILjava/lang/String;)Z

    const-string v0, "skinning matrices"

    invoke-static {p2, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    if-nez p3, :cond_0

    new-instance p3, Lcom/jme3/math/Vector3f;

    invoke-direct {p3}, Lcom/jme3/math/Vector3f;-><init>()V

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lif/p;->U(Lcom/jme3/scene/Mesh;I[Lcom/jme3/math/Matrix4f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p0}, Lcom/jme3/scene/Geometry;->isIgnoreTransform()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p3, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p3}, Lcom/jme3/scene/Spatial;->localToWorld(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    :goto_0
    return-object p3
.end method

.method public static c(Lcom/jme3/scene/Geometry;Lcom/jme3/scene/Spatial;Ljava/nio/FloatBuffer;Lcom/jme3/scene/mesh/IndexBuffer;)V
    .locals 7

    invoke-virtual {p0}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Lif/p;->t(Lcom/jme3/scene/Mesh;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    const-string v1, "addPositions"

    invoke-static {p2, v1}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v1, "addIndices"

    invoke-static {p3, v1}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    invoke-virtual {v0}, Lcom/jme3/scene/Mesh;->getIndicesAsList()Lcom/jme3/scene/mesh/IndexBuffer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jme3/scene/mesh/IndexBuffer;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    invoke-virtual {v2, v5}, Lcom/jme3/scene/mesh/IndexBuffer;->get(I)I

    move-result v6

    add-int/2addr v6, v1

    invoke-virtual {p3, v6}, Lcom/jme3/scene/mesh/IndexBuffer;->put(I)Lcom/jme3/scene/mesh/IndexBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p0, p1}, Lif/s;->K(Lcom/jme3/scene/Spatial;Lcom/jme3/scene/Spatial;)Lcom/jme3/math/Transform;

    move-result-object p0

    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    invoke-virtual {v0}, Lcom/jme3/scene/Mesh;->getVertexCount()I

    move-result p3

    :goto_1
    if-ge v4, p3, :cond_2

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-static {v0, v1, v4, p1}, Lif/p;->Z(Lcom/jme3/scene/Mesh;Lcom/jme3/scene/VertexBuffer$Type;ILcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-static {p0, p1, p1}, Ljf/f;->S(Lcom/jme3/math/Transform;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget v1, p1, Lcom/jme3/math/Vector3f;->x:F

    invoke-virtual {p2, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget v1, p1, Lcom/jme3/math/Vector3f;->y:F

    invoke-virtual {p2, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget v1, p1, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {p2, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method public static d(Lcom/jme3/scene/Mesh;II)Z
    .locals 5

    const-string v0, "mesh"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->getVertexCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const-string v2, "first vertex index"

    const/4 v3, 0x0

    invoke-static {p1, v2, v3, v0}, Lif/E;->i(ILjava/lang/String;II)Z

    const-string v2, "2nd vertex index"

    invoke-static {p2, v2, v3, v0}, Lif/E;->i(ILjava/lang/String;II)Z

    if-ne p1, p2, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->getBufferList()Lcom/jme3/util/SafeArrayList;

    move-result-object p0

    invoke-virtual {p0}, Lcom/jme3/util/SafeArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/VertexBuffer;

    invoke-virtual {v0}, Lcom/jme3/scene/VertexBuffer;->getBufferType()Lcom/jme3/scene/VertexBuffer$Type;

    move-result-object v2

    sget-object v4, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    if-eq v2, v4, :cond_1

    invoke-virtual {v0}, Lcom/jme3/scene/VertexBuffer;->getNumElements()I

    move-result v2

    if-lez v2, :cond_1

    invoke-static {v0, p1, p2}, Lif/e;->b(Lcom/jme3/scene/VertexBuffer;II)Z

    move-result v0

    if-nez v0, :cond_1

    return v3

    :cond_2
    return v1
.end method

.method public static e(Lcom/jme3/scene/Mesh;[Lcom/jme3/math/ColorRGBA;Lcom/jme3/asset/AssetManager;)Lcom/jme3/material/Material;
    .locals 13

    invoke-static {p0}, Lif/p;->v(Lcom/jme3/scene/Mesh;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->getVertexCount()I

    move-result v0

    mul-int/lit8 v1, v0, 0x4

    invoke-static {v1}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v1

    const/4 v2, 0x4

    new-array v3, v2, [I

    new-array v4, v2, [F

    new-instance v5, Lcom/jme3/math/ColorRGBA;

    invoke-direct {v5}, Lcom/jme3/math/ColorRGBA;-><init>()V

    new-instance v6, Lcom/jme3/math/ColorRGBA;

    invoke-direct {v6}, Lcom/jme3/math/ColorRGBA;-><init>()V

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    if-ge v8, v0, :cond_2

    invoke-static {p0, v8, v3}, Lif/p;->R(Lcom/jme3/scene/Mesh;I[I)[I

    invoke-static {p0, v8, v4}, Lif/p;->S(Lcom/jme3/scene/Mesh;I[F)[F

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v5, v9, v9, v9, v10}, Lcom/jme3/math/ColorRGBA;->set(FFFF)Lcom/jme3/math/ColorRGBA;

    move v9, v7

    :goto_1
    if-ge v9, v2, :cond_1

    aget v11, v3, v9

    if-ltz v11, :cond_0

    array-length v12, p1

    if-ge v11, v12, :cond_0

    aget-object v11, p1, v11

    invoke-virtual {v6, v11}, Lcom/jme3/math/ColorRGBA;->set(Lcom/jme3/math/ColorRGBA;)Lcom/jme3/math/ColorRGBA;

    aget v11, v4, v9

    invoke-virtual {v6, v11}, Lcom/jme3/math/ColorRGBA;->multLocal(F)Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v5, v6}, Lcom/jme3/math/ColorRGBA;->addLocal(Lcom/jme3/math/ColorRGBA;)Lcom/jme3/math/ColorRGBA;

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    iget v9, v5, Lcom/jme3/math/ColorRGBA;->r:F

    invoke-virtual {v1, v9}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v9

    iget v11, v5, Lcom/jme3/math/ColorRGBA;->g:F

    invoke-virtual {v9, v11}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v9

    iget v11, v5, Lcom/jme3/math/ColorRGBA;->b:F

    invoke-virtual {v9, v11}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/jme3/scene/VertexBuffer$Type;->Color:Lcom/jme3/scene/VertexBuffer$Type;

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Format;->Float:Lcom/jme3/scene/VertexBuffer$Format;

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILcom/jme3/scene/VertexBuffer$Format;Ljava/nio/Buffer;)V

    invoke-static {p2}, Lif/l;->m(Lcom/jme3/asset/AssetManager;)Lcom/jme3/material/Material;

    move-result-object p0

    const-string p1, "VertexColor"

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/jme3/material/Material;->setBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/jme3/material/Material;->getAdditionalRenderState()Lcom/jme3/material/RenderState;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/jme3/material/RenderState;->setWireframe(Z)V

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must be an animated mesh."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static f(Lcom/jme3/scene/Mesh;Lcom/jme3/scene/VertexBuffer$Type;)V
    .locals 5

    const-string v0, "buffer type"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-virtual {p0, p1}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/FloatBuffer;

    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1}, Lcom/jme3/math/Vector3f;-><init>()V

    new-instance v2, Lcom/jme3/math/Vector3f;

    invoke-direct {v2}, Lcom/jme3/math/Vector3f;-><init>()V

    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->getVertexCount()I

    move-result p0

    mul-int/lit8 p0, p0, 0x3

    const/4 v3, 0x0

    invoke-static {v0, v3, p0, v1, v2}, Ljf/d;->m(Ljava/nio/FloatBuffer;IILcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    const/4 v4, 0x0

    invoke-static {v1, v2, v4}, Ljf/h;->M(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/math/Vector3f;->negateLocal()Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-static {v0, v3, p0, v1}, Ljf/d;->y(Ljava/nio/FloatBuffer;IILcom/jme3/math/Vector3f;)V

    invoke-virtual {p1}, Lcom/jme3/util/NativeObject;->setUpdateNeeded()V

    :cond_0
    return-void
.end method

.method public static g(Lcom/jme3/scene/Mesh;)I
    .locals 11

    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->getMaxNumWeights()I

    move-result v0

    const-string v1, "mesh max num weights"

    const/4 v2, 0x1

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lif/E;->i(ILjava/lang/String;II)Z

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->BoneIndex:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v1}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/scene/VertexBuffer;->getDataReadOnly()Ljava/nio/Buffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    div-int/2addr v2, v3

    sget-object v4, Lcom/jme3/scene/VertexBuffer$Type;->BoneWeight:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v4}, Lcom/jme3/scene/Mesh;->getFloatBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Ljava/nio/FloatBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_0
    if-ge v5, v2, :cond_2

    move v7, v4

    :goto_1
    if-ge v7, v3, :cond_1

    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->get()F

    move-result v8

    invoke-static {v1}, Ljf/d;->r(Ljava/nio/Buffer;)I

    move-result v9

    if-ge v7, v0, :cond_0

    const/4 v10, 0x0

    cmpl-float v8, v8, v10

    if-eqz v8, :cond_0

    if-lt v9, v6, :cond_0

    add-int/lit8 v9, v9, 0x1

    move v6, v9

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    return v6
.end method

.method public static h(Lcom/jme3/scene/Mesh;)Lcom/jme3/scene/Mesh;
    .locals 9

    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->getIndicesAsList()Lcom/jme3/scene/mesh/IndexBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/scene/mesh/IndexBuffer;->size()I

    move-result v1

    invoke-static {p0}, Lif/p;->i(Lcom/jme3/scene/Mesh;)Lcom/jme3/scene/Mesh$Mode;

    move-result-object v2

    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->clone()Lcom/jme3/scene/Mesh;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/jme3/scene/Mesh;->setMode(Lcom/jme3/scene/Mesh$Mode;)V

    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->getBufferList()Lcom/jme3/util/SafeArrayList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jme3/util/SafeArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jme3/scene/VertexBuffer;

    invoke-virtual {v4}, Lcom/jme3/scene/VertexBuffer;->getBufferType()Lcom/jme3/scene/VertexBuffer$Type;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/jme3/scene/Mesh;->clearBuffer(Lcom/jme3/scene/VertexBuffer$Type;)V

    sget-object v6, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    if-eq v5, v6, :cond_0

    invoke-virtual {v4}, Lcom/jme3/scene/VertexBuffer;->getFormat()Lcom/jme3/scene/VertexBuffer$Format;

    move-result-object v6

    if-nez v6, :cond_1

    sget-object v6, Lcom/jme3/scene/VertexBuffer$Format;->Float:Lcom/jme3/scene/VertexBuffer$Format;

    :cond_1
    invoke-virtual {v4}, Lcom/jme3/scene/VertexBuffer;->getNumComponents()I

    move-result v4

    const/4 v7, 0x4

    const/4 v8, 0x1

    invoke-static {v4, v8, v7}, Ljf/f;->h(III)I

    move-result v4

    invoke-static {v6, v4, v1}, Lcom/jme3/scene/VertexBuffer;->createBuffer(Lcom/jme3/scene/VertexBuffer$Format;II)Ljava/nio/Buffer;

    move-result-object v7

    invoke-virtual {v3, v5, v4, v6, v7}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILcom/jme3/scene/VertexBuffer$Format;Ljava/nio/Buffer;)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_5

    invoke-virtual {v0, v2}, Lcom/jme3/scene/mesh/IndexBuffer;->get(I)I

    move-result v4

    invoke-virtual {v3}, Lcom/jme3/scene/Mesh;->getBufferList()Lcom/jme3/util/SafeArrayList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jme3/util/SafeArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jme3/scene/VertexBuffer;

    invoke-virtual {v6}, Lcom/jme3/scene/VertexBuffer;->getBufferType()Lcom/jme3/scene/VertexBuffer$Type;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/jme3/scene/VertexBuffer;->getNumElements()I

    move-result v8

    if-lez v8, :cond_3

    invoke-static {v7, v4, v6, v2}, Lif/e;->a(Lcom/jme3/scene/VertexBuffer;ILcom/jme3/scene/VertexBuffer;I)V

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v3}, Lcom/jme3/scene/Mesh;->getBufferList()Lcom/jme3/util/SafeArrayList;

    move-result-object p0

    invoke-virtual {p0}, Lcom/jme3/util/SafeArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/VertexBuffer;

    invoke-virtual {v0}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    goto :goto_3

    :cond_6
    invoke-virtual {v3}, Lcom/jme3/scene/Mesh;->updateCounts()V

    return-object v3
.end method

.method public static i(Lcom/jme3/scene/Mesh;)Lcom/jme3/scene/Mesh$Mode;
    .locals 3

    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->getMode()Lcom/jme3/scene/Mesh$Mode;

    move-result-object p0

    sget-object v0, Lif/p$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object p0, Lcom/jme3/scene/Mesh$Mode;->Triangles:Lcom/jme3/scene/Mesh$Mode;

    goto :goto_0

    :pswitch_1
    sget-object p0, Lcom/jme3/scene/Mesh$Mode;->Lines:Lcom/jme3/scene/Mesh$Mode;

    :goto_0
    :pswitch_2
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static j(Lcom/jme3/scene/Mesh;)V
    .locals 3

    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->getMode()Lcom/jme3/scene/Mesh$Mode;

    move-result-object v0

    sget-object v1, Lcom/jme3/scene/Mesh$Mode;->Triangles:Lcom/jme3/scene/Mesh$Mode;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "be in Triangles mode"

    invoke-static {v0, v1}, Lif/E;->H(ZLjava/lang/String;)Z

    invoke-static {p0}, Lif/p;->q(Lcom/jme3/scene/Mesh;)Z

    move-result v0

    xor-int/2addr v0, v2

    const-string v1, "not have an index buffer"

    invoke-static {v0, v1}, Lif/E;->H(ZLjava/lang/String;)Z

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Normal:Lcom/jme3/scene/VertexBuffer$Type;

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-static {p0, v0, v1}, Lif/p;->k(Lcom/jme3/scene/Mesh;Lcom/jme3/scene/VertexBuffer$Type;Lcom/jme3/scene/VertexBuffer$Type;)V

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->BindPosePosition:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->BindPoseNormal:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-static {p0, v1, v0}, Lif/p;->k(Lcom/jme3/scene/Mesh;Lcom/jme3/scene/VertexBuffer$Type;Lcom/jme3/scene/VertexBuffer$Type;)V

    :cond_1
    return-void
.end method

.method public static k(Lcom/jme3/scene/Mesh;Lcom/jme3/scene/VertexBuffer$Type;Lcom/jme3/scene/VertexBuffer$Type;)V
    .locals 10

    const-string v0, "mesh"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->getMode()Lcom/jme3/scene/Mesh$Mode;

    move-result-object v0

    sget-object v1, Lcom/jme3/scene/Mesh$Mode;->Triangles:Lcom/jme3/scene/Mesh$Mode;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v1, "be in Triangles mode"

    invoke-static {v0, v1}, Lif/E;->H(ZLjava/lang/String;)Z

    invoke-static {p0}, Lif/p;->q(Lcom/jme3/scene/Mesh;)Z

    move-result v0

    xor-int/2addr v0, v3

    const-string v1, "not have an index buffer"

    invoke-static {v0, v1}, Lif/E;->H(ZLjava/lang/String;)Z

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->BindPoseNormal:Lcom/jme3/scene/VertexBuffer$Type;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Normal:Lcom/jme3/scene/VertexBuffer$Type;

    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_2

    :cond_2
    :goto_1
    move v0, v3

    :goto_2
    const-string v1, "normal target-buffer type"

    invoke-static {v0, v1}, Lif/E;->H(ZLjava/lang/String;)Z

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->BindPosePosition:Lcom/jme3/scene/VertexBuffer$Type;

    if-eq p2, v0, :cond_4

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    if-ne p2, v0, :cond_3

    goto :goto_3

    :cond_3
    move v3, v2

    :cond_4
    :goto_3
    const-string v0, "position source-buffer type"

    invoke-static {v3, v0}, Lif/E;->H(ZLjava/lang/String;)Z

    invoke-virtual {p0, p2}, Lcom/jme3/scene/Mesh;->getFloatBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Ljava/nio/FloatBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/Buffer;->limit()I

    move-result v0

    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v1

    const/4 v3, 0x3

    invoke-virtual {p0, p1, v3, v1}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    new-instance p0, Lcom/jme3/math/Triangle;

    invoke-direct {p0}, Lcom/jme3/math/Triangle;-><init>()V

    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    new-instance v4, Lcom/jme3/math/Vector3f;

    invoke-direct {v4}, Lcom/jme3/math/Vector3f;-><init>()V

    new-instance v5, Lcom/jme3/math/Vector3f;

    invoke-direct {v5}, Lcom/jme3/math/Vector3f;-><init>()V

    div-int/2addr v0, v3

    div-int/2addr v0, v3

    move v6, v2

    :goto_4
    if-ge v6, v0, :cond_6

    mul-int/lit8 v7, v6, 0x9

    invoke-static {p2, v7, p1}, Ljf/d;->g(Ljava/nio/FloatBuffer;ILcom/jme3/math/Vector3f;)V

    add-int/lit8 v8, v7, 0x3

    invoke-static {p2, v8, v4}, Ljf/d;->g(Ljava/nio/FloatBuffer;ILcom/jme3/math/Vector3f;)V

    add-int/lit8 v7, v7, 0x6

    invoke-static {p2, v7, v5}, Ljf/d;->g(Ljava/nio/FloatBuffer;ILcom/jme3/math/Vector3f;)V

    invoke-virtual {p0, p1, v4, v5}, Lcom/jme3/math/Triangle;->set(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    invoke-virtual {p0}, Lcom/jme3/math/Triangle;->getNormal()Lcom/jme3/math/Vector3f;

    move-result-object v7

    move v8, v2

    :goto_5
    if-ge v8, v3, :cond_5

    iget v9, v7, Lcom/jme3/math/Vector3f;->x:F

    invoke-virtual {v1, v9}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget v9, v7, Lcom/jme3/math/Vector3f;->y:F

    invoke-virtual {v1, v9}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget v9, v7, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {v1, v9}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_6
    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    return-void
.end method

.method public static l(Lcom/jme3/scene/Mesh;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->getMode()Lcom/jme3/scene/Mesh$Mode;

    move-result-object v0

    sget-object v1, Lcom/jme3/scene/Mesh$Mode;->Triangles:Lcom/jme3/scene/Mesh$Mode;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "be in Triangles mode"

    invoke-static {v0, v1}, Lif/E;->H(ZLjava/lang/String;)Z

    invoke-static {p0}, Lif/p;->q(Lcom/jme3/scene/Mesh;)Z

    move-result v0

    xor-int/2addr v0, v2

    const-string v1, "not have an index buffer"

    invoke-static {v0, v1}, Lif/E;->H(ZLjava/lang/String;)Z

    invoke-static {p0}, Lif/p;->j(Lcom/jme3/scene/Mesh;)V

    return-void
.end method

.method public static m(Lcom/jme3/scene/Mesh;Lcom/jme3/scene/VertexBuffer$Type;Lcom/jme3/scene/VertexBuffer$Type;)V
    .locals 2

    const-string v0, "mesh"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-virtual {p0, p2}, Lcom/jme3/scene/Mesh;->getFloatBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Ljava/nio/FloatBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/Buffer;->limit()I

    move-result v0

    invoke-static {p2}, Lcom/jme3/util/BufferUtils;->clone(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    move-result-object p2

    const/4 v1, 0x3

    invoke-virtual {p0, p1, v1, p2}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    const/4 p0, 0x0

    invoke-static {p2, p0, v0}, Ljf/d;->o(Ljava/nio/FloatBuffer;II)V

    invoke-virtual {p2, v0}, Ljava/nio/FloatBuffer;->limit(I)Ljava/nio/Buffer;

    return-void
.end method

.method public static n(Lcom/jme3/scene/Mesh;)Lcom/jme3/scene/CollisionData;
    .locals 2

    :try_start_0
    const-class v0, Lcom/jme3/scene/Mesh;

    const-string v1, "collisionTree"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    :try_start_1
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/jme3/scene/CollisionData;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static o(Lcom/jme3/scene/Mesh;)Z
    .locals 1

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->BindPoseNormal:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lif/p;->r(Lcom/jme3/scene/Mesh;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static p(Lcom/jme3/scene/Mesh;)Z
    .locals 1

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->BindPoseTangent:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lif/p;->s(Lcom/jme3/scene/Mesh;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static q(Lcom/jme3/scene/Mesh;)Z
    .locals 1

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static r(Lcom/jme3/scene/Mesh;)Z
    .locals 1

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Normal:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static s(Lcom/jme3/scene/Mesh;)Z
    .locals 1

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Tangent:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static t(Lcom/jme3/scene/Mesh;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->getMode()Lcom/jme3/scene/Mesh$Mode;

    move-result-object p0

    sget-object v0, Lif/p$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 p0, 0x1

    goto :goto_0

    :pswitch_1
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static u(Lcom/jme3/scene/Mesh;)Z
    .locals 1

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->TexCoord:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static v(Lcom/jme3/scene/Mesh;)Z
    .locals 4

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->BoneIndex:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    sget-object v3, Lcom/jme3/scene/VertexBuffer$Type;->BoneWeight:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v3}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object p0

    if-eqz p0, :cond_1

    move p0, v2

    goto :goto_1

    :cond_1
    move p0, v1

    :goto_1
    if-eqz v0, :cond_2

    if-eqz p0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public static w(Lcom/jme3/scene/Spatial;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/scene/Spatial;",
            "Ljava/util/List<",
            "Lcom/jme3/scene/Mesh;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/jme3/scene/Mesh;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    :cond_0
    instance-of v0, p0, Lcom/jme3/scene/Geometry;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/jme3/scene/Geometry;

    invoke-virtual {p0}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    instance-of v0, p0, Lcom/jme3/scene/Node;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/jme3/scene/Node;

    invoke-virtual {p0}, Lcom/jme3/scene/Node;->getChildren()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Spatial;

    invoke-static {v0, p1}, Lif/p;->w(Lcom/jme3/scene/Spatial;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    :cond_2
    :goto_1
    return-object p1
.end method

.method public static x(Lcom/jme3/scene/Spatial;Ljf/o;)Ljf/o;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-instance p1, Ljf/p;

    const/16 v1, 0x40

    invoke-direct {p1, v1, v0}, Ljf/p;-><init>(IZ)V

    :cond_0
    instance-of v1, p0, Lcom/jme3/scene/Geometry;

    if-eqz v1, :cond_2

    check-cast p0, Lcom/jme3/scene/Geometry;

    invoke-virtual {p0}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/scene/Mesh;->getVertexCount()I

    move-result v2

    new-instance v3, Lcom/jme3/math/Vector3f;

    invoke-direct {v3}, Lcom/jme3/math/Vector3f;-><init>()V

    :goto_0
    if-ge v0, v2, :cond_3

    sget-object v4, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-static {v1, v4, v0, v3}, Lif/p;->Z(Lcom/jme3/scene/Mesh;Lcom/jme3/scene/VertexBuffer$Type;ILcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {p0}, Lcom/jme3/scene/Geometry;->isIgnoreTransform()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0, v3, v3}, Lcom/jme3/scene/Spatial;->localToWorld(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    :cond_1
    invoke-interface {p1, v3}, Ljf/o;->a(Lcom/jme3/math/Vector3f;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    instance-of v0, p0, Lcom/jme3/scene/Node;

    if-eqz v0, :cond_3

    check-cast p0, Lcom/jme3/scene/Node;

    invoke-virtual {p0}, Lcom/jme3/scene/Node;->getChildren()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Spatial;

    invoke-static {v0, p1}, Lif/p;->x(Lcom/jme3/scene/Spatial;Ljf/o;)Ljf/o;

    goto :goto_1

    :cond_3
    return-object p1
.end method

.method public static y(Lcom/jme3/scene/Spatial;)Lcom/jme3/scene/Mesh;
    .locals 7

    instance-of v0, p0, Lcom/jme3/scene/Geometry;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v1, p0

    check-cast v1, Lcom/jme3/scene/Geometry;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lcom/jme3/scene/Node;

    if-eqz v0, :cond_6

    move-object v0, p0

    check-cast v0, Lcom/jme3/scene/Node;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lif/s;->I(Lcom/jme3/scene/Node;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jme3/scene/Geometry;

    invoke-virtual {v4}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Lcom/jme3/scene/Mesh;->getIndicesAsList()Lcom/jme3/scene/mesh/IndexBuffer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jme3/scene/mesh/IndexBuffer;->size()I

    move-result v6

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v5}, Lcom/jme3/scene/Mesh;->getVertexCount()I

    move-result v5

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/2addr v3, v6

    add-int/2addr v2, v5

    goto :goto_1

    :cond_4
    invoke-static {v2, v3}, Lcom/jme3/scene/mesh/IndexBuffer;->createIndexBuffer(II)Lcom/jme3/scene/mesh/IndexBuffer;

    move-result-object v0

    const/4 v3, 0x3

    mul-int/2addr v2, v3

    invoke-static {v2}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jme3/scene/Geometry;

    invoke-static {v4, p0, v2, v0}, Lif/p;->c(Lcom/jme3/scene/Geometry;Lcom/jme3/scene/Spatial;Ljava/nio/FloatBuffer;Lcom/jme3/scene/mesh/IndexBuffer;)V

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Lcom/jme3/scene/mesh/IndexBuffer;->getFormat()Lcom/jme3/scene/VertexBuffer$Format;

    move-result-object p0

    invoke-virtual {v0}, Lcom/jme3/scene/mesh/IndexBuffer;->getBuffer()Ljava/nio/Buffer;

    move-result-object v0

    new-instance v1, Lcom/jme3/scene/Mesh;

    invoke-direct {v1}, Lcom/jme3/scene/Mesh;-><init>()V

    sget-object v4, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v1, v4, v3, p0, v0}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILcom/jme3/scene/VertexBuffer$Format;Ljava/nio/Buffer;)V

    sget-object p0, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v1, p0, v3, v2}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    return-object v1

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The model root must either be a Node or a Geometry!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static z(Lcom/jme3/scene/Mesh;Lcom/jme3/scene/Mesh;)Lcom/jme3/scene/Mesh;
    .locals 19

    invoke-virtual/range {p0 .. p0}, Lcom/jme3/scene/Mesh;->getNumLodLevels()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "no LODs in mesh1"

    invoke-static {v0, v3}, Lif/E;->H(ZLjava/lang/String;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/jme3/scene/Mesh;->getNumLodLevels()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v3, "no LODs in mesh2"

    invoke-static {v0, v3}, Lif/E;->H(ZLjava/lang/String;)Z

    invoke-static/range {p0 .. p0}, Lif/p;->i(Lcom/jme3/scene/Mesh;)Lcom/jme3/scene/Mesh$Mode;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Lif/p;->i(Lcom/jme3/scene/Mesh;)Lcom/jme3/scene/Mesh$Mode;

    move-result-object v3

    if-ne v0, v3, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    const-string v4, "same primitives"

    invoke-static {v3, v4}, Lif/E;->H(ZLjava/lang/String;)Z

    new-instance v3, Lcom/jme3/scene/Mesh;

    invoke-direct {v3}, Lcom/jme3/scene/Mesh;-><init>()V

    invoke-virtual {v3, v0}, Lcom/jme3/scene/Mesh;->setMode(Lcom/jme3/scene/Mesh$Mode;)V

    invoke-virtual/range {p0 .. p0}, Lcom/jme3/scene/Mesh;->getIndicesAsList()Lcom/jme3/scene/mesh/IndexBuffer;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/scene/Mesh;->getIndicesAsList()Lcom/jme3/scene/mesh/IndexBuffer;

    move-result-object v4

    invoke-virtual {v0}, Lcom/jme3/scene/mesh/IndexBuffer;->size()I

    move-result v5

    invoke-virtual {v4}, Lcom/jme3/scene/mesh/IndexBuffer;->size()I

    move-result v6

    add-int v7, v5, v6

    invoke-static {}, Lcom/jme3/scene/VertexBuffer$Type;->values()[Lcom/jme3/scene/VertexBuffer$Type;

    move-result-object v8

    array-length v9, v8

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v9, :cond_c

    aget-object v11, v8, v10

    sget-object v12, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    if-ne v11, v12, :cond_3

    move-object/from16 v12, p0

    move-object/from16 v14, p1

    :goto_4
    move-object/from16 v18, v0

    move-object/from16 v17, v8

    move/from16 v16, v9

    goto/16 :goto_a

    :cond_3
    move-object/from16 v12, p0

    invoke-virtual {v12, v11}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v13

    move-object/from16 v14, p1

    invoke-virtual {v14, v11}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v15

    if-nez v13, :cond_4

    if-nez v15, :cond_4

    goto :goto_4

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mesh1\'s "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mesh2\'s "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-virtual {v13}, Lcom/jme3/scene/VertexBuffer;->getNumComponents()I

    move-result v1

    invoke-virtual {v15}, Lcom/jme3/scene/VertexBuffer;->getNumComponents()I

    invoke-virtual {v13}, Lcom/jme3/scene/VertexBuffer;->getFormat()Lcom/jme3/scene/VertexBuffer$Format;

    move-result-object v2

    if-nez v2, :cond_5

    sget-object v2, Lcom/jme3/scene/VertexBuffer$Format;->Float:Lcom/jme3/scene/VertexBuffer$Format;

    :cond_5
    invoke-virtual {v15}, Lcom/jme3/scene/VertexBuffer;->getFormat()Lcom/jme3/scene/VertexBuffer$Format;

    move-result-object v16

    if-nez v16, :cond_6

    sget-object v16, Lcom/jme3/scene/VertexBuffer$Format;->Float:Lcom/jme3/scene/VertexBuffer$Format;

    :cond_6
    move-object/from16 v17, v8

    invoke-virtual {v2}, Lcom/jme3/scene/VertexBuffer$Format;->getComponentSize()I

    move-result v8

    move-object/from16 v18, v2

    invoke-virtual/range {v16 .. v16}, Lcom/jme3/scene/VertexBuffer$Format;->getComponentSize()I

    move-result v2

    if-le v8, v2, :cond_7

    move-object/from16 v2, v18

    goto :goto_5

    :cond_7
    move-object/from16 v2, v16

    :goto_5
    const/4 v8, 0x4

    move/from16 v16, v9

    const/4 v9, 0x1

    invoke-static {v1, v9, v8}, Ljf/f;->h(III)I

    move-result v1

    invoke-static {v2, v1, v7}, Lcom/jme3/scene/VertexBuffer;->createBuffer(Lcom/jme3/scene/VertexBuffer$Format;II)Ljava/nio/Buffer;

    move-result-object v8

    invoke-virtual {v3, v11, v1, v2, v8}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILcom/jme3/scene/VertexBuffer$Format;Ljava/nio/Buffer;)V

    invoke-virtual {v3, v11}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v2

    const/4 v8, 0x0

    :goto_6
    if-ge v8, v5, :cond_9

    invoke-virtual {v0, v8}, Lcom/jme3/scene/mesh/IndexBuffer;->get(I)I

    move-result v11

    const/4 v9, 0x0

    :goto_7
    if-ge v9, v1, :cond_8

    move-object/from16 v18, v0

    invoke-virtual {v13, v11, v9}, Lcom/jme3/scene/VertexBuffer;->getElementComponent(II)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v8, v9, v0}, Lcom/jme3/scene/VertexBuffer;->setElementComponent(IILjava/lang/Object;)V

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, v18

    goto :goto_7

    :cond_8
    move-object/from16 v18, v0

    add-int/lit8 v8, v8, 0x1

    const/4 v9, 0x1

    goto :goto_6

    :cond_9
    move-object/from16 v18, v0

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v6, :cond_b

    add-int v8, v5, v0

    invoke-virtual {v4, v0}, Lcom/jme3/scene/mesh/IndexBuffer;->get(I)I

    move-result v9

    const/4 v11, 0x0

    :goto_9
    if-ge v11, v1, :cond_a

    invoke-virtual {v15, v9, v11}, Lcom/jme3/scene/VertexBuffer;->getElementComponent(II)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v2, v8, v11, v13}, Lcom/jme3/scene/VertexBuffer;->setElementComponent(IILjava/lang/Object;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_b
    :goto_a
    add-int/lit8 v10, v10, 0x1

    move/from16 v9, v16

    move-object/from16 v8, v17

    move-object/from16 v0, v18

    goto/16 :goto_3

    :cond_c
    move-object/from16 v12, p0

    move-object/from16 v14, p1

    invoke-virtual {v3}, Lcom/jme3/scene/Mesh;->updateBound()V

    invoke-virtual/range {p0 .. p0}, Lcom/jme3/scene/Mesh;->getMaxNumWeights()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/scene/Mesh;->getMaxNumWeights()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/jme3/scene/Mesh;->setMaxNumWeights(I)V

    return-object v3
.end method
