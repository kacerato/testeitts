.class public final Lsg/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leg/Z;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsg/c;->e(Lv1/k;Lv1/b;)Leg/Z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Leg/Z<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Leg/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Leg/y<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Leg/y;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leg/y<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsg/c$b;->b:Leg/y;

    return-void
.end method


# virtual methods
.method public G()Ljava/lang/Throwable;
    .locals 1
    .annotation build Leg/z0;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lsg/c$b;->b:Leg/y;

    invoke-interface {v0}, Leg/Z;->G()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public Q()Ljava/util/concurrent/CancellationException;
    .locals 1
    .annotation build Leg/F0;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lsg/c$b;->b:Leg/y;

    invoke-interface {v0}, Leg/K0;->Q()Ljava/util/concurrent/CancellationException;

    move-result-object v0

    return-object v0
.end method

.method public S(ZZLMf/l;)Leg/m0;
    .locals 1
    .param p3    # LMf/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "LMf/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lnf/P0;",
            ">;)",
            "Leg/m0;"
        }
    .end annotation

    .annotation build Leg/F0;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lsg/c$b;->b:Leg/y;

    invoke-interface {v0, p1, p2, p3}, Leg/K0;->S(ZZLMf/l;)Leg/m0;

    move-result-object p1

    return-object p1
.end method

.method public Y()Lpg/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lpg/g<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lsg/c$b;->b:Leg/y;

    invoke-interface {v0}, Leg/Z;->Y()Lpg/g;

    move-result-object v0

    return-object v0
.end method

.method public Z(Lyf/f;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lyf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyf/f<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lsg/c$b;->b:Leg/y;

    invoke-interface {v0, p1}, Leg/Z;->Z(Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/util/concurrent/CancellationException;)V
    .locals 1
    .param p1    # Ljava/util/concurrent/CancellationException;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lsg/c$b;->b:Leg/y;

    invoke-interface {v0, p1}, Leg/K0;->a(Ljava/util/concurrent/CancellationException;)V

    return-void
.end method

.method public synthetic b(Ljava/lang/Throwable;)Z
    .locals 1
    .annotation runtime Lnf/o;
        level = .enum Lnf/q;->HIDDEN:Lnf/q;
        message = "Since 1.2.0, binary compatibility with versions <= 1.1.x"
    .end annotation

    iget-object v0, p0, Lsg/c$b;->b:Leg/y;

    invoke-interface {v0, p1}, Leg/K0;->b(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public c0(Lyf/f;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lyf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyf/f<",
            "-",
            "Lnf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lsg/c$b;->b:Leg/y;

    invoke-interface {v0, p1}, Leg/K0;->c0(Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic cancel()V
    .locals 1
    .annotation runtime Lnf/o;
        level = .enum Lnf/q;->HIDDEN:Lnf/q;
        message = "Since 1.2.0, binary compatibility with versions <= 1.1.x"
    .end annotation

    iget-object v0, p0, Lsg/c$b;->b:Leg/y;

    invoke-interface {v0}, Leg/K0;->cancel()V

    return-void
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lsg/c$b;->b:Leg/y;

    invoke-interface {v0}, Leg/K0;->d()Z

    move-result v0

    return v0
.end method

.method public e()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation build Leg/z0;
    .end annotation

    iget-object v0, p0, Lsg/c$b;->b:Leg/y;

    invoke-interface {v0}, Leg/Z;->e()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public f(Leg/x;)Leg/v;
    .locals 1
    .param p1    # Leg/x;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Leg/F0;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lsg/c$b;->b:Leg/y;

    invoke-interface {v0, p1}, Leg/K0;->f(Leg/x;)Leg/v;

    move-result-object p1

    return-object p1
.end method

.method public fold(Ljava/lang/Object;LMf/p;)Ljava/lang/Object;
    .locals 1
    .param p2    # LMf/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "LMf/p<",
            "-TR;-",
            "Lyf/j$b;",
            "+TR;>;)TR;"
        }
    .end annotation

    iget-object v0, p0, Lsg/c$b;->b:Leg/y;

    invoke-interface {v0, p1, p2}, Lyf/j$b;->fold(Ljava/lang/Object;LMf/p;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Lyf/j$c;)Lyf/j$b;
    .locals 1
    .param p1    # Lyf/j$c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lyf/j$b;",
            ">(",
            "Lyf/j$c<",
            "TE;>;)TE;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lsg/c$b;->b:Leg/y;

    invoke-interface {v0, p1}, Lyf/j$b;->get(Lyf/j$c;)Lyf/j$b;

    move-result-object p1

    return-object p1
.end method

.method public getChildren()LXf/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LXf/m<",
            "Leg/K0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lsg/c$b;->b:Leg/y;

    invoke-interface {v0}, Leg/K0;->getChildren()LXf/m;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Lyf/j$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lyf/j$c<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lsg/c$b;->b:Leg/y;

    invoke-interface {v0}, Lyf/j$b;->getKey()Lyf/j$c;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Leg/K0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lsg/c$b;->b:Leg/y;

    invoke-interface {v0}, Leg/K0;->getParent()Leg/K0;

    move-result-object v0

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    iget-object v0, p0, Lsg/c$b;->b:Leg/y;

    invoke-interface {v0}, Leg/K0;->isActive()Z

    move-result v0

    return v0
.end method

.method public isCancelled()Z
    .locals 1

    iget-object v0, p0, Lsg/c$b;->b:Leg/y;

    invoke-interface {v0}, Leg/K0;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public minusKey(Lyf/j$c;)Lyf/j;
    .locals 1
    .param p1    # Lyf/j$c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyf/j$c<",
            "*>;)",
            "Lyf/j;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lsg/c$b;->b:Leg/y;

    invoke-interface {v0, p1}, Lyf/j$b;->minusKey(Lyf/j$c;)Lyf/j;

    move-result-object p1

    return-object p1
.end method

.method public plus(Lyf/j;)Lyf/j;
    .locals 1
    .param p1    # Lyf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lsg/c$b;->b:Leg/y;

    invoke-interface {v0, p1}, Lyf/j;->plus(Lyf/j;)Lyf/j;

    move-result-object p1

    return-object p1
.end method

.method public start()Z
    .locals 1

    iget-object v0, p0, Lsg/c$b;->b:Leg/y;

    invoke-interface {v0}, Leg/K0;->start()Z

    move-result v0

    return v0
.end method

.method public w(LMf/l;)Leg/m0;
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
            ">;)",
            "Leg/m0;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lsg/c$b;->b:Leg/y;

    invoke-interface {v0, p1}, Leg/K0;->w(LMf/l;)Leg/m0;

    move-result-object p1

    return-object p1
.end method

.method public y(Leg/K0;)Leg/K0;
    .locals 1
    .param p1    # Leg/K0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lnf/o;
        level = .enum Lnf/q;->ERROR:Lnf/q;
        message = "Operator \'+\' on two Job objects is meaningless. Job is a coroutine context element and `+` is a set-sum operator for coroutine contexts. The job to the right of `+` just replaces the job the left of `+`."
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lsg/c$b;->b:Leg/y;

    invoke-interface {v0, p1}, Leg/K0;->y(Leg/K0;)Leg/K0;

    move-result-object p1

    return-object p1
.end method

.method public z()Lpg/e;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lsg/c$b;->b:Leg/y;

    invoke-interface {v0}, Leg/K0;->z()Lpg/e;

    move-result-object v0

    return-object v0
.end method
