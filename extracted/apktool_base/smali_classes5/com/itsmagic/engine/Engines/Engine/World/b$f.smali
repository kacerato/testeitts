.class public Lcom/itsmagic/engine/Engines/Engine/World/b$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/World/b;->i(Ljava/lang/String;ZLcom/itsmagic/engine/Engines/Engine/World/b$g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/itsmagic/engine/Engines/Engine/World/b$g;

.field public final synthetic d:LIc/N;

.field public final synthetic e:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic f:LJAVARuntime/AtomicFloat;

.field public final synthetic g:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic h:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/World/b$g;LIc/N;Ljava/util/concurrent/atomic/AtomicInteger;LJAVARuntime/AtomicFloat;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$ipp",
            "val$listener",
            "val$message",
            "val$totalLoaded",
            "val$totalStepLoaded",
            "val$totalLoading",
            "val$finished"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/World/b$f;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/World/b$f;->c:Lcom/itsmagic/engine/Engines/Engine/World/b$g;

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/World/b$f;->d:LIc/N;

    iput-object p4, p0, Lcom/itsmagic/engine/Engines/Engine/World/b$f;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p5, p0, Lcom/itsmagic/engine/Engines/Engine/World/b$f;->f:LJAVARuntime/AtomicFloat;

    iput-object p6, p0, Lcom/itsmagic/engine/Engines/Engine/World/b$f;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p7, p0, Lcom/itsmagic/engine/Engines/Engine/World/b$f;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/World/b$f;->b:Ljava/lang/String;

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, LX7/a;->s(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->T(Ljava/lang/String;ZZ)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/World/b$f;->b:Ljava/lang/String;

    invoke-static {v3, v2}, LTc/b;->w(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->E1(Ljava/lang/String;)V

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/World/World$c;

    invoke-direct {v3}, Lcom/itsmagic/engine/Engines/Engine/World/World$c;-><init>()V

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/World/b$f$a;

    invoke-direct {v4, p0}, Lcom/itsmagic/engine/Engines/Engine/World/b$f$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/World/b$f;)V

    iget-object v5, v3, Lcom/itsmagic/engine/Engines/Engine/World/World$c;->b:Ljava/util/List;

    invoke-virtual {v0, v5}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->P(Ljava/util/List;)I

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/World/b$f;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    iget v6, v3, Lcom/itsmagic/engine/Engines/Engine/World/World$c;->a:I

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/World/b$f;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v5, v3, Lcom/itsmagic/engine/Engines/Engine/World/World$c;->b:Ljava/util/List;

    new-instance v6, Lcom/itsmagic/engine/Engines/Engine/World/b$f$b;

    invoke-direct {v6, p0, v4, v3}, Lcom/itsmagic/engine/Engines/Engine/World/b$f$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/World/b$f;LLb/a;Lcom/itsmagic/engine/Engines/Engine/World/World$c;)V

    invoke-interface {v5, v6}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    iget-object v3, v3, Lcom/itsmagic/engine/Engines/Engine/World/World$c;->c:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    iput-boolean v1, v4, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->c:Z

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->Q1()V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/World/b$f;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/World/b$f;->c:Lcom/itsmagic/engine/Engines/Engine/World/b$g;

    if-eqz v1, :cond_2

    invoke-interface {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/World/b$g;->a(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    :cond_2
    return-void
.end method
