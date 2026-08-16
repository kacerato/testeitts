.class public LIb/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LIb/b$a;
    }
.end annotation


# instance fields
.field public a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LIb/b$a;",
            ">;"
        }
    .end annotation
.end field

.field public c:LJAVARuntime/CompoundVertex;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, LIb/b;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)LIb/b$a;
    .locals 2
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

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->o0()Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    move-result-object p2

    new-instance v0, LIb/b$a;

    invoke-direct {v0, p1, p2}, LIb/b$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;Lcom/itsmagic/engine/Engines/Engine/Vector/f;)V

    iget-object v1, p0, LIb/b;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->j1()I

    move-result v1

    invoke-static {v0, v1}, LIb/b$a;->b(LIb/b$a;I)I

    iget-object v1, p0, LIb/b;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->y0()I

    move-result v1

    invoke-static {v0, v1}, LIb/b$a;->d(LIb/b$a;I)I

    iget-object v1, p0, LIb/b;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->G0()I

    move-result v1

    invoke-static {v0, v1}, LIb/b$a;->f(LIb/b$a;I)I

    iget-object v1, p0, LIb/b;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v1, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->x(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;Lcom/itsmagic/engine/Engines/Engine/Vector/f;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->Y()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object p1

    iput-object p1, p0, LIb/b;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    :goto_0
    iget-object p1, p0, LIb/b;->b:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public b()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    .locals 2

    iget-object v0, p0, LIb/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LIb/b;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No bake yet, please add at least one vertex"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, LIb/b;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    iget-object v0, p0, LIb/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LIb/b$a;

    invoke-static {v1}, LIb/b$a;->h(LIb/b$a;)Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    move-result-object v1

    iget-object v2, p0, LIb/b;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v2, v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->x(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;Lcom/itsmagic/engine/Engines/Engine/Vector/f;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->Y()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v1

    iput-object v1, p0, LIb/b;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public d(LIb/b$a;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "part"
        }
    .end annotation

    iget-object v0, p0, LIb/b;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    if-eqz v0, :cond_0

    invoke-static {p1}, LIb/b$a;->g(LIb/b$a;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v1

    invoke-static {p1}, LIb/b$a;->h(LIb/b$a;)Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    move-result-object v2

    invoke-static {p1}, LIb/b$a;->a(LIb/b$a;)I

    move-result v3

    invoke-static {p1}, LIb/b$a;->c(LIb/b$a;)I

    move-result v4

    invoke-static {p1}, LIb/b$a;->e(LIb/b$a;)I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->J1(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;Lcom/itsmagic/engine/Engines/Engine/Vector/f;III)V

    :cond_0
    return-void
.end method

.method public e(LIb/b$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "part"
        }
    .end annotation

    iget-object v0, p0, LIb/b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, LIb/b;->c()V

    :cond_0
    return-void
.end method

.method public f(Ljava/util/List;)V
    .locals 1
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
            "LIb/b$a;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, LIb/b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, LIb/b;->c()V

    return-void
.end method

.method public g(LJAVARuntime/CompoundVertex;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "run"
        }
    .end annotation

    iput-object p1, p0, LIb/b;->c:LJAVARuntime/CompoundVertex;

    return-void
.end method

.method public h()LJAVARuntime/CompoundVertex;
    .locals 1

    iget-object v0, p0, LIb/b;->c:LJAVARuntime/CompoundVertex;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/CompoundVertex;

    invoke-direct {v0, p0}, LJAVARuntime/CompoundVertex;-><init>(LIb/b;)V

    iput-object v0, p0, LIb/b;->c:LJAVARuntime/CompoundVertex;

    :cond_0
    return-object v0
.end method
