.class public abstract Lcom/google/common/collect/x1;
.super Lcom/google/common/collect/y1;
.source "SourceFile"

# interfaces
.implements Ljava/util/NavigableSet;
.implements Lcom/google/common/collect/G2;


# annotations
.annotation runtime Lcom/google/common/collect/X;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/x1$b;,
        Lcom/google/common/collect/x1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/y1<",
        "TE;>;",
        "Ljava/util/NavigableSet<",
        "TE;>;",
        "Lcom/google/common/collect/G2<",
        "TE;>;"
    }
.end annotation

.annotation build Lv2/b;
    emulated = true
    serializable = true
.end annotation


# instance fields
.field public final transient g:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation
.end field

.field public transient h:Lcom/google/common/collect/x1;
    .annotation runtime LJ2/b;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/x1<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .annotation build Lv2/c;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/common/collect/y1;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/x1;->g:Ljava/util/Comparator;

    return-void
.end method

.method public static varargs Q(Ljava/util/Comparator;I[Ljava/lang/Object;)Lcom/google/common/collect/x1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TE;>;I[TE;)",
            "Lcom/google/common/collect/x1<",
            "TE;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-static {p0}, Lcom/google/common/collect/x1;->c0(Ljava/util/Comparator;)Lcom/google/common/collect/v2;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p2, p1}, Lcom/google/common/collect/c2;->c([Ljava/lang/Object;I)[Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p2, v0, p1, p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    if-ge v0, p1, :cond_2

    aget-object v2, p2, v0

    add-int/lit8 v3, v1, -0x1

    aget-object v3, p2, v3

    invoke-interface {p0, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v3, v1, 0x1

    aput-object v2, p2, v1

    move v1, v3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-static {p2, v1, p1, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    array-length p1, p2

    div-int/lit8 p1, p1, 0x2

    if-ge v1, p1, :cond_3

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    :cond_3
    new-instance p1, Lcom/google/common/collect/v2;

    invoke-static {p2, v1}, Lcom/google/common/collect/g1;->l([Ljava/lang/Object;I)Lcom/google/common/collect/g1;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/google/common/collect/v2;-><init>(Lcom/google/common/collect/g1;Ljava/util/Comparator;)V

    return-object p1
.end method

.method public static R(Ljava/lang/Iterable;)Lcom/google/common/collect/x1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Lcom/google/common/collect/x1<",
            "TE;>;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/Ordering;->A()Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/common/collect/x1;->T(Ljava/util/Comparator;Ljava/lang/Iterable;)Lcom/google/common/collect/x1;

    move-result-object p0

    return-object p0
.end method

.method public static S(Ljava/util/Collection;)Lcom/google/common/collect/x1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TE;>;)",
            "Lcom/google/common/collect/x1<",
            "TE;>;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/Ordering;->A()Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/common/collect/x1;->U(Ljava/util/Comparator;Ljava/util/Collection;)Lcom/google/common/collect/x1;

    move-result-object p0

    return-object p0
.end method

.method public static T(Ljava/util/Comparator;Ljava/lang/Iterable;)Lcom/google/common/collect/x1;
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
            "Lcom/google/common/collect/x1<",
            "TE;>;"
        }
    .end annotation

    invoke-static {p0}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/google/common/collect/H2;->b(Ljava/util/Comparator;Ljava/lang/Iterable;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/google/common/collect/x1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/google/common/collect/x1;

    invoke-virtual {v0}, Lcom/google/common/collect/c1;->h()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/google/common/collect/D1;->P(Ljava/lang/Iterable;)[Ljava/lang/Object;

    move-result-object p1

    array-length v0, p1

    invoke-static {p0, v0, p1}, Lcom/google/common/collect/x1;->Q(Ljava/util/Comparator;I[Ljava/lang/Object;)Lcom/google/common/collect/x1;

    move-result-object p0

    return-object p0
.end method

.method public static U(Ljava/util/Comparator;Ljava/util/Collection;)Lcom/google/common/collect/x1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TE;>;",
            "Ljava/util/Collection<",
            "+TE;>;)",
            "Lcom/google/common/collect/x1<",
            "TE;>;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/google/common/collect/x1;->T(Ljava/util/Comparator;Ljava/lang/Iterable;)Lcom/google/common/collect/x1;

    move-result-object p0

    return-object p0
.end method

.method public static V(Ljava/util/Comparator;Ljava/util/Iterator;)Lcom/google/common/collect/x1;
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
            "Lcom/google/common/collect/x1<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/x1$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/x1$a;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {v0, p1}, Lcom/google/common/collect/x1$a;->t(Ljava/util/Iterator;)Lcom/google/common/collect/x1$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/collect/x1$a;->u()Lcom/google/common/collect/x1;

    move-result-object p0

    return-object p0
.end method

.method public static W(Ljava/util/Iterator;)Lcom/google/common/collect/x1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TE;>;)",
            "Lcom/google/common/collect/x1<",
            "TE;>;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/Ordering;->A()Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/common/collect/x1;->V(Ljava/util/Comparator;Ljava/util/Iterator;)Lcom/google/common/collect/x1;

    move-result-object p0

    return-object p0
.end method

.method public static X([Ljava/lang/Comparable;)Lcom/google/common/collect/x1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable<",
            "-TE;>;>([TE;)",
            "Lcom/google/common/collect/x1<",
            "TE;>;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/Ordering;->A()Lcom/google/common/collect/Ordering;

    move-result-object v0

    array-length v1, p0

    invoke-virtual {p0}, [Ljava/lang/Comparable;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Comparable;

    invoke-static {v0, v1, p0}, Lcom/google/common/collect/x1;->Q(Ljava/util/Comparator;I[Ljava/lang/Object;)Lcom/google/common/collect/x1;

    move-result-object p0

    return-object p0
.end method

.method public static Y(Ljava/util/SortedSet;)Lcom/google/common/collect/x1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedSet<",
            "TE;>;)",
            "Lcom/google/common/collect/x1<",
            "TE;>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/common/collect/H2;->a(Ljava/util/SortedSet;)Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p0}, Lcom/google/common/collect/g1;->r(Ljava/util/Collection;)Lcom/google/common/collect/g1;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/google/common/collect/x1;->c0(Ljava/util/Comparator;)Lcom/google/common/collect/v2;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v1, Lcom/google/common/collect/v2;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/v2;-><init>(Lcom/google/common/collect/g1;Ljava/util/Comparator;)V

    return-object v1
.end method

.method public static c0(Ljava/util/Comparator;)Lcom/google/common/collect/v2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TE;>;)",
            "Lcom/google/common/collect/v2<",
            "TE;>;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/Ordering;->A()Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/google/common/collect/v2;->j:Lcom/google/common/collect/v2;

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/common/collect/v2;

    invoke-static {}, Lcom/google/common/collect/g1;->x()Lcom/google/common/collect/g1;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/google/common/collect/v2;-><init>(Lcom/google/common/collect/g1;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static g0()Lcom/google/common/collect/x1$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable<",
            "*>;>()",
            "Lcom/google/common/collect/x1$a<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/x1$a;

    invoke-static {}, Lcom/google/common/collect/Ordering;->A()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/x1$a;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static h0()Lcom/google/common/collect/x1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/x1<",
            "TE;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/collect/v2;->j:Lcom/google/common/collect/v2;

    return-object v0
.end method

.method public static i0(Ljava/lang/Comparable;)Lcom/google/common/collect/x1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable<",
            "-TE;>;>(TE;)",
            "Lcom/google/common/collect/x1<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/v2;

    invoke-static {p0}, Lcom/google/common/collect/g1;->y(Ljava/lang/Object;)Lcom/google/common/collect/g1;

    move-result-object p0

    invoke-static {}, Lcom/google/common/collect/Ordering;->A()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/v2;-><init>(Lcom/google/common/collect/g1;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static j0(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/x1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable<",
            "-TE;>;>(TE;TE;)",
            "Lcom/google/common/collect/x1<",
            "TE;>;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/Ordering;->A()Lcom/google/common/collect/Ordering;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Comparable;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    aput-object p1, v2, p0

    invoke-static {v0, v1, v2}, Lcom/google/common/collect/x1;->Q(Ljava/util/Comparator;I[Ljava/lang/Object;)Lcom/google/common/collect/x1;

    move-result-object p0

    return-object p0
.end method

.method public static k0(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/x1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable<",
            "-TE;>;>(TE;TE;TE;)",
            "Lcom/google/common/collect/x1<",
            "TE;>;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/Ordering;->A()Lcom/google/common/collect/Ordering;

    move-result-object v0

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Comparable;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    aput-object p1, v2, p0

    const/4 p0, 0x2

    aput-object p2, v2, p0

    invoke-static {v0, v1, v2}, Lcom/google/common/collect/x1;->Q(Ljava/util/Comparator;I[Ljava/lang/Object;)Lcom/google/common/collect/x1;

    move-result-object p0

    return-object p0
.end method

.method public static l0(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/x1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable<",
            "-TE;>;>(TE;TE;TE;TE;)",
            "Lcom/google/common/collect/x1<",
            "TE;>;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/Ordering;->A()Lcom/google/common/collect/Ordering;

    move-result-object v0

    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/Comparable;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    aput-object p1, v2, p0

    const/4 p0, 0x2

    aput-object p2, v2, p0

    const/4 p0, 0x3

    aput-object p3, v2, p0

    invoke-static {v0, v1, v2}, Lcom/google/common/collect/x1;->Q(Ljava/util/Comparator;I[Ljava/lang/Object;)Lcom/google/common/collect/x1;

    move-result-object p0

    return-object p0
.end method

.method public static m0(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/x1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable<",
            "-TE;>;>(TE;TE;TE;TE;TE;)",
            "Lcom/google/common/collect/x1<",
            "TE;>;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/Ordering;->A()Lcom/google/common/collect/Ordering;

    move-result-object v0

    const/4 v1, 0x5

    new-array v2, v1, [Ljava/lang/Comparable;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    aput-object p1, v2, p0

    const/4 p0, 0x2

    aput-object p2, v2, p0

    const/4 p0, 0x3

    aput-object p3, v2, p0

    const/4 p0, 0x4

    aput-object p4, v2, p0

    invoke-static {v0, v1, v2}, Lcom/google/common/collect/x1;->Q(Ljava/util/Comparator;I[Ljava/lang/Object;)Lcom/google/common/collect/x1;

    move-result-object p0

    return-object p0
.end method

.method public static varargs n0(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;[Ljava/lang/Comparable;)Lcom/google/common/collect/x1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable<",
            "-TE;>;>(TE;TE;TE;TE;TE;TE;[TE;)",
            "Lcom/google/common/collect/x1<",
            "TE;>;"
        }
    .end annotation

    array-length v0, p6

    const/4 v1, 0x6

    add-int/2addr v0, v1

    new-array v2, v0, [Ljava/lang/Comparable;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    aput-object p1, v2, p0

    const/4 p0, 0x2

    aput-object p2, v2, p0

    const/4 p0, 0x3

    aput-object p3, v2, p0

    const/4 p0, 0x4

    aput-object p4, v2, p0

    const/4 p0, 0x5

    aput-object p5, v2, p0

    array-length p0, p6

    invoke-static {p6, v3, v2, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {}, Lcom/google/common/collect/Ordering;->A()Lcom/google/common/collect/Ordering;

    move-result-object p0

    invoke-static {p0, v0, v2}, Lcom/google/common/collect/x1;->Q(Ljava/util/Comparator;I[Ljava/lang/Object;)Lcom/google/common/collect/x1;

    move-result-object p0

    return-object p0
.end method

.method public static o0(Ljava/util/Comparator;)Lcom/google/common/collect/x1$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "TE;>;)",
            "Lcom/google/common/collect/x1$a<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/x1$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/x1$a;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method private p0(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Use SerializedForm"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static q0()Lcom/google/common/collect/x1$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable<",
            "*>;>()",
            "Lcom/google/common/collect/x1$a<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/x1$a;

    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/x1$a;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static y0(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    invoke-interface {p0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public abstract Z()Lcom/google/common/collect/x1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/x1<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lv2/c;
    .end annotation
.end method

.method public abstract a0()Lcom/google/common/collect/e3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/e3<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lv2/c;
    .end annotation
.end method

.method public b0()Lcom/google/common/collect/x1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/x1<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lv2/c;
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/x1;->h:Lcom/google/common/collect/x1;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/x1;->Z()Lcom/google/common/collect/x1;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/x1;->h:Lcom/google/common/collect/x1;

    iput-object p0, v0, Lcom/google/common/collect/x1;->h:Lcom/google/common/collect/x1;

    :cond_0
    return-object v0
.end method

.method public ceiling(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/x1;->v0(Ljava/lang/Object;Z)Lcom/google/common/collect/x1;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/common/collect/D1;->v(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/x1;->g:Ljava/util/Comparator;

    return-object v0
.end method

.method public d0(Ljava/lang/Object;)Lcom/google/common/collect/x1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/common/collect/x1<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/x1;->e0(Ljava/lang/Object;Z)Lcom/google/common/collect/x1;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic descendingIterator()Ljava/util/Iterator;
    .locals 1
    .annotation build Lv2/c;
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/x1;->a0()Lcom/google/common/collect/e3;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic descendingSet()Ljava/util/NavigableSet;
    .locals 1
    .annotation build Lv2/c;
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/x1;->b0()Lcom/google/common/collect/x1;

    move-result-object v0

    return-object v0
.end method

.method public e0(Ljava/lang/Object;Z)Lcom/google/common/collect/x1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Lcom/google/common/collect/x1<",
            "TE;>;"
        }
    .end annotation

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/x1;->f0(Ljava/lang/Object;Z)Lcom/google/common/collect/x1;

    move-result-object p1

    return-object p1
.end method

.method public abstract f0(Ljava/lang/Object;Z)Lcom/google/common/collect/x1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Lcom/google/common/collect/x1<",
            "TE;>;"
        }
    .end annotation
.end method

.method public first()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/x1;->i()Lcom/google/common/collect/e3;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public floor(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/x1;->e0(Ljava/lang/Object;Z)Lcom/google/common/collect/x1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/x1;->a0()Lcom/google/common/collect/e3;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/common/collect/E1;->J(Ljava/util/Iterator;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/x1;->e0(Ljava/lang/Object;Z)Lcom/google/common/collect/x1;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/common/collect/x1;->d0(Ljava/lang/Object;)Lcom/google/common/collect/x1;

    move-result-object p1

    return-object p1
.end method

.method public higher(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .annotation build Lv2/c;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/x1;->v0(Ljava/lang/Object;Z)Lcom/google/common/collect/x1;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/common/collect/D1;->v(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public abstract i()Lcom/google/common/collect/e3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/e3<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract indexOf(Ljava/lang/Object;)I
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/x1;->i()Lcom/google/common/collect/e3;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lcom/google/common/collect/x1$b;

    iget-object v1, p0, Lcom/google/common/collect/x1;->g:Ljava/util/Comparator;

    invoke-virtual {p0}, Lcom/google/common/collect/c1;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/x1$b;-><init>(Ljava/util/Comparator;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/x1;->a0()Lcom/google/common/collect/e3;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lower(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .annotation build Lv2/c;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/x1;->e0(Ljava/lang/Object;Z)Lcom/google/common/collect/x1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/x1;->a0()Lcom/google/common/collect/e3;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/common/collect/E1;->J(Ljava/util/Iterator;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final pollFirst()Ljava/lang/Object;
    .locals 1
    .annotation build LI2/a;
    .end annotation

    .annotation build LI2/e;
        value = "Always throws UnsupportedOperationException"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .annotation build Lv2/c;
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final pollLast()Ljava/lang/Object;
    .locals 1
    .annotation build LI2/a;
    .end annotation

    .annotation build LI2/e;
        value = "Always throws UnsupportedOperationException"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .annotation build Lv2/c;
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public r0(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/x1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)",
            "Lcom/google/common/collect/x1<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/google/common/collect/x1;->s0(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/google/common/collect/x1;

    move-result-object p1

    return-object p1
.end method

.method public s0(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/google/common/collect/x1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZTE;Z)",
            "Lcom/google/common/collect/x1<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lv2/c;
    .end annotation

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/common/collect/x1;->g:Ljava/util/Comparator;

    invoke-interface {v0, p1, p3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lw2/H;->d(Z)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/common/collect/x1;->t0(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/google/common/collect/x1;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 0
    .annotation build Lv2/c;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/common/collect/x1;->s0(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/google/common/collect/x1;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/x1;->r0(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/x1;

    move-result-object p1

    return-object p1
.end method

.method public abstract t0(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/google/common/collect/x1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZTE;Z)",
            "Lcom/google/common/collect/x1<",
            "TE;>;"
        }
    .end annotation
.end method

.method public bridge synthetic tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/x1;->v0(Ljava/lang/Object;Z)Lcom/google/common/collect/x1;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/common/collect/x1;->u0(Ljava/lang/Object;)Lcom/google/common/collect/x1;

    move-result-object p1

    return-object p1
.end method

.method public u0(Ljava/lang/Object;)Lcom/google/common/collect/x1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/common/collect/x1<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/x1;->v0(Ljava/lang/Object;Z)Lcom/google/common/collect/x1;

    move-result-object p1

    return-object p1
.end method

.method public v0(Ljava/lang/Object;Z)Lcom/google/common/collect/x1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Lcom/google/common/collect/x1<",
            "TE;>;"
        }
    .end annotation

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/x1;->w0(Ljava/lang/Object;Z)Lcom/google/common/collect/x1;

    move-result-object p1

    return-object p1
.end method

.method public abstract w0(Ljava/lang/Object;Z)Lcom/google/common/collect/x1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Lcom/google/common/collect/x1<",
            "TE;>;"
        }
    .end annotation
.end method

.method public x0(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/common/collect/x1;->g:Ljava/util/Comparator;

    invoke-static {v0, p1, p2}, Lcom/google/common/collect/x1;->y0(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
