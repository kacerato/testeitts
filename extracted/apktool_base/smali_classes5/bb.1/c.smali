.class public Lbb/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;",
            ">;"
        }
    .end annotation
.end field

.field public b:[Lcb/w;

.field public final c:Lcb/w;

.field public final d:Lcb/w;

.field public final e:Lcb/d;

.field public f:Z

.field public g:I

.field public h:LJAVARuntime/NurbsPath2D;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lbb/c;->a:Ljava/util/List;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lbb/c;->b:[Lcb/w;

    .line 4
    new-instance v0, Lcb/w;

    invoke-direct {v0}, Lcb/w;-><init>()V

    iput-object v0, p0, Lbb/c;->c:Lcb/w;

    .line 5
    new-instance v0, Lcb/w;

    invoke-direct {v0}, Lcb/w;-><init>()V

    iput-object v0, p0, Lbb/c;->d:Lcb/w;

    .line 6
    new-instance v0, Lcb/d;

    invoke-direct {v0}, Lcb/d;-><init>()V

    iput-object v0, p0, Lbb/c;->e:Lcb/d;

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lbb/c;->f:Z

    const/4 v0, 0x3

    .line 8
    iput v0, p0, Lbb/c;->g:I

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
            "Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;",
            ">;)V"
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lbb/c;->a:Ljava/util/List;

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lbb/c;->b:[Lcb/w;

    .line 12
    new-instance v0, Lcb/w;

    invoke-direct {v0}, Lcb/w;-><init>()V

    iput-object v0, p0, Lbb/c;->c:Lcb/w;

    .line 13
    new-instance v0, Lcb/w;

    invoke-direct {v0}, Lcb/w;-><init>()V

    iput-object v0, p0, Lbb/c;->d:Lcb/w;

    .line 14
    new-instance v0, Lcb/d;

    invoke-direct {v0}, Lcb/d;-><init>()V

    iput-object v0, p0, Lbb/c;->e:Lcb/d;

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lbb/c;->f:Z

    const/4 v0, 0x3

    .line 16
    iput v0, p0, Lbb/c;->g:I

    .line 17
    iput-object p1, p0, Lbb/c;->a:Ljava/util/List;

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
            "Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;",
            ">;Z)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lbb/c;->a:Ljava/util/List;

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lbb/c;->b:[Lcb/w;

    .line 29
    new-instance v0, Lcb/w;

    invoke-direct {v0}, Lcb/w;-><init>()V

    iput-object v0, p0, Lbb/c;->c:Lcb/w;

    .line 30
    new-instance v0, Lcb/w;

    invoke-direct {v0}, Lcb/w;-><init>()V

    iput-object v0, p0, Lbb/c;->d:Lcb/w;

    .line 31
    new-instance v0, Lcb/d;

    invoke-direct {v0}, Lcb/d;-><init>()V

    iput-object v0, p0, Lbb/c;->e:Lcb/d;

    const/4 v0, 0x3

    .line 32
    iput v0, p0, Lbb/c;->g:I

    .line 33
    iput-object p1, p0, Lbb/c;->a:Ljava/util/List;

    .line 34
    iput-boolean p2, p0, Lbb/c;->f:Z

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

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lbb/c;->a:Ljava/util/List;

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lbb/c;->b:[Lcb/w;

    .line 21
    new-instance v0, Lcb/w;

    invoke-direct {v0}, Lcb/w;-><init>()V

    iput-object v0, p0, Lbb/c;->c:Lcb/w;

    .line 22
    new-instance v0, Lcb/w;

    invoke-direct {v0}, Lcb/w;-><init>()V

    iput-object v0, p0, Lbb/c;->d:Lcb/w;

    .line 23
    new-instance v0, Lcb/d;

    invoke-direct {v0}, Lcb/d;-><init>()V

    iput-object v0, p0, Lbb/c;->e:Lcb/d;

    const/4 v0, 0x3

    .line 24
    iput v0, p0, Lbb/c;->g:I

    .line 25
    iput-boolean p1, p0, Lbb/c;->f:Z

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
            "Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lbb/c;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public b(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vector"
        }
    .end annotation

    iget-object v0, p0, Lbb/c;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lbb/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final d()V
    .locals 5

    iget-object v0, p0, Lbb/c;->b:[Lcb/w;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    array-length v0, v0

    iget-object v2, p0, Lbb/c;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v0, v2, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lbb/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lbb/c;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget-object v2, p0, Lbb/c;->b:[Lcb/w;

    aget-object v2, v2, v1

    iget v3, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    invoke-virtual {v2, v3, v0}, Lcb/w;->U0(FF)Lcb/w;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lbb/c;->e:Lcb/d;

    iget-object v1, p0, Lbb/c;->b:[Lcb/w;

    iget v2, p0, Lbb/c;->g:I

    iget-boolean v3, p0, Lbb/c;->f:Z

    invoke-virtual {v0, v1, v2, v3}, Lcb/d;->v([Lcb/y;IZ)Lcb/d;

    goto :goto_3

    :cond_2
    :goto_1
    iget-object v0, p0, Lbb/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcb/w;

    iput-object v0, p0, Lbb/c;->b:[Lcb/w;

    :goto_2
    iget-object v0, p0, Lbb/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lbb/c;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget-object v2, p0, Lbb/c;->b:[Lcb/w;

    new-instance v3, Lcb/w;

    iget v4, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    invoke-direct {v3, v4, v0}, Lcb/w;-><init>(FF)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lbb/c;->e:Lcb/d;

    iget-object v1, p0, Lbb/c;->b:[Lcb/w;

    iget v2, p0, Lbb/c;->g:I

    iget-boolean v3, p0, Lbb/c;->f:Z

    invoke-virtual {v0, v1, v2, v3}, Lcb/d;->v([Lcb/y;IZ)Lcb/d;

    :goto_3
    return-void
.end method

.method public e(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "u"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>()V

    invoke-virtual {p0, p1, v0}, Lbb/c;->f(FLcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public f(FLcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
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

    invoke-virtual {p0}, Lbb/c;->d()V

    iget-object v0, p0, Lbb/c;->e:Lcb/d;

    iget-object v1, p0, Lbb/c;->c:Lcb/w;

    invoke-virtual {v0, v1, p1}, Lcb/d;->w(Lcb/y;F)Lcb/y;

    iget-object p1, p0, Lbb/c;->c:Lcb/w;

    iget v0, p1, Lcb/w;->b:F

    iget p1, p1, Lcb/w;->c:F

    invoke-virtual {p2, v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->w0(FF)V

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
            "Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {p0, p1, v0}, Lbb/c;->h(ILjava/util/List;)Ljava/util/List;

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
            "Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;",
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

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>()V

    invoke-virtual {p0, v1, v2}, Lbb/c;->f(FLcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

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
            "LJAVARuntime/Vector2;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {p0, p1, v0}, Lbb/c;->j(ILjava/util/List;)Ljava/util/List;

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
            "LJAVARuntime/Vector2;",
            ">;)",
            "Ljava/util/List<",
            "LJAVARuntime/Vector2;",
            ">;"
        }
    .end annotation

    add-int/lit8 p1, p1, -0x1

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    :goto_0
    if-gt v1, p1, :cond_0

    int-to-float v2, v1

    int-to-float v3, p1

    div-float/2addr v2, v3

    invoke-virtual {p0, v2, v0}, Lbb/c;->f(FLcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    new-instance v2, LJAVARuntime/Vector2;

    invoke-direct {v2}, LJAVARuntime/Vector2;-><init>()V

    iget-object v3, v2, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v3, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method public k(I)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    iget-object v0, p0, Lbb/c;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    return-object p1
.end method

.method public l()Z
    .locals 1

    iget-boolean v0, p0, Lbb/c;->f:Z

    return v0
.end method

.method public m()I
    .locals 1

    iget-object v0, p0, Lbb/c;->a:Ljava/util/List;

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

    iget-object v0, p0, Lbb/c;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public o(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vector2"
        }
    .end annotation

    iget-object v0, p0, Lbb/c;->a:Ljava/util/List;

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

    iput-boolean p1, p0, Lbb/c;->f:Z

    iget-object v0, p0, Lbb/c;->e:Lcb/d;

    iget-boolean v1, v0, Lcb/d;->d:Z

    if-eq v1, p1, :cond_0

    iput-boolean p1, v0, Lcb/d;->d:Z

    iget-object v1, p0, Lbb/c;->b:[Lcb/w;

    if-eqz v1, :cond_0

    iget v2, p0, Lbb/c;->g:I

    invoke-virtual {v0, v1, v2, p1}, Lcb/d;->v([Lcb/y;IZ)Lcb/d;

    :cond_0
    return-void
.end method

.method public q()LJAVARuntime/NurbsPath2D;
    .locals 1

    iget-object v0, p0, Lbb/c;->h:LJAVARuntime/NurbsPath2D;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/NurbsPath2D;

    invoke-direct {v0, p0}, LJAVARuntime/NurbsPath2D;-><init>(Lbb/c;)V

    iput-object v0, p0, Lbb/c;->h:LJAVARuntime/NurbsPath2D;

    :cond_0
    return-object v0
.end method
