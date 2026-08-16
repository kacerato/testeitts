.class public Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;
.super Lcom/jme3/bullet/NativePhysicsObject;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/util/clone/JmeCloneable;
.implements Lcom/jme3/export/Savable;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final logger:Ljava/util/logging/Logger;

.field private static final tagScale:Ljava/lang/String; = "scale"

.field private static final tagSubmeshes:Ljava/lang/String; = "submeshes"


# instance fields
.field protected scale:Lcom/jme3/math/Vector3f;

.field protected submeshes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/jme3/bullet/NativePhysicsObject;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;->submeshes:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Lcom/jme3/math/Vector3f;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iput-object v0, p0, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;->scale:Lcom/jme3/math/Vector3f;

    .line 4
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;->createEmpty()V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Lcom/jme3/bullet/NativePhysicsObject;-><init>()V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;->submeshes:Ljava/util/ArrayList;

    .line 7
    new-instance v0, Lcom/jme3/math/Vector3f;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iput-object v0, p0, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;->scale:Lcom/jme3/math/Vector3f;

    .line 8
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;->createEmpty()V

    .line 9
    iget-object v0, p1, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;->submeshes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;

    .line 10
    invoke-virtual {p0, v1}, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;->add(Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;)V

    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, p1, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;->scale:Lcom/jme3/math/Vector3f;

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;->setScale(Lcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;Lcom/jme3/math/Vector3f;)V
    .locals 4

    .line 12
    invoke-direct {p0}, Lcom/jme3/bullet/NativePhysicsObject;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;->submeshes:Ljava/util/ArrayList;

    .line 14
    new-instance v0, Lcom/jme3/math/Vector3f;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iput-object v0, p0, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;->scale:Lcom/jme3/math/Vector3f;

    .line 15
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;->createEmpty()V

    .line 16
    new-instance v0, Lcom/jme3/math/Transform;

    invoke-direct {v0}, Lcom/jme3/math/Transform;-><init>()V

    .line 17
    invoke-virtual {v0}, Lcom/jme3/math/Transform;->getScale()Lcom/jme3/math/Vector3f;

    move-result-object v1

    iget-object v2, p0, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;->scale:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v2}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 18
    invoke-virtual {v0, p2}, Lcom/jme3/math/Transform;->setTranslation(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Transform;

    .line 19
    iget-object p1, p1, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;->submeshes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;

    .line 20
    invoke-virtual {p2}, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->copyVertexPositions()Ljava/nio/FloatBuffer;

    move-result-object v1

    .line 21
    invoke-virtual {v1}, Ljava/nio/Buffer;->capacity()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v0}, Ljf/d;->x(Ljava/nio/FloatBuffer;IILcom/jme3/math/Transform;)V

    .line 22
    invoke-virtual {p2}, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->copyIndices()Ljava/nio/IntBuffer;

    move-result-object p2

    .line 23
    new-instance v2, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;

    invoke-direct {v2, v1, p2}, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;-><init>(Ljava/nio/FloatBuffer;Ljava/nio/IntBuffer;)V

    .line 24
    invoke-virtual {p0, v2}, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;->add(Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs constructor <init>([Lcom/jme3/scene/Mesh;)V
    .locals 4

    .line 25
    invoke-direct {p0}, Lcom/jme3/bullet/NativePhysicsObject;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;->submeshes:Ljava/util/ArrayList;

    .line 27
    new-instance v0, Lcom/jme3/math/Vector3f;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iput-object v0, p0, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;->scale:Lcom/jme3/math/Vector3f;

    .line 28
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;->createEmpty()V

    .line 29
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 30
    new-instance v3, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;

    invoke-direct {v3, v2}, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;-><init>(Lcom/jme3/scene/Mesh;)V

    .line 31
    invoke-virtual {p0, v3}, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;->add(Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static native addIndexedMesh(JJ)V
.end method

.method private checkScale(Lcom/jme3/math/Vector3f;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;->getScaling(JLcom/jme3/math/Vector3f;)V

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;->scale:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private createEmpty()V
    .locals 3

    invoke-static {}, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;->createEmptyTiva()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/jme3/bullet/NativePhysicsObject;->setNativeId(J)V

    sget-object v0, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Created {0}"

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private static native createEmptyTiva()J
.end method

.method private static native finalizeNative(J)V
.end method

.method private static freeNativeObject(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;->finalizeNative(J)V

    return-void
.end method

.method private static native getScaling(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native setScaling(JFFF)V
.end method


# virtual methods
.method public add(Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;)V
    .locals 4

    const-string v0, "submesh"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;->submeshes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;->addIndexedMesh(JJ)V

    return-void
.end method

.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 3

    iget-object p2, p0, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;->submeshes:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;->submeshes:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;->scale:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/math/Vector3f;

    iput-object p1, p0, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;->scale:Lcom/jme3/math/Vector3f;

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->unassignNativeObject()V

    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;->createEmpty()V

    iget-object p1, p0, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;->scale:Lcom/jme3/math/Vector3f;

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;->setScale(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide p1

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;->submeshes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;

    invoke-virtual {v1}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v1

    invoke-static {p1, p2, v1, v2}, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;->addIndexedMesh(JJ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public countSubmeshes()I
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;->submeshes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public countTriangles()I
    .locals 3

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;->submeshes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;

    invoke-virtual {v2}, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->countTriangles()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public countVertices()I
    .locals 3

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;->submeshes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;

    invoke-virtual {v2}, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->countVertices()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public getScale(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    :cond_0
    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;->scale:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    return-object p1
.end method

.method public getSubmesh(I)Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;
    .locals 3

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;->submeshes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const-string v1, "index"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Lif/E;->i(ILjava/lang/String;II)Z

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;->submeshes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;

    return-object p1
.end method

.method public jmeClone()Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;
    .locals 2

    .line 2
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;
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
    invoke-virtual {p0}, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;->jmeClone()Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;

    move-result-object v0

    return-object v0
.end method

.method public maxMin(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V
    .locals 4

    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    invoke-virtual {p1, v0, v0, v0}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    invoke-virtual {p2, v0, v0, v0}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1}, Lcom/jme3/math/Vector3f;-><init>()V

    iget-object v2, p0, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;->submeshes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;

    invoke-virtual {v3, v0, v1}, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->maxMin(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    invoke-static {p2, v1}, Ljf/h;->b(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    invoke-static {p1, v0}, Ljf/h;->a(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;->scale:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->multLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object p1, p0, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;->scale:Lcom/jme3/math/Vector3f;

    invoke-virtual {p2, p1}, Lcom/jme3/math/Vector3f;->multLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    return-void
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

    new-instance v0, Lcom/jme3/math/Vector3f;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    const-string v1, "scale"

    invoke-interface {p1, v1, v0}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Vector3f;

    iput-object v0, p0, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;->scale:Lcom/jme3/math/Vector3f;

    const-string v0, "submeshes"

    iget-object v1, p0, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;->submeshes:Ljava/util/ArrayList;

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;->submeshes:Ljava/util/ArrayList;

    iget-object p1, p0, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;->scale:Lcom/jme3/math/Vector3f;

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;->setScale(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    iget-object p1, p0, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;->submeshes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;

    invoke-virtual {v2}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;->addIndexedMesh(JJ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setScale(Lcom/jme3/math/Vector3f;)V
    .locals 5

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    iget v2, p1, Lcom/jme3/math/Vector3f;->x:F

    iget v3, p1, Lcom/jme3/math/Vector3f;->y:F

    iget v4, p1, Lcom/jme3/math/Vector3f;->z:F

    invoke-static {v0, v1, v2, v3, v4}, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;->setScaling(JFFF)V

    sget-object v0, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Scaled {0}"

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;->scale:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public split(Lcom/jme3/math/Triangle;)[Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;
    .locals 8

    const-string v0, "scaled triangle"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    new-instance v0, Lcom/jme3/math/Triangle;

    invoke-direct {v0}, Lcom/jme3/math/Triangle;-><init>()V

    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1}, Lcom/jme3/math/Vector3f;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x3

    if-ge v3, v4, :cond_0

    invoke-virtual {p1, v3}, Lcom/jme3/math/Triangle;->get(I)Lcom/jme3/math/Vector3f;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object v4, p0, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;->scale:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v4}, Lcom/jme3/math/Vector3f;->divideLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v3, v1}, Lcom/jme3/math/Triangle;->set(ILcom/jme3/math/Vector3f;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/jme3/math/Triangle;->getNormal()Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {v0}, Lcom/jme3/math/Triangle;->get3()Lcom/jme3/math/Vector3f;

    move-result-object v0

    new-instance v1, Lcom/jme3/math/Plane;

    invoke-direct {v1, p1, v0}, Lcom/jme3/math/Plane;-><init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    const/4 p1, 0x2

    new-array v0, p1, [Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;

    iget-object v3, p0, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;->submeshes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;

    invoke-virtual {v4, v1}, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->split(Lcom/jme3/math/Plane;)[Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;

    move-result-object v4

    move v5, v2

    :goto_1
    if-ge v5, p1, :cond_1

    aget-object v6, v4, v5

    if-eqz v6, :cond_3

    aget-object v7, v0, v5

    if-nez v7, :cond_2

    new-instance v7, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;

    invoke-direct {v7}, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;-><init>()V

    aput-object v7, v0, v5

    :cond_2
    aget-object v7, v0, v5

    invoke-virtual {v7, v6}, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;->add(Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;)V

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
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

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;->scale:Lcom/jme3/math/Vector3f;

    const-string v1, "scale"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;->submeshes:Ljava/util/ArrayList;

    const-string v1, "submeshes"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->writeSavableArrayList(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method
