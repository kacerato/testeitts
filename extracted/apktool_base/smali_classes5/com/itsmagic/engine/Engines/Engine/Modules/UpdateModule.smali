.class public Lcom/itsmagic/engine/Engines/Engine/Modules/UpdateModule;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/Modules/UpdateModule$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

.field public final c:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;


# direct methods
.method public constructor <init>()V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Modules/UpdateModule;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Modules/UpdateModule$1;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/itsmagic/engine/Engines/Engine/Modules/UpdateModule$1;-><init>(Lcom/itsmagic/engine/Engines/Engine/Modules/UpdateModule;ZZZZ)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Modules/UpdateModule;->c:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Modules/UpdateModule;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Modules/UpdateModule;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Modules/UpdateModule;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Modules/UpdateModule;->c:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->r(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Modules/UpdateModule;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v0}, LK8/a;->L(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    :cond_1
    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Modules/UpdateModule;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Modules/UpdateModule;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_0

    invoke-static {v0}, LK8/a;->D(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Modules/UpdateModule;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    :cond_0
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/itsmagic/engine/Engines/Engine/Modules/UpdateModule$a;
    .end annotation

    const-string v0, "Engine-Module"

    return-object v0
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Modules/UpdateModule;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public e()V
    .locals 0
    .annotation runtime Lcom/itsmagic/engine/Engines/Engine/Modules/UpdateModule$a;
    .end annotation

    return-void
.end method

.method public f()V
    .locals 0
    .annotation runtime Lcom/itsmagic/engine/Engines/Engine/Modules/UpdateModule$a;
    .end annotation

    return-void
.end method

.method public g()V
    .locals 0
    .annotation runtime Lcom/itsmagic/engine/Engines/Engine/Modules/UpdateModule$a;
    .end annotation

    return-void
.end method

.method public h()V
    .locals 0
    .annotation runtime Lcom/itsmagic/engine/Engines/Engine/Modules/UpdateModule$a;
    .end annotation

    return-void
.end method
