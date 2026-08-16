.class public LJAVARuntime/CompoundVertex;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LJAVARuntime/CompoundVertex$Part;
    }
.end annotation


# instance fields
.field public transient instance:LIb/b;
    .annotation runtime LH6/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    new-instance v0, LIb/b;

    invoke-direct {v0}, LIb/b;-><init>()V

    invoke-direct {p0, v0}, LJAVARuntime/CompoundVertex;-><init>(LIb/b;)V

    return-void
.end method

.method public constructor <init>(LIb/b;)V
    .locals 0
    .annotation runtime LH6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 3
    iput-object p1, p0, LJAVARuntime/CompoundVertex;->instance:LIb/b;

    .line 4
    invoke-virtual {p1, p0}, LIb/b;->g(LJAVARuntime/CompoundVertex;)V

    return-void
.end method


# virtual methods
.method public addVertex(LJAVARuntime/Vertex;LJAVARuntime/Transform;)LJAVARuntime/CompoundVertex$Part;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vertex",
            "transform"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/CompoundVertex;->instance:LIb/b;

    iget-object p1, p1, LJAVARuntime/Vertex;->vertex:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    iget-object p2, p2, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0, p1, p2}, LIb/b;->a(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)LIb/b$a;

    move-result-object p1

    invoke-virtual {p1}, LIb/b$a;->l()LJAVARuntime/CompoundVertex$Part;

    move-result-object p1

    return-object p1
.end method

.method public getBake()LJAVARuntime/Vertex;
    .locals 1

    iget-object v0, p0, LJAVARuntime/CompoundVertex;->instance:LIb/b;

    invoke-virtual {v0}, LIb/b;->b()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->x2()LJAVARuntime/Vertex;

    move-result-object v0

    return-object v0
.end method

.method public refreshMatrix(LJAVARuntime/CompoundVertex$Part;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "part"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/CompoundVertex;->instance:LIb/b;

    iget-object p1, p1, LJAVARuntime/CompoundVertex$Part;->instance:LIb/b$a;

    invoke-virtual {v0, p1}, LIb/b;->d(LIb/b$a;)V

    return-void
.end method

.method public remove(LJAVARuntime/CompoundVertex$Part;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "part"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/CompoundVertex;->instance:LIb/b;

    iget-object p1, p1, LJAVARuntime/CompoundVertex$Part;->instance:LIb/b$a;

    invoke-virtual {v0, p1}, LIb/b;->e(LIb/b$a;)V

    return-void
.end method

.method public removeAll(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parts"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LJAVARuntime/CompoundVertex$Part;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LJAVARuntime/CompoundVertex$Part;

    iget-object v1, v1, LJAVARuntime/CompoundVertex$Part;->instance:LIb/b$a;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, LJAVARuntime/CompoundVertex;->instance:LIb/b;

    invoke-virtual {p1, v0}, LIb/b;->f(Ljava/util/List;)V

    return-void
.end method
