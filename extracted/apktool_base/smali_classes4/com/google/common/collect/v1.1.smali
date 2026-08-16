.class public abstract Lcom/google/common/collect/v1;
.super Lcom/google/common/collect/w1;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/K2;


# annotations
.annotation runtime Lcom/google/common/collect/X;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/v1$b;,
        Lcom/google/common/collect/v1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/w1<",
        "TE;>;",
        "Lcom/google/common/collect/K2<",
        "TE;>;"
    }
.end annotation

.annotation build Lv2/c;
.end annotation


# instance fields
.field public transient e:Lcom/google/common/collect/v1;
    .annotation runtime LJ2/b;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/v1<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/collect/w1;-><init>()V

    return-void
.end method

.method public static M(Ljava/lang/Iterable;)Lcom/google/common/collect/v1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Lcom/google/common/collect/v1<",
            "TE;>;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/Ordering;->A()Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/common/collect/v1;->N(Ljava/util/Comparator;Ljava/lang/Iterable;)Lcom/google/common/collect/v1;

    move-result-object p0

    return-object p0
.end method

.method public static N(Ljava/util/Comparator;Ljava/lang/Iterable;)Lcom/google/common/collect/v1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TE;>;",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Lcom/google/common/collect/v1<",
            "TE;>;"
        }
    .end annotation

    instance-of v0, p1, Lcom/google/common/collect/v1;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/google/common/collect/v1;

    invoke-virtual {v0}, Lcom/google/common/collect/v1;->comparator()Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Comparator;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/google/common/collect/c1;->h()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/google/common/collect/n1;->u()Lcom/google/common/collect/r1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/r1;->a()Lcom/google/common/collect/g1;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/common/collect/v1;->S(Ljava/util/Comparator;Ljava/util/Collection;)Lcom/google/common/collect/v1;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/google/common/collect/v1$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/v1$a;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {v0, p1}, Lcom/google/common/collect/v1$a;->q(Ljava/lang/Iterable;)Lcom/google/common/collect/v1$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/collect/v1$a;->t()Lcom/google/common/collect/v1;

    move-result-object p0

    return-object p0
.end method

.method public static O(Ljava/util/Comparator;Ljava/util/Iterator;)Lcom/google/common/collect/v1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TE;>;",
            "Ljava/util/Iterator<",
            "+TE;>;)",
            "Lcom/google/common/collect/v1<",
            "TE;>;"
        }
    .end annotation

    invoke-static {p0}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/common/collect/v1$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/v1$a;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {v0, p1}, Lcom/google/common/collect/v1$a;->r(Ljava/util/Iterator;)Lcom/google/common/collect/v1$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/collect/v1$a;->t()Lcom/google/common/collect/v1;

    move-result-object p0

    return-object p0
.end method

.method public static P(Ljava/util/Iterator;)Lcom/google/common/collect/v1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TE;>;)",
            "Lcom/google/common/collect/v1<",
            "TE;>;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/Ordering;->A()Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/common/collect/v1;->O(Ljava/util/Comparator;Ljava/util/Iterator;)Lcom/google/common/collect/v1;

    move-result-object p0

    return-object p0
.end method

