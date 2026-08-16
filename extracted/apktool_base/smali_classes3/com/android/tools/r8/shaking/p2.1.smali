.class public final Lcom/android/tools/r8/shaking/p2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final a:Ljava/util/Set;

.field public final b:Lcom/android/tools/r8/graph/y;

.field public final c:Ljava/util/IdentityHashMap;

.field public final d:Lcom/android/tools/r8/shaking/m2;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Ljava/util/Set;Lcom/android/tools/r8/shaking/m2;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/p2;->b:Lcom/android/tools/r8/graph/y;

    sget-boolean v0, Lcom/android/tools/r8/shaking/p2;->e:Z

    if-nez v0, :cond_1

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/shaking/Wd;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/shaking/Wd;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p2, p0, Lcom/android/tools/r8/shaking/p2;->a:Ljava/util/Set;

    iput-object p3, p0, Lcom/android/tools/r8/shaking/p2;->d:Lcom/android/tools/r8/shaking/m2;

    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/p2;->c:Ljava/util/IdentityHashMap;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 8
    new-instance v0, Lcom/android/tools/r8/shaking/l2;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/p2;->b:Lcom/android/tools/r8/graph/y;

    new-instance v2, Lcom/android/tools/r8/shaking/Xd;

    invoke-direct {v2, p0}, Lcom/android/tools/r8/shaking/Xd;-><init>(Lcom/android/tools/r8/shaking/p2;)V

    invoke-direct {v0, v2, v1}, Lcom/android/tools/r8/shaking/l2;-><init>(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/y;)V

    iget-object v1, p0, Lcom/android/tools/r8/shaking/p2;->a:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/l2;->a(Ljava/util/Set;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;)V
    .locals 3

    .line 14
    sget-boolean v0, Lcom/android/tools/r8/shaking/p2;->e:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/p2;->d:Lcom/android/tools/r8/shaking/m2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    iget-object v1, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/m2;->e(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 17
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/shaking/p2;->d:Lcom/android/tools/r8/shaking/m2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/m2;->a(Lcom/android/tools/r8/graph/M2;)V

    .line 19
    iget-object v0, p1, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    if-eqz v0, :cond_2

    .line 20
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/shaking/p2;->a(Lcom/android/tools/r8/graph/M2;)V

    .line 21
    :cond_2
    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    iget-object p1, p1, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    .line 22
    invoke-virtual {p0, v2}, Lcom/android/tools/r8/shaking/p2;->a(Lcom/android/tools/r8/graph/M2;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/r0;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/shaking/p2;->d:Lcom/android/tools/r8/shaking/m2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iget-object v1, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/m2;->e(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget v0, p2, Lcom/android/tools/r8/graph/r0;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p2, p2, Lcom/android/tools/r8/graph/r0;->c:Lcom/android/tools/r8/graph/e1;

    iget-object p2, p2, Lcom/android/tools/r8/graph/e1;->b:Lcom/android/tools/r8/graph/M2;

    .line 5
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/shaking/p2;->b(Lcom/android/tools/r8/graph/M2;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 6
    iget-object p2, p0, Lcom/android/tools/r8/shaking/p2;->d:Lcom/android/tools/r8/shaking/m2;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/shaking/m2;->a(Lcom/android/tools/r8/graph/M2;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;)V
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/shaking/p2;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/p2;->d:Lcom/android/tools/r8/shaking/m2;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/shaking/m2;->e(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/shaking/p2;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 12
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->v1()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/p2;->a(Lcom/android/tools/r8/graph/H2;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final b()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/shaking/p2;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j;

    .line 2
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/H2;

    .line 3
    iget-object v2, p0, Lcom/android/tools/r8/shaking/p2;->d:Lcom/android/tools/r8/shaking/m2;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iget-object v3, v1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/shaking/m2;->e(Lcom/android/tools/r8/graph/M2;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v2, v1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 6
    iget-object v3, p0, Lcom/android/tools/r8/shaking/p2;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/j;

    .line 7
    iget-object v4, p0, Lcom/android/tools/r8/shaking/p2;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v4

    iget-object v4, v4, Lcom/android/tools/r8/graph/u1;->o2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v3, v2, v4}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 8
    invoke-virtual {p0, v2}, Lcom/android/tools/r8/shaking/p2;->b(Lcom/android/tools/r8/graph/M2;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 9
    iget-object v2, v1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 10
    iget-object v3, p0, Lcom/android/tools/r8/shaking/p2;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/tools/r8/graph/r0;->a(Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/graph/M2;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    move v2, v4

    goto :goto_1

    .line 11
    :cond_2
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/b1;->k0()Lcom/android/tools/r8/graph/u0;

    move-result-object v2

    iget-object v5, p0, Lcom/android/tools/r8/shaking/p2;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v5

    iget-object v5, v5, Lcom/android/tools/r8/graph/u1;->s3:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v2, v5}, Lcom/android/tools/r8/graph/u0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/r0;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v3

    goto :goto_1

    .line 12
    :cond_3
    iget-object v2, v2, Lcom/android/tools/r8/graph/r0;->c:Lcom/android/tools/r8/graph/e1;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/e1;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "RUNTIME"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    :goto_1
    if-eqz v2, :cond_0

    .line 13
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/shaking/p2;->a(Lcom/android/tools/r8/graph/H2;)V

    .line 14
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->D1()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j1;

    .line 15
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    iget-object v2, v2, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    .line 16
    iget-object v5, v2, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/O2;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 17
    iget-object v2, v2, Lcom/android/tools/r8/graph/I2;->e:Lcom/android/tools/r8/graph/M2;

    iget-object v5, p0, Lcom/android/tools/r8/shaking/p2;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    .line 18
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 19
    iget-object v5, p0, Lcom/android/tools/r8/shaking/p2;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/j;

    .line 20
    iget-object v6, p0, Lcom/android/tools/r8/shaking/p2;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v6

    iget-object v6, v6, Lcom/android/tools/r8/graph/u1;->n2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v5, v2, v6}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z

    move-result v5

    if-eqz v5, :cond_5

    move v5, v4

    goto :goto_3

    :cond_5
    move v5, v3

    :goto_3
    if-eqz v5, :cond_4

    .line 21
    invoke-virtual {p0, v2}, Lcom/android/tools/r8/shaking/p2;->a(Lcom/android/tools/r8/graph/M2;)V

    goto :goto_2

    .line 22
    :cond_6
    new-instance v2, Lcom/android/tools/r8/shaking/Vd;

    invoke-direct {v2, p0, v1}, Lcom/android/tools/r8/shaking/Vd;-><init>(Lcom/android/tools/r8/shaking/p2;Lcom/android/tools/r8/graph/H2;)V

    .line 23
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/b1;->k0()Lcom/android/tools/r8/graph/u0;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/tools/r8/graph/u0;->forEach(Ljava/util/function/Consumer;)V

    .line 24
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->z1()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/j1;

    .line 25
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/b1;->k0()Lcom/android/tools/r8/graph/u0;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/tools/r8/graph/u0;->forEach(Ljava/util/function/Consumer;)V

    .line 26
    iget-object v4, v4, Lcom/android/tools/r8/graph/j1;->i:Lcom/android/tools/r8/graph/z5;

    invoke-virtual {v4, v2}, Lcom/android/tools/r8/graph/z5;->d(Ljava/util/function/Consumer;)V

    goto :goto_4

    .line 27
    :cond_7
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->I0()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/g1;

    .line 28
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/b1;->k0()Lcom/android/tools/r8/graph/u0;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/tools/r8/graph/u0;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_5

    :cond_8
    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/M2;)Z
    .locals 7

    .line 29
    iget-object v0, p0, Lcom/android/tools/r8/shaking/p2;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_c

    .line 30
    iget-object v0, p0, Lcom/android/tools/r8/shaking/p2;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    if-nez v0, :cond_0

    .line 31
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_2

    .line 32
    :cond_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 33
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->D1()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j1;

    .line 34
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    iget-object v2, v2, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    .line 35
    iget-object v3, v2, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/O2;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 36
    iget-object v2, v2, Lcom/android/tools/r8/graph/I2;->e:Lcom/android/tools/r8/graph/M2;

    iget-object v3, p0, Lcom/android/tools/r8/shaking/p2;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    .line 37
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 38
    sget-boolean v3, Lcom/android/tools/r8/shaking/p2;->e:Z

    if-nez v3, :cond_3

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 39
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/shaking/p2;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j;

    .line 40
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/h;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_4

    .line 41
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->f0()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 42
    :cond_4
    iget-object v1, p0, Lcom/android/tools/r8/shaking/p2;->b:Lcom/android/tools/r8/graph/y;

    .line 43
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/tools/r8/internal/nJ;->H0:Z

    if-nez v1, :cond_6

    :cond_5
    move v1, v4

    goto :goto_1

    :cond_6
    move v1, v3

    .line 44
    :goto_1
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 45
    iget-object v5, p0, Lcom/android/tools/r8/shaking/p2;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/j;

    .line 46
    iget-object v6, p0, Lcom/android/tools/r8/shaking/p2;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v6

    iget-object v6, v6, Lcom/android/tools/r8/graph/u1;->n2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v5, v2, v6}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z

    move-result v5

    if-eqz v5, :cond_7

    if-nez v1, :cond_8

    .line 47
    :cond_7
    iget-object v1, p0, Lcom/android/tools/r8/shaking/p2;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j;

    .line 48
    iget-object v5, p0, Lcom/android/tools/r8/shaking/p2;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v5

    iget-object v5, v5, Lcom/android/tools/r8/graph/u1;->o2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v1, v2, v5}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 49
    invoke-virtual {p0, v2}, Lcom/android/tools/r8/shaking/p2;->b(Lcom/android/tools/r8/graph/M2;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_8
    move v3, v4

    .line 50
    :cond_9
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 51
    :cond_a
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_b
    move-object v0, v1

    .line 52
    :goto_2
    iget-object v1, p0, Lcom/android/tools/r8/shaking/p2;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_c
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method
