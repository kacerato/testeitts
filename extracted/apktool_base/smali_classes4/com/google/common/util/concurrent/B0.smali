.class public abstract Lcom/google/common/util/concurrent/B0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/common/util/concurrent/A;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/B0$e;,
        Lcom/google/common/util/concurrent/B0$d;,
        Lcom/google/common/util/concurrent/B0$c;,
        Lcom/google/common/util/concurrent/B0$g;,
        Lcom/google/common/util/concurrent/B0$b;,
        Lcom/google/common/util/concurrent/B0$f;,
        Lcom/google/common/util/concurrent/B0$h;,
        Lcom/google/common/util/concurrent/B0$i;,
        Lcom/google/common/util/concurrent/B0$j;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation build Lv2/a;
.end annotation

.annotation build Lv2/c;
.end annotation


# static fields
.field public static final a:I = 0x400

.field public static final b:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/common/util/concurrent/B0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/common/util/concurrent/B0;-><init>()V

    return-void
.end method

.method public static synthetic a(I)Ljava/util/concurrent/Semaphore;
    .locals 0

    invoke-static {p0}, Lcom/google/common/util/concurrent/B0;->n(I)Ljava/util/concurrent/Semaphore;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b()Ljava/util/concurrent/locks/Lock;
    .locals 1

    invoke-static {}, Lcom/google/common/util/concurrent/B0;->l()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c(I)Ljava/util/concurrent/Semaphore;
    .locals 0

    invoke-static {p0}, Lcom/google/common/util/concurrent/B0;->m(I)Ljava/util/concurrent/Semaphore;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(I)I
    .locals 0

    invoke-static {p0}, Lcom/google/common/util/concurrent/B0;->g(I)I

    move-result p0

    return p0
.end method

.method public static synthetic e(I)I
    .locals 0

    invoke-static {p0}, Lcom/google/common/util/concurrent/B0;->w(I)I

    move-result p0

    return p0
.end method

.method public static g(I)I
    .locals 1

    sget-object v0, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {p0, v0}, LE2/f;->p(ILjava/math/RoundingMode;)I

    move-result p0

    const/4 v0, 0x1

    shl-int p0, v0, p0

    return p0
.end method

.method public static h(ILw2/Q;)Lcom/google/common/util/concurrent/B0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(I",
            "Lw2/Q<",
            "T",
            "L;",
            ">;)",
            "Lcom/google/common/util/concurrent/B0<",
            "T",
            "L;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/util/concurrent/B0$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/common/util/concurrent/B0$b;-><init>(ILw2/Q;Lcom/google/common/util/concurrent/B0$a;)V

    return-object v0
.end method

.method public static synthetic l()Ljava/util/concurrent/locks/Lock;
    .locals 2

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    return-object v0
.end method

.method public static synthetic m(I)Ljava/util/concurrent/Semaphore;
    .locals 2

    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    return-object v0
.end method

.method public static synthetic n(I)Ljava/util/concurrent/Semaphore;
    .locals 1

    new-instance v0, Lcom/google/common/util/concurrent/B0$e;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/B0$e;-><init>(I)V

    return-object v0
.end method

.method public static o(ILw2/Q;)Lcom/google/common/util/concurrent/B0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(I",
            "Lw2/Q<",
            "T",
            "L;",
            ">;)",
            "Lcom/google/common/util/concurrent/B0<",
            "T",
            "L;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x400

    if-ge p0, v0, :cond_0

    new-instance v0, Lcom/google/common/util/concurrent/B0$g;

    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/B0$g;-><init>(ILw2/Q;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/util/concurrent/B0$c;

    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/B0$c;-><init>(ILw2/Q;)V

    :goto_0
    return-object v0
.end method

.method public static p(I)Lcom/google/common/util/concurrent/B0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/util/concurrent/B0<",
            "Ljava/util/concurrent/locks/Lock;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/util/concurrent/z0;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/z0;-><init>()V

    invoke-static {p0, v0}, Lcom/google/common/util/concurrent/B0;->o(ILw2/Q;)Lcom/google/common/util/concurrent/B0;

    move-result-object p0

    return-object p0
.end method

.method public static q(I)Lcom/google/common/util/concurrent/B0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/util/concurrent/B0<",
            "Ljava/util/concurrent/locks/ReadWriteLock;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/util/concurrent/v0;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/v0;-><init>()V

    invoke-static {p0, v0}, Lcom/google/common/util/concurrent/B0;->o(ILw2/Q;)Lcom/google/common/util/concurrent/B0;

    move-result-object p0

    return-object p0
.end method

.method public static r(II)Lcom/google/common/util/concurrent/B0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/util/concurrent/B0<",
            "Ljava/util/concurrent/Semaphore;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/util/concurrent/y0;

    invoke-direct {v0, p1}, Lcom/google/common/util/concurrent/y0;-><init>(I)V

    invoke-static {p0, v0}, Lcom/google/common/util/concurrent/B0;->o(ILw2/Q;)Lcom/google/common/util/concurrent/B0;

    move-result-object p0

    return-object p0
.end method

.method public static s(I)Lcom/google/common/util/concurrent/B0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/util/concurrent/B0<",
            "Ljava/util/concurrent/locks/Lock;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/util/concurrent/w0;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/w0;-><init>()V

    invoke-static {p0, v0}, Lcom/google/common/util/concurrent/B0;->h(ILw2/Q;)Lcom/google/common/util/concurrent/B0;

    move-result-object p0

    return-object p0
.end method

.method public static t(I)Lcom/google/common/util/concurrent/B0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/util/concurrent/B0<",
            "Ljava/util/concurrent/locks/ReadWriteLock;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/util/concurrent/A0;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/A0;-><init>()V

    invoke-static {p0, v0}, Lcom/google/common/util/concurrent/B0;->h(ILw2/Q;)Lcom/google/common/util/concurrent/B0;

    move-result-object p0

    return-object p0
.end method

.method public static u(II)Lcom/google/common/util/concurrent/B0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/util/concurrent/B0<",
            "Ljava/util/concurrent/Semaphore;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/util/concurrent/x0;

    invoke-direct {v0, p1}, Lcom/google/common/util/concurrent/x0;-><init>(I)V

    invoke-static {p0, v0}, Lcom/google/common/util/concurrent/B0;->h(ILw2/Q;)Lcom/google/common/util/concurrent/B0;

    move-result-object p0

    return-object p0
.end method

.method public static w(I)I
    .locals 2

    ushr-int/lit8 v0, p0, 0x14

    ushr-int/lit8 v1, p0, 0xc

    xor-int/2addr v0, v1

    xor-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x7

    xor-int/2addr v0, p0

    ushr-int/lit8 p0, p0, 0x4

    xor-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public f(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Iterable<",
            "T",
            "L;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/collect/M1;->r(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/common/collect/g1;->x()Lcom/google/common/collect/g1;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/common/util/concurrent/B0;->k(Ljava/lang/Object;)I

    move-result v3

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    aget v2, v0, v1

    invoke-virtual {p0, v2}, Lcom/google/common/util/concurrent/B0;->j(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    aget v3, v0, v1

    if-ne v3, v2, :cond_2

    add-int/lit8 v3, v1, -0x1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v3}, Lcom/google/common/util/concurrent/B0;->j(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v2, v3

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public abstract i(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")T",
            "L;"
        }
    .end annotation
.end method

.method public abstract j(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)T",
            "L;"
        }
    .end annotation
.end method

.method public abstract k(Ljava/lang/Object;)I
.end method

.method public abstract v()I
.end method
