.class public final Lcom/google/common/collect/q1;
.super Lcom/google/common/collect/k;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/google/common/collect/X;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/q1$f;,
        Lcom/google/common/collect/q1$d;,
        Lcom/google/common/collect/q1$c;,
        Lcom/google/common/collect/q1$b;,
        Lcom/google/common/collect/q1$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable;",
        ">",
        "Lcom/google/common/collect/k<",
        "TC;>;",
        "Ljava/io/Serializable;"
    }
.end annotation

.annotation build Lv2/a;
.end annotation

.annotation build Lv2/c;
.end annotation


# static fields
.field public static final d:Lcom/google/common/collect/q1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/q1<",
            "Ljava/lang/Comparable<",
            "*>;>;"
        }
    .end annotation
.end field

.field public static final e:Lcom/google/common/collect/q1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/q1<",
            "Ljava/lang/Comparable<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field public final transient b:Lcom/google/common/collect/g1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/g1<",
            "Lcom/google/common/collect/j2<",
            "TC;>;>;"
        }
    .end annotation
.end field

.field public transient c:Lcom/google/common/collect/q1;
    .annotation runtime LJ2/b;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/q1<",
            "TC;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/common/collect/q1;

    invoke-static {}, Lcom/google/common/collect/g1;->x()Lcom/google/common/collect/g1;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/q1;-><init>(Lcom/google/common/collect/g1;)V

    sput-object v0, Lcom/google/common/collect/q1;->d:Lcom/google/common/collect/q1;

    new-instance v0, Lcom/google/common/collect/q1;

    invoke-static {}, Lcom/google/common/collect/j2;->a()Lcom/google/common/collect/j2;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/g1;->y(Ljava/lang/Object;)Lcom/google/common/collect/g1;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/q1;-><init>(Lcom/google/common/collect/g1;)V

    sput-object v0, Lcom/google/common/collect/q1;->e:Lcom/google/common/collect/q1;

    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/g1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/g1<",
            "Lcom/google/common/collect/j2<",
            "TC;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/k;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/common/collect/q1;->b:Lcom/google/common/collect/g1;

    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/g1;Lcom/google/common/collect/q1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/g1<",
            "Lcom/google/common/collect/j2<",
            "TC;>;>;",
            "Lcom/google/common/collect/q1<",
            "TC;>;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Lcom/google/common/collect/k;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/common/collect/q1;->b:Lcom/google/common/collect/g1;

    .line 5
    iput-object p2, p0, Lcom/google/common/collect/q1;->c:Lcom/google/common/collect/q1;

    return-void
.end method

.method public static E()Lcom/google/common/collect/q1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">()",
            "Lcom/google/common/collect/q1<",
            "TC;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/collect/q1;->d:Lcom/google/common/collect/q1;

    return-object v0
.end method

.method public static F(Lcom/google/common/collect/j2;)Lcom/google/common/collect/q1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">(",
            "Lcom/google/common/collect/j2<",
            "TC;>;)",
            "Lcom/google/common/collect/q1<",
            "TC;>;"
        }
    .end annotation

    invoke-static {p0}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/common/collect/j2;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/common/collect/q1;->E()Lcom/google/common/collect/q1;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/google/common/collect/j2;->a()Lcom/google/common/collect/j2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/j2;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/common/collect/q1;->r()Lcom/google/common/collect/q1;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Lcom/google/common/collect/q1;

    invoke-static {p0}, Lcom/google/common/collect/g1;->y(Ljava/lang/Object;)Lcom/google/common/collect/g1;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/common/collect/q1;-><init>(Lcom/google/common/collect/g1;)V

    return-object v0
.end method

