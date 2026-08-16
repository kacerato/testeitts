.class public LIb/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

.field public final b:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;[FF)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "vertices",
            "triangles",
            "matrix",
            "maxTriangleArea"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;-><init>()V

    invoke-virtual {v0, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->y0([F)V

    new-instance p3, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {p3}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-virtual {p1, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v4

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p1, v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v5

    add-int/lit8 v6, v3, 0x2

    invoke-virtual {p1, v6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v6

    invoke-virtual {v1, v4, v5, v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v4, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x3

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    move v0, v2

    :goto_1
    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->capacity()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p2, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->get(I)I

    move-result v1

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p2, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->get(I)I

    move-result v3

    add-int/lit8 v4, v0, 0x2

    invoke-virtual {p2, v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->get(I)I

    move-result v4

    filled-new-array {v1, v3, v4}, [I

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x3

    goto :goto_1

    :cond_1
    new-instance p2, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {p2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    :cond_2
    :goto_2
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v3, 0x1

    if-nez v0, :cond_4

    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    aget v4, v0, v2

    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    aget v3, v0, v3

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    aget v1, v0, v1

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p0, v4, v3, v1}, LIb/a;->f(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result v1

    cmpl-float v1, v1, p4

    if-lez v1, :cond_3

    invoke-virtual {p0, v0, p3}, LIb/a;->e([ILjava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    invoke-interface {p1, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    new-instance p1, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p4

    mul-int/lit8 p4, p4, 0x3

    invoke-direct {p1, p4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V

    iput-object p1, p0, LIb/a;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move p1, v2

    :goto_4
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p4

    if-ge p1, p4, :cond_5

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, p0, LIb/a;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    mul-int/lit8 v4, p1, 0x3

    invoke-virtual {p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v5

    invoke-virtual {v0, v4, v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(IF)V

    iget-object v0, p0, LIb/a;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v6

    invoke-virtual {v0, v5, v6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(IF)V

    iget-object v0, p0, LIb/a;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    add-int/2addr v4, v1

    invoke-virtual {p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p4

    invoke-virtual {v0, v4, p4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(IF)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_5
    new-instance p1, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    mul-int/lit8 p3, p3, 0x3

    invoke-direct {p1, p3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;-><init>(I)V

    iput-object p1, p0, LIb/a;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    move p1, v2

    :goto_5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge p1, p3, :cond_6

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [I

    iget-object p4, p0, LIb/a;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    mul-int/lit8 v0, p1, 0x3

    aget v4, p3, v2

    invoke-virtual {p4, v0, v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->set(II)V

    iget-object p4, p0, LIb/a;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    add-int/lit8 v4, v0, 0x1

    aget v5, p3, v3

    invoke-virtual {p4, v4, v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->set(II)V

    iget-object p4, p0, LIb/a;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    add-int/2addr v0, v1

    aget p3, p3, v1

    invoke-virtual {p4, v0, p3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->set(II)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :cond_6
    return-void
.end method


# virtual methods
.method public final a(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "vertices"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;",
            ">;)I"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public b()Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;
    .locals 1

    iget-object v0, p0, LIb/a;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    return-object v0
.end method

.method public c()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;
    .locals 1

    iget-object v0, p0, LIb/a;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    return-object v0
.end method

.method public final d(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v2

    add-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v3

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v4

    add-float/2addr v3, v4

    mul-float/2addr v3, v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p2

    add-float/2addr p1, p2

    mul-float/2addr p1, v2

    invoke-direct {v0, v1, v3, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    return-object v0
.end method

.method public final e([ILjava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tri",
            "vertices"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;",
            ">;)",
            "Ljava/util/List<",
            "[I>;"
        }
    .end annotation

    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    const/4 v2, 0x2

    aget p1, p1, v2

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->distance(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result v6

    invoke-virtual {v4, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->distance(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result v7

    invoke-virtual {v5, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->distance(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result v8

    new-instance v9, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v9, v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(I)V

    cmpl-float v2, v6, v7

    if-ltz v2, :cond_0

    cmpl-float v2, v6, v8

    if-ltz v2, :cond_0

    invoke-virtual {p0, v3, v4}, LIb/a;->d(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, LIb/a;->a(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Ljava/util/List;)I

    move-result p2

    filled-new-array {v0, p2, p1}, [I

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    filled-new-array {p2, v1, p1}, [I

    move-result-object p1

    invoke-interface {v9, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    cmpl-float v2, v7, v6

    if-ltz v2, :cond_1

    cmpl-float v2, v7, v8

    if-ltz v2, :cond_1

    invoke-virtual {p0, v4, v5}, LIb/a;->d(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, LIb/a;->a(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Ljava/util/List;)I

    move-result p2

    filled-new-array {v0, v1, p2}, [I

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    filled-new-array {v0, p2, p1}, [I

    move-result-object p1

    invoke-interface {v9, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v5, v3}, LIb/a;->d(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, LIb/a;->a(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Ljava/util/List;)I

    move-result p2

    filled-new-array {v0, v1, p2}, [I

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    filled-new-array {p2, v1, p1}, [I

    move-result-object p1

    invoke-interface {v9, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object v9
.end method

.method public final f(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "b",
            "c"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->clone()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->sub(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p2

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->clone()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->sub(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->cross(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthF()F

    move-result p1

    const/high16 p2, 0x3f000000    # 0.5f

    mul-float/2addr p1, p2

    return p1
.end method
