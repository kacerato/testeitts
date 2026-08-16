.class public Lcom/itsmagic/engine/Engines/Engine/World/b$f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LLb/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/World/b$f;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/World/b$f;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/World/b$f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/World/b$f$a;->a:Lcom/itsmagic/engine/Engines/Engine/World/b$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/World/b$f$a;->a:Lcom/itsmagic/engine/Engines/Engine/World/b$f;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/World/b$f;->c:Lcom/itsmagic/engine/Engines/Engine/World/b$g;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/World/b$g;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/World/b$f$a;->a:Lcom/itsmagic/engine/Engines/Engine/World/b$f;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/World/b$f;->d:LIc/N;

    invoke-virtual {v0, p1}, LIc/N;->e(Ljava/lang/Object;)V

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/World/b$f$a;->a:Lcom/itsmagic/engine/Engines/Engine/World/b$f;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/World/b$f;->g:Ljava/util/concurrent/atomic/AtomicInteger;

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

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/World/b$f$a;->a:Lcom/itsmagic/engine/Engines/Engine/World/b$f;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/World/b$f;->f:LJAVARuntime/AtomicFloat;

    invoke-virtual {v0, p1}, LJAVARuntime/AtomicFloat;->set(F)V

    return-void
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/World/b$f$a;->a:Lcom/itsmagic/engine/Engines/Engine/World/b$f;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/World/b$f;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/World/b$f$a;->a:Lcom/itsmagic/engine/Engines/Engine/World/b$f;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/World/b$f;->f:LJAVARuntime/AtomicFloat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LJAVARuntime/AtomicFloat;->set(F)V

    return-void
.end method
