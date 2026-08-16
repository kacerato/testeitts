.class public LJAVARuntime/NurbsPath3D;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "NurbsPath"
    }
.end annotation


# instance fields
.field private transient nurbsPath:Lbb/d;
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
    new-instance v0, Lbb/d;

    invoke-direct {v0}, Lbb/d;-><init>()V

    iput-object v0, p0, LJAVARuntime/NurbsPath3D;->nurbsPath:Lbb/d;

    return-void
.end method

.method public constructor <init>(Lbb/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nurbsPath"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 3
    iput-object p1, p0, LJAVARuntime/NurbsPath3D;->nurbsPath:Lbb/d;

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
            "LJAVARuntime/Vector3;",
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

    check-cast v2, LJAVARuntime/Vector3;

    iget-object v2, v2, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 12
    :cond_0
    new-instance p1, Lbb/d;

    invoke-direct {p1, v0}, Lbb/d;-><init>(Ljava/util/List;)V

    iput-object p1, p0, LJAVARuntime/NurbsPath3D;->nurbsPath:Lbb/d;

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
            "LJAVARuntime/Vector3;",
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

    check-cast v2, LJAVARuntime/Vector3;

    iget-object v2, v2, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 21
    :cond_0
    new-instance p1, Lbb/d;

    invoke-direct {p1, v0, p2}, Lbb/d;-><init>(Ljava/util/List;Z)V

    iput-object p1, p0, LJAVARuntime/NurbsPath3D;->nurbsPath:Lbb/d;

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
    new-instance v0, Lbb/d;

    invoke-direct {v0, p1}, Lbb/d;-><init>(Z)V

    iput-object v0, p0, LJAVARuntime/NurbsPath3D;->nurbsPath:Lbb/d;

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
            "LJAVARuntime/Vector3;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, LJAVARuntime/NurbsPath3D;->nurbsPath:Lbb/d;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LJAVARuntime/Vector3;

    iget-object v2, v2, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1, v2}, Lbb/d;->b(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addPoint(LJAVARuntime/Vector3;)V
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

    iget-object v0, p0, LJAVARuntime/NurbsPath3D;->nurbsPath:Lbb/d;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lbb/d;->b(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    return-void
.end method

.method public evaluate(F)LJAVARuntime/Vector3;
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
    iget-object v0, p0, LJAVARuntime/NurbsPath3D;->nurbsPath:Lbb/d;

    invoke-virtual {v0, p1}, Lbb/d;->e(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public evaluate(FLJAVARuntime/Vector3;)LJAVARuntime/Vector3;
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
    iget-object v0, p0, LJAVARuntime/NurbsPath3D;->nurbsPath:Lbb/d;

    invoke-virtual {v0, p1}, Lbb/d;->e(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    invoke-virtual {p2, v0}, LJAVARuntime/Vector3;->setX(F)V

    .line 4
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result p1

    invoke-virtual {p2, p1}, LJAVARuntime/Vector3;->setY(F)V

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
            "LJAVARuntime/Vector3;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/NurbsPath3D;->nurbsPath:Lbb/d;

    invoke-virtual {v0, p1}, Lbb/d;->i(I)Ljava/util/List;

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
            "LJAVARuntime/Vector3;",
            ">;)",
            "Ljava/util/List<",
            "LJAVARuntime/Vector3;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LJAVARuntime/NurbsPath3D;->nurbsPath:Lbb/d;

    invoke-virtual {v0, p1, p2}, Lbb/d;->j(ILjava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getPoint(I)LJAVARuntime/Vector3;
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

    iget-object v0, p0, LJAVARuntime/NurbsPath3D;->nurbsPath:Lbb/d;

    invoke-virtual {v0, p1}, Lbb/d;->k(I)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public isContinuous()Z
    .locals 1

    iget-object v0, p0, LJAVARuntime/NurbsPath3D;->nurbsPath:Lbb/d;

    invoke-virtual {v0}, Lbb/d;->l()Z

    move-result v0

    return v0
.end method

.method public pointsCount()I
    .locals 1

    iget-object v0, p0, LJAVARuntime/NurbsPath3D;->nurbsPath:Lbb/d;

    invoke-virtual {v0}, Lbb/d;->m()I

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
    iget-object v0, p0, LJAVARuntime/NurbsPath3D;->nurbsPath:Lbb/d;

    invoke-virtual {v0, p1}, Lbb/d;->n(I)V

    return-void
.end method

.method public removePoint(LJAVARuntime/Vector3;)V
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
            "vector3"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/NurbsPath3D;->nurbsPath:Lbb/d;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lbb/d;->o(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

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

    iget-object v0, p0, LJAVARuntime/NurbsPath3D;->nurbsPath:Lbb/d;

    invoke-virtual {v0, p1}, Lbb/d;->p(Z)V

    return-void
.end method