.method public static Q([Ljava/lang/Comparable;)Lcom/google/common/collect/v1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable<",
            "-TE;>;>([TE;)",
            "Lcom/google/common/collect/v1<",
            "TE;>;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/Ordering;->A()Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/google/common/collect/v1;->N(Ljava/util/Comparator;Ljava/lang/Iterable;)Lcom/google/common/collect/v1;

    move-result-object p0

    return-object p0
.end method

.method public static R(Lcom/google/common/collect/K2;)Lcom/google/common/collect/v1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/K2<",
            "TE;>;)",
            "Lcom/google/common/collect/v1<",
            "TE;>;"
        }
    .end annotation

    invoke-interface {p0}, Lcom/google/common/collect/K2;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/common/collect/K2;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/M1;->r(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/google/common/collect/v1;->S(Ljava/util/Comparator;Ljava/util/Collection;)Lcom/google/common/collect/v1;

    move-result-object p0

    return-object p0
.end method

.method public static S(Ljava/util/Comparator;Ljava/util/Collection;)Lcom/google/common/collect/v1;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TE;>;",
            "Ljava/util/Collection<",
            "Lcom/google/common/collect/V1$a<",
            "TE;>;>;)",
            "Lcom/google/common/collect/v1<",
            "TE;>;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/google/common/collect/v1;->V(Ljava/util/Comparator;)Lcom/google/common/collect/v1;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/common/collect/g1$a;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/g1$a;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [J

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/common/collect/V1$a;

    invoke-interface {v5}, Lcom/google/common/collect/V1$a;->getElement()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/google/common/collect/g1$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/g1$a;

    add-int/lit8 v6, v4, 0x1

    aget-wide v7, v1, v4

    invoke-interface {v5}, Lcom/google/common/collect/V1$a;->getCount()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v7, v4

    aput-wide v7, v1, v6

    move v4, v6

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/google/common/collect/u2;

    new-instance v4, Lcom/google/common/collect/v2;

    invoke-virtual {v0}, Lcom/google/common/collect/g1$a;->n()Lcom/google/common/collect/g1;

    move-result-object v0

    invoke-direct {v4, v0, p0}, Lcom/google/common/collect/v2;-><init>(Lcom/google/common/collect/g1;Ljava/util/Comparator;)V

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p0

    invoke-direct {v2, v4, v1, v3, p0}, Lcom/google/common/collect/u2;-><init>(Lcom/google/common/collect/v2;[JII)V

    return-object v2
.end method

.method public static V(Ljava/util/Comparator;)Lcom/google/common/collect/v1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TE;>;)",
            "Lcom/google/common/collect/v1<",
            "TE;>;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/Ordering;->A()Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/google/common/collect/u2;->k:Lcom/google/common/collect/v1;

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/common/collect/u2;

    invoke-direct {v0, p0}, Lcom/google/common/collect/u2;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static X()Lcom/google/common/collect/v1$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable<",
            "*>;>()",
            "Lcom/google/common/collect/v1$a<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/v1$a;

    invoke-static {}, Lcom/google/common/collect/Ordering;->A()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/v1$a;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static Y()Lcom/google/common/collect/v1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/v1<",
            "TE;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/collect/u2;->k:Lcom/google/common/collect/v1;

    return-object v0
.end method

.method public static Z(Ljava/lang/Comparable;)Lcom/google/common/collect/v1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable<",
            "-TE;>;>(TE;)",
            "Lcom/google/common/collect/v1<",
            "TE;>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/common/collect/x1;->i0(Ljava/lang/Comparable;)Lcom/google/common/collect/x1;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/v2;

    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    new-instance v1, Lcom/google/common/collect/u2;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/google/common/collect/u2;-><init>(Lcom/google/common/collect/v2;[JII)V

    return-object v1

    :array_0
    .array-data 8
        0x0
        0x1
    .end array-data
.end method

.method public static a0(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/v1;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable<",
            "-TE;>;>(TE;TE;)",
            "Lcom/google/common/collect/v1<",
            "TE;>;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/Ordering;->A()Lcom/google/common/collect/Ordering;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Comparable;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/google/common/collect/v1;->N(Ljava/util/Comparator;Ljava/lang/Iterable;)Lcom/google/common/collect/v1;

    move-result-object p0

    return-object p0
.end method

.method public static b0(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/v1;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable<",
            "-TE;>;>(TE;TE;TE;)",
            "Lcom/google/common/collect/v1<",
            "TE;>;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/Ordering;->A()Lcom/google/common/collect/Ordering;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Comparable;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/google/common/collect/v1;->N(Ljava/util/Comparator;Ljava/lang/Iterable;)Lcom/google/common/collect/v1;

    move-result-object p0

    return-object p0
.end method

.method public static c0(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/v1;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable<",
            "-TE;>;>(TE;TE;TE;TE;)",
            "Lcom/google/common/collect/v1<",
            "TE;>;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/Ordering;->A()Lcom/google/common/collect/Ordering;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Comparable;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/google/common/collect/v1;->N(Ljava/util/Comparator;Ljava/lang/Iterable;)Lcom/google/common/collect/v1;

    move-result-object p0

    return-object p0
.end method

.method public static d0(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/v1;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable<",
            "-TE;>;>(TE;TE;TE;TE;TE;)",
            "Lcom/google/common/collect/v1<",
            "TE;>;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/Ordering;->A()Lcom/google/common/collect/Ordering;

    move-result-object v0

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Comparable;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    const/4 p0, 0x4

    aput-object p4, v1, p0

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/google/common/collect/v1;->N(Ljava/util/Comparator;Ljava/lang/Iterable;)Lcom/google/common/collect/v1;

    move-result-object p0

    return-object p0
.end method

.method public static varargs e0(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;[Ljava/lang/Comparable;)Lcom/google/common/collect/v1;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable<",
            "-TE;>;>(TE;TE;TE;TE;TE;TE;[TE;)",
            "Lcom/google/common/collect/v1<",
            "TE;>;"
        }
    .end annotation

    array-length v0, p6

    const/4 v1, 0x6

    add-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/common/collect/M1;->u(I)Ljava/util/ArrayList;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Comparable;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    const/4 p0, 0x4

    aput-object p4, v1, p0

    const/4 p0, 0x5

    aput-object p5, v1, p0

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    invoke-static {v0, p6}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    invoke-static {}, Lcom/google/common/collect/Ordering;->A()Lcom/google/common/collect/Ordering;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/google/common/collect/v1;->N(Ljava/util/Comparator;Ljava/lang/Iterable;)Lcom/google/common/collect/v1;

    move-result-object p0

    return-object p0
.end method

.method public static f0(Ljava/util/Comparator;)Lcom/google/common/collect/v1$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "TE;>;)",
            "Lcom/google/common/collect/v1$a<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/v1$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/v1$a;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static g0()Lcom/google/common/collect/v1$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable<",
            "*>;>()",
            "Lcom/google/common/collect/v1$a<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/v1$a;

    invoke-static {}, Lcom/google/common/collect/Ordering;->A()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/Ordering;->F()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/v1$a;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic B7(Ljava/lang/Object;Lcom/google/common/collect/x;)Lcom/google/common/collect/K2;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/v1;->W(Ljava/lang/Object;Lcom/google/common/collect/x;)Lcom/google/common/collect/v1;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic Jd(Ljava/lang/Object;Lcom/google/common/collect/x;)Lcom/google/common/collect/K2;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/v1;->i0(Ljava/lang/Object;Lcom/google/common/collect/x;)Lcom/google/common/collect/v1;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P6()Lcom/google/common/collect/K2;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/v1;->T()Lcom/google/common/collect/v1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic S1()Ljava/util/NavigableSet;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/v1;->U()Lcom/google/common/collect/x1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic S1()Ljava/util/Set;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/common/collect/v1;->U()Lcom/google/common/collect/x1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic S1()Ljava/util/SortedSet;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/common/collect/v1;->U()Lcom/google/common/collect/x1;

    move-result-object v0

    return-object v0
.end method

.method public T()Lcom/google/common/collect/v1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/v1<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/v1;->e:Lcom/google/common/collect/v1;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/v1;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Ordering;->i(Ljava/util/Comparator;)Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/Ordering;->F()Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/v1;->V(Ljava/util/Comparator;)Lcom/google/common/collect/v1;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/collect/T;

    invoke-direct {v0, p0}, Lcom/google/common/collect/T;-><init>(Lcom/google/common/collect/v1;)V

    :goto_0
    iput-object v0, p0, Lcom/google/common/collect/v1;->e:Lcom/google/common/collect/v1;

    :cond_1
    return-object v0
.end method

.method public abstract U()Lcom/google/common/collect/x1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/x1<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract W(Ljava/lang/Object;Lcom/google/common/collect/x;)Lcom/google/common/collect/v1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/google/common/collect/x;",
            ")",
            "Lcom/google/common/collect/v1<",
            "TE;>;"
        }
    .end annotation
.end method

.method public final comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/v1;->U()Lcom/google/common/collect/x1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/x1;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic dc(Ljava/lang/Object;Lcom/google/common/collect/x;Ljava/lang/Object;Lcom/google/common/collect/x;)Lcom/google/common/collect/K2;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/common/collect/v1;->h0(Ljava/lang/Object;Lcom/google/common/collect/x;Ljava/lang/Object;Lcom/google/common/collect/x;)Lcom/google/common/collect/v1;

    move-result-object p1

    return-object p1
.end method

.method public h0(Ljava/lang/Object;Lcom/google/common/collect/x;Ljava/lang/Object;Lcom/google/common/collect/x;)Lcom/google/common/collect/v1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/google/common/collect/x;",
            "TE;",
            "Lcom/google/common/collect/x;",
            ")",
            "Lcom/google/common/collect/v1<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/v1;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {v0, p1, p3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Expected lowerBound <= upperBound but %s > %s"

    invoke-static {v0, v1, p1, p3}, Lw2/H;->y(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/v1;->i0(Ljava/lang/Object;Lcom/google/common/collect/x;)Lcom/google/common/collect/v1;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Lcom/google/common/collect/v1;->W(Ljava/lang/Object;Lcom/google/common/collect/x;)Lcom/google/common/collect/v1;

    move-result-object p1

    return-object p1
.end method

.method public abstract i0(Ljava/lang/Object;Lcom/google/common/collect/x;)Lcom/google/common/collect/v1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/google/common/collect/x;",
            ")",
            "Lcom/google/common/collect/v1<",
            "TE;>;"
        }
    .end annotation
.end method

.method public j()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/google/common/collect/v1$b;

    invoke-direct {v0, p0}, Lcom/google/common/collect/v1$b;-><init>(Lcom/google/common/collect/K2;)V

    return-object v0
.end method

.method public final pollFirstEntry()Lcom/google/common/collect/V1$a;
    .locals 1
    .annotation build LI2/a;
    .end annotation

    .annotation build LI2/e;
        value = "Always throws UnsupportedOperationException"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/V1$a<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final pollLastEntry()Lcom/google/common/collect/V1$a;
    .locals 1
    .annotation build LI2/a;
    .end annotation

    .annotation build LI2/e;
        value = "Always throws UnsupportedOperationException"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/V1$a<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic s()Lcom/google/common/collect/r1;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/v1;->U()Lcom/google/common/collect/x1;

    move-result-object v0

    return-object v0
.end method
