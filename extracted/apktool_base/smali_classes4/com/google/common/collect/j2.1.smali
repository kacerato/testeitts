.class public final Lcom/google/common/collect/j2;
.super Lcom/google/common/collect/k2;
.source "SourceFile"

# interfaces
.implements Lw2/I;
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/google/common/collect/X;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/j2$c;,
        Lcom/google/common/collect/j2$d;,
        Lcom/google/common/collect/j2$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable;",
        ">",
        "Lcom/google/common/collect/k2;",
        "Lw2/I<",
        "TC;>;",
        "Ljava/io/Serializable;"
    }
.end annotation

.annotation build Lv2/b;
.end annotation


# static fields
.field public static final d:Lcom/google/common/collect/j2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/j2<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:J


# instance fields
.field public final b:Lcom/google/common/collect/Q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Q<",
            "TC;>;"
        }
    .end annotation
.end field

.field public final c:Lcom/google/common/collect/Q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Q<",
            "TC;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/common/collect/j2;

    invoke-static {}, Lcom/google/common/collect/Q;->c()Lcom/google/common/collect/Q;

    move-result-object v1

    invoke-static {}, Lcom/google/common/collect/Q;->a()Lcom/google/common/collect/Q;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/j2;-><init>(Lcom/google/common/collect/Q;Lcom/google/common/collect/Q;)V

    sput-object v0, Lcom/google/common/collect/j2;->d:Lcom/google/common/collect/j2;

    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/Q;Lcom/google/common/collect/Q;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Q<",
            "TC;>;",
            "Lcom/google/common/collect/Q<",
            "TC;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/common/collect/k2;-><init>()V

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Q;

    iput-object v0, p0, Lcom/google/common/collect/j2;->b:Lcom/google/common/collect/Q;

    invoke-static {p2}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Q;

    iput-object v0, p0, Lcom/google/common/collect/j2;->c:Lcom/google/common/collect/Q;

    invoke-virtual {p1, p2}, Lcom/google/common/collect/Q;->g(Lcom/google/common/collect/Q;)I

    move-result v0

    if-gtz v0, :cond_1

    invoke-static {}, Lcom/google/common/collect/Q;->a()Lcom/google/common/collect/Q;

    move-result-object v0

    if-eq p1, v0, :cond_1

    invoke-static {}, Lcom/google/common/collect/Q;->c()Lcom/google/common/collect/Q;

    move-result-object v0

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Lcom/google/common/collect/j2;->H(Lcom/google/common/collect/Q;Lcom/google/common/collect/Q;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const-string v1, "Invalid range: "

    if-eqz p2, :cond_2

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static A(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/j2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>(TC;TC;)",
            "Lcom/google/common/collect/j2<",
            "TC;>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/common/collect/Q;->b(Ljava/lang/Comparable;)Lcom/google/common/collect/Q;

    move-result-object p0

    invoke-static {p1}, Lcom/google/common/collect/Q;->d(Ljava/lang/Comparable;)Lcom/google/common/collect/Q;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/common/collect/j2;->k(Lcom/google/common/collect/Q;Lcom/google/common/collect/Q;)Lcom/google/common/collect/j2;

    move-result-object p0

    return-object p0
.end method

.method public static B(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/j2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>(TC;TC;)",
            "Lcom/google/common/collect/j2<",
            "TC;>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/common/collect/Q;->b(Ljava/lang/Comparable;)Lcom/google/common/collect/Q;

    move-result-object p0

    invoke-static {p1}, Lcom/google/common/collect/Q;->b(Ljava/lang/Comparable;)Lcom/google/common/collect/Q;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/common/collect/j2;->k(Lcom/google/common/collect/Q;Lcom/google/common/collect/Q;)Lcom/google/common/collect/j2;

    move-result-object p0

    return-object p0
.end method

.method public static C(Ljava/lang/Comparable;Lcom/google/common/collect/x;Ljava/lang/Comparable;Lcom/google/common/collect/x;)Lcom/google/common/collect/j2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>(TC;",
            "Lcom/google/common/collect/x;",
            "TC;",
            "Lcom/google/common/collect/x;",
            ")",
            "Lcom/google/common/collect/j2<",
            "TC;>;"
        }
    .end annotation

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/common/collect/x;->OPEN:Lcom/google/common/collect/x;

    if-ne p1, v0, :cond_0

    invoke-static {p0}, Lcom/google/common/collect/Q;->b(Ljava/lang/Comparable;)Lcom/google/common/collect/Q;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/google/common/collect/Q;->d(Ljava/lang/Comparable;)Lcom/google/common/collect/Q;

    move-result-object p0

    :goto_0
    if-ne p3, v0, :cond_1

    invoke-static {p2}, Lcom/google/common/collect/Q;->d(Ljava/lang/Comparable;)Lcom/google/common/collect/Q;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-static {p2}, Lcom/google/common/collect/Q;->b(Ljava/lang/Comparable;)Lcom/google/common/collect/Q;

    move-result-object p1

    :goto_1
    invoke-static {p0, p1}, Lcom/google/common/collect/j2;->k(Lcom/google/common/collect/Q;Lcom/google/common/collect/Q;)Lcom/google/common/collect/j2;

    move-result-object p0

    return-object p0
.end method

.method public static D()Lcom/google/common/collect/Ordering;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>()",
            "Lcom/google/common/collect/Ordering<",
            "Lcom/google/common/collect/j2<",
            "TC;>;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/collect/j2$c;->d:Lcom/google/common/collect/Ordering;

    return-object v0
.end method

.method public static F(Ljava/lang/Comparable;)Lcom/google/common/collect/j2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>(TC;)",
            "Lcom/google/common/collect/j2<",
            "TC;>;"
        }
    .end annotation

    invoke-static {p0, p0}, Lcom/google/common/collect/j2;->f(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/j2;

    move-result-object p0

    return-object p0
.end method

.method public static H(Lcom/google/common/collect/Q;Lcom/google/common/collect/Q;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Q<",
            "*>;",
            "Lcom/google/common/collect/Q<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/google/common/collect/Q;->h(Ljava/lang/StringBuilder;)V

    const-string p0, ".."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Lcom/google/common/collect/Q;->i(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static I(Ljava/lang/Comparable;Lcom/google/common/collect/x;)Lcom/google/common/collect/j2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>(TC;",
            "Lcom/google/common/collect/x;",
            ")",
            "Lcom/google/common/collect/j2<",
            "TC;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/collect/j2$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    invoke-static {p0}, Lcom/google/common/collect/j2;->d(Ljava/lang/Comparable;)Lcom/google/common/collect/j2;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    invoke-static {p0}, Lcom/google/common/collect/j2;->w(Ljava/lang/Comparable;)Lcom/google/common/collect/j2;

    move-result-object p0

    return-object p0
.end method

.method public static J()Lw2/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>()",
            "Lw2/t<",
            "Lcom/google/common/collect/j2<",
            "TC;>;",
            "Lcom/google/common/collect/Q<",
            "TC;>;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/collect/j2$d;->b:Lcom/google/common/collect/j2$d;

    return-object v0
.end method

.method public static a()Lcom/google/common/collect/j2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>()",
            "Lcom/google/common/collect/j2<",
            "TC;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/collect/j2;->d:Lcom/google/common/collect/j2;

    return-object v0
.end method

.method public static c(Ljava/lang/Comparable;)Lcom/google/common/collect/j2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>(TC;)",
            "Lcom/google/common/collect/j2<",
            "TC;>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/common/collect/Q;->d(Ljava/lang/Comparable;)Lcom/google/common/collect/Q;

    move-result-object p0

    invoke-static {}, Lcom/google/common/collect/Q;->a()Lcom/google/common/collect/Q;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/common/collect/j2;->k(Lcom/google/common/collect/Q;Lcom/google/common/collect/Q;)Lcom/google/common/collect/j2;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/Comparable;)Lcom/google/common/collect/j2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>(TC;)",
            "Lcom/google/common/collect/j2<",
            "TC;>;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/Q;->c()Lcom/google/common/collect/Q;

    move-result-object v0

    invoke-static {p0}, Lcom/google/common/collect/Q;->b(Ljava/lang/Comparable;)Lcom/google/common/collect/Q;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/google/common/collect/j2;->k(Lcom/google/common/collect/Q;Lcom/google/common/collect/Q;)Lcom/google/common/collect/j2;

    move-result-object p0

    return-object p0
.end method

.method public static f(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/j2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>(TC;TC;)",
            "Lcom/google/common/collect/j2<",
            "TC;>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/common/collect/Q;->d(Ljava/lang/Comparable;)Lcom/google/common/collect/Q;

    move-result-object p0

    invoke-static {p1}, Lcom/google/common/collect/Q;->b(Ljava/lang/Comparable;)Lcom/google/common/collect/Q;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/common/collect/j2;->k(Lcom/google/common/collect/Q;Lcom/google/common/collect/Q;)Lcom/google/common/collect/j2;

    move-result-object p0

    return-object p0
.end method

.method public static g(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/j2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>(TC;TC;)",
            "Lcom/google/common/collect/j2<",
            "TC;>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/common/collect/Q;->d(Ljava/lang/Comparable;)Lcom/google/common/collect/Q;

    move-result-object p0

    invoke-static {p1}, Lcom/google/common/collect/Q;->d(Ljava/lang/Comparable;)Lcom/google/common/collect/Q;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/common/collect/j2;->k(Lcom/google/common/collect/Q;Lcom/google/common/collect/Q;)Lcom/google/common/collect/j2;

    move-result-object p0

    return-object p0
.end method

.method public static h(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .locals 0

    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static k(Lcom/google/common/collect/Q;Lcom/google/common/collect/Q;)Lcom/google/common/collect/j2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>(",
            "Lcom/google/common/collect/Q<",
            "TC;>;",
            "Lcom/google/common/collect/Q<",
            "TC;>;)",
            "Lcom/google/common/collect/j2<",
            "TC;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/j2;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/j2;-><init>(Lcom/google/common/collect/Q;Lcom/google/common/collect/Q;)V

    return-object v0
.end method

.method public static l(Ljava/lang/Comparable;Lcom/google/common/collect/x;)Lcom/google/common/collect/j2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>(TC;",
            "Lcom/google/common/collect/x;",
            ")",
            "Lcom/google/common/collect/j2<",
            "TC;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/collect/j2$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    invoke-static {p0}, Lcom/google/common/collect/j2;->c(Ljava/lang/Comparable;)Lcom/google/common/collect/j2;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    invoke-static {p0}, Lcom/google/common/collect/j2;->p(Ljava/lang/Comparable;)Lcom/google/common/collect/j2;

    move-result-object p0

    return-object p0
.end method

.method public static m(Ljava/lang/Iterable;)Lcom/google/common/collect/j2;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>(",
            "Ljava/lang/Iterable<",
            "TC;>;)",
            "Lcom/google/common/collect/j2<",
            "TC;>;"
        }
    .end annotation

    invoke-static {p0}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v0, p0, Ljava/util/SortedSet;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {}, Lcom/google/common/collect/Ordering;->A()Lcom/google/common/collect/Ordering;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez v1, :cond_1

    :cond_0
    invoke-interface {v0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Comparable;

    invoke-interface {v0}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    invoke-static {p0, v0}, Lcom/google/common/collect/j2;->f(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/j2;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    invoke-static {v0}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    move-object v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Comparable;

    invoke-static {v2}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Comparable;

    invoke-static {}, Lcom/google/common/collect/Ordering;->A()Lcom/google/common/collect/Ordering;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/google/common/collect/Ordering;->x(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    invoke-static {}, Lcom/google/common/collect/Ordering;->A()Lcom/google/common/collect/Ordering;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/google/common/collect/Ordering;->s(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    goto :goto_0

    :cond_2
    invoke-static {v0, v1}, Lcom/google/common/collect/j2;->f(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/j2;

    move-result-object p0

    return-object p0
.end method

.method public static p(Ljava/lang/Comparable;)Lcom/google/common/collect/j2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>(TC;)",
            "Lcom/google/common/collect/j2<",
            "TC;>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/common/collect/Q;->b(Ljava/lang/Comparable;)Lcom/google/common/collect/Q;

    move-result-object p0

    invoke-static {}, Lcom/google/common/collect/Q;->a()Lcom/google/common/collect/Q;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/common/collect/j2;->k(Lcom/google/common/collect/Q;Lcom/google/common/collect/Q;)Lcom/google/common/collect/j2;

    move-result-object p0

    return-object p0
.end method

.method public static w(Ljava/lang/Comparable;)Lcom/google/common/collect/j2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>(TC;)",
            "Lcom/google/common/collect/j2<",
            "TC;>;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/Q;->c()Lcom/google/common/collect/Q;

    move-result-object v0

    invoke-static {p0}, Lcom/google/common/collect/Q;->d(Ljava/lang/Comparable;)Lcom/google/common/collect/Q;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/google/common/collect/j2;->k(Lcom/google/common/collect/Q;Lcom/google/common/collect/Q;)Lcom/google/common/collect/j2;

    move-result-object p0

    return-object p0
.end method

.method public static x()Lw2/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>()",
            "Lw2/t<",
            "Lcom/google/common/collect/j2<",
            "TC;>;",
            "Lcom/google/common/collect/Q<",
            "TC;>;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/collect/j2$b;->b:Lcom/google/common/collect/j2$b;

    return-object v0
.end method


# virtual methods
.method public E()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/common/collect/j2;->d:Lcom/google/common/collect/j2;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/j2;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/common/collect/j2;->a()Lcom/google/common/collect/j2;

    move-result-object v0

    return-object v0

    :cond_0
    return-object p0
.end method

.method public G(Lcom/google/common/collect/j2;)Lcom/google/common/collect/j2;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/j2<",
            "TC;>;)",
            "Lcom/google/common/collect/j2<",
            "TC;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/j2;->b:Lcom/google/common/collect/Q;

    iget-object v1, p1, Lcom/google/common/collect/j2;->b:Lcom/google/common/collect/Q;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/Q;->g(Lcom/google/common/collect/Q;)I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/j2;->c:Lcom/google/common/collect/Q;

    iget-object v2, p1, Lcom/google/common/collect/j2;->c:Lcom/google/common/collect/Q;

    invoke-virtual {v1, v2}, Lcom/google/common/collect/Q;->g(Lcom/google/common/collect/Q;)I

    move-result v1

    if-gtz v0, :cond_0

    if-ltz v1, :cond_0

    return-object p0

    :cond_0
    if-ltz v0, :cond_1

    if-gtz v1, :cond_1

    return-object p1

    :cond_1
    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/google/common/collect/j2;->b:Lcom/google/common/collect/Q;

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lcom/google/common/collect/j2;->b:Lcom/google/common/collect/Q;

    :goto_0
    if-ltz v1, :cond_3

    iget-object p1, p0, Lcom/google/common/collect/j2;->c:Lcom/google/common/collect/Q;

    goto :goto_1

    :cond_3
    iget-object p1, p1, Lcom/google/common/collect/j2;->c:Lcom/google/common/collect/Q;

    :goto_1
    invoke-static {v0, p1}, Lcom/google/common/collect/j2;->k(Lcom/google/common/collect/Q;Lcom/google/common/collect/Q;)Lcom/google/common/collect/j2;

    move-result-object p1

    return-object p1
.end method

.method public K()Lcom/google/common/collect/x;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/j2;->c:Lcom/google/common/collect/Q;

    invoke-virtual {v0}, Lcom/google/common/collect/Q;->r()Lcom/google/common/collect/x;

    move-result-object v0

    return-object v0
.end method

.method public L()Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/j2;->c:Lcom/google/common/collect/Q;

    invoke-virtual {v0}, Lcom/google/common/collect/Q;->j()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/j2;->b(Ljava/lang/Comparable;)Z

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/Comparable;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/j2;->i(Ljava/lang/Comparable;)Z

    move-result p1

    return p1
.end method

.method public e(Lcom/google/common/collect/W;)Lcom/google/common/collect/j2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/W<",
            "TC;>;)",
            "Lcom/google/common/collect/j2<",
            "TC;>;"
        }
    .end annotation

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/common/collect/j2;->b:Lcom/google/common/collect/Q;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/Q;->e(Lcom/google/common/collect/W;)Lcom/google/common/collect/Q;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/j2;->c:Lcom/google/common/collect/Q;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/Q;->e(Lcom/google/common/collect/W;)Lcom/google/common/collect/Q;

    move-result-object p1

    iget-object v1, p0, Lcom/google/common/collect/j2;->b:Lcom/google/common/collect/Q;

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/common/collect/j2;->c:Lcom/google/common/collect/Q;

    if-ne p1, v1, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    invoke-static {v0, p1}, Lcom/google/common/collect/j2;->k(Lcom/google/common/collect/Q;Lcom/google/common/collect/Q;)Lcom/google/common/collect/j2;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/google/common/collect/j2;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/common/collect/j2;

    iget-object v0, p0, Lcom/google/common/collect/j2;->b:Lcom/google/common/collect/Q;

    iget-object v2, p1, Lcom/google/common/collect/j2;->b:Lcom/google/common/collect/Q;

    invoke-virtual {v0, v2}, Lcom/google/common/collect/Q;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/j2;->c:Lcom/google/common/collect/Q;

    iget-object p1, p1, Lcom/google/common/collect/j2;->c:Lcom/google/common/collect/Q;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/Q;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/j2;->b:Lcom/google/common/collect/Q;

    invoke-virtual {v0}, Lcom/google/common/collect/Q;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/common/collect/j2;->c:Lcom/google/common/collect/Q;

    invoke-virtual {v1}, Lcom/google/common/collect/Q;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public i(Ljava/lang/Comparable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)Z"
        }
    .end annotation

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/common/collect/j2;->b:Lcom/google/common/collect/Q;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/Q;->m(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/j2;->c:Lcom/google/common/collect/Q;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/Q;->m(Ljava/lang/Comparable;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public j(Ljava/lang/Iterable;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TC;>;)Z"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/collect/D1;->C(Ljava/lang/Iterable;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    instance-of v0, p1, Ljava/util/SortedSet;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v3

    invoke-static {}, Lcom/google/common/collect/Ordering;->A()Lcom/google/common/collect/Ordering;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    if-nez v3, :cond_3

    :cond_1
    invoke-interface {v0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/j2;->i(Ljava/lang/Comparable;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {v0}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/j2;->i(Ljava/lang/Comparable;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    return v1

    :cond_3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/j2;->i(Ljava/lang/Comparable;)Z

    move-result v0

    if-nez v0, :cond_4

    return v2

    :cond_5
    return v1
.end method

.method public n(Lcom/google/common/collect/j2;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/j2<",
            "TC;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/j2;->b:Lcom/google/common/collect/Q;

    iget-object v1, p1, Lcom/google/common/collect/j2;->b:Lcom/google/common/collect/Q;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/Q;->g(Lcom/google/common/collect/Q;)I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/j2;->c:Lcom/google/common/collect/Q;

    iget-object p1, p1, Lcom/google/common/collect/j2;->c:Lcom/google/common/collect/Q;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/Q;->g(Lcom/google/common/collect/Q;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public o(Lcom/google/common/collect/j2;)Lcom/google/common/collect/j2;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/j2<",
            "TC;>;)",
            "Lcom/google/common/collect/j2<",
            "TC;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/j2;->b:Lcom/google/common/collect/Q;

    iget-object v1, p1, Lcom/google/common/collect/j2;->c:Lcom/google/common/collect/Q;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/Q;->g(Lcom/google/common/collect/Q;)I

    move-result v0

    if-gez v0, :cond_1

    iget-object v0, p1, Lcom/google/common/collect/j2;->b:Lcom/google/common/collect/Q;

    iget-object v1, p0, Lcom/google/common/collect/j2;->c:Lcom/google/common/collect/Q;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/Q;->g(Lcom/google/common/collect/Q;)I

    move-result v0

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x27

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Ranges have a nonempty intersection: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/j2;->b:Lcom/google/common/collect/Q;

    iget-object v1, p1, Lcom/google/common/collect/j2;->b:Lcom/google/common/collect/Q;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/Q;->g(Lcom/google/common/collect/Q;)I

    move-result v0

    if-gez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    move-object v1, p0

    goto :goto_2

    :cond_3
    move-object v1, p1

    :goto_2
    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    move-object p1, p0

    :goto_3
    iget-object v0, v1, Lcom/google/common/collect/j2;->c:Lcom/google/common/collect/Q;

    iget-object p1, p1, Lcom/google/common/collect/j2;->b:Lcom/google/common/collect/Q;

    invoke-static {v0, p1}, Lcom/google/common/collect/j2;->k(Lcom/google/common/collect/Q;Lcom/google/common/collect/Q;)Lcom/google/common/collect/j2;

    move-result-object p1

    return-object p1
.end method

.method public q()Z
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/j2;->b:Lcom/google/common/collect/Q;

    invoke-static {}, Lcom/google/common/collect/Q;->c()Lcom/google/common/collect/Q;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public r()Z
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/j2;->c:Lcom/google/common/collect/Q;

    invoke-static {}, Lcom/google/common/collect/Q;->a()Lcom/google/common/collect/Q;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public s(Lcom/google/common/collect/j2;)Lcom/google/common/collect/j2;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/j2<",
            "TC;>;)",
            "Lcom/google/common/collect/j2<",
            "TC;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/j2;->b:Lcom/google/common/collect/Q;

    iget-object v1, p1, Lcom/google/common/collect/j2;->b:Lcom/google/common/collect/Q;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/Q;->g(Lcom/google/common/collect/Q;)I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/j2;->c:Lcom/google/common/collect/Q;

    iget-object v2, p1, Lcom/google/common/collect/j2;->c:Lcom/google/common/collect/Q;

    invoke-virtual {v1, v2}, Lcom/google/common/collect/Q;->g(Lcom/google/common/collect/Q;)I

    move-result v1

    if-ltz v0, :cond_0

    if-gtz v1, :cond_0

    return-object p0

    :cond_0
    if-gtz v0, :cond_1

    if-ltz v1, :cond_1

    return-object p1

    :cond_1
    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/google/common/collect/j2;->b:Lcom/google/common/collect/Q;

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lcom/google/common/collect/j2;->b:Lcom/google/common/collect/Q;

    :goto_0
    if-gtz v1, :cond_3

    iget-object v1, p0, Lcom/google/common/collect/j2;->c:Lcom/google/common/collect/Q;

    goto :goto_1

    :cond_3
    iget-object v1, p1, Lcom/google/common/collect/j2;->c:Lcom/google/common/collect/Q;

    :goto_1
    invoke-virtual {v0, v1}, Lcom/google/common/collect/Q;->g(Lcom/google/common/collect/Q;)I

    move-result v2

    if-gtz v2, :cond_4

    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    const-string v3, "intersection is undefined for disconnected ranges %s and %s"

    invoke-static {v2, v3, p0, p1}, Lw2/H;->y(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/google/common/collect/j2;->k(Lcom/google/common/collect/Q;Lcom/google/common/collect/Q;)Lcom/google/common/collect/j2;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/j2;->b:Lcom/google/common/collect/Q;

    iget-object v1, p0, Lcom/google/common/collect/j2;->c:Lcom/google/common/collect/Q;

    invoke-static {v0, v1}, Lcom/google/common/collect/j2;->H(Lcom/google/common/collect/Q;Lcom/google/common/collect/Q;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(Lcom/google/common/collect/j2;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/j2<",
            "TC;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/j2;->b:Lcom/google/common/collect/Q;

    iget-object v1, p1, Lcom/google/common/collect/j2;->c:Lcom/google/common/collect/Q;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/Q;->g(Lcom/google/common/collect/Q;)I

    move-result v0

    if-gtz v0, :cond_0

    iget-object p1, p1, Lcom/google/common/collect/j2;->b:Lcom/google/common/collect/Q;

    iget-object v0, p0, Lcom/google/common/collect/j2;->c:Lcom/google/common/collect/Q;

    invoke-virtual {p1, v0}, Lcom/google/common/collect/Q;->g(Lcom/google/common/collect/Q;)I

    move-result p1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public v()Z
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/j2;->b:Lcom/google/common/collect/Q;

    iget-object v1, p0, Lcom/google/common/collect/j2;->c:Lcom/google/common/collect/Q;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/Q;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public y()Lcom/google/common/collect/x;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/j2;->b:Lcom/google/common/collect/Q;

    invoke-virtual {v0}, Lcom/google/common/collect/Q;->q()Lcom/google/common/collect/x;

    move-result-object v0

    return-object v0
.end method

.method public z()Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/j2;->b:Lcom/google/common/collect/Q;

    invoke-virtual {v0}, Lcom/google/common/collect/Q;->j()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method
