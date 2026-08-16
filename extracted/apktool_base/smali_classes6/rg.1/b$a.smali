.class public final Lrg/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leg/p;
.implements Leg/y1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrg/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Leg/p<",
        "Lnf/P0;",
        ">;",
        "Leg/y1;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMutex.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Mutex.kt\nkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,310:1\n1#2:311\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nMutex.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Mutex.kt\nkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,310:1\n1#2:311\n*E\n"
    }
.end annotation


# instance fields
.field public final b:Leg/q;
    .annotation build LLf/g;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Leg/q<",
            "Lnf/P0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Ljava/lang/Object;
    .annotation build LLf/g;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final synthetic d:Lrg/b;


# direct methods
.method public constructor <init>(Lrg/b;Leg/q;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Lrg/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Leg/q;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leg/q<",
            "-",
            "Lnf/P0;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lrg/b$a;->d:Lrg/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lrg/b$a;->b:Leg/q;

    iput-object p3, p0, Lrg/b$a;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public B(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Leg/F0;
    .end annotation

    iget-object v0, p0, Lrg/b$a;->b:Leg/q;

    invoke-virtual {v0, p1}, Leg/q;->B(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic C(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lnf/P0;

    invoke-virtual {p0, p1, p2}, Lrg/b$a;->e(Lnf/P0;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public E(Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Leg/F0;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lrg/b$a;->b:Leg/q;

    invoke-virtual {v0, p1}, Leg/q;->E(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public K(LMf/l;)V
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

    iget-object v0, p0, Lrg/b$a;->b:Leg/q;

    invoke-virtual {v0, p1}, Leg/q;->K(LMf/l;)V

    return-void
.end method

.method public O()V
    .locals 1
    .annotation build Leg/F0;
    .end annotation

    iget-object v0, p0, Lrg/b$a;->b:Leg/q;

    invoke-virtual {v0}, Leg/q;->O()V

    return-void
.end method

.method public a(Lnf/P0;LMf/l;)V
    .locals 2
    .param p1    # Lnf/P0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LMf/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnf/P0;",
            "LMf/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lnf/P0;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lrg/b;->v()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object p2

    iget-object v0, p0, Lrg/b$a;->d:Lrg/b;

    iget-object v1, p0, Lrg/b$a;->c:Ljava/lang/Object;

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p2, p0, Lrg/b$a;->b:Leg/q;

    new-instance v0, Lrg/b$a$a;

    iget-object v1, p0, Lrg/b$a;->d:Lrg/b;

    invoke-direct {v0, v1, p0}, Lrg/b$a$a;-><init>(Lrg/b;Lrg/b$a;)V

    invoke-virtual {p2, p1, v0}, Leg/q;->o(Ljava/lang/Object;LMf/l;)V

    return-void
.end method

.method public b(Ljava/lang/Throwable;)Z
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lrg/b$a;->b:Leg/q;

    invoke-virtual {v0, p1}, Leg/q;->b(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public c(Leg/M;Lnf/P0;)V
    .locals 1
    .param p1    # Leg/M;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lnf/P0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Leg/z0;
    .end annotation

    iget-object v0, p0, Lrg/b$a;->b:Leg/q;

    invoke-virtual {v0, p1, p2}, Leg/q;->x(Leg/M;Ljava/lang/Object;)V

    return-void
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lrg/b$a;->b:Leg/q;

    invoke-virtual {v0}, Leg/q;->d()Z

    move-result v0

    return v0
.end method

.method public e(Lnf/P0;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lnf/P0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Leg/F0;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lrg/b$a;->b:Leg/q;

    invoke-virtual {v0, p1, p2}, Leg/q;->C(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public f(Lnf/P0;Ljava/lang/Object;LMf/l;)Ljava/lang/Object;
    .locals 2
    .param p1    # Lnf/P0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # LMf/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnf/P0;",
            "Ljava/lang/Object;",
            "LMf/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lnf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p3, p0, Lrg/b$a;->d:Lrg/b;

    iget-object v0, p0, Lrg/b$a;->b:Leg/q;

    new-instance v1, Lrg/b$a$b;

    invoke-direct {v1, p3, p0}, Lrg/b$a$b;-><init>(Lrg/b;Lrg/b$a;)V

    invoke-virtual {v0, p1, p2, v1}, Leg/q;->k(Ljava/lang/Object;Ljava/lang/Object;LMf/l;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lrg/b;->v()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object p2

    iget-object p3, p0, Lrg/b$a;->d:Lrg/b;

    iget-object v0, p0, Lrg/b$a;->c:Ljava/lang/Object;

    invoke-virtual {p2, p3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-object p1
.end method

.method public getContext()Lyf/j;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lrg/b$a;->b:Leg/q;

    invoke-virtual {v0}, Leg/q;->getContext()Lyf/j;

    move-result-object v0

    return-object v0
.end method

.method public i(Leg/M;Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Leg/M;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Leg/z0;
    .end annotation

    iget-object v0, p0, Lrg/b$a;->b:Leg/q;

    invoke-virtual {v0, p1, p2}, Leg/q;->i(Leg/M;Ljava/lang/Throwable;)V

    return-void
.end method

.method public isActive()Z
    .locals 1

    iget-object v0, p0, Lrg/b$a;->b:Leg/q;

    invoke-virtual {v0}, Leg/q;->isActive()Z

    move-result v0

    return v0
.end method

.method public isCancelled()Z
    .locals 1

    iget-object v0, p0, Lrg/b$a;->b:Leg/q;

    invoke-virtual {v0}, Leg/q;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic k(Ljava/lang/Object;Ljava/lang/Object;LMf/l;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lnf/P0;

    invoke-virtual {p0, p1, p2, p3}, Lrg/b$a;->f(Lnf/P0;Ljava/lang/Object;LMf/l;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic o(Ljava/lang/Object;LMf/l;)V
    .locals 0

    check-cast p1, Lnf/P0;

    invoke-virtual {p0, p1, p2}, Lrg/b$a;->a(Lnf/P0;LMf/l;)V

    return-void
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    iget-object v0, p0, Lrg/b$a;->b:Leg/q;

    invoke-virtual {v0, p1}, Leg/q;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method public t(Lmg/P;I)V
    .locals 1
    .param p1    # Lmg/P;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmg/P<",
            "*>;I)V"
        }
    .end annotation

    iget-object v0, p0, Lrg/b$a;->b:Leg/q;

    invoke-virtual {v0, p1, p2}, Leg/q;->t(Lmg/P;I)V

    return-void
.end method

.method public bridge synthetic x(Leg/M;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lnf/P0;

    invoke-virtual {p0, p1, p2}, Lrg/b$a;->c(Leg/M;Lnf/P0;)V

    return-void
.end method