.method public static I(Ljava/lang/Iterable;)Lcom/google/common/collect/q1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>(",
            "Ljava/lang/Iterable<",
            "Lcom/google/common/collect/j2<",
            "TC;>;>;)",
            "Lcom/google/common/collect/q1<",
            "TC;>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/common/collect/c3;->u(Ljava/lang/Iterable;)Lcom/google/common/collect/c3;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/q1;->y(Lcom/google/common/collect/m2;)Lcom/google/common/collect/q1;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q(Lcom/google/common/collect/q1;)Lcom/google/common/collect/g1;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/q1;->b:Lcom/google/common/collect/g1;

    return-object p0
.end method

.method public static r()Lcom/google/common/collect/q1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">()",
            "Lcom/google/common/collect/q1<",
            "TC;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/collect/q1;->e:Lcom/google/common/collect/q1;

    return-object v0
.end method

.method public static w()Lcom/google/common/collect/q1$d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>()",
            "Lcom/google/common/collect/q1$d<",
            "TC;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/q1$d;

    invoke-direct {v0}, Lcom/google/common/collect/q1$d;-><init>()V

    return-object v0
.end method

.method public static y(Lcom/google/common/collect/m2;)Lcom/google/common/collect/q1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">(",
            "Lcom/google/common/collect/m2<",
            "TC;>;)",
            "Lcom/google/common/collect/q1<",
            "TC;>;"
        }
    .end annotation

    invoke-static {p0}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0}, Lcom/google/common/collect/m2;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/common/collect/q1;->E()Lcom/google/common/collect/q1;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/google/common/collect/j2;->a()Lcom/google/common/collect/j2;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/google/common/collect/m2;->i(Lcom/google/common/collect/j2;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/common/collect/q1;->r()Lcom/google/common/collect/q1;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v0, p0, Lcom/google/common/collect/q1;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Lcom/google/common/collect/q1;

    invoke-virtual {v0}, Lcom/google/common/collect/q1;->D()Z

    move-result v1

    if-nez v1, :cond_2

    return-object v0

    :cond_2
    new-instance v0, Lcom/google/common/collect/q1;

    invoke-interface {p0}, Lcom/google/common/collect/m2;->m()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/g1;->r(Ljava/util/Collection;)Lcom/google/common/collect/g1;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/common/collect/q1;-><init>(Lcom/google/common/collect/g1;)V

    return-object v0
.end method

.method public static z(Ljava/lang/Iterable;)Lcom/google/common/collect/q1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>(",
            "Ljava/lang/Iterable<",
            "Lcom/google/common/collect/j2<",
            "TC;>;>;)",
            "Lcom/google/common/collect/q1<",
            "TC;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/q1$d;

    invoke-direct {v0}, Lcom/google/common/collect/q1$d;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/collect/q1$d;->c(Ljava/lang/Iterable;)Lcom/google/common/collect/q1$d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/collect/q1$d;->d()Lcom/google/common/collect/q1;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public A(Lcom/google/common/collect/m2;)Lcom/google/common/collect/q1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/m2<",
            "TC;>;)",
            "Lcom/google/common/collect/q1<",
            "TC;>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/common/collect/c3;->s(Lcom/google/common/collect/m2;)Lcom/google/common/collect/c3;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/m2;->n(Lcom/google/common/collect/m2;)V

    invoke-static {v0}, Lcom/google/common/collect/q1;->y(Lcom/google/common/collect/m2;)Lcom/google/common/collect/q1;

    move-result-object p1

    return-object p1
.end method

.method public final B(Lcom/google/common/collect/j2;)Lcom/google/common/collect/g1;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/j2<",
            "TC;>;)",
            "Lcom/google/common/collect/g1<",
            "Lcom/google/common/collect/j2<",
            "TC;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/q1;->b:Lcom/google/common/collect/g1;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/google/common/collect/j2;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/q1;->c()Lcom/google/common/collect/j2;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/common/collect/j2;->n(Lcom/google/common/collect/j2;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/google/common/collect/q1;->b:Lcom/google/common/collect/g1;

    return-object p1

    :cond_1
    invoke-virtual {p1}, Lcom/google/common/collect/j2;->q()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/common/collect/q1;->b:Lcom/google/common/collect/g1;

    invoke-static {}, Lcom/google/common/collect/j2;->J()Lw2/t;

    move-result-object v1

    iget-object v2, p1, Lcom/google/common/collect/j2;->b:Lcom/google/common/collect/Q;

    sget-object v3, Lcom/google/common/collect/I2$c;->FIRST_AFTER:Lcom/google/common/collect/I2$c;

    sget-object v4, Lcom/google/common/collect/I2$b;->NEXT_HIGHER:Lcom/google/common/collect/I2$b;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/common/collect/I2;->c(Ljava/util/List;Lw2/t;Ljava/lang/Comparable;Lcom/google/common/collect/I2$c;Lcom/google/common/collect/I2$b;)I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/google/common/collect/j2;->r()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/common/collect/q1;->b:Lcom/google/common/collect/g1;

    invoke-static {}, Lcom/google/common/collect/j2;->x()Lw2/t;

    move-result-object v2

    iget-object v3, p1, Lcom/google/common/collect/j2;->c:Lcom/google/common/collect/Q;

    sget-object v4, Lcom/google/common/collect/I2$c;->FIRST_PRESENT:Lcom/google/common/collect/I2$c;

    sget-object v5, Lcom/google/common/collect/I2$b;->NEXT_HIGHER:Lcom/google/common/collect/I2$b;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/common/collect/I2;->c(Ljava/util/List;Lw2/t;Ljava/lang/Comparable;Lcom/google/common/collect/I2$c;Lcom/google/common/collect/I2$b;)I

    move-result v1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/google/common/collect/q1;->b:Lcom/google/common/collect/g1;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    :goto_1
    sub-int/2addr v1, v0

    if-nez v1, :cond_4

    invoke-static {}, Lcom/google/common/collect/g1;->x()Lcom/google/common/collect/g1;

    move-result-object p1

    return-object p1

    :cond_4
    new-instance v2, Lcom/google/common/collect/q1$a;

    invoke-direct {v2, p0, v1, v0, p1}, Lcom/google/common/collect/q1$a;-><init>(Lcom/google/common/collect/q1;IILcom/google/common/collect/j2;)V

    return-object v2

    :cond_5
    :goto_2
    invoke-static {}, Lcom/google/common/collect/g1;->x()Lcom/google/common/collect/g1;

    move-result-object p1

    return-object p1
.end method

.method public C(Lcom/google/common/collect/m2;)Lcom/google/common/collect/q1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/m2<",
            "TC;>;)",
            "Lcom/google/common/collect/q1<",
            "TC;>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/common/collect/c3;->s(Lcom/google/common/collect/m2;)Lcom/google/common/collect/c3;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/m2;->d()Lcom/google/common/collect/m2;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/common/collect/m2;->n(Lcom/google/common/collect/m2;)V

    invoke-static {v0}, Lcom/google/common/collect/q1;->y(Lcom/google/common/collect/m2;)Lcom/google/common/collect/q1;

    move-result-object p1

    return-object p1
.end method

.method public D()Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/q1;->b:Lcom/google/common/collect/g1;

    invoke-virtual {v0}, Lcom/google/common/collect/c1;->h()Z

    move-result v0

    return v0
.end method

.method public G(Lcom/google/common/collect/j2;)Lcom/google/common/collect/q1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/j2<",
            "TC;>;)",
            "Lcom/google/common/collect/q1<",
            "TC;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/q1;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/common/collect/q1;->c()Lcom/google/common/collect/j2;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/common/collect/j2;->n(Lcom/google/common/collect/j2;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1, v0}, Lcom/google/common/collect/j2;->u(Lcom/google/common/collect/j2;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/common/collect/q1;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/q1;->B(Lcom/google/common/collect/j2;)Lcom/google/common/collect/g1;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/common/collect/q1;-><init>(Lcom/google/common/collect/g1;)V

    return-object v0

    :cond_1
    invoke-static {}, Lcom/google/common/collect/q1;->E()Lcom/google/common/collect/q1;

    move-result-object p1

    return-object p1
.end method

.method public H(Lcom/google/common/collect/m2;)Lcom/google/common/collect/q1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/m2<",
            "TC;>;)",
            "Lcom/google/common/collect/q1<",
            "TC;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/q1;->u()Lcom/google/common/collect/r1;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/m2;->m()Ljava/util/Set;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/common/collect/D1;->f(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/q1;->I(Ljava/lang/Iterable;)Lcom/google/common/collect/q1;

    move-result-object p1

    return-object p1
.end method

.method public J()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/google/common/collect/q1$f;

    iget-object v1, p0, Lcom/google/common/collect/q1;->b:Lcom/google/common/collect/g1;

    invoke-direct {v0, v1}, Lcom/google/common/collect/q1$f;-><init>(Lcom/google/common/collect/g1;)V

    return-object v0
.end method

.method public a(Lcom/google/common/collect/j2;)V
    .locals 0
    .annotation build LI2/e;
        value = "Always throws UnsupportedOperationException"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/j2<",
            "TC;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public b(Ljava/lang/Iterable;)V
    .locals 0
    .annotation build LI2/e;
        value = "Always throws UnsupportedOperationException"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/common/collect/j2<",
            "TC;>;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public c()Lcom/google/common/collect/j2;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/j2<",
            "TC;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/q1;->b:Lcom/google/common/collect/g1;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/q1;->b:Lcom/google/common/collect/g1;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/j2;

    iget-object v0, v0, Lcom/google/common/collect/j2;->b:Lcom/google/common/collect/Q;

    iget-object v1, p0, Lcom/google/common/collect/q1;->b:Lcom/google/common/collect/g1;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/j2;

    iget-object v1, v1, Lcom/google/common/collect/j2;->c:Lcom/google/common/collect/Q;

    invoke-static {v0, v1}, Lcom/google/common/collect/j2;->k(Lcom/google/common/collect/Q;Lcom/google/common/collect/Q;)Lcom/google/common/collect/j2;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic clear()V
    .locals 0

    invoke-super {p0}, Lcom/google/common/collect/k;->clear()V

    return-void
.end method

.method public bridge synthetic contains(Ljava/lang/Comparable;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/google/common/collect/k;->contains(Ljava/lang/Comparable;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic d()Lcom/google/common/collect/m2;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/q1;->x()Lcom/google/common/collect/q1;

    move-result-object v0

    return-object v0
.end method

.method public e(Lcom/google/common/collect/j2;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/j2<",
            "TC;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/q1;->b:Lcom/google/common/collect/g1;

    invoke-static {}, Lcom/google/common/collect/j2;->x()Lw2/t;

    move-result-object v1

    iget-object v2, p1, Lcom/google/common/collect/j2;->b:Lcom/google/common/collect/Q;

    invoke-static {}, Lcom/google/common/collect/Ordering;->A()Lcom/google/common/collect/Ordering;

    move-result-object v3

    sget-object v4, Lcom/google/common/collect/I2$c;->ANY_PRESENT:Lcom/google/common/collect/I2$c;

    sget-object v5, Lcom/google/common/collect/I2$b;->NEXT_HIGHER:Lcom/google/common/collect/I2$b;

    invoke-static/range {v0 .. v5}, Lcom/google/common/collect/I2;->d(Ljava/util/List;Lw2/t;Ljava/lang/Object;Ljava/util/Comparator;Lcom/google/common/collect/I2$c;Lcom/google/common/collect/I2$b;)I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/q1;->b:Lcom/google/common/collect/g1;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/common/collect/q1;->b:Lcom/google/common/collect/g1;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/j2;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/j2;->u(Lcom/google/common/collect/j2;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/common/collect/q1;->b:Lcom/google/common/collect/g1;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/j2;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/j2;->s(Lcom/google/common/collect/j2;)Lcom/google/common/collect/j2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/j2;->v()Z

    move-result v1

    if-nez v1, :cond_0

    return v2

    :cond_0
    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/google/common/collect/q1;->b:Lcom/google/common/collect/g1;

    sub-int/2addr v0, v2

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/j2;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/j2;->u(Lcom/google/common/collect/j2;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/common/collect/q1;->b:Lcom/google/common/collect/g1;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/j2;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/j2;->s(Lcom/google/common/collect/j2;)Lcom/google/common/collect/j2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/j2;->v()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/google/common/collect/k;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f(Ljava/lang/Iterable;)V
    .locals 0
    .annotation build LI2/e;
        value = "Always throws UnsupportedOperationException"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/common/collect/j2<",
            "TC;>;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public bridge synthetic g(Lcom/google/common/collect/m2;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/google/common/collect/k;->g(Lcom/google/common/collect/m2;)Z

    move-result p1

    return p1
.end method

.method public h(Ljava/lang/Comparable;)Lcom/google/common/collect/j2;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Lcom/google/common/collect/j2<",
            "TC;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/q1;->b:Lcom/google/common/collect/g1;

    invoke-static {}, Lcom/google/common/collect/j2;->x()Lw2/t;

    move-result-object v1

    invoke-static {p1}, Lcom/google/common/collect/Q;->d(Ljava/lang/Comparable;)Lcom/google/common/collect/Q;

    move-result-object v2

    invoke-static {}, Lcom/google/common/collect/Ordering;->A()Lcom/google/common/collect/Ordering;

    move-result-object v3

    sget-object v4, Lcom/google/common/collect/I2$c;->ANY_PRESENT:Lcom/google/common/collect/I2$c;

    sget-object v5, Lcom/google/common/collect/I2$b;->NEXT_LOWER:Lcom/google/common/collect/I2$b;

    invoke-static/range {v0 .. v5}, Lcom/google/common/collect/I2;->d(Ljava/util/List;Lw2/t;Ljava/lang/Object;Ljava/util/Comparator;Lcom/google/common/collect/I2$c;Lcom/google/common/collect/I2$b;)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/common/collect/q1;->b:Lcom/google/common/collect/g1;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/j2;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/j2;->i(Ljava/lang/Comparable;)Z

    move-result p1

    if-eqz p1, :cond_0

    move-object v2, v0

    :cond_0
    return-object v2
.end method

.method public i(Lcom/google/common/collect/j2;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/j2<",
            "TC;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/q1;->b:Lcom/google/common/collect/g1;

    invoke-static {}, Lcom/google/common/collect/j2;->x()Lw2/t;

    move-result-object v1

    iget-object v2, p1, Lcom/google/common/collect/j2;->b:Lcom/google/common/collect/Q;

    invoke-static {}, Lcom/google/common/collect/Ordering;->A()Lcom/google/common/collect/Ordering;

    move-result-object v3

    sget-object v4, Lcom/google/common/collect/I2$c;->ANY_PRESENT:Lcom/google/common/collect/I2$c;

    sget-object v5, Lcom/google/common/collect/I2$b;->NEXT_LOWER:Lcom/google/common/collect/I2$b;

    invoke-static/range {v0 .. v5}, Lcom/google/common/collect/I2;->d(Ljava/util/List;Lw2/t;Ljava/lang/Object;Ljava/util/Comparator;Lcom/google/common/collect/I2$c;Lcom/google/common/collect/I2$b;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/common/collect/q1;->b:Lcom/google/common/collect/g1;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/j2;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/j2;->n(Lcom/google/common/collect/j2;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/q1;->b:Lcom/google/common/collect/g1;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic j(Ljava/lang/Iterable;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/google/common/collect/k;->j(Ljava/lang/Iterable;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic k(Lcom/google/common/collect/j2;)Lcom/google/common/collect/m2;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/q1;->G(Lcom/google/common/collect/j2;)Lcom/google/common/collect/q1;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic l()Ljava/util/Set;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/q1;->s()Lcom/google/common/collect/r1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic m()Ljava/util/Set;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/q1;->u()Lcom/google/common/collect/r1;

    move-result-object v0

    return-object v0
.end method

.method public n(Lcom/google/common/collect/m2;)V
    .locals 0
    .annotation build LI2/e;
        value = "Always throws UnsupportedOperationException"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/m2<",
            "TC;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public o(Lcom/google/common/collect/j2;)V
    .locals 0
    .annotation build LI2/e;
        value = "Always throws UnsupportedOperationException"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/j2<",
            "TC;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public p(Lcom/google/common/collect/m2;)V
    .locals 0
    .annotation build LI2/e;
        value = "Always throws UnsupportedOperationException"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/m2<",
            "TC;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public s()Lcom/google/common/collect/r1;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/r1<",
            "Lcom/google/common/collect/j2<",
            "TC;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/q1;->b:Lcom/google/common/collect/g1;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/common/collect/r1;->z()Lcom/google/common/collect/r1;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/v2;

    iget-object v1, p0, Lcom/google/common/collect/q1;->b:Lcom/google/common/collect/g1;

    invoke-virtual {v1}, Lcom/google/common/collect/g1;->L()Lcom/google/common/collect/g1;

    move-result-object v1

    invoke-static {}, Lcom/google/common/collect/j2;->D()Lcom/google/common/collect/Ordering;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/Ordering;->F()Lcom/google/common/collect/Ordering;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/v2;-><init>(Lcom/google/common/collect/g1;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public u()Lcom/google/common/collect/r1;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/r1<",
            "Lcom/google/common/collect/j2<",
            "TC;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/q1;->b:Lcom/google/common/collect/g1;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/common/collect/r1;->z()Lcom/google/common/collect/r1;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/v2;

    iget-object v1, p0, Lcom/google/common/collect/q1;->b:Lcom/google/common/collect/g1;

    invoke-static {}, Lcom/google/common/collect/j2;->D()Lcom/google/common/collect/Ordering;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/v2;-><init>(Lcom/google/common/collect/g1;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public v(Lcom/google/common/collect/W;)Lcom/google/common/collect/x1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/W<",
            "TC;>;)",
            "Lcom/google/common/collect/x1<",
            "TC;>;"
        }
    .end annotation

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/common/collect/q1;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/common/collect/x1;->h0()Lcom/google/common/collect/x1;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/q1;->c()Lcom/google/common/collect/j2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/collect/j2;->e(Lcom/google/common/collect/W;)Lcom/google/common/collect/j2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/j2;->q()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/google/common/collect/j2;->r()Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    invoke-virtual {p1}, Lcom/google/common/collect/W;->e()Ljava/lang/Comparable;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Neither the DiscreteDomain nor this range set are bounded above"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    new-instance v0, Lcom/google/common/collect/q1$b;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/q1$b;-><init>(Lcom/google/common/collect/q1;Lcom/google/common/collect/W;)V

    return-object v0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Neither the DiscreteDomain nor this range set are bounded below"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public x()Lcom/google/common/collect/q1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/q1<",
            "TC;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/q1;->c:Lcom/google/common/collect/q1;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/q1;->b:Lcom/google/common/collect/g1;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/common/collect/q1;->r()Lcom/google/common/collect/q1;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/q1;->c:Lcom/google/common/collect/q1;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/q1;->b:Lcom/google/common/collect/g1;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/common/collect/q1;->b:Lcom/google/common/collect/g1;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/j2;

    invoke-static {}, Lcom/google/common/collect/j2;->a()Lcom/google/common/collect/j2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/j2;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/common/collect/q1;->E()Lcom/google/common/collect/q1;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/q1;->c:Lcom/google/common/collect/q1;

    return-object v0

    :cond_2
    new-instance v0, Lcom/google/common/collect/q1$e;

    invoke-direct {v0, p0}, Lcom/google/common/collect/q1$e;-><init>(Lcom/google/common/collect/q1;)V

    new-instance v1, Lcom/google/common/collect/q1;

    invoke-direct {v1, v0, p0}, Lcom/google/common/collect/q1;-><init>(Lcom/google/common/collect/g1;Lcom/google/common/collect/q1;)V

    iput-object v1, p0, Lcom/google/common/collect/q1;->c:Lcom/google/common/collect/q1;

    return-object v1
.end method
