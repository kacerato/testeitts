.class public abstract LBf/d;
.super LBf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nContinuationImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ContinuationImpl.kt\nkotlin/coroutines/jvm/internal/ContinuationImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,169:1\n1#2:170\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nContinuationImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ContinuationImpl.kt\nkotlin/coroutines/jvm/internal/ContinuationImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,169:1\n1#2:170\n*E\n"
    }
.end annotation

.annotation build Lnf/l0;
    version = "1.3"
.end annotation


# instance fields
.field private final _context:Lyf/j;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private transient intercepted:Lyf/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyf/f<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lyf/f;)V
    .locals 1
    .param p1    # Lyf/f;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyf/f<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Lyf/f;->getContext()Lyf/j;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, LBf/d;-><init>(Lyf/f;Lyf/j;)V

    return-void
.end method

.method public constructor <init>(Lyf/f;Lyf/j;)V
    .locals 0
    .param p1    # Lyf/f;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lyf/j;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyf/f<",
            "Ljava/lang/Object;",
            ">;",
            "Lyf/j;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, LBf/a;-><init>(Lyf/f;)V

    .line 2
    iput-object p2, p0, LBf/d;->_context:Lyf/j;

    return-void
.end method


# virtual methods
.method public getContext()Lyf/j;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, LBf/d;->_context:Lyf/j;

    invoke-static {v0}, Lkotlin/jvm/internal/M;->m(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final intercepted()Lyf/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lyf/f<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, LBf/d;->intercepted:Lyf/f;

    if-nez v0, :cond_2

    invoke-virtual {p0}, LBf/d;->getContext()Lyf/j;

    move-result-object v0

    sget-object v1, Lyf/g;->J8:Lyf/g$b;

    invoke-interface {v0, v1}, Lyf/j;->get(Lyf/j$c;)Lyf/j$b;

    move-result-object v0

    check-cast v0, Lyf/g;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lyf/g;->interceptContinuation(Lyf/f;)Lyf/f;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, p0

    :cond_1
    iput-object v0, p0, LBf/d;->intercepted:Lyf/f;

    :cond_2
    return-object v0
.end method

.method public releaseIntercepted()V
    .locals 3

    iget-object v0, p0, LBf/d;->intercepted:Lyf/f;

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    invoke-virtual {p0}, LBf/d;->getContext()Lyf/j;

    move-result-object v1

    sget-object v2, Lyf/g;->J8:Lyf/g$b;

    invoke-interface {v1, v2}, Lyf/j;->get(Lyf/j$c;)Lyf/j$b;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/M;->m(Ljava/lang/Object;)V

    check-cast v1, Lyf/g;

    invoke-interface {v1, v0}, Lyf/g;->releaseInterceptedContinuation(Lyf/f;)V

    :cond_0
    sget-object v0, LBf/c;->b:LBf/c;

    iput-object v0, p0, LBf/d;->intercepted:Lyf/f;

    return-void
.end method
