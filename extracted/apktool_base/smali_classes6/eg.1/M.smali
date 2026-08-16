.class public abstract Leg/M;
.super Lyf/a;
.source "SourceFile"

# interfaces
.implements Lyf/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leg/M$a;
    }
.end annotation


# static fields
.field public static final Key:Leg/M$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Leg/M$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Leg/M$a;-><init>(Lkotlin/jvm/internal/x;)V

    sput-object v0, Leg/M;->Key:Leg/M$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lyf/g;->J8:Lyf/g$b;

    invoke-direct {p0, v0}, Lyf/a;-><init>(Lyf/j$c;)V

    return-void
.end method


# virtual methods
.method public abstract dispatch(Lyf/j;Ljava/lang/Runnable;)V
    .param p1    # Lyf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public dispatchYield(Lyf/j;Ljava/lang/Runnable;)V
    .locals 0
    .param p1    # Lyf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Leg/F0;
    .end annotation

    invoke-virtual {p0, p1, p2}, Leg/M;->dispatch(Lyf/j;Ljava/lang/Runnable;)V

    return-void
.end method

.method public get(Lyf/j$c;)Lyf/j$b;
    .locals 0
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

    invoke-static {p0, p1}, Lyf/g$a;->b(Lyf/g;Lyf/j$c;)Lyf/j$b;

    move-result-object p1

    return-object p1
.end method

.method public final interceptContinuation(Lyf/f;)Lyf/f;
    .locals 1
    .param p1    # Lyf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lyf/f<",
            "-TT;>;)",
            "Lyf/f<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lmg/l;

    invoke-direct {v0, p0, p1}, Lmg/l;-><init>(Leg/M;Lyf/f;)V

    return-object v0
.end method

.method public isDispatchNeeded(Lyf/j;)Z
    .locals 0
    .param p1    # Lyf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const/4 p1, 0x1

    return p1
.end method

.method public limitedParallelism(I)Leg/M;
    .locals 1
    .annotation build Leg/z0;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p1}, Lmg/t;->a(I)V

    new-instance v0, Lmg/s;

    invoke-direct {v0, p0, p1}, Lmg/s;-><init>(Leg/M;I)V

    return-object v0
.end method

.method public minusKey(Lyf/j$c;)Lyf/j;
    .locals 0
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

    invoke-static {p0, p1}, Lyf/g$a;->c(Lyf/g;Lyf/j$c;)Lyf/j;

    move-result-object p1

    return-object p1
.end method

.method public final plus(Leg/M;)Leg/M;
    .locals 0
    .param p1    # Leg/M;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lnf/o;
        level = .enum Lnf/q;->ERROR:Lnf/q;
        message = "Operator \'+\' on two CoroutineDispatcher objects is meaningless. CoroutineDispatcher is a coroutine context element and `+` is a set-sum operator for coroutine contexts. The dispatcher to the right of `+` just replaces the dispatcher to the left."
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    return-object p1
.end method

.method public final releaseInterceptedContinuation(Lyf/f;)V
    .locals 1
    .param p1    # Lyf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyf/f<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->n(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lmg/l;

    invoke-virtual {p1}, Lmg/l;->w()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Leg/W;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Leg/W;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
