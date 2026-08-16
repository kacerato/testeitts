.class public final Lcom/google/common/collect/u;
.super Lcom/google/common/collect/q;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/google/common/collect/X;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/u$h;,
        Lcom/google/common/collect/u$g;,
        Lcom/google/common/collect/u$f;,
        Lcom/google/common/collect/u$e;,
        Lcom/google/common/collect/u$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/q<",
        "TR;TC;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation

.annotation build Lv2/a;
.end annotation

.annotation build Lv2/b;
    emulated = true
.end annotation


# static fields
.field public static final k:J


# instance fields
.field public final d:Lcom/google/common/collect/g1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/g1<",
            "TR;>;"
        }
    .end annotation
.end field

.field public final e:Lcom/google/common/collect/g1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/g1<",
            "TC;>;"
        }
    .end annotation
.end field

.field public final f:Lcom/google/common/collect/i1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/i1<",
            "TR;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lcom/google/common/collect/i1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/i1<",
            "TC;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final h:[[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[[TV;"
        }
    .end annotation
.end field

.field public transient i:Lcom/google/common/collect/u$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/u<",
            "TR;TC;TV;>.f;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public transient j:Lcom/google/common/collect/u$h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/u<",
            "TR;TC;TV;>.h;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/collect/S2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/S2<",
            "TR;TC;+TV;>;)V"
        }
    .end annotation

    .line 10
    invoke-interface {p1}, Lcom/google/common/collect/S2;->x()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/S2;->d0()Ljava/util/Set;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/u;-><init>(Ljava/lang/Iterable;Ljava/lang/Iterable;)V

    .line 11
    invoke-virtual {p0, p1}, Lcom/google/common/collect/u;->Y(Lcom/google/common/collect/S2;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/u;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/u<",
            "TR;TC;TV;>;)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Lcom/google/common/collect/q;-><init>()V

    .line 13
    iget-object v0, p1, Lcom/google/common/collect/u;->d:Lcom/google/common/collect/g1;

    iput-object v0, p0, Lcom/google/common/collect/u;->d:Lcom/google/common/collect/g1;

    .line 14
    iget-object v1, p1, Lcom/google/common/collect/u;->e:Lcom/google/common/collect/g1;

    iput-object v1, p0, Lcom/google/common/collect/u;->e:Lcom/google/common/collect/g1;

    .line 15
    iget-object v2, p1, Lcom/google/common/collect/u;->f:Lcom/google/common/collect/i1;

    iput-object v2, p0, Lcom/google/common/collect/u;->f:Lcom/google/common/collect/i1;

    .line 16
    iget-object v2, p1, Lcom/google/common/collect/u;->g:Lcom/google/common/collect/i1;

    iput-object v2, p0, Lcom/google/common/collect/u;->g:Lcom/google/common/collect/i1;

    .line 17
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    aput v0, v2, v1

    const-class v0, Ljava/lang/Object;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/Object;

    .line 18
    iput-object v0, p0, Lcom/google/common/collect/u;->h:[[Ljava/lang/Object;

    move v2, v1

    .line 19
    :goto_0
    iget-object v3, p0, Lcom/google/common/collect/u;->d:Lcom/google/common/collect/g1;

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 20
    iget-object v3, p1, Lcom/google/common/collect/u;->h:[[Ljava/lang/Object;

    aget-object v3, v3, v2

    aget-object v4, v0, v2

    array-length v5, v3

    invoke-static {v3, v1, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/Iterable;Ljava/lang/Iterable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TR;>;",
            "Ljava/lang/Iterable<",
            "+TC;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/q;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/common/collect/g1;->p(Ljava/lang/Iterable;)Lcom/google/common/collect/g1;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/u;->d:Lcom/google/common/collect/g1;

    .line 3
    invoke-static {p2}, Lcom/google/common/collect/g1;->p(Ljava/lang/Iterable;)Lcom/google/common/collect/g1;

    move-result-object p2

    iput-object p2, p0, Lcom/google/common/collect/u;->e:Lcom/google/common/collect/g1;

    .line 4
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lw2/H;->d(Z)V

    .line 5
    invoke-static {p1}, Lcom/google/common/collect/Q1;->Q(Ljava/util/Collection;)Lcom/google/common/collect/i1;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/u;->f:Lcom/google/common/collect/i1;

    .line 6
    invoke-static {p2}, Lcom/google/common/collect/Q1;->Q(Ljava/util/Collection;)Lcom/google/common/collect/i1;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/u;->g:Lcom/google/common/collect/i1;

    .line 7
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result p1

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->size()I

    move-result p2

    const/4 v0, 0x2

    new-array v0, v0, [I

    aput p2, v0, v3

    aput p1, v0, v2

    const-class p1, Ljava/lang/Object;

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[Ljava/lang/Object;

    .line 8
    iput-object p1, p0, Lcom/google/common/collect/u;->h:[[Ljava/lang/Object;

    .line 9
    invoke-virtual {p0}, Lcom/google/common/collect/u;->s()V

    return-void
.end method

.method public static synthetic f(Lcom/google/common/collect/u;I)Lcom/google/common/collect/S2$a;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/common/collect/u;->v(I)Lcom/google/common/collect/S2$a;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lcom/google/common/collect/u;)Lcom/google/common/collect/g1;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/u;->e:Lcom/google/common/collect/g1;

    return-object p0
.end method

.method public static synthetic i(Lcom/google/common/collect/u;)Lcom/google/common/collect/g1;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/u;->d:Lcom/google/common/collect/g1;

    return-object p0
.end method

.method public static synthetic j(Lcom/google/common/collect/u;)Lcom/google/common/collect/i1;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/u;->f:Lcom/google/common/collect/i1;

    return-object p0
.end method

.method public static synthetic k(Lcom/google/common/collect/u;)Lcom/google/common/collect/i1;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/u;->g:Lcom/google/common/collect/i1;

    return-object p0
.end method

.method public static synthetic l(Lcom/google/common/collect/u;I)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/common/collect/u;->w(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static p(Lcom/google/common/collect/S2;)Lcom/google/common/collect/u;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/S2<",
            "TR;TC;+TV;>;)",
            "Lcom/google/common/collect/u<",
            "TR;TC;TV;>;"
        }
    .end annotation

    instance-of v0, p0, Lcom/google/common/collect/u;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/common/collect/u;

    check-cast p0, Lcom/google/common/collect/u;

    invoke-direct {v0, p0}, Lcom/google/common/collect/u;-><init>(Lcom/google/common/collect/u;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/collect/u;

    invoke-direct {v0, p0}, Lcom/google/common/collect/u;-><init>(Lcom/google/common/collect/S2;)V

    :goto_0
    return-object v0
.end method

.method public static q(Ljava/lang/Iterable;Ljava/lang/Iterable;)Lcom/google/common/collect/u;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TR;>;",
            "Ljava/lang/Iterable<",
            "+TC;>;)",
            "Lcom/google/common/collect/u<",
            "TR;TC;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/u;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/u;-><init>(Ljava/lang/Iterable;Ljava/lang/Iterable;)V

    return-object v0
.end method

.method private v(I)Lcom/google/common/collect/S2$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/S2$a<",
            "TR;TC;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/u$b;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/u$b;-><init>(Lcom/google/common/collect/u;I)V

    return-object v0
.end method

.method private w(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/u;->e:Lcom/google/common/collect/g1;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    div-int v0, p1, v0

    iget-object v1, p0, Lcom/google/common/collect/u;->e:Lcom/google/common/collect/g1;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    rem-int/2addr p1, v1

    invoke-virtual {p0, v0, p1}, Lcom/google/common/collect/u;->m(II)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public A()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TC;",
            "Ljava/util/Map<",
            "TR;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/u;->i:Lcom/google/common/collect/u$f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/u$f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/u$f;-><init>(Lcom/google/common/collect/u;Lcom/google/common/collect/u$a;)V

    iput-object v0, p0, Lcom/google/common/collect/u;->i:Lcom/google/common/collect/u$f;

    :cond_0
    return-object v0
.end method

.method public B(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Ljava/util/Map<",
            "TR;TV;>;"
        }
    .end annotation

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/common/collect/u;->g:Lcom/google/common/collect/i1;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/i1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Lcom/google/common/collect/u$e;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/u$e;-><init>(Lcom/google/common/collect/u;I)V

    return-object v0
.end method

.method public C(IILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p3    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITV;)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/u;->d:Lcom/google/common/collect/g1;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-static {p1, v0}, Lw2/H;->C(II)I

    iget-object v0, p0, Lcom/google/common/collect/u;->e:Lcom/google/common/collect/g1;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-static {p2, v0}, Lw2/H;->C(II)I

    iget-object v0, p0, Lcom/google/common/collect/u;->h:[[Ljava/lang/Object;

    aget-object p1, v0, p1

    aget-object v0, p1, p2

    aput-object p3, p1, p2

    return-object v0
.end method

.method public D(Ljava/lang/Class;)[[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TV;>;)[[TV;"
        }
    .end annotation

    .annotation build Lv2/c;
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/u;->d:Lcom/google/common/collect/g1;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/u;->e:Lcom/google/common/collect/g1;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[Ljava/lang/Object;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/common/collect/u;->d:Lcom/google/common/collect/g1;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/google/common/collect/u;->h:[[Ljava/lang/Object;

    aget-object v2, v2, v1

    aget-object v3, p1, v1

    array-length v4, v2

    invoke-static {v2, v0, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public L(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p3    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TC;TV;)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/common/collect/u;->f:Lcom/google/common/collect/i1;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/i1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    const-string v4, "Row %s not in %s"

    iget-object v5, p0, Lcom/google/common/collect/u;->d:Lcom/google/common/collect/g1;

    invoke-static {v3, v4, p1, v5}, Lw2/H;->y(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/common/collect/u;->g:Lcom/google/common/collect/i1;

    invoke-virtual {p1, p2}, Lcom/google/common/collect/i1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    move v1, v2

    :cond_1
    const-string v2, "Column %s not in %s"

    iget-object v3, p0, Lcom/google/common/collect/u;->e:Lcom/google/common/collect/g1;

    invoke-static {v1, v2, p2, v3}, Lw2/H;->y(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p2, p1, p3}, Lcom/google/common/collect/u;->C(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public Q(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/google/common/collect/u;->e0(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/google/common/collect/u;->g(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public Y(Lcom/google/common/collect/S2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/S2<",
            "+TR;+TC;+TV;>;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/google/common/collect/q;->Y(Lcom/google/common/collect/S2;)V

    return-void
.end method

.method public a()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/common/collect/S2$a<",
            "TR;TC;TV;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/u$a;

    invoke-virtual {p0}, Lcom/google/common/collect/u;->size()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/u$a;-><init>(Lcom/google/common/collect/u;I)V

    return-object v0
.end method

.method public c0()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/common/collect/S2$a<",
            "TR;TC;TV;>;>;"
        }
    .end annotation

    invoke-super {p0}, Lcom/google/common/collect/q;->c0()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 1
    .annotation build LI2/e;
        value = "Always throws UnsupportedOperationException"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 8
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/common/collect/u;->h:[[Ljava/lang/Object;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    array-length v5, v4

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    invoke-static {p1, v7}, Lw2/B;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public d()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/u$c;

    invoke-virtual {p0}, Lcom/google/common/collect/u;->size()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/u$c;-><init>(Lcom/google/common/collect/u;I)V

    return-object v0
.end method

.method public bridge synthetic d0()Ljava/util/Set;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/u;->o()Lcom/google/common/collect/r1;

    move-result-object v0

    return-object v0
.end method

.method public e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/u;->f:Lcom/google/common/collect/i1;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/i1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    iget-object v0, p0, Lcom/google/common/collect/u;->g:Lcom/google/common/collect/i1;

    invoke-virtual {v0, p2}, Lcom/google/common/collect/i1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/u;->m(II)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public e0(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/common/collect/u;->f:Lcom/google/common/collect/i1;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/i1;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/google/common/collect/q;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public g(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/common/collect/u;->g:Lcom/google/common/collect/i1;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/i1;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    invoke-super {p0}, Lcom/google/common/collect/q;->hashCode()I

    move-result v0

    return v0
.end method

.method public i0(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)",
            "Ljava/util/Map<",
            "TC;TV;>;"
        }
    .end annotation

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/common/collect/u;->f:Lcom/google/common/collect/i1;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/i1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Lcom/google/common/collect/u$g;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/u$g;-><init>(Lcom/google/common/collect/u;I)V

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/u;->d:Lcom/google/common/collect/g1;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/u;->e:Lcom/google/common/collect/g1;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public m(II)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/u;->d:Lcom/google/common/collect/g1;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-static {p1, v0}, Lw2/H;->C(II)I

    iget-object v0, p0, Lcom/google/common/collect/u;->e:Lcom/google/common/collect/g1;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-static {p2, v0}, Lw2/H;->C(II)I

    iget-object v0, p0, Lcom/google/common/collect/u;->h:[[Ljava/lang/Object;

    aget-object p1, v0, p1

    aget-object p1, p1, p2

    return-object p1
.end method

.method public n()Lcom/google/common/collect/g1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/g1<",
            "TC;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/u;->e:Lcom/google/common/collect/g1;

    return-object v0
.end method

.method public o()Lcom/google/common/collect/r1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/r1<",
            "TC;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/u;->g:Lcom/google/common/collect/i1;

    invoke-virtual {v0}, Lcom/google/common/collect/i1;->x()Lcom/google/common/collect/r1;

    move-result-object v0

    return-object v0
.end method

.method public r(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/u;->f:Lcom/google/common/collect/i1;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/i1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    iget-object v0, p0, Lcom/google/common/collect/u;->g:Lcom/google/common/collect/i1;

    invoke-virtual {v0, p2}, Lcom/google/common/collect/i1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/common/collect/u;->C(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    return-object v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation build LI2/a;
    .end annotation

    .annotation build LI2/e;
        value = "Always throws UnsupportedOperationException"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public s()V
    .locals 5

    iget-object v0, p0, Lcom/google/common/collect/u;->h:[[Ljava/lang/Object;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public size()I
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/u;->d:Lcom/google/common/collect/g1;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/u;->e:Lcom/google/common/collect/g1;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/google/common/collect/q;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TR;",
            "Ljava/util/Map<",
            "TC;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/u;->j:Lcom/google/common/collect/u$h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/u$h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/u$h;-><init>(Lcom/google/common/collect/u;Lcom/google/common/collect/u$a;)V

    iput-object v0, p0, Lcom/google/common/collect/u;->j:Lcom/google/common/collect/u$h;

    :cond_0
    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    invoke-super {p0}, Lcom/google/common/collect/q;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic x()Ljava/util/Set;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/u;->z()Lcom/google/common/collect/r1;

    move-result-object v0

    return-object v0
.end method

.method public y()Lcom/google/common/collect/g1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/g1<",
            "TR;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/u;->d:Lcom/google/common/collect/g1;

    return-object v0
.end method

.method public z()Lcom/google/common/collect/r1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/r1<",
            "TR;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/u;->f:Lcom/google/common/collect/i1;

    invoke-virtual {v0}, Lcom/google/common/collect/i1;->x()Lcom/google/common/collect/r1;

    move-result-object v0

    return-object v0
.end method
