.class public Lcom/itsmagic/engine/Engines/Engine/World/a$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LLb/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/World/a;->q()LLb/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/World/a;->c()LAc/b;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/World/a;->c()LAc/b;

    move-result-object v1

    invoke-virtual {v1, p1}, LAc/b;->u0(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public c()V
    .locals 1

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/World/a;->f()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public d(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/World/a;->e()LJAVARuntime/AtomicFloat;

    move-result-object v0

    invoke-virtual {v0, p1}, LJAVARuntime/AtomicFloat;->set(F)V

    return-void
.end method

.method public e()V
    .locals 2

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/World/a;->d()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/World/a;->e()LJAVARuntime/AtomicFloat;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LJAVARuntime/AtomicFloat;->set(F)V

    return-void
.end method
