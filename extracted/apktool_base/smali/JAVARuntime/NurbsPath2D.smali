.class public LJAVARuntime/NurbsPath2D;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "NurbsPath"
    }
.end annotation


# instance fields
.field private transient nurbsPath2D:Lbb/c;
    .annotation runtime LH6/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime LH6/g;
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 6
    new-instance v0, Lbb/c;

    invoke-direct {v0}, Lbb/c;-><init>()V

    iput-object v0, p0, LJAVARuntime/NurbsPath2D;->nurbsPath2D:Lbb/c;

    return-void
.end method

.method public constructor <init>(Lbb/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nurbsPath2D"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 3
    iput-object p1, p0, LJAVARuntime/NurbsPath2D;->nurbsPath2D:Lbb/c;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 3
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "points"
        }
    .end annotation

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
            "LJAVARuntime/Vector2;",
            ">;)V"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 9
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const/4 v1, 0x0

    .line 10
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 11
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LJAVARuntime/Vector2;

    iget-object v2, v2, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 12
    :cond_0
    new-instance p1, Lbb/c;

    invoke-direct {p1, v0}, Lbb/c;-><init>(Ljava/util/List;)V

    iput-object p1, p0, LJAVARuntime/NurbsPath2D;->nurbsPath2D:Lbb/c;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Z)V
    .locals 3
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "points",
            "continuous"
        }
    .end annotation

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
            "LJAVARuntime/Vector2;",
            ">;Z)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 18
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const/4 v1, 0x0

    .line 19
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 20
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LJAVARuntime/Vector2;

    iget-object v2, v2, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 21
    :cond_0
    new-instance p1, Lbb/c;

    invoke-direct {p1, v0, p2}, Lbb/c;-><init>(Ljava/util/List;Z)V

    iput-object p1, p0, LJAVARuntime/NurbsPath2D;->nurbsPath2D:Lbb/c;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "continuous"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "continuous"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 15
    new-instance v0, Lbb/c;

    invoke-direct {v0, p1}, Lbb/c;-><init>(Z)V

    iput-object v0, p0, LJAVARuntime/NurbsPath2D;->nurbsPath2D:Lbb/c;

    return-void
.end method


# virtual methods
.method public addPath(Ljava/util/List;)V
    .locals 3
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "path"
        }
    .end annotation

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
            "LJAVARuntime/Vector2;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, LJAVARuntime/NurbsPath2D;->nurbsPath2D:Lbb/c;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LJAVARuntime/Vector2;

    iget-object v2, v2, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v1, v2}, Lbb/c;->b(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addPoint(LJAVARuntime/Vector2;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "vector"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vector"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/NurbsPath2D;->nurbsPath2D:Lbb/c;

    iget-object p1, p1, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, p1}, Lbb/c;->b(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    return-void
.end method

.method public evaluate(F)LJAVARuntime/Vector2;
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "u"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/NurbsPath2D;->nurbsPath2D:Lbb/c;

    invoke-virtual {v0, p1}, Lbb/c;->e(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->K0()LJAVARuntime/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public evaluate(FLJAVARuntime/Vector2;)LJAVARuntime/Vector2;
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "out"
        }
    .end annotation

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

    .line 2
    iget-object v0, p0, LJAVARuntime/NurbsPath2D;->nurbsPath2D:Lbb/c;

    invoke-virtual {v0, p1}, Lbb/c;->e(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p1

    .line 3
    iget v0, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    invoke-virtual {p2, v0}, LJAVARuntime/Vector2;->setX(F)V

    .line 4
    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    invoke-virtual {p2, p1}, LJAVARuntime/Vector2;->setY(F)V

    return-object p2
.end method

.method public evaluatePath(I)Ljava/util/List;
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "resolution"
        }
    .end annotation

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

    .line 1
    iget-object v0, p0, LJAVARuntime/NurbsPath2D;->nurbsPath2D:Lbb/c;

    invoke-virtual {v0, p1}, Lbb/c;->i(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public evaluatePath(ILjava/util/List;)Ljava/util/List;
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "resolution",
            "list"
        }
    .end annotation

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

    .line 2
    iget-object v0, p0, LJAVARuntime/NurbsPath2D;->nurbsPath2D:Lbb/c;

    invoke-virtual {v0, p1, p2}, Lbb/c;->j(ILjava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getPoint(I)LJAVARuntime/Vector2;
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "i"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/NurbsPath2D;->nurbsPath2D:Lbb/c;

    invoke-virtual {v0, p1}, Lbb/c;->k(I)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->K0()LJAVARuntime/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public isContinuous()Z
    .locals 1

    iget-object v0, p0, LJAVARuntime/NurbsPath2D;->nurbsPath2D:Lbb/c;

    invoke-virtual {v0}, Lbb/c;->l()Z

    move-result v0

    return v0
.end method

.method public pointsCount()I
    .locals 1

    iget-object v0, p0, LJAVARuntime/NurbsPath2D;->nurbsPath2D:Lbb/c;

    invoke-virtual {v0}, Lbb/c;->m()I

    move-result v0

    return v0
.end method

.method public removePoint(I)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "i"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LJAVARuntime/NurbsPath2D;->nurbsPath2D:Lbb/c;

    invoke-virtual {v0, p1}, Lbb/c;->n(I)V

    return-void
.end method

.method public removePoint(LJAVARuntime/Vector2;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "vector2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vector2"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/NurbsPath2D;->nurbsPath2D:Lbb/c;

    iget-object p1, p1, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, p1}, Lbb/c;->o(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    return-void
.end method

.method public setContinuous(Z)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "continuous"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "continuous"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/NurbsPath2D;->nurbsPath2D:Lbb/c;

    invoke-virtual {v0, p1}, Lbb/c;->p(Z)V

    return-void
.end method
