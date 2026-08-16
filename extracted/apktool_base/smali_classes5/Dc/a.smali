.class public LDc/a;
.super Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;-><init>()V

    return-void
.end method

.method public constructor <init>(LDc/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "original"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;-><init>(Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;)V

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "positions",
            "indices"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;-><init>()V

    .line 4
    const-string v0, "positions"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 5
    const-string v0, "indices"

    invoke-static {p2, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 6
    invoke-static {p1, p2}, LDc/a;->d(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;)V

    .line 7
    new-instance v0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeIndexedMesh;

    invoke-direct {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeIndexedMesh;-><init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;)V

    invoke-virtual {p0, v0}, LDc/a;->a(Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeIndexedMesh;)V

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "positions",
            "indices",
            "skipOptimization"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;-><init>()V

    .line 9
    const-string v0, "positions"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 10
    const-string v0, "indices"

    invoke-static {p2, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 11
    invoke-static {p1, p2}, LDc/a;->d(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;)V

    .line 12
    new-instance v0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeIndexedMesh;

    invoke-direct {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeIndexedMesh;-><init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;Z)V

    invoke-virtual {p0, v0}, LDc/a;->a(Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeIndexedMesh;)V

    return-void
.end method

.method public varargs constructor <init>([Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeIndexedMesh;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "submeshes"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;-><init>()V

    .line 14
    const-string v0, "submeshes"

    invoke-static {p1, v0}, Lif/E;->n([Ljava/lang/Object;Ljava/lang/String;)Z

    .line 15
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    .line 16
    const-string v4, "submesh"

    invoke-static {v3, v4}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 17
    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeIndexedMesh;->countVertices()I

    move-result v4

    const/4 v5, 0x1

    if-lez v4, :cond_0

    move v4, v5

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    const-string v6, "submesh must contain vertices"

    invoke-static {v4, v6}, Lif/E;->H(ZLjava/lang/String;)Z

    .line 18
    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeIndexedMesh;->countTriangles()I

    move-result v4

    if-lez v4, :cond_1

    goto :goto_2

    :cond_1
    move v5, v1

    :goto_2
    const-string v4, "submesh must contain triangles"

    invoke-static {v5, v4}, Lif/E;->H(ZLjava/lang/String;)Z

    .line 19
    invoke-virtual {p0, v3}, LDc/a;->a(Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeIndexedMesh;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static d(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "positions",
            "indices"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v3, "positions must not be empty"

    invoke-static {v0, v3}, Lif/E;->H(ZLjava/lang/String;)Z

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->capacity()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const-string v3, "indices must not be empty"

    invoke-static {v0, v3}, Lif/E;->H(ZLjava/lang/String;)Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v0

    rem-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    const-string v3, "positions capacity must be a multiple of 3"

    invoke-static {v0, v3}, Lif/E;->H(ZLjava/lang/String;)Z

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->capacity()I

    move-result v0

    rem-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_3

    move v0, v2

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    const-string v3, "indices capacity must be a multiple of 3"

    invoke-static {v0, v3}, Lif/E;->H(ZLjava/lang/String;)Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result p0

    div-int/lit8 p0, p0, 0x3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->findMaxValue()I

    move-result p1

    if-ge p1, p0, :cond_4

    move v1, v2

    :cond_4
    const-string p0, "indices must reference only existing vertices"

    invoke-static {v1, p0}, Lif/E;->H(ZLjava/lang/String;)Z

    return-void
.end method


# virtual methods
.method public a(Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeIndexedMesh;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "submesh"
        }
    .end annotation

    invoke-virtual {p0, p1}, LDc/a;->add(Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;)V

    return-void
.end method

.method public add(Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "submesh"
        }
    .end annotation

    const-string v0, "submesh"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    instance-of v0, p1, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeIndexedMesh;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;->add(Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "submesh must be NativeIndexedMesh"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(I)Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeIndexedMesh;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;->getSubmesh(I)Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeIndexedMesh;

    return-object p1
.end method

.method public c()LDc/a;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LDc/a;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic getSubmesh(I)Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "index"
        }
    .end annotation

    invoke-virtual {p0, p1}, LDc/a;->b(I)Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeIndexedMesh;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic jmeClone()Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;
    .locals 1

    .line 1
    invoke-virtual {p0}, LDc/a;->c()LDc/a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic jmeClone()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, LDc/a;->c()LDc/a;

    move-result-object v0

    return-object v0
.end method
