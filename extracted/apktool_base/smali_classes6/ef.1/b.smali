.class public Lef/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lef/b$f;,
        Lef/b$d;,
        Lef/b$c;,
        Lef/b$e;,
        Lef/b$b;
    }
.end annotation


# static fields
.field public static final m:Ljava/util/logging/Logger;

.field public static final n:F = 3.4028235E38f

.field public static final o:F = Infinityf


# instance fields
.field public a:Lcom/jme3/math/Vector3f;

.field public b:Lcom/jme3/math/Vector3f;

.field public c:Z

.field public d:I

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lef/b$f;",
            ">;"
        }
    .end annotation
.end field

.field public f:F

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lef/b$d;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lef/b$f;",
            ">;"
        }
    .end annotation
.end field

.field public i:F

.field public final j:Lcom/jme3/scene/Mesh;

.field public final k:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lef/b$f;",
            ">;"
        }
    .end annotation
.end field

.field public l:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lef/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lef/b;->m:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/scene/Geometry;)V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lef/b;->a:Lcom/jme3/math/Vector3f;

    .line 14
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lef/b;->b:Lcom/jme3/math/Vector3f;

    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lef/b;->c:Z

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lef/b;->d:I

    .line 17
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lef/b;->e:Ljava/util/List;

    .line 18
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lef/b;->h:Ljava/util/List;

    .line 19
    new-instance v1, Lef/b$a;

    invoke-direct {v1, p0}, Lef/b$a;-><init>(Lef/b;)V

    iput-object v1, p0, Lef/b;->k:Ljava/util/Comparator;

    .line 20
    iput v0, p0, Lef/b;->l:I

    .line 21
    invoke-virtual {p1}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object p1

    iput-object p1, p0, Lef/b;->j:Lcom/jme3/scene/Mesh;

    .line 22
    invoke-virtual {p0}, Lef/b;->f()V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/scene/Mesh;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lef/b;->a:Lcom/jme3/math/Vector3f;

    .line 3
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lef/b;->b:Lcom/jme3/math/Vector3f;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lef/b;->c:Z

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lef/b;->d:I

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lef/b;->e:Ljava/util/List;

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lef/b;->h:Ljava/util/List;

    .line 8
    new-instance v1, Lef/b$a;

    invoke-direct {v1, p0}, Lef/b$a;-><init>(Lef/b;)V

    iput-object v1, p0, Lef/b;->k:Ljava/util/Comparator;

    .line 9
    iput v0, p0, Lef/b;->l:I

    .line 10
    iput-object p1, p0, Lef/b;->j:Lcom/jme3/scene/Mesh;

    .line 11
    invoke-virtual {p0}, Lef/b;->f()V

    return-void
.end method

.method public static synthetic a(Lef/b;)Lcom/jme3/math/Vector3f;
    .locals 0

    iget-object p0, p0, Lef/b;->a:Lcom/jme3/math/Vector3f;

    return-object p0
.end method

.method public static synthetic b(Lef/b;)Lcom/jme3/math/Vector3f;
    .locals 0

    iget-object p0, p0, Lef/b;->b:Lcom/jme3/math/Vector3f;

    return-object p0
.end method


# virtual methods
.method public final A(Lef/b$f;)V
    .locals 7

    iget-object v0, p1, Lef/b$f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    const/4 v2, 0x0

    move v3, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lef/b$c;

    invoke-virtual {p0, p1, v4}, Lef/b;->k(Lef/b$f;Lef/b$c;)F

    move-result v5

    iput v5, v4, Lef/b$c;->b:F

    cmpl-float v6, v3, v5

    if-lez v6, :cond_0

    iget-object v2, v4, Lef/b$c;->a:Lef/b$f;

    move v3, v5

    goto :goto_0

    :cond_1
    iget v0, p1, Lef/b$f;->b:F

    cmpl-float v0, v3, v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lef/b$f;->e:Lef/b$f;

    if-eq v0, v2, :cond_3

    :cond_2
    iget-object v0, p0, Lef/b;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    cmpl-float v0, v3, v1

    if-eqz v0, :cond_3

    iput v3, p1, Lef/b$f;->b:F

    iput-object v2, p1, Lef/b$f;->e:Lef/b$f;

    iget-object v0, p0, Lef/b;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method public final c(Lef/b$f;Lef/b$c;)V
    .locals 4

    iget-object v0, p1, Lef/b$f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lef/b$c;

    invoke-virtual {v1, p2}, Lef/b$c;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget p1, v1, Lef/b$c;->c:I

    add-int/2addr p1, v2

    iput p1, v1, Lef/b$c;->c:I

    return-void

    :cond_1
    iget-object p1, p1, Lef/b$f;->c:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput v2, p2, Lef/b$c;->c:I

    return-void
