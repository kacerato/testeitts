.class public Lld/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/jme3/math/Matrix4f;

.field public b:Lvc/q;

.field public c:Lvc/q;

.field public d:Lvc/n;

.field public final e:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final f:Lcom/jme3/math/Vector3f;

.field public final g:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final h:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lld/a;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lld/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;[F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "verticesBuffer",
            "normalsBuffer",
            "indicesBuffer",
            "vertexMatrix"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/jme3/math/Matrix4f;

    invoke-direct {v0}, Lcom/jme3/math/Matrix4f;-><init>()V

    iput-object v0, p0, Lld/b;->a:Lcom/jme3/math/Matrix4f;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v1, p0, Lld/b;->e:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v1, p0, Lld/b;->f:Lcom/jme3/math/Vector3f;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v1, p0, Lld/b;->g:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v1, p0, Lld/b;->h:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lld/b;->i:Ljava/util/List;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lld/b;->j:Ljava/util/List;

    new-instance v1, Lvc/q;

    invoke-direct {v1, p1}, Lvc/q;-><init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    iput-object v1, p0, Lld/b;->b:Lvc/q;

    if-eqz p2, :cond_0

    new-instance p1, Lvc/q;

    invoke-direct {p1, p2}, Lvc/q;-><init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    iput-object p1, p0, Lld/b;->c:Lvc/q;

    :cond_0
    new-instance p1, Lvc/n;

    invoke-direct {p1, p3}, Lvc/n;-><init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;)V

    iput-object p1, p0, Lld/b;->d:Lvc/n;

    const/4 p1, 0x0

    invoke-virtual {v0, p4, p1}, Lcom/jme3/math/Matrix4f;->set([FZ)V

    return-void
.end method

.method public static a(Ljava/util/List;Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vertices",
            "boundingBox"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lld/a;",
            ">;",
            "Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/d;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/d;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->p:Z

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lld/a;

    iget-object v3, v2, Lld/a;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v3

    iget-object v4, v2, Lld/a;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v4

    iget-object v2, v2, Lld/a;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v2

    invoke-virtual {v0, v3, v4, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->x(FFF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->d()V

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->r(Lcom/itsmagic/engine/Engines/Engine/Vector/d;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    iget-object v0, p0, Lld/b;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lld/b;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public c(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Ljava/util/List;FF)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "lookingPos",
            "picked",
            "distance",
            "maxDistanceMultiplayer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;",
            "Ljava/util/List<",
            "Lld/a;",
            ">;FF)",
            "Ljava/util/List<",
            "Lld/a;",
            ">;"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lld/a;

    invoke-virtual {v2}, Lld/a;->d()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->distance(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result v3

    mul-float v4, p3, p4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p2, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_2
    return-object p2
.end method

.method public d(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Ljava/util/List;F)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "lookingPos",
            "picked",
            "maxDistanceMultiplayer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;",
            "Ljava/util/List<",
            "Lld/a;",
            ">;F)",
            "Ljava/util/List<",
            "Lld/a;",
            ">;"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p1, p2}, Lld/b;->e(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Ljava/util/List;)Lld/a;

    move-result-object v0

    invoke-virtual {v0}, Lld/a;->d()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->distance(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result v1

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    const/4 v3, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lld/a;

    if-eq v0, v4, :cond_0

    invoke-virtual {v4}, Lld/a;->d()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->distance(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result v5

    mul-float v6, v1, p3

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_0

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p2, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_2
    return-object p2
.end method

.method public e(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Ljava/util/List;)Lld/a;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "lookingPos",
            "picked"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;",
            "Ljava/util/List<",
            "Lld/a;",
            ">;)",
            "Lld/a;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lld/a;

    invoke-virtual {v3}, Lld/a;->d()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->sqrtDistance(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result v4

    if-eqz v0, :cond_0

    cmpg-float v5, v4, v1

    if-gtz v5, :cond_1

    :cond_0
    move-object v0, v3

    move v1, v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public f(Ljava/util/List;)Lld/a;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "picked"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lld/a;",
            ">;)",
            "Lld/a;"
        }
    .end annotation

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lld/a;

    iget-wide v5, v4, Lld/a;->e:D

    if-eqz v0, :cond_0

    cmpl-double v7, v5, v1

    if-ltz v7, :cond_1

    :cond_0
    move-object v0, v4

    move-wide v1, v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final g()Lld/a;
    .locals 3

    iget-object v0, p0, Lld/b;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lld/b;->i:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lld/a;

    iget-object v2, p0, Lld/b;->i:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lld/b;->j:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_0
    new-instance v0, Lld/a;

    invoke-direct {v0}, Lld/a;-><init>()V

    iget-object v1, p0, Lld/b;->j:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public h()Z
    .locals 2

    iget-object v0, p0, Lld/b;->c:Lvc/q;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lld/b;->b:Lvc/q;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lvc/q;->d()I

    move-result v0

    iget-object v1, p0, Lld/b;->b:Lvc/q;

    invoke-virtual {v1}, Lvc/q;->d()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public i(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vertices"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lld/a;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lld/b;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lld/b;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public j(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;D)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "lookingPos",
            "lookDirection",
            "bias"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;",
            "Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;",
            "D)",
            "Ljava/util/List<",
            "Lld/a;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lld/b;->k(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;DZ)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public k(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;DZ)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "lookingPos",
            "lookDirection",
            "bias",
            "ignoreBehindVertices"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;",
            "Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;",
            "DZ)",
            "Ljava/util/List<",
            "Lld/a;",
            ">;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalizeLocal()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, v0

    move v7, p5

    invoke-virtual/range {v1 .. v7}, Lld/b;->l(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;DLjava/util/List;Z)V

    return-object v0
.end method

.method public final l(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;DLjava/util/List;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "lookingPos",
            "lookDirection",
            "bias",
            "picked",
            "ignoreBehindVertices"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;",
            "Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;",
            "D",
            "Ljava/util/List<",
            "Lld/a;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lld/b;->b:Lvc/q;

    invoke-virtual {v2}, Lvc/q;->d()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lld/b;->b:Lvc/q;

    iget-object v3, p0, Lld/b;->e:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2, v1, v3}, Lvc/q;->i(ILcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    if-eqz p6, :cond_0

    invoke-virtual {p0}, Lld/b;->h()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lld/b;->c:Lvc/q;

    iget-object v3, p0, Lld/b;->g:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2, v1, v3}, Lvc/q;->i(ILcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v2, p0, Lld/b;->g:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->dot(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result v2

    const v3, 0x3e4ccccd    # 0.2f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lld/b;->f:Lcom/jme3/math/Vector3f;

    iget-object v3, p0, Lld/b;->e:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v3

    iget-object v4, p0, Lld/b;->e:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v4

    iget-object v5, p0, Lld/b;->e:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    iget-object v2, p0, Lld/b;->a:Lcom/jme3/math/Matrix4f;

    iget-object v3, p0, Lld/b;->f:Lcom/jme3/math/Vector3f;

    invoke-virtual {v2, v3, v3}, Lcom/jme3/math/Matrix4f;->mult(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object v2, p0, Lld/b;->h:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v3, p0, Lld/b;->f:Lcom/jme3/math/Vector3f;

    iget v3, v3, Lcom/jme3/math/Vector3f;->x:F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lld/b;->f:Lcom/jme3/math/Vector3f;

    iget v4, v4, Lcom/jme3/math/Vector3f;->y:F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v5

    sub-float/2addr v4, v5

    iget-object v5, p0, Lld/b;->f:Lcom/jme3/math/Vector3f;

    iget v5, v5, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v2, p0, Lld/b;->h:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalizeLocal()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v2, p0, Lld/b;->h:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p2, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->dotProductDouble(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, p3

    cmpl-double v4, v2, v4

    if-ltz v4, :cond_1

    invoke-virtual {p0}, Lld/b;->g()Lld/a;

    move-result-object v4

    iget-object v5, p0, Lld/b;->e:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v4, v5}, Lld/a;->g(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lld/a;

    iget-object v5, p0, Lld/b;->g:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v4, v5}, Lld/a;->f(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lld/a;

    iget-object v5, p0, Lld/b;->f:Lcom/jme3/math/Vector3f;

    invoke-virtual {v4, v5}, Lld/a;->i(Lcom/jme3/math/Vector3f;)Lld/a;

    iput v1, v4, Lld/a;->d:I

    iput-wide v2, v4, Lld/a;->e:D

    invoke-interface {p5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_2
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    move p2, v0

    :goto_1
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_7

    invoke-interface {p5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lld/a;

    move p4, v0

    :goto_2
    iget-object v1, p0, Lld/b;->b:Lvc/q;

    invoke-virtual {v1}, Lvc/q;->d()I

    move-result v1

    if-ge p4, v1, :cond_6

    iget-object v1, p0, Lld/b;->b:Lvc/q;

    iget-object v2, p0, Lld/b;->e:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1, p4, v2}, Lvc/q;->i(ILcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    if-eqz p6, :cond_3

    invoke-virtual {p0}, Lld/b;->h()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lld/b;->c:Lvc/q;

    iget-object v2, p0, Lld/b;->g:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1, p4, v2}, Lvc/q;->i(ILcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :cond_3
    iget-object v1, p0, Lld/b;->e:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v2, p3, Lld/a;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->equally(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lld/b;->e:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v2, p3, Lld/a;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->sqrtDistance(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result v1

    const v2, 0x38d1b717    # 1.0E-4f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_5

    :cond_4
    invoke-virtual {p0}, Lld/b;->g()Lld/a;

    move-result-object v1

    iget-object v2, p0, Lld/b;->e:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1, v2}, Lld/a;->g(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lld/a;

    iget-object v2, p0, Lld/b;->g:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1, v2}, Lld/a;->f(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lld/a;

    invoke-virtual {p3}, Lld/a;->d()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v2

    invoke-virtual {p3, v2}, Lld/a;->h(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lld/a;

    iput p4, v1, Lld/a;->d:I

    iget-wide v2, p3, Lld/a;->e:D

    iput-wide v2, v1, Lld/a;->e:D

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 p4, p4, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_7
    invoke-interface {p5, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public m(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;D)Lld/a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "lookingPos",
            "lookDirection",
            "bias"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalizeLocal()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p0, p1, p2, p3, p4}, Lld/b;->j(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;D)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lld/b;->e(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Ljava/util/List;)Lld/a;

    move-result-object p1

    return-object p1
.end method

.method public n(Lld/a;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pickVertice"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lld/a;",
            ")",
            "Ljava/util/List<",
            "Lld/a;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_4

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lld/b;->b:Lvc/q;

    invoke-virtual {v2}, Lvc/q;->d()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lld/b;->b:Lvc/q;

    iget-object v3, p0, Lld/b;->e:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2, v1, v3}, Lvc/q;->i(ILcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget v2, p1, Lld/a;->d:I

    if-eq v1, v2, :cond_2

    invoke-virtual {p0}, Lld/b;->h()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lld/b;->c:Lvc/q;

    iget-object v3, p0, Lld/b;->g:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2, v1, v3}, Lvc/q;->i(ILcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :cond_0
    iget-object v2, p0, Lld/b;->e:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v3, p1, Lld/a;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->equally(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lld/b;->e:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v3, p1, Lld/a;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->sqrtDistance(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result v2

    const v3, 0x38d1b717    # 1.0E-4f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_2

    :cond_1
    invoke-virtual {p0}, Lld/b;->g()Lld/a;

    move-result-object v2

    iget-object v3, p0, Lld/b;->e:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2, v3}, Lld/a;->g(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lld/a;

    iget-object v3, p0, Lld/b;->g:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2, v3}, Lld/a;->f(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lld/a;

    invoke-virtual {p1}, Lld/a;->d()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v3

    invoke-virtual {p1, v3}, Lld/a;->h(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lld/a;

    iput v1, v2, Lld/a;->d:I

    iget-wide v3, p1, Lld/a;->e:D

    iput-wide v3, v2, Lld/a;->e:D

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0

    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "pickVertice can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public o()V
    .locals 2

    iget-object v0, p0, Lld/b;->i:Ljava/util/List;

    iget-object v1, p0, Lld/b;->j:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lld/b;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public p([F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "matrix"
        }
    .end annotation

    iget-object v0, p0, Lld/b;->a:Lcom/jme3/math/Matrix4f;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/jme3/math/Matrix4f;->set([FZ)V

    return-void
.end method

.method public q(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "verticesBuffer",
            "normalsBuffer",
            "indicesBuffer"
        }
    .end annotation

    new-instance v0, Lvc/q;

    invoke-direct {v0, p1}, Lvc/q;-><init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    iput-object v0, p0, Lld/b;->b:Lvc/q;

    if-eqz p2, :cond_0

    new-instance p1, Lvc/q;

    invoke-direct {p1, p2}, Lvc/q;-><init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    iput-object p1, p0, Lld/b;->c:Lvc/q;

    :cond_0
    new-instance p1, Lvc/n;

    invoke-direct {p1, p3}, Lvc/n;-><init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;)V

    iput-object p1, p0, Lld/b;->d:Lvc/n;

    return-void
.end method
