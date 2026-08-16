.class public Lbb/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;",
            ">;"
        }
    .end annotation
.end field

.field public b:[Lcb/x;

.field public final c:Lcb/x;

.field public final d:Lcb/x;

.field public final e:Lcb/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcb/d<",
            "Lcb/x;",
            ">;"
        }
    .end annotation
.end field

.field public f:Z

.field public final g:I

.field public h:LJAVARuntime/NurbsPath3D;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lbb/d;->b:[Lcb/x;

    .line 3
    new-instance v0, Lcb/x;

    invoke-direct {v0}, Lcb/x;-><init>()V

    iput-object v0, p0, Lbb/d;->c:Lcb/x;

    .line 4
    new-instance v0, Lcb/x;

    invoke-direct {v0}, Lcb/x;-><init>()V

    iput-object v0, p0, Lbb/d;->d:Lcb/x;

    .line 5
    new-instance v0, Lcb/d;

    invoke-direct {v0}, Lcb/d;-><init>()V

    iput-object v0, p0, Lbb/d;->e:Lcb/d;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lbb/d;->f:Z

    const/4 v0, 0x3

    .line 7
    iput v0, p0, Lbb/d;->g:I

    .line 8
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lbb/d;->a:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "points"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;",
            ">;)V"
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lbb/d;->b:[Lcb/x;

    .line 11
    new-instance v0, Lcb/x;

    invoke-direct {v0}, Lcb/x;-><init>()V

    iput-object v0, p0, Lbb/d;->c:Lcb/x;

    .line 12
    new-instance v0, Lcb/x;

    invoke-direct {v0}, Lcb/x;-><init>()V

    iput-object v0, p0, Lbb/d;->d:Lcb/x;

    .line 13
    new-instance v0, Lcb/d;

    invoke-direct {v0}, Lcb/d;-><init>()V

    iput-object v0, p0, Lbb/d;->e:Lcb/d;

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lbb/d;->f:Z

    const/4 v0, 0x3

    .line 15
    iput v0, p0, Lbb/d;->g:I

    .line 16
    iput-object p1, p0, Lbb/d;->a:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "points",
            "continuous"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;",
            ">;Z)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lbb/d;->b:[Lcb/x;

    .line 28
    new-instance v0, Lcb/x;

    invoke-direct {v0}, Lcb/x;-><init>()V

    iput-object v0, p0, Lbb/d;->c:Lcb/x;

    .line 29
    new-instance v0, Lcb/x;

    invoke-direct {v0}, Lcb/x;-><init>()V

    iput-object v0, p0, Lbb/d;->d:Lcb/x;

    .line 30
    new-instance v0, Lcb/d;

    invoke-direct {v0}, Lcb/d;-><init>()V

    iput-object v0, p0, Lbb/d;->e:Lcb/d;

    const/4 v0, 0x3

    .line 31
    iput v0, p0, Lbb/d;->g:I

    .line 32
    iput-object p1, p0, Lbb/d;->a:Ljava/util/List;

    .line 33
    iput-boolean p2, p0, Lbb/d;->f:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "continuous"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lbb/d;->b:[Lcb/x;

    .line 19
    new-instance v0, Lcb/x;

    invoke-direct {v0}, Lcb/x;-><init>()V

    iput-object v0, p0, Lbb/d;->c:Lcb/x;

    .line 20
    new-instance v0, Lcb/x;

    invoke-direct {v0}, Lcb/x;-><init>()V

    iput-object v0, p0, Lbb/d;->d:Lcb/x;

    .line 21
    new-instance v0, Lcb/d;

    invoke-direct {v0}, Lcb/d;-><init>()V

    iput-object v0, p0, Lbb/d;->e:Lcb/d;

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lbb/d;->f:Z

    const/4 v0, 0x3

    .line 23
    iput v0, p0, Lbb/d;->g:I

    .line 24
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lbb/d;->a:Ljava/util/List;

    .line 25
    iput-boolean p1, p0, Lbb/d;->f:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lbb/d;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public b(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vector"
        }
    .end annotation

    iget-object v0, p0, Lbb/d;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lbb/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final d()V
    .locals 7

    iget-object v0, p0, Lbb/d;->b:[Lcb/x;

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    array-length v0, v0

    iget-object v3, p0, Lbb/d;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v0, v3, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lbb/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    iget-object v0, p0, Lbb/d;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v3, p0, Lbb/d;->b:[Lcb/x;

    aget-object v3, v3, v2

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v4

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v5

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v0

    invoke-virtual {v3, v4, v5, v0}, Lcb/x;->Q0(FFF)Lcb/x;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lbb/d;->e:Lcb/d;

    iget-object v2, p0, Lbb/d;->b:[Lcb/x;

    iget-boolean v3, p0, Lbb/d;->f:Z

    invoke-virtual {v0, v2, v1, v3}, Lcb/d;->v([Lcb/y;IZ)Lcb/d;

    goto :goto_3

    :cond_2
    :goto_1
    iget-object v0, p0, Lbb/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcb/x;

    iput-object v0, p0, Lbb/d;->b:[Lcb/x;

    :goto_2
    iget-object v0, p0, Lbb/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    iget-object v0, p0, Lbb/d;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v3, p0, Lbb/d;->b:[Lcb/x;

    new-instance v4, Lcb/x;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v5

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v6

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v0

    invoke-direct {v4, v5, v6, v0}, Lcb/x;-><init>(FFF)V

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lbb/d;->e:Lcb/d;

    iget-object v2, p0, Lbb/d;->b:[Lcb/x;

    iget-boolean v3, p0, Lbb/d;->f:Z

    invoke-virtual {v0, v2, v1, v3}, Lcb/d;->v([Lcb/y;IZ)Lcb/d;

    :goto_3
    return-void
.end method

.method public e(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "u"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    invoke-virtual {p0, p1, v0}, Lbb/d;->f(FLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public f(FLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "u",
            "out"
        }
    .end annotation

    invoke-virtual {p0}, Lbb/d;->d()V

    iget-object v0, p0, Lbb/d;->e:Lcb/d;

    iget-object v1, p0, Lbb/d;->c:Lcb/x;

    invoke-virtual {v0, v1, p1}, Lcb/d;->w(Lcb/y;F)Lcb/y;

    iget-object p1, p0, Lbb/d;->c:Lcb/x;

    iget v0, p1, Lcb/x;->b:F

    iget v1, p1, Lcb/x;->c:F

    iget p1, p1, Lcb/x;->d:F

    invoke-virtual {p2, v0, v1, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-object p2
.end method

.method public g(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resolution"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    invoke-virtual {p0, p1, v0}, Lbb/d;->h(ILjava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public h(ILjava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resolution",
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;",
            ">;"
        }
    .end annotation

    add-int/lit8 p1, p1, -0x1

    invoke-interface {p2}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    :goto_0
    if-gt v0, p1, :cond_0

    int-to-float v1, v0

    int-to-float v2, p1

    div-float/2addr v1, v2

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    invoke-virtual {p0, v1, v2}, Lbb/d;->f(FLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method public i(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resolution"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "LJAVARuntime/Vector3;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    invoke-virtual {p0, p1, v0}, Lbb/d;->j(ILjava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public j(ILjava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resolution",
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "LJAVARuntime/Vector3;",
            ">;)",
            "Ljava/util/List<",
            "LJAVARuntime/Vector3;",
            ">;"
        }
    .end annotation

    add-int/lit8 p1, p1, -0x1

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    :goto_0
    if-gt v1, p1, :cond_0

    int-to-float v2, v1

    int-to-float v3, p1

    div-float/2addr v2, v3

    invoke-virtual {p0, v2, v0}, Lbb/d;->f(FLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v2, LJAVARuntime/Vector3;

    invoke-direct {v2}, LJAVARuntime/Vector3;-><init>()V

    iget-object v3, v2, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method public k(I)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    iget-object v0, p0, Lbb/d;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-object p1
.end method

.method public l()Z
    .locals 1

    iget-boolean v0, p0, Lbb/d;->f:Z

    return v0
.end method

.method public m()I
    .locals 1

    iget-object v0, p0, Lbb/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public n(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    iget-object v0, p0, Lbb/d;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public o(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vector3"
        }
    .end annotation

    iget-object v0, p0, Lbb/d;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public p(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "continuous"
        }
    .end annotation

    iput-boolean p1, p0, Lbb/d;->f:Z

    iget-object v0, p0, Lbb/d;->e:Lcb/d;

    iget-boolean v1, v0, Lcb/d;->d:Z

    if-eq v1, p1, :cond_0

    iput-boolean p1, v0, Lcb/d;->d:Z

    iget-object v1, p0, Lbb/d;->b:[Lcb/x;

    if-eqz v1, :cond_0

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, p1}, Lcb/d;->v([Lcb/y;IZ)Lcb/d;

    :cond_0
    return-void
.end method

.method public q()LJAVARuntime/NurbsPath3D;
    .locals 1

    iget-object v0, p0, Lbb/d;->h:LJAVARuntime/NurbsPath3D;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/NurbsPath3D;

    invoke-direct {v0, p0}, LJAVARuntime/NurbsPath3D;-><init>(Lbb/d;)V

    iput-object v0, p0, Lbb/d;->h:LJAVARuntime/NurbsPath3D;

    :cond_0
    return-object v0
.end method
