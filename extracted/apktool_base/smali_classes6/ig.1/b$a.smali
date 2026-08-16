.class public final Lig/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lig/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lig/b$a$a;
    }
.end annotation


# static fields
.field public static final g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final synthetic f:Lig/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lig/b<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private volatile load:I
    .annotation runtime LLf/x;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lig/b$a;

    const-string v1, "load"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lig/b$a;->g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lig/b;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    iput-object p1, p0, Lig/b$a;->f:Lig/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lig/b$a;->a:I

    invoke-static {p2}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lig/b$a;->b:I

    mul-int/lit8 p1, p2, 0x2

    div-int/lit8 p1, p1, 0x3

    iput p1, p0, Lig/b$a;->c:I

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object p1, p0, Lig/b$a;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object p1, p0, Lig/b$a;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    return-void
.end method

.method public static final synthetic a(Lig/b$a;)I
    .locals 0

    iget p0, p0, Lig/b$a;->a:I

    return p0
.end method

.method public static final synthetic b(Lig/b$a;)Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .locals 0

    iget-object p0, p0, Lig/b$a;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    return-object p0
.end method

.method public static final synthetic c(Lig/b$a;)Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .locals 0

    iget-object p0, p0, Lig/b$a;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    return-object p0
.end method

.method public static synthetic i(Lig/b$a;Ljava/lang/Object;Ljava/lang/Object;Lig/k;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lig/b$a;->h(Ljava/lang/Object;Ljava/lang/Object;Lig/k;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final d(Lig/k;)V
    .locals 2
    .param p1    # Lig/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lig/k<",
            "*>;)V"
        }
    .end annotation

    iget v0, p1, Lig/k;->a:I

    invoke-virtual {p0, v0}, Lig/b$a;->f(I)I

    move-result v0

    :goto_0
    iget-object v1, p0, Lig/b$a;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lig/k;

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-ne v1, p1, :cond_1

    invoke-virtual {p0, v0}, Lig/b$a;->k(I)V

    return-void

    :cond_1
    if-nez v0, :cond_2

    iget v0, p0, Lig/b$a;->a:I

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public final e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lig/b$a;->f(I)I

    move-result v0

    :goto_0
    iget-object v1, p0, Lig/b$a;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lig/k;

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p1, p0, Lig/b$a;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lig/l;

    if-eqz v0, :cond_1

    check-cast p1, Lig/l;

    iget-object p1, p1, Lig/l;->a:Ljava/lang/Object;

    :cond_1
    return-object p1

    :cond_2
    if-nez v1, :cond_3

    invoke-virtual {p0, v0}, Lig/b$a;->k(I)V

    :cond_3
    if-nez v0, :cond_4

    iget v0, p0, Lig/b$a;->a:I

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public final f(I)I
    .locals 1

    const v0, -0x61c88647

    mul-int/2addr p1, v0

    iget v0, p0, Lig/b$a;->b:I

    ushr-int/2addr p1, v0

    return p1
.end method

.method public final g(LMf/p;)Ljava/util/Iterator;
    .locals 1
    .param p1    # LMf/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "LMf/p<",
            "-TK;-TV;+TE;>;)",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lig/b$a$a;

    invoke-direct {v0, p0, p1}, Lig/b$a$a;-><init>(Lig/b$a;LMf/p;)V

    return-object v0
.end method

.method public final h(Ljava/lang/Object;Ljava/lang/Object;Lig/k;)Ljava/lang/Object;
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lig/k;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lig/k<",
            "TK;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lig/b$a;->f(I)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lig/b$a;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lig/k;

    if-nez v2, :cond_5

    const/4 v2, 0x0

    if-nez p2, :cond_0

    return-object v2

    :cond_0
    if-nez v1, :cond_3

    sget-object v3, Lig/b$a;->g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    :cond_1
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v1

    iget v4, p0, Lig/b$a;->c:I

    if-lt v1, v4, :cond_2

    invoke-static {}, Lig/c;->a()Lmg/T;

    move-result-object p1

    return-object p1

    :cond_2
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, p0, v1, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :cond_3
    if-nez p3, :cond_4

    new-instance p3, Lig/k;

    iget-object v3, p0, Lig/b$a;->f:Lig/b;

    invoke-static {v3}, Lig/b;->n(Lig/b;)Ljava/lang/ref/ReferenceQueue;

    move-result-object v3

    invoke-direct {p3, p1, v3}, Lig/k;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    :cond_4
    iget-object v3, p0, Lig/b$a;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-static {v3, v0, v2, p3}, Lcom/google/common/util/concurrent/C0;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_0

    :cond_5
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    if-eqz v1, :cond_6

    sget-object p1, Lig/b$a;->g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    :cond_6
    iget-object p1, p0, Lig/b$a;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p3, p1, Lig/l;

    if-eqz p3, :cond_7

    invoke-static {}, Lig/c;->a()Lmg/T;

    move-result-object p1

    return-object p1

    :cond_7
    iget-object p3, p0, Lig/b$a;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-static {p3, v0, p1, p2}, Lcom/google/common/util/concurrent/C0;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    return-object p1

    :cond_8
    if-nez v2, :cond_9

    invoke-virtual {p0, v0}, Lig/b$a;->k(I)V

    :cond_9
    if-nez v0, :cond_a

    iget v0, p0, Lig/b$a;->a:I

    :cond_a
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public final j()Lig/b$a;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lig/b<",
            "TK;TV;>.a;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    :cond_0
    iget-object v0, p0, Lig/b$a;->f:Lig/b;

    invoke-virtual {v0}, Lpf/i;->size()I

    move-result v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, LVf/u;->w(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    mul-int/2addr v0, v1

    new-instance v1, Lig/b$a;

    iget-object v2, p0, Lig/b$a;->f:Lig/b;

    invoke-direct {v1, v2, v0}, Lig/b$a;-><init>(Lig/b;I)V

    iget v0, p0, Lig/b$a;->a:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_5

    iget-object v3, p0, Lig/b$a;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lig/k;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v3, :cond_2

    if-nez v4, :cond_2

    invoke-virtual {p0, v2}, Lig/b$a;->k(I)V

    :cond_2
    iget-object v5, p0, Lig/b$a;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v5, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Lig/l;

    if-eqz v6, :cond_3

    check-cast v5, Lig/l;

    iget-object v5, v5, Lig/l;->a:Ljava/lang/Object;

    goto :goto_2

    :cond_3
    iget-object v6, p0, Lig/b$a;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-static {v5}, Lig/c;->b(Ljava/lang/Object;)Lig/l;

    move-result-object v7

    invoke-static {v6, v2, v5, v7}, Lcom/google/common/util/concurrent/C0;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    :goto_2
    if-eqz v4, :cond_4

    if-eqz v5, :cond_4

    invoke-virtual {v1, v4, v5, v3}, Lig/b$a;->h(Ljava/lang/Object;Ljava/lang/Object;Lig/k;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {}, Lig/c;->a()Lmg/T;

    move-result-object v4

    if-eq v3, v4, :cond_0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-object v1
.end method

.method public final k(I)V
    .locals 3

    :cond_0
    iget-object v0, p0, Lig/b$a;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    instance-of v1, v0, Lig/l;

    if-eqz v1, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Lig/b$a;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v2, 0x0

    invoke-static {v1, p1, v0, v2}, Lcom/google/common/util/concurrent/C0;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lig/b$a;->f:Lig/b;

    invoke-static {p1}, Lig/b;->l(Lig/b;)V

    return-void
.end method

.method public final l(Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;LMf/l;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;",
            "LMf/l<",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    :cond_0
    invoke-virtual {p1, p3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, LMf/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p1, p3, v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method
