.class public final Lrg/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpg/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrg/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Q:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lpg/n<",
        "TQ;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMutex.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Mutex.kt\nkotlinx/coroutines/sync/MutexImpl$SelectInstanceWithOwner\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,310:1\n1#2:311\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nMutex.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Mutex.kt\nkotlinx/coroutines/sync/MutexImpl$SelectInstanceWithOwner\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,310:1\n1#2:311\n*E\n"
    }
.end annotation


# instance fields
.field public final b:Lpg/n;
    .annotation build LLf/g;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpg/n<",
            "TQ;>;"
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
.method public constructor <init>(Lrg/b;Lpg/n;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Lrg/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lpg/n;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpg/n<",
            "TQ;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lrg/b$b;->d:Lrg/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lrg/b$b;->b:Lpg/n;

    iput-object p3, p0, Lrg/b$b;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getContext()Lyf/j;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lrg/b$b;->b:Lpg/n;

    invoke-interface {v0}, Lpg/m;->getContext()Lyf/j;

    move-result-object v0

    return-object v0
.end method

.method public o(Leg/m0;)V
    .locals 1
    .param p1    # Leg/m0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    iget-object v0, p0, Lrg/b$b;->b:Lpg/n;

    invoke-interface {v0, p1}, Lpg/m;->o(Leg/m0;)V

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

    iget-object v0, p0, Lrg/b$b;->b:Lpg/n;

    invoke-interface {v0, p1, p2}, Leg/y1;->t(Lmg/P;I)V

    return-void
.end method

.method public w(Ljava/lang/Object;)V
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lrg/b;->v()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    iget-object v1, p0, Lrg/b$b;->d:Lrg/b;

    iget-object v2, p0, Lrg/b$b;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lrg/b$b;->b:Lpg/n;

    invoke-interface {v0, p1}, Lpg/m;->w(Ljava/lang/Object;)V

    return-void
.end method

.method public x(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lrg/b$b;->b:Lpg/n;

    invoke-interface {v0, p1, p2}, Lpg/m;->x(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iget-object p2, p0, Lrg/b$b;->d:Lrg/b;

    if-eqz p1, :cond_0

    invoke-static {}, Lrg/b;->v()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    iget-object v1, p0, Lrg/b$b;->c:Ljava/lang/Object;

    invoke-virtual {v0, p2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return p1
.end method
