.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJAVARuntime/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder$e;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lfa/a;

.field public final synthetic c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder$e;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder$e;Lfa/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$path"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder$e$a;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder$e;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder$e$a;->b:Lfa/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lt6/j;->J1()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PathFinder - set pending path"

    invoke-static {v0}, Lt6/j;->S1(Ljava/lang/String;)Lt6/e;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder$e$a;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder$e;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder$e;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder$e$a;->b:Lfa/a;

    invoke-static {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->access$102(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;Lfa/a;)Lfa/a;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder$e$a;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder$e;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder$e;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->access$200(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lt6/j;->P1(Lt6/e;)V

    return-void

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lt6/j;->P1(Lt6/e;)V

    throw v1
.end method
