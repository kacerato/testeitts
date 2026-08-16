.class public Lxn/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxn/c;


# instance fields
.field public final a:[F

.field public final b:[F

.field public final c:Lxn/e;


# direct methods
.method public constructor <init>([FLcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "matrix",
            "verticesBuffer",
            "indicesBuffer"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-direct {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;-><init>([F)V

    const/4 p1, 0x3

    new-array v2, p1, [F

    iput-object v2, p0, Lxn/f;->a:[F

    new-array v3, p1, [F

    iput-object v3, p0, Lxn/f;->b:[F

    const/4 v4, 0x2

    const/high16 v5, 0x7f800000    # Float.POSITIVE_INFINITY

    aput v5, v2, v4

    const/4 v6, 0x1

    aput v5, v2, v6

    const/4 v7, 0x0

    aput v5, v2, v7

    const/high16 v2, -0x800000    # Float.NEGATIVE_INFINITY

    aput v2, v3, v4

    aput v2, v3, v6

    aput v2, v3, v7

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40400000    # 3.0f

    div-float/2addr v2, v3

    invoke-static {v2}, LNc/b;->D(F)F

    move-result v2

    float-to-int v2, v2

    new-instance v3, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    mul-int/2addr v2, p1

    invoke-direct {v3, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V

    invoke-virtual {v3, v7}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->position(I)V

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v2

    div-int/2addr v2, p1

    move p1, v7

    :goto_0
    if-ge p1, v2, :cond_0

    mul-int/lit8 v5, p1, 0x3

    :try_start_0
    invoke-virtual {p2, v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v8

    invoke-virtual {v0, v8}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setX(F)F

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {p2, v8}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v8

    invoke-virtual {v0, v8}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setY(F)F

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {p2, v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v5

    invoke-virtual {v0, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setZ(F)F
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1, v0, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    invoke-virtual {v3, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->put(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    iget-object v5, p0, Lxn/f;->a:[F

    aget v8, v5, v7

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    aput v8, v5, v7

    iget-object v5, p0, Lxn/f;->a:[F

    aget v8, v5, v6

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    aput v8, v5, v6

    iget-object v5, p0, Lxn/f;->a:[F

    aget v8, v5, v4

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    aput v8, v5, v4

    iget-object v5, p0, Lxn/f;->b:[F

    aget v8, v5, v7

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    aput v8, v5, v7

    iget-object v5, p0, Lxn/f;->b:[F

    aget v8, v5, v6

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    aput v8, v5, v6

    iget-object v5, p0, Lxn/f;->b:[F

    aget v8, v5, v4

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    aput v8, v5, v4

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    invoke-virtual {v3, v7}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->position(I)V

    new-instance p1, Lxn/e;

    invoke-direct {p1, v3, p3}, Lxn/e;-><init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;)V

    iput-object p1, p0, Lxn/f;->c:Lxn/e;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "indicesBuffer can\'t be null or empty"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "verticesBuffer can\'t be null or empty"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "matrix can\'t be null or empty"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
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

    iget-object v0, p0, Lxn/f;->c:Lxn/e;

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public c()[F
    .locals 1

    iget-object v0, p0, Lxn/f;->a:[F

    return-object v0
.end method

.method public d()[F
    .locals 1

    iget-object v0, p0, Lxn/f;->b:[F

    return-object v0
.end method
