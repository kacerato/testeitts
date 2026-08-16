.class public final Lcom/android/tools/r8/internal/fd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/gd;


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/internal/AA;

.field public final c:Lcom/android/tools/r8/internal/wA;

.field public d:Lcom/android/tools/r8/graph/g1;

.field public final e:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/wA;Lcom/android/tools/r8/internal/AA;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/fd;->e:Ljava/util/Set;

    iput-object p1, p0, Lcom/android/tools/r8/internal/fd;->a:Lcom/android/tools/r8/graph/y;

    iput-object p3, p0, Lcom/android/tools/r8/internal/fd;->b:Lcom/android/tools/r8/internal/AA;

    iput-object p2, p0, Lcom/android/tools/r8/internal/fd;->c:Lcom/android/tools/r8/internal/wA;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/g1;Ljava/util/Set;)V
    .locals 2

    .line 18
    iget-object v0, p0, Lcom/android/tools/r8/graph/g1;->g:Lcom/android/tools/r8/graph/k3;

    .line 19
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    new-instance v0, Lcom/android/tools/r8/internal/Ta1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Ta1;-><init>()V

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/vK;->b(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/V60;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/g1;->I0()Lcom/android/tools/r8/graph/k3;

    move-result-object v0

    .line 22
    iget v1, v0, Lcom/android/tools/r8/graph/g;->c:I

    and-int/lit16 v1, v1, -0x1001

    iput v1, v0, Lcom/android/tools/r8/graph/g;->c:I

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/g1;->g:Lcom/android/tools/r8/graph/k3;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 24
    new-instance v0, Lcom/android/tools/r8/internal/Ua1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Ua1;-><init>()V

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/vK;->b(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/V60;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 25
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/g1;->I0()Lcom/android/tools/r8/graph/k3;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/g;->a()Lcom/android/tools/r8/graph/g;

    :cond_1
    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/graph/g1;)Z
    .locals 0

    .line 26
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/g1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/g1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Lcom/android/tools/r8/graph/g1;)Z
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/android/tools/r8/graph/g1;->g:Lcom/android/tools/r8/graph/k3;

    .line 33
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/g;->o()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static c(Lcom/android/tools/r8/graph/g1;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/tools/r8/graph/g1;->g:Lcom/android/tools/r8/graph/k3;

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/g;->e()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static c(Lcom/android/tools/r8/graph/g1;Ljava/util/Set;)Z
    .locals 1

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/Oa1;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Oa1;-><init>(Lcom/android/tools/r8/graph/g1;)V

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/vK;->b(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/V60;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/g1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/tools/r8/internal/fd;->d:Lcom/android/tools/r8/graph/g1;

    return-void
.end method

.method public final synthetic a(Ljava/util/List;Ljava/util/Set;Lcom/android/tools/r8/graph/g1;)V
    .locals 0

    .line 15
    invoke-virtual {p0, p3, p2}, Lcom/android/tools/r8/internal/fd;->b(Lcom/android/tools/r8/graph/g1;Ljava/util/Set;)Lcom/android/tools/r8/graph/g1;

    move-result-object p2

    .line 16
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    iget-object p1, p0, Lcom/android/tools/r8/internal/fd;->e:Ljava/util/Set;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/l1;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a()[Lcom/android/tools/r8/graph/g1;
    .locals 3

    .line 2
    sget-boolean v0, Lcom/android/tools/r8/internal/fd;->f:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/fd;->b:Lcom/android/tools/r8/internal/AA;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/AA;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 3
    :cond_1
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/android/tools/r8/internal/fd;->d:Lcom/android/tools/r8/graph/g1;

    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v1, p0, Lcom/android/tools/r8/internal/fd;->e:Ljava/util/Set;

    iget-object v2, p0, Lcom/android/tools/r8/internal/fd;->d:Lcom/android/tools/r8/graph/g1;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/l1;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_2
    iget-object v1, p0, Lcom/android/tools/r8/internal/fd;->b:Lcom/android/tools/r8/internal/AA;

    .line 8
    sget-boolean v2, Lcom/android/tools/r8/internal/AA;->f:Z

    if-nez v2, :cond_4

    .line 9
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/AA;->g()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    .line 10
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 11
    :cond_4
    :goto_1
    iget-object v1, v1, Lcom/android/tools/r8/internal/AA;->e:Lcom/android/tools/r8/internal/m6;

    .line 12
    new-instance v2, Lcom/android/tools/r8/internal/Pa1;

    invoke-direct {v2, p0, v0}, Lcom/android/tools/r8/internal/Pa1;-><init>(Lcom/android/tools/r8/internal/fd;Ljava/util/List;)V

    .line 13
    invoke-interface {v1, v2}, Lcom/android/tools/r8/internal/m6;->a(Ljava/util/function/BiConsumer;)V

    .line 14
    sget-object v1, Lcom/android/tools/r8/graph/g1;->o:[Lcom/android/tools/r8/graph/g1;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/tools/r8/graph/g1;

    return-object v0
.end method

.method public final b(Lcom/android/tools/r8/graph/g1;Ljava/util/Set;)Lcom/android/tools/r8/graph/g1;
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 1
    invoke-static {p1, p2}, Lcom/android/tools/r8/internal/fd;->a(Lcom/android/tools/r8/graph/g1;Ljava/util/Set;)V

    .line 2
    invoke-static {p1, p2}, Lcom/android/tools/r8/internal/fd;->c(Lcom/android/tools/r8/graph/g1;Ljava/util/Set;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3
    iget-object v3, p0, Lcom/android/tools/r8/internal/fd;->a:Lcom/android/tools/r8/graph/y;

    .line 4
    invoke-static {p1}, Lcom/android/tools/r8/internal/qK;->b(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v4

    .line 5
    new-array v5, v2, [Ljava/lang/Iterable;

    aput-object v4, v5, v1

    aput-object p2, v5, v0

    invoke-static {v5}, Lcom/android/tools/r8/internal/Vx;->b([Ljava/lang/Iterable;)Lcom/android/tools/r8/internal/Ux;

    move-result-object v4

    .line 6
    new-instance v5, Lcom/android/tools/r8/internal/Qa1;

    invoke-direct {v5}, Lcom/android/tools/r8/internal/Qa1;-><init>()V

    .line 7
    new-instance v6, Lcom/android/tools/r8/internal/sK;

    invoke-direct {v6, v4, v5}, Lcom/android/tools/r8/internal/sK;-><init>(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/Jy;)V

    .line 8
    invoke-static {v6, v3}, Lcom/android/tools/r8/graph/P2;->a(Ljava/lang/Iterable;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    .line 9
    invoke-static {v3, v4}, Lcom/android/tools/r8/graph/P2;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    .line 10
    iget-object v4, p0, Lcom/android/tools/r8/internal/fd;->a:Lcom/android/tools/r8/graph/y;

    .line 11
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/l1;

    iget-object v6, p0, Lcom/android/tools/r8/internal/fd;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v6

    .line 12
    iget-object v7, v5, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    .line 13
    iget-object v5, v5, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v6, v7, v3, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/l1;

    move-result-object v3

    .line 14
    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v5

    invoke-virtual {p1, v4, v3, v5}, Lcom/android/tools/r8/graph/g1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/l1;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/g1;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, p1

    .line 15
    :goto_0
    iget-object v4, p0, Lcom/android/tools/r8/internal/fd;->e:Ljava/util/Set;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 16
    iget-object v4, p0, Lcom/android/tools/r8/internal/fd;->a:Lcom/android/tools/r8/graph/y;

    .line 17
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v5

    .line 18
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/h1;->B0()Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    .line 19
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/g1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    .line 20
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/h1;->C0()Lcom/android/tools/r8/graph/L2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v8, p0, Lcom/android/tools/r8/internal/fd;->e:Ljava/util/Set;

    .line 21
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v9, Lcom/android/tools/r8/internal/Ra1;

    invoke-direct {v9, v8}, Lcom/android/tools/r8/internal/Ra1;-><init>(Ljava/util/Set;)V

    invoke-static {v9}, Lcom/android/tools/r8/internal/Na1;->a(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v8

    .line 22
    invoke-virtual {v5, v6, v7, v3, v8}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Ljava/lang/String;Ljava/util/function/Predicate;)Lcom/android/tools/r8/graph/l1;

    move-result-object v3

    .line 23
    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v5

    invoke-virtual {p1, v4, v3, v5}, Lcom/android/tools/r8/graph/g1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/l1;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/g1;

    move-result-object v3

    .line 24
    :cond_1
    iget-object v4, p0, Lcom/android/tools/r8/internal/fd;->c:Lcom/android/tools/r8/internal/wA;

    .line 25
    invoke-static {p1}, Lcom/android/tools/r8/internal/qK;->b(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v5

    .line 26
    new-array v2, v2, [Ljava/lang/Iterable;

    aput-object p2, v2, v1

    aput-object v5, v2, v0

    invoke-static {v2}, Lcom/android/tools/r8/internal/Vx;->b([Ljava/lang/Iterable;)Lcom/android/tools/r8/internal/Ux;

    move-result-object p2

    .line 27
    new-instance v0, Lcom/android/tools/r8/internal/Sa1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Sa1;-><init>()V

    .line 28
    new-instance v1, Lcom/android/tools/r8/internal/sK;

    invoke-direct {v1, p2, v0}, Lcom/android/tools/r8/internal/sK;-><init>(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/Jy;)V

    .line 29
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/l1;

    .line 30
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/l1;

    .line 31
    invoke-virtual {v4, v1, p2, p1}, Lcom/android/tools/r8/internal/wA;->a(Lcom/android/tools/r8/internal/sK;Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/l1;)V

    return-object v3
.end method
