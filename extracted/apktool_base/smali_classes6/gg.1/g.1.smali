.class public Lgg/g;
.super Leg/a;
.source "SourceFile"

# interfaces
.implements Lgg/B;
.implements Lgg/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Leg/a<",
        "Lnf/P0;",
        ">;",
        "Lgg/B<",
        "TE;>;",
        "Lgg/d<",
        "TE;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBroadcast.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Broadcast.kt\nkotlinx/coroutines/channels/BroadcastCoroutine\n+ 2 JobSupport.kt\nkotlinx/coroutines/JobSupport\n*L\n1#1,202:1\n706#2,2:203\n706#2,2:205\n*S KotlinDebug\n*F\n+ 1 Broadcast.kt\nkotlinx/coroutines/channels/BroadcastCoroutine\n*L\n152#1:203,2\n157#1:205,2\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nBroadcast.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Broadcast.kt\nkotlinx/coroutines/channels/BroadcastCoroutine\n+ 2 JobSupport.kt\nkotlinx/coroutines/JobSupport\n*L\n1#1,202:1\n706#2,2:203\n706#2,2:205\n*S KotlinDebug\n*F\n+ 1 Broadcast.kt\nkotlinx/coroutines/channels/BroadcastCoroutine\n*L\n152#1:203,2\n157#1:205,2\n*E\n"
    }
.end annotation


# instance fields
.field public final e:Lgg/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgg/d<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lyf/j;Lgg/d;Z)V
    .locals 1
    .param p1    # Lyf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lgg/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyf/j;",
            "Lgg/d<",
            "TE;>;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p3}, Leg/a;-><init>(Lyf/j;ZZ)V

    iput-object p2, p0, Lgg/g;->e:Lgg/d;

    sget-object p2, Leg/K0;->y4:Leg/K0$b;

    invoke-interface {p1, p2}, Lyf/j;->get(Lyf/j$c;)Lyf/j$b;

    move-result-object p1

    check-cast p1, Leg/K0;

    invoke-virtual {p0, p1}, Leg/R0;->M0(Leg/K0;)V

    return-void
.end method


# virtual methods
.method public A()Z
    .locals 1

    iget-object v0, p0, Lgg/g;->e:Lgg/d;

    invoke-interface {v0}, Lgg/E;->A()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic A1(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lnf/P0;

    invoke-virtual {p0, p1}, Lgg/g;->D1(Lnf/P0;)V

    return-void
.end method

.method public final C1()Lgg/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lgg/d<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lgg/g;->e:Lgg/d;

    return-object v0
.end method

.method public D1(Lnf/P0;)V
    .locals 2
    .param p1    # Lnf/P0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    iget-object p1, p0, Lgg/g;->e:Lgg/d;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1, v0}, Lgg/E$a;->a(Lgg/E;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    return-void
.end method

.method public F(LMf/l;)V
    .locals 1
    .param p1    # LMf/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LMf/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lnf/P0;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lgg/g;->e:Lgg/d;

    invoke-interface {v0, p1}, Lgg/E;->F(LMf/l;)V

    return-void
.end method

.method public J(Ljava/lang/Throwable;)Z
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lgg/g;->e:Lgg/d;

    invoke-interface {v0, p1}, Lgg/E;->J(Ljava/lang/Throwable;)Z

    move-result p1

    invoke-virtual {p0}, Leg/R0;->start()Z

    return p1
.end method

.method public M(Ljava/lang/Object;Lyf/f;)Ljava/lang/Object;
    .locals 1
    .param p2    # Lyf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lyf/f<",
            "-",
            "Lnf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lgg/g;->e:Lgg/d;

    invoke-interface {v0, p1, p2}, Lgg/E;->M(Ljava/lang/Object;Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/util/concurrent/CancellationException;)V
    .locals 2
    .param p1    # Ljava/util/concurrent/CancellationException;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    new-instance p1, Lkotlinx/coroutines/JobCancellationException;

    invoke-static {p0}, Leg/R0;->T(Leg/R0;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, p0}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Leg/K0;)V

    :cond_0
    invoke-virtual {p0, p1}, Lgg/g;->l0(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final synthetic b(Ljava/lang/Throwable;)Z
    .locals 2
    .annotation runtime Lnf/o;
        level = .enum Lnf/q;->HIDDEN:Lnf/q;
        message = "Since 1.2.0, binary compatibility with versions <= 1.1.x"
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Lkotlinx/coroutines/JobCancellationException;

    invoke-static {p0}, Leg/R0;->T(Leg/R0;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, p0}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Leg/K0;)V

    :cond_0
    invoke-virtual {p0, p1}, Lgg/g;->l0(Ljava/lang/Throwable;)V

    const/4 p1, 0x1

    return p1
.end method

.method public getChannel()Lgg/E;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lgg/E<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    return-object p0
.end method

.method public isActive()Z
    .locals 1

    invoke-super {p0}, Leg/a;->isActive()Z

    move-result v0

    return v0
.end method

.method public j()Lpg/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lpg/i<",
            "TE;",
            "Lgg/E<",
            "TE;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lgg/g;->e:Lgg/d;

    invoke-interface {v0}, Lgg/E;->j()Lpg/i;

    move-result-object v0

    return-object v0
.end method

.method public l0(Ljava/lang/Throwable;)V
    .locals 2
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1, v0}, Leg/R0;->q1(Leg/R0;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/concurrent/CancellationException;

    move-result-object p1

    iget-object v0, p0, Lgg/g;->e:Lgg/d;

    invoke-interface {v0, p1}, Lgg/d;->a(Ljava/util/concurrent/CancellationException;)V

    invoke-virtual {p0, p1}, Leg/R0;->j0(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public m()Lgg/D;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lgg/D<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lgg/g;->e:Lgg/d;

    invoke-interface {v0}, Lgg/d;->m()Lgg/D;

    move-result-object v0

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .annotation runtime Lnf/o;
        level = .enum Lnf/q;->ERROR:Lnf/q;
        message = "Deprecated in the favour of \'trySend\' method"
        replaceWith = .subannotation Lnf/g0;
            expression = "trySend(element).isSuccess"
            imports = {}
        .end subannotation
    .end annotation

    iget-object v0, p0, Lgg/g;->e:Lgg/d;

    invoke-interface {v0, p1}, Lgg/E;->offer(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public p(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lgg/g;->e:Lgg/d;

    invoke-interface {v0, p1}, Lgg/E;->p(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public z1(Ljava/lang/Throwable;Z)V
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    iget-object v0, p0, Lgg/g;->e:Lgg/d;

    invoke-interface {v0, p1}, Lgg/E;->J(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    invoke-virtual {p0}, Leg/a;->getContext()Lyf/j;

    move-result-object p2

    invoke-static {p2, p1}, Leg/O;->b(Lyf/j;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