.end method

.method public final d(Lef/b$d;)V
    .locals 7

    iget-boolean v0, p0, Lef/b;->c:Z

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lef/b;->r(Lef/b$d;)Lef/b$d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v2, p1, Lef/b$d;->c:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p1, Lef/b$d;->c:Z

    iget v2, p0, Lef/b;->d:I

    sub-int/2addr v2, v1

    iput v2, p0, Lef/b;->d:I

    sget-object v2, Lef/b;->m:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "duplicate triangle found{0}{1} It will be excluded from LOD level calculations."

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p1, Lef/b$d;->a:[Lef/b$f;

    aget-object v3, v3, v2

    iget-object v3, v3, Lef/b$f;->d:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_1
    if-ge v2, v1, :cond_4

    move v3, v0

    :goto_2
    if-ge v3, v1, :cond_3

    if-eq v2, v3, :cond_2

    iget-object v4, p1, Lef/b$d;->a:[Lef/b$f;

    aget-object v5, v4, v2

    new-instance v6, Lef/b$c;

    aget-object v4, v4, v3

    invoke-direct {v6, p0, v4}, Lef/b$c;-><init>(Lef/b;Lef/b$f;)V

    invoke-virtual {p0, v5, v6}, Lef/b;->c(Lef/b$f;Lef/b$c;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public varargs e(Lef/b$e;[F)V
    .locals 1

    iget-object v0, p0, Lef/b;->j:Lcom/jme3/scene/Mesh;

    invoke-virtual {p0, p1, p2}, Lef/b;->l(Lef/b$e;[F)[Lcom/jme3/scene/VertexBuffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/jme3/scene/Mesh;->setLodLevels([Lcom/jme3/scene/VertexBuffer;)V

    return-void
.end method

.method public final f()V
    .locals 3

    new-instance v0, Lcom/jme3/bounding/BoundingSphere;

    invoke-direct {v0}, Lcom/jme3/bounding/BoundingSphere;-><init>()V

    iget-object v1, p0, Lef/b;->j:Lcom/jme3/scene/Mesh;

    sget-object v2, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v1, v2}, Lcom/jme3/scene/Mesh;->getFloatBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/bounding/BoundingSphere;->computeFromPoints(Ljava/nio/FloatBuffer;)V

    invoke-virtual {v0}, Lcom/jme3/bounding/BoundingSphere;->getRadius()F

    move-result v0

    iput v0, p0, Lef/b;->i:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lef/b;->t()V

    iget-object v1, p0, Lef/b;->j:Lcom/jme3/scene/Mesh;

    invoke-virtual {p0, v1, v0}, Lef/b;->q(Lcom/jme3/scene/Mesh;Ljava/util/List;)V

    iget-object v1, p0, Lef/b;->j:Lcom/jme3/scene/Mesh;

    invoke-virtual {p0, v1, v0}, Lef/b;->p(Lcom/jme3/scene/Mesh;Ljava/util/List;)V

    invoke-virtual {p0}, Lef/b;->j()V

    return-void
.end method

.method public final g(Lef/b$e;F)I
    .locals 4

    iget-object v0, p0, Lef/b;->j:Lcom/jme3/scene/Mesh;

    invoke-virtual {v0}, Lcom/jme3/scene/Mesh;->getTriangleCount()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    if-eqz p1, :cond_3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p1, v2, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    return v0

    :cond_0
    iput p2, p0, Lef/b;->f:F

    return v3

    :cond_1
    iput v1, p0, Lef/b;->f:F

    int-to-float p1, v0

    cmpg-float p1, p2, p1

    if-gez p1, :cond_2

    float-to-int p1, p2

    sub-int/2addr v0, p1

    return v0

    :cond_2
    return v3

    :cond_3
    iput v1, p0, Lef/b;->f:F

    int-to-float p1, v0

    mul-float/2addr p2, p1

    sub-float/2addr p1, p2

    float-to-int p1, p1

    return p1
.end method

.method public final h([Lcom/jme3/scene/VertexBuffer;I)[Lcom/jme3/scene/VertexBuffer;
    .locals 4

    new-array p2, p2, [Lcom/jme3/scene/VertexBuffer;

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v3, p1, v1

    if-eqz v3, :cond_0

    aput-object v3, p2, v2

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method public final i(Lef/b$f;)Z
    .locals 8

    iget-object v0, p1, Lef/b$f;->e:Lef/b$f;

    iget-object v1, p1, Lef/b$f;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p1, Lef/b$f;->d:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lef/b$d;

    invoke-virtual {v3, v0}, Lef/b$d;->c(Lef/b$f;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v3, p1}, Lef/b$d;->b(Lef/b$f;)I

    move-result v5

    invoke-virtual {p0, v5, v1}, Lef/b;->s(ILjava/util/List;)Z

    move-result v6

    if-nez v6, :cond_2

    new-instance v6, Lef/b$b;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lef/b$b;-><init>(Lef/b;Lef/b$a;)V

    iput v5, v6, Lef/b$b;->a:I

    invoke-virtual {v3, v0}, Lef/b$d;->b(Lef/b$f;)I

    move-result v5

    iput v5, v6, Lef/b$b;->b:I

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget v5, p0, Lef/b;->d:I

    add-int/lit8 v5, v5, -0x3

    iput v5, p0, Lef/b;->d:I

    iput-boolean v4, v3, Lef/b$d;->c:Z

    iget v5, p0, Lef/b;->l:I

    add-int/2addr v5, v4

    iput v5, p0, Lef/b;->l:I

    invoke-virtual {p0, v3, p1}, Lef/b;->y(Lef/b$d;Lef/b$f;)V

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    iget-object v2, p1, Lef/b$f;->d:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lef/b$d;

    invoke-virtual {v3, v0}, Lef/b$d;->c(Lef/b$f;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v3, p1}, Lef/b$d;->b(Lef/b$f;)I

    move-result v5

    invoke-virtual {p0, v5, v1}, Lef/b;->n(ILjava/util/List;)I

    move-result v6

    const v7, 0x7fffffff

    if-ne v6, v7, :cond_5

    iput-boolean v4, v3, Lef/b$d;->c:Z

    iget v5, p0, Lef/b;->d:I

    add-int/lit8 v5, v5, -0x3

    iput v5, p0, Lef/b;->d:I

    invoke-virtual {p0, v3, p1}, Lef/b;->y(Lef/b$d;Lef/b$f;)V

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    iget v3, p0, Lef/b;->l:I

    add-int/2addr v3, v4

    iput v3, p0, Lef/b;->l:I

    goto :goto_1

    :cond_5
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lef/b$b;

    iget v6, v6, Lef/b$b;->b:I

    invoke-virtual {p0, v3, v5, v6, v0}, Lef/b;->z(Lef/b$d;IILef/b$f;)V

    iget-boolean v5, p0, Lef/b;->c:Z

    if-eqz v5, :cond_4

    invoke-virtual {v3}, Lef/b$d;->a()V

    goto :goto_1

    :cond_6
    iget-boolean v1, p0, Lef/b;->c:Z

    if-eqz v1, :cond_8

    iget-object p1, p1, Lef/b$f;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lef/b$c;

    iget-object v1, v1, Lef/b$c;->a:Lef/b$f;

    invoke-virtual {p0, v1}, Lef/b;->A(Lef/b$f;)V

    goto :goto_2

    :cond_7
    invoke-virtual {p0, v0}, Lef/b;->A(Lef/b$f;)V

    iget-object p1, v0, Lef/b$f;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lef/b$c;

    iget-object v0, v0, Lef/b$c;->a:Lef/b$f;

    invoke-virtual {p0, v0}, Lef/b;->A(Lef/b$f;)V

    goto :goto_3

    :cond_8
    new-instance v0, Ljava/util/TreeSet;

    iget-object v1, p0, Lef/b;->k:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iget-object p1, p1, Lef/b$f;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lef/b$c;

    iget-object v2, v1, Lef/b$c;->a:Lef/b$f;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v1, v1, Lef/b$c;->a:Lef/b$f;

    iget-object v1, v1, Lef/b$f;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lef/b$c;

    iget-object v2, v2, Lef/b$c;->a:Lef/b$f;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_a
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lef/b$f;

    invoke-virtual {p0, v0}, Lef/b;->A(Lef/b$f;)V

    goto :goto_5

    :cond_b
    return v4
.end method

.method public final j()V
    .locals 5

    iget-object v0, p0, Lef/b;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lef/b;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lef/b$f;

    iget-object v2, v1, Lef/b$f;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v1}, Lef/b;->m(Lef/b$f;)V

    goto :goto_0

    :cond_0
    sget-object v2, Lef/b;->m:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v4, "Found isolated vertex {0} It will be excluded from LOD calculations."

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public k(Lef/b$f;Lef/b$c;)F
    .locals 11

    iget-object v0, p2, Lef/b$c;->a:Lef/b$f;

    iget-object v1, p1, Lef/b$f;->d:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    iget-object v1, v0, Lef/b$f;->d:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-ne v1, v3, :cond_0

    return v2

    :cond_0
    iget-object v1, p1, Lef/b$f;->d:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lef/b$d;

    invoke-virtual {v4, v0}, Lef/b$d;->c(Lef/b$f;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, v4, Lef/b$d;->a:[Lef/b$f;

    const/4 v7, 0x0

    aget-object v7, v6, v7

    if-ne v7, p1, :cond_2

    move-object v7, v0

    :cond_2
    aget-object v8, v6, v3

    if-ne v8, p1, :cond_3

    move-object v8, v0

    :cond_3
    const/4 v9, 0x2

    aget-object v6, v6, v9

    if-ne v6, p1, :cond_4

    move-object v6, v0

    :cond_4
    iget-object v9, p0, Lef/b;->a:Lcom/jme3/math/Vector3f;

    iget-object v10, v8, Lef/b$f;->a:Lcom/jme3/math/Vector3f;

    invoke-virtual {v9, v10}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v9

    iget-object v7, v7, Lef/b$f;->a:Lcom/jme3/math/Vector3f;

    invoke-virtual {v9, v7}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object v7, p0, Lef/b;->b:Lcom/jme3/math/Vector3f;

    iget-object v6, v6, Lef/b$f;->a:Lcom/jme3/math/Vector3f;

    invoke-virtual {v7, v6}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v6

    iget-object v7, v8, Lef/b$f;->a:Lcom/jme3/math/Vector3f;

    invoke-virtual {v6, v7}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object v6, p0, Lef/b;->a:Lcom/jme3/math/Vector3f;

    iget-object v7, p0, Lef/b;->b:Lcom/jme3/math/Vector3f;

    invoke-virtual {v6, v7}, Lcom/jme3/math/Vector3f;->crossLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    iget-object v4, v4, Lef/b$d;->b:Lcom/jme3/math/Vector3f;

    invoke-virtual {v6, v4}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v4

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    return v2

    :cond_5
    invoke-virtual {p0, p1}, Lef/b;->u(Lef/b$f;)Z

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    const v4, 0x3f804189    # 1.002f

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v1, :cond_9

    iget p2, p2, Lef/b$c;->c:I

    if-le p2, v3, :cond_6

    goto/16 :goto_3

    :cond_6
    iget-object p2, p0, Lef/b;->a:Lcom/jme3/math/Vector3f;

    iget-object v1, p1, Lef/b$f;->a:Lcom/jme3/math/Vector3f;

    invoke-virtual {p2, v1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p2

    iget-object v1, v0, Lef/b$f;->a:Lcom/jme3/math/Vector3f;

    invoke-virtual {p2, v1}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p2

    invoke-virtual {p2}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    iget-object v1, p1, Lef/b$f;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lef/b$c;

    iget-object v7, v6, Lef/b$c;->a:Lef/b$f;

    if-eq v7, v0, :cond_7

    iget v6, v6, Lef/b$c;->c:I

    if-ne v6, v3, :cond_7

    iget-object v6, p0, Lef/b;->b:Lcom/jme3/math/Vector3f;

    iget-object v8, p1, Lef/b$f;->a:Lcom/jme3/math/Vector3f;

    invoke-virtual {v6, v8}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v6

    iget-object v7, v7, Lef/b$f;->a:Lcom/jme3/math/Vector3f;

    invoke-virtual {v6, v7}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    invoke-virtual {v6, p2}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v6

    add-float/2addr v6, v4

    mul-float/2addr v6, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    goto :goto_0

    :cond_8
    move v6, v5

    goto :goto_3

    :cond_9
    iget-object p2, p1, Lef/b$f;->d:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const v1, 0x3a83126f    # 0.001f

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lef/b$d;

    iget-object v5, p1, Lef/b$f;->d:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v7, v6

    :cond_a
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lef/b$d;

    invoke-virtual {v8, v0}, Lef/b$d;->c(Lef/b$f;)Z

    move-result v9

    if-eqz v9, :cond_a

    iget-object v9, v3, Lef/b$d;->b:Lcom/jme3/math/Vector3f;

    iget-object v8, v8, Lef/b$d;->b:Lcom/jme3/math/Vector3f;

    invoke-virtual {v9, v8}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v8

    sub-float v8, v4, v8

    mul-float/2addr v8, v2

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    goto :goto_2

    :cond_b
    invoke-static {v1, v7}, Ljava/lang/Math;->max(FF)F

    move-result v1

    goto :goto_1

    :cond_c
    move v6, v1

    :goto_3
    iget-boolean p2, p1, Lef/b$f;->f:Z

    if-eqz p2, :cond_e

    iget-boolean p2, v0, Lef/b$f;->f:Z

    if-nez p2, :cond_d

    iget p2, p0, Lef/b;->i:F

    add-float/2addr v6, p2

    goto :goto_4

    :cond_d
    float-to-double v1, v6

    iget p2, p0, Lef/b;->i:F

    float-to-double v3, p2

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    double-to-float v6, v1

    :cond_e
    :goto_4
    iget-object p1, p1, Lef/b$f;->a:Lcom/jme3/math/Vector3f;

    iget-object p2, v0, Lef/b$f;->a:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p2}, Lcom/jme3/math/Vector3f;->distanceSquared(Lcom/jme3/math/Vector3f;)F

    move-result p1

    mul-float/2addr v6, p1

    return v6
.end method

.method public varargs l(Lef/b$e;[F)[Lcom/jme3/scene/VertexBuffer;
    .locals 10

    iget-object v0, p0, Lef/b;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    array-length v1, p2

    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [Lcom/jme3/scene/VertexBuffer;

    iget-object v3, p0, Lef/b;->j:Lcom/jme3/scene/Mesh;

    sget-object v4, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v3, v4}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    move v5, v4

    move v4, v3

    move v3, v0

    :goto_0
    if-ge v5, v1, :cond_4

    aget v6, p2, v5

    invoke-virtual {p0, p1, v6}, Lef/b;->g(Lef/b$e;F)I

    move-result v6

    :goto_1
    if-ge v6, v0, :cond_2

    iget-object v7, p0, Lef/b;->e:Ljava/util/List;

    iget-object v8, p0, Lef/b;->k:Ljava/util/Comparator;

    invoke-static {v7, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v7, p0, Lef/b;->e:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lef/b$f;

    iget v8, v7, Lef/b$f;->b:F

    iget v9, p0, Lef/b;->f:F

    cmpg-float v8, v8, v9

    if-gez v8, :cond_2

    invoke-virtual {p0, v7}, Lef/b;->i(Lef/b$f;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lef/b;->m:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    iget v7, v7, Lef/b$f;->g:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v9, "Couldn\'\'t collapse vertex{0}"

    invoke-virtual {v0, v8, v9, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lef/b;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_1
    iget-object v0, p0, Lef/b;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v7, p0, Lef/b;->l:I

    sub-int/2addr v0, v7

    goto :goto_1

    :cond_2
    sget-object v6, Lef/b;->m:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    iget v8, p0, Lef/b;->l:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "collapsed {0} tris"

    invoke-virtual {v6, v7, v9, v8}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    if-ne v3, v0, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v5, 0x1

    iget-object v6, p0, Lef/b;->j:Lcom/jme3/scene/Mesh;

    invoke-virtual {p0, v6}, Lef/b;->w(Lcom/jme3/scene/Mesh;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v6

    aput-object v6, v2, v3

    add-int/lit8 v4, v4, 0x1

    move v3, v0

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v2, v4}, Lef/b;->h([Lcom/jme3/scene/VertexBuffer;I)[Lcom/jme3/scene/VertexBuffer;

    move-result-object p1

    return-object p1
.end method

.method public final m(Lef/b$f;)V
    .locals 4

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    iput v0, p1, Lef/b$f;->b:F

    iget-object v0, p1, Lef/b$f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lef/b$c;

    invoke-virtual {p0, p1, v1}, Lef/b;->k(Lef/b$f;Lef/b$c;)F

    move-result v2

    iput v2, v1, Lef/b$c;->b:F

    iget v3, p1, Lef/b$f;->b:F

    cmpl-float v3, v3, v2

    if-lez v3, :cond_0

    iput v2, p1, Lef/b$f;->b:F

    iget-object v1, v1, Lef/b$c;->a:Lef/b$f;

    iput-object v1, p1, Lef/b$f;->e:Lef/b$f;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lef/b;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final n(ILjava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lef/b$b;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lef/b$b;

    iget v1, v1, Lef/b$b;->a:I

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const p1, 0x7fffffff

    return p1
.end method

.method public final o(Lef/b$f;)Lef/b$f;
    .locals 4

    iget-object v0, p0, Lef/b;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lef/b$f;

    iget-object v2, v1, Lef/b$f;->a:Lcom/jme3/math/Vector3f;

    iget-object v3, p1, Lef/b$f;->a:Lcom/jme3/math/Vector3f;

    invoke-virtual {v2, v3}, Lcom/jme3/math/Vector3f;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final p(Lcom/jme3/scene/Mesh;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/scene/Mesh;",
            "Ljava/util/List<",
            "Lef/b$f;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p1, v0}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getNumElements()I

    move-result v0

    const/4 v1, 0x3

    mul-int/2addr v0, v1

    iput v0, p0, Lef/b;->d:I

    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getDataReadOnly()Ljava/nio/Buffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lef/b$d;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lef/b$d;-><init>(Lef/b;Lef/b$a;)V

    const/4 v2, 0x0

    iput-boolean v2, v0, Lef/b$d;->c:Z

    iget-object v3, p0, Lef/b;->g:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    if-ge v2, v1, :cond_2

    instance-of v3, p1, Ljava/nio/IntBuffer;

    if-eqz v3, :cond_1

    iget-object v3, v0, Lef/b$d;->d:[I

    move-object v4, p1

    check-cast v4, Ljava/nio/IntBuffer;

    invoke-virtual {v4}, Ljava/nio/IntBuffer;->get()I

    move-result v4

    aput v4, v3, v2

    goto :goto_2

    :cond_1
    iget-object v3, v0, Lef/b$d;->d:[I

    move-object v4, p1

    check-cast v4, Ljava/nio/ShortBuffer;

    invoke-virtual {v4}, Ljava/nio/ShortBuffer;->get()S

    move-result v4

    const v5, 0xffff

    and-int/2addr v4, v5

    aput v4, v3, v2

    :goto_2
    iget-object v3, v0, Lef/b$d;->a:[Lef/b$f;

    iget-object v4, v0, Lef/b$d;->d:[I

    aget v4, v4, v2

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lef/b$f;

    aput-object v4, v3, v2

    iget-object v3, v0, Lef/b$d;->a:[Lef/b$f;

    aget-object v3, v3, v2

    iget-object v4, v0, Lef/b$d;->d:[I

    aget v4, v4, v2

    iput v4, v3, Lef/b$f;->g:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lef/b$d;->d()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-boolean v2, v0, Lef/b$d;->c:Z

    if-nez v2, :cond_0

    sget-object v2, Lef/b;->m:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lef/b;->g:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0}, Lef/b$d;->toString()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "malformed triangle found with ID:{0}\n{1} It will be excluded from LOD calculations."

    invoke-virtual {v2, v3, v5, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    const/4 v2, 0x1

    iput-boolean v2, v0, Lef/b$d;->c:Z

    iget v0, p0, Lef/b;->d:I

    sub-int/2addr v0, v1

    iput v0, p0, Lef/b;->d:I

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v0}, Lef/b$d;->a()V

    invoke-virtual {p0, v0}, Lef/b;->d(Lef/b$d;)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p1}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    return-void
.end method

.method public final q(Lcom/jme3/scene/Mesh;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/scene/Mesh;",
            "Ljava/util/List<",
            "Lef/b$f;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->BindPosePosition:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p1, v0}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p1, v0}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/jme3/scene/VertexBuffer;->getDataReadOnly()Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/FloatBuffer;

    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    :goto_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lef/b$f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lef/b$f;-><init>(Lef/b;Lef/b$a;)V

    iget-object v1, v0, Lef/b$f;->a:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->get()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/jme3/math/Vector3f;->setX(F)Lcom/jme3/math/Vector3f;

    iget-object v1, v0, Lef/b$f;->a:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->get()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/jme3/math/Vector3f;->setY(F)Lcom/jme3/math/Vector3f;

    iget-object v1, v0, Lef/b$f;->a:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->get()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/jme3/math/Vector3f;->setZ(F)Lcom/jme3/math/Vector3f;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lef/b$f;->f:Z

    invoke-virtual {p0, v0}, Lef/b;->o(Lef/b$f;)Lef/b$f;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    iput-boolean v2, v1, Lef/b$f;->f:Z

    iput-boolean v2, v0, Lef/b$f;->f:Z

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lef/b;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    return-void
.end method

.method public final r(Lef/b$d;)Lef/b$d;
    .locals 3

    iget-object v0, p1, Lef/b$d;->a:[Lef/b$f;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Lef/b$f;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lef/b$d;

    invoke-virtual {p0, p1, v1}, Lef/b;->v(Lef/b$d;Lef/b$d;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final s(ILjava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lef/b$b;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lef/b$b;

    iget v0, v0, Lef/b$b;->a:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final t()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lef/b;->g:Ljava/util/List;

    return-void
.end method

.method public u(Lef/b$f;)Z
    .locals 2

    iget-object p1, p1, Lef/b$f;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lef/b$c;

    iget v0, v0, Lef/b$c;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final v(Lef/b$d;Lef/b$d;)Z
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ge v1, v2, :cond_2

    iget-object v2, p1, Lef/b$d;->a:[Lef/b$f;

    aget-object v2, v2, v1

    iget-object v4, p2, Lef/b$d;->a:[Lef/b$f;

    aget-object v5, v4, v0

    if-ne v2, v5, :cond_1

    aget-object v3, v4, v3

    if-ne v2, v3, :cond_1

    const/4 v3, 0x2

    aget-object v3, v4, v3

    if-eq v2, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0

    :cond_2
    return v3
.end method

.method public final w(Lcom/jme3/scene/Mesh;)Lcom/jme3/scene/VertexBuffer;
    .locals 9

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p1, v0}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getFormat()Lcom/jme3/scene/VertexBuffer$Format;

    move-result-object p1

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Format;->UnsignedShort:Lcom/jme3/scene/VertexBuffer$Format;

    const/4 v2, 0x0

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    new-instance v3, Lcom/jme3/scene/VertexBuffer;

    invoke-direct {v3, v0}, Lcom/jme3/scene/VertexBuffer;-><init>(Lcom/jme3/scene/VertexBuffer$Type;)V

    iget v0, p0, Lef/b;->d:I

    const/4 v4, 0x3

    if-nez v0, :cond_1

    move v0, v4

    :cond_1
    if-eqz p1, :cond_2

    sget-object v5, Lcom/jme3/scene/VertexBuffer$Usage;->Static:Lcom/jme3/scene/VertexBuffer$Usage;

    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createShortBuffer(I)Ljava/nio/ShortBuffer;

    move-result-object v0

    invoke-virtual {v3, v5, v4, v1, v0}, Lcom/jme3/scene/VertexBuffer;->setupData(Lcom/jme3/scene/VertexBuffer$Usage;ILcom/jme3/scene/VertexBuffer$Format;Ljava/nio/Buffer;)V

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/jme3/scene/VertexBuffer$Usage;->Static:Lcom/jme3/scene/VertexBuffer$Usage;

    sget-object v5, Lcom/jme3/scene/VertexBuffer$Format;->UnsignedInt:Lcom/jme3/scene/VertexBuffer$Format;

    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v0

    invoke-virtual {v3, v1, v4, v5, v0}, Lcom/jme3/scene/VertexBuffer;->setupData(Lcom/jme3/scene/VertexBuffer$Usage;ILcom/jme3/scene/VertexBuffer$Format;Ljava/nio/Buffer;)V

    :goto_1
    invoke-virtual {v3}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    iget v0, p0, Lef/b;->d:I

    if-nez v0, :cond_4

    if-eqz p1, :cond_3

    move v0, v2

    :goto_2
    if-ge v0, v4, :cond_4

    invoke-virtual {v3}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/ShortBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    move v0, v2

    :goto_3
    if-ge v0, v4, :cond_4

    invoke-virtual {v3}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/IntBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {v3}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    iget-object v1, p0, Lef/b;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lef/b$d;

    iget-boolean v6, v5, Lef/b$d;->c:Z

    if-nez v6, :cond_5

    if-eqz p1, :cond_6

    move v6, v2

    :goto_4
    if-ge v6, v4, :cond_5

    move-object v7, v0

    check-cast v7, Ljava/nio/ShortBuffer;

    iget-object v8, v5, Lef/b$d;->d:[I

    aget v8, v8, v6

    int-to-short v8, v8

    invoke-virtual {v7, v8}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_6
    move v6, v2

    :goto_5
    if-ge v6, v4, :cond_5

    move-object v7, v0

    check-cast v7, Ljava/nio/IntBuffer;

    iget-object v8, v5, Lef/b$d;->d:[I

    aget v8, v8, v6

    invoke-virtual {v7, v8}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_7
    invoke-virtual {v0}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {v3, v0}, Lcom/jme3/scene/VertexBuffer;->updateData(Ljava/nio/Buffer;)V

    return-object v3
.end method

.method public final x(Lef/b$f;Lef/b$c;)V
    .locals 3

    iget-object v0, p1, Lef/b$f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lef/b$c;

    invoke-virtual {v1, p2}, Lef/b$c;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget p2, v1, Lef/b$c;->c:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    iget-object p1, p1, Lef/b$f;->c:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    sub-int/2addr p2, v0

    iput p2, v1, Lef/b$c;->c:I

    :goto_1
    return-void
.end method

.method public final y(Lef/b$d;Lef/b$f;)V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    iget-object v2, p1, Lef/b$d;->a:[Lef/b$f;

    aget-object v2, v2, v1

    if-eq v2, p2, :cond_0

    iget-object v2, v2, Lef/b$f;->d:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move p2, v0

    :goto_1
    if-ge p2, v2, :cond_4

    move v1, v0

    :goto_2
    if-ge v1, v2, :cond_3

    if-eq p2, v1, :cond_2

    iget-object v3, p1, Lef/b$d;->a:[Lef/b$f;

    aget-object v4, v3, p2

    new-instance v5, Lef/b$c;

    aget-object v3, v3, v1

    invoke-direct {v5, p0, v3}, Lef/b$c;-><init>(Lef/b;Lef/b$f;)V

    invoke-virtual {p0, v4, v5}, Lef/b;->x(Lef/b$f;Lef/b$c;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public final z(Lef/b$d;IILef/b$f;)V
    .locals 5

    iget-object v0, p4, Lef/b$f;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_3

    iget-object v3, p1, Lef/b$d;->d:[I

    aget v3, v3, v1

    if-ne v3, p2, :cond_2

    :goto_1
    if-ge v0, v2, :cond_1

    if-eq v1, v0, :cond_0

    iget-object p2, p1, Lef/b$d;->a:[Lef/b$f;

    aget-object v3, p2, v0

    new-instance v4, Lef/b$c;

    aget-object p2, p2, v1

    invoke-direct {v4, p0, p2}, Lef/b$c;-><init>(Lef/b;Lef/b$f;)V

    invoke-virtual {p0, v3, v4}, Lef/b;->x(Lef/b$f;Lef/b$c;)V

    iget-object p2, p1, Lef/b$d;->a:[Lef/b$f;

    aget-object p2, p2, v0

    new-instance v3, Lef/b$c;

    invoke-direct {v3, p0, p4}, Lef/b$c;-><init>(Lef/b;Lef/b$f;)V

    invoke-virtual {p0, p2, v3}, Lef/b;->c(Lef/b$f;Lef/b$c;)V

    new-instance p2, Lef/b$c;

    iget-object v3, p1, Lef/b$d;->a:[Lef/b$f;

    aget-object v3, v3, v0

    invoke-direct {p2, p0, v3}, Lef/b$c;-><init>(Lef/b;Lef/b$f;)V

    invoke-virtual {p0, p4, p2}, Lef/b;->c(Lef/b$f;Lef/b$c;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object p2, p1, Lef/b$d;->a:[Lef/b$f;

    aput-object p4, p2, v1

    iget-object p1, p1, Lef/b$d;->d:[I

    aput p3, p1, v1

    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
