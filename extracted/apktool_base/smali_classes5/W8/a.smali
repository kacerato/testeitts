.class public LW8/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = 0x1e8480

.field public static final b:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(LDc/a;FFF)LDc/a;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "mesh",
            "scaleX",
            "scaleY",
            "scaleZ"
        }
    .end annotation

    if-eqz p0, :cond_1

    new-instance v0, LDc/a;

    invoke-direct {v0}, LDc/a;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;->countSubmeshes()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {p0, v2}, LDc/a;->b(I)Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeIndexedMesh;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeIndexedMesh;->e()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v4

    invoke-static {v4, p1, p2, p3}, LW8/a;->c(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;FFF)Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v4

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeIndexedMesh;->b()Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->clone()Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->position(I)V

    new-instance v5, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeIndexedMesh;

    const/4 v6, 0x1

    invoke-direct {v5, v4, v3, v6}, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeIndexedMesh;-><init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;Z)V

    invoke-virtual {v0, v5}, LDc/a;->a(Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeIndexedMesh;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "mesh"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Ljava/util/List;FFF)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "meshes",
            "scaleX",
            "scaleY",
            "scaleZ"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LDc/a;",
            ">;FFF)",
            "Ljava/util/List<",
            "LDc/a;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_1

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LDc/a;

    invoke-static {v2, p1, p2, p3}, LW8/a;->a(LDc/a;FFF)LDc/a;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "meshes"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;FFF)Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeVertices",
            "scaleX",
            "scaleY",
            "scaleZ"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->scaleVertices(FFF)Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "nativeVertices"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static d(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;)LDc/a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeVertices",
            "nativeIndices"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    new-instance v0, LDc/a;

    invoke-direct {v0, p0, p1}, LDc/a;-><init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "nativeIndices"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "nativeVertices"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static e(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;Z)LDc/a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeVertices",
            "nativeIndices",
            "skipOptimization"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    new-instance v0, LDc/a;

    invoke-direct {v0, p0, p1, p2}, LDc/a;-><init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;Z)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "nativeIndices"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "nativeVertices"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static f(Lyc/a;Lyc/b;)LDc/a;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeVertices",
            "nativeIndices"
        }
    .end annotation

    if-eqz p0, :cond_3

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lyc/a;->l0()Ljava/nio/FloatBuffer;

    move-result-object p0

    invoke-virtual {p1}, Lyc/b;->Z()Ljava/nio/IntBuffer;

    move-result-object p1

    new-instance v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V

    :goto_0
    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->get()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->put(F)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->position(I)V

    new-instance v1, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;-><init>(I)V

    :goto_1
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Ljava/nio/IntBuffer;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->put(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1, p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->position(I)V

    new-instance p0, LDc/a;

    invoke-direct {p0, v0, v1}, LDc/a;-><init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;)V

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "nativeIndices"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "nativeVertices"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static g(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeVertices",
            "nativeIndices"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;",
            "Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;",
            ")",
            "Ljava/util/List<",
            "LDc/a;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->capacity()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    const v2, 0x1e847f

    add-int/2addr v2, v0

    const v3, 0x1e8480

    div-int/2addr v2, v3

    const/4 v4, 0x1

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(I)V

    const/4 v2, 0x0

    move v4, v2

    :goto_0
    if-ge v4, v0, :cond_0

    sub-int v5, v0, v4

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    mul-int/lit8 v6, v5, 0x3

    mul-int/lit8 v7, v4, 0x3

    new-instance v8, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-direct {v8, v6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;-><init>(I)V

    invoke-virtual {v8, v2, p1, v7, v6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->set(ILcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;II)V

    invoke-virtual {v8, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->position(I)V

    new-instance v6, LDc/a;

    invoke-direct {v6, p0, v8}, LDc/a;-><init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v4, v5

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "nativeIndices"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "nativeVertices"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
