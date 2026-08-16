.class public Lxn/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxn/c;


# instance fields
.field public final a:[F

.field public final b:[F

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lxn/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v1, v0, [F

    iput-object v1, p0, Lxn/d;->a:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lxn/d;->b:[F

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lxn/d;->c:Ljava/util/List;

    const/4 v2, 0x2

    const/high16 v3, 0x7f800000    # Float.POSITIVE_INFINITY

    aput v3, v1, v2

    const/4 v4, 0x1

    aput v3, v1, v4

    const/4 v5, 0x0

    aput v3, v1, v5

    const/high16 v1, -0x800000    # Float.NEGATIVE_INFINITY

    aput v1, v0, v2

    aput v1, v0, v4

    aput v1, v0, v5

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lwn/g;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lxn/e;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lxn/d;->c:Ljava/util/List;

    return-object v0
.end method

.method public c()[F
    .locals 1

    iget-object v0, p0, Lxn/d;->a:[F

    return-object v0
.end method

.method public d()[F
    .locals 1

    iget-object v0, p0, Lxn/d;->b:[F

    return-object v0
.end method

.method public e(Lxn/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mesh"
        }
    .end annotation

    iget-object v0, p0, Lxn/d;->c:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lxn/d;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public f()V
    .locals 12

    iget-object v0, p0, Lxn/d;->c:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lxn/d;->a:[F

    const/4 v2, 0x2

    const/high16 v3, 0x7f800000    # Float.POSITIVE_INFINITY

    aput v3, v1, v2

    const/4 v4, 0x1

    aput v3, v1, v4

    const/4 v5, 0x0

    aput v3, v1, v5

    iget-object v1, p0, Lxn/d;->b:[F

    const/high16 v3, -0x800000    # Float.NEGATIVE_INFINITY

    aput v3, v1, v2

    aput v3, v1, v4

    aput v3, v1, v5

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    move v3, v5

    :goto_0
    iget-object v6, p0, Lxn/d;->c:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_1

    iget-object v6, p0, Lxn/d;->c:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lxn/e;

    invoke-virtual {v6}, Lxn/e;->c()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v8, v5

    :goto_1
    if-ge v8, v7, :cond_0

    :try_start_1
    invoke-virtual {v6}, Lxn/e;->c()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v9

    invoke-virtual {v1, v9}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setX(F)F

    invoke-virtual {v6}, Lxn/e;->c()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v9

    add-int/lit8 v10, v8, 0x1

    invoke-virtual {v9, v10}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v9

    invoke-virtual {v1, v9}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setY(F)F

    invoke-virtual {v6}, Lxn/e;->c()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v9

    add-int/lit8 v10, v8, 0x2

    invoke-virtual {v9, v10}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v9

    invoke-virtual {v1, v9}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setZ(F)F
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v9, p0, Lxn/d;->a:[F

    aget v10, v9, v5

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    aput v10, v9, v5

    iget-object v9, p0, Lxn/d;->a:[F

    aget v10, v9, v4

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    aput v10, v9, v4

    iget-object v9, p0, Lxn/d;->a:[F

    aget v10, v9, v2

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    aput v10, v9, v2

    iget-object v9, p0, Lxn/d;->b:[F

    aget v10, v9, v5

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v10

    aput v10, v9, v5

    iget-object v9, p0, Lxn/d;->b:[F

    aget v10, v9, v4

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v10

    aput v10, v9, v4

    iget-object v9, p0, Lxn/d;->b:[F

    aget v10, v9, v2

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v10

    aput v10, v9, v2

    add-int/lit8 v8, v8, 0x3

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public g()I
    .locals 1

    iget-object v0, p0, Lxn/d;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
