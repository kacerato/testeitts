.class public Lcom/android/tools/r8/graph/U3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/graph/b4;


# static fields
.field public static final synthetic g:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/M3$a;

.field public final b:Ljava/util/function/BiPredicate;

.field public final c:Ljava/util/function/Predicate;

.field public final d:Lcom/android/tools/r8/graph/y;

.field public final e:Lcom/android/tools/r8/graph/H3$c;

.field public f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M3$a;Ljava/util/function/BiPredicate;Ljava/util/function/Predicate;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/tools/r8/graph/U3;->f:Z

    iput-object p1, p0, Lcom/android/tools/r8/graph/U3;->d:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/graph/U3;->a:Lcom/android/tools/r8/graph/M3$a;

    iput-object p3, p0, Lcom/android/tools/r8/graph/U3;->b:Ljava/util/function/BiPredicate;

    iput-object p4, p0, Lcom/android/tools/r8/graph/U3;->c:Ljava/util/function/Predicate;

    new-instance p2, Lcom/android/tools/r8/graph/H3$c;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/graph/H3$c;-><init>(Lcom/android/tools/r8/graph/M2;)V

    sget-object p1, Lcom/android/tools/r8/graph/H3$k;->c:Lcom/android/tools/r8/graph/H3$k;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/graph/H3$c;->b(Lcom/android/tools/r8/graph/H3$k;)Lcom/android/tools/r8/graph/H3$c;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/graph/U3;->e:Lcom/android/tools/r8/graph/H3$c;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M3$a;Ljava/util/function/BiPredicate;Ljava/util/function/Predicate;)Lcom/android/tools/r8/graph/U3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/graph/y<",
            "*>;",
            "Lcom/android/tools/r8/graph/M3$a;",
            "Ljava/util/function/BiPredicate<",
            "Lcom/android/tools/r8/graph/M2;",
            "Lcom/android/tools/r8/graph/M2;",
            ">;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/tools/r8/graph/M2;",
            ">;)",
            "Lcom/android/tools/r8/graph/U3;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/android/tools/r8/graph/U3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/tools/r8/graph/U3;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M3$a;Ljava/util/function/BiPredicate;Ljava/util/function/Predicate;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H3$c;)Lcom/android/tools/r8/graph/H3$c;
    .locals 0

    if-nez p1, :cond_0

    return-object p1

    .line 45
    :cond_0
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/graph/H3$c;->a(Lcom/android/tools/r8/graph/b4;)Lcom/android/tools/r8/graph/H3$c;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H3$c;Lcom/android/tools/r8/graph/H3$c;)Lcom/android/tools/r8/graph/H3$c;
    .locals 3

    .line 29
    iget-object v0, p0, Lcom/android/tools/r8/graph/U3;->d:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    .line 30
    iget-object v1, p1, Lcom/android/tools/r8/graph/H3$c;->b:Lcom/android/tools/r8/graph/M2;

    .line 31
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    invoke-static {}, Lcom/android/tools/r8/internal/Hz;->g()Lcom/android/tools/r8/internal/Hz;

    move-result-object v2

    .line 33
    invoke-virtual {v0, v2, v1}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 34
    iget-object v1, p0, Lcom/android/tools/r8/graph/U3;->d:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v1

    .line 35
    iget-object p2, p2, Lcom/android/tools/r8/graph/H3$c;->b:Lcom/android/tools/r8/graph/M2;

    .line 36
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    invoke-static {}, Lcom/android/tools/r8/internal/Hz;->g()Lcom/android/tools/r8/internal/Hz;

    move-result-object v2

    .line 38
    invoke-virtual {v1, v2, p2}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    .line 39
    iget-object v1, p0, Lcom/android/tools/r8/graph/U3;->b:Ljava/util/function/BiPredicate;

    invoke-interface {v1, v0, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 40
    :cond_0
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/graph/H3$c;->a(Lcom/android/tools/r8/graph/b4;)Lcom/android/tools/r8/graph/H3$c;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H3$e;)Lcom/android/tools/r8/graph/H3$e;
    .locals 1

    .line 27
    invoke-interface {p1}, Lcom/android/tools/r8/graph/H3$d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 28
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/U3;->b(Lcom/android/tools/r8/graph/H3$e;)Lcom/android/tools/r8/graph/H3$e;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H3$f;)Lcom/android/tools/r8/graph/H3$f;
    .locals 1

    .line 8
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/graph/H3$f;->a(Lcom/android/tools/r8/graph/b4;)Lcom/android/tools/r8/graph/H3$f;

    move-result-object p1

    .line 9
    sget-boolean v0, Lcom/android/tools/r8/graph/U3;->g:Z

    if-nez v0, :cond_2

    .line 10
    iget-object v0, p1, Lcom/android/tools/r8/graph/H3$f;->b:Lcom/android/tools/r8/graph/H3$e;

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/H3$e;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 12
    :cond_0
    iget-object v0, p1, Lcom/android/tools/r8/graph/H3$f;->c:Ljava/util/List;

    .line 13
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 14
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_0
    return-object p1
.end method

.method public a(Lcom/android/tools/r8/graph/H3$g;)Lcom/android/tools/r8/graph/H3$g;
    .locals 1

    .line 3
    invoke-interface {p1}, Lcom/android/tools/r8/graph/H3$d;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/graph/H3$g;->a(Lcom/android/tools/r8/graph/b4;)Lcom/android/tools/r8/graph/H3$g;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H3$h;)Lcom/android/tools/r8/graph/H3$h;
    .locals 2

    .line 41
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H3$h;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 42
    :cond_0
    iget-object v0, p1, Lcom/android/tools/r8/graph/H3$h;->a:Lcom/android/tools/r8/graph/H3$i;

    .line 43
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/U3;->a(Lcom/android/tools/r8/graph/H3$i;)Lcom/android/tools/r8/graph/H3$i;

    move-result-object v1

    if-ne v0, v1, :cond_1

    :goto_0
    return-object p1

    .line 44
    :cond_1
    new-instance p1, Lcom/android/tools/r8/graph/H3$h;

    invoke-direct {p1, v1}, Lcom/android/tools/r8/graph/H3$h;-><init>(Lcom/android/tools/r8/graph/H3$i;)V

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H3$i;)Lcom/android/tools/r8/graph/H3$i;
    .locals 1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    instance-of v0, p1, Lcom/android/tools/r8/graph/I3;

    if-eqz v0, :cond_0

    return-object p1

    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H3$i;->d()Lcom/android/tools/r8/graph/H3$e;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/U3;->b(Lcom/android/tools/r8/graph/H3$e;)Lcom/android/tools/r8/graph/H3$e;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;
    .locals 0

    .line 1
    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Ljava/util/List;)Ljava/util/List;
    .locals 2

    .line 18
    sget-boolean v0, Lcom/android/tools/r8/graph/U3;->g:Z

    if-nez v0, :cond_1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 19
    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    return-object p3

    .line 20
    :cond_2
    iget-object p2, p0, Lcom/android/tools/r8/graph/U3;->c:Ljava/util/function/Predicate;

    iget-object v0, p0, Lcom/android/tools/r8/graph/U3;->d:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    invoke-static {}, Lcom/android/tools/r8/internal/Hz;->g()Lcom/android/tools/r8/internal/Hz;

    move-result-object v1

    .line 22
    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 23
    invoke-interface {p2, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 24
    sget-object p1, Lcom/android/tools/r8/graph/H3;->b:Lcom/android/tools/r8/internal/Xe0;

    return-object p1

    .line 25
    :cond_3
    new-instance p1, Lcom/android/tools/r8/graph/Va;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/graph/Va;-><init>(Lcom/android/tools/r8/graph/U3;)V

    .line 26
    invoke-static {p3, p1, p3}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/List;Ljava/util/function/Function;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/util/List;)Ljava/util/List;
    .locals 1

    .line 15
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 16
    :cond_0
    new-instance v0, Lcom/android/tools/r8/graph/Va;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/graph/Va;-><init>(Lcom/android/tools/r8/graph/U3;)V

    .line 17
    invoke-static {p1, v0, p1}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/List;Ljava/util/function/Function;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/graph/H3$c;)Lcom/android/tools/r8/graph/H3$c;
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/graph/H3$c;->a(Lcom/android/tools/r8/graph/b4;)Lcom/android/tools/r8/graph/H3$c;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/graph/H3$e;)Lcom/android/tools/r8/graph/H3$e;
    .locals 2

    .line 5
    invoke-interface {p1}, Lcom/android/tools/r8/graph/H3$d;->a()Z

    move-result v0

    if-nez v0, :cond_b

    .line 6
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H3$e;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H3$e;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H3$e;->h()Lcom/android/tools/r8/graph/H3$c;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/tools/r8/graph/H3$c;->a(Lcom/android/tools/r8/graph/b4;)Lcom/android/tools/r8/graph/H3$c;

    move-result-object p1

    return-object p1

    .line 9
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H3$e;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H3$e;->g()Lcom/android/tools/r8/graph/H3$a;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/tools/r8/graph/H3$a;->a(Lcom/android/tools/r8/graph/b4;)Lcom/android/tools/r8/graph/H3$a;

    move-result-object p1

    return-object p1

    .line 11
    :cond_2
    sget-boolean v0, Lcom/android/tools/r8/graph/U3;->g:Z

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H3$e;->o()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 12
    :cond_4
    :goto_0
    iget-boolean v0, p0, Lcom/android/tools/r8/graph/U3;->f:Z

    if-eqz v0, :cond_5

    .line 13
    iget-object p1, p0, Lcom/android/tools/r8/graph/U3;->e:Lcom/android/tools/r8/graph/H3$c;

    return-object p1

    .line 14
    :cond_5
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H3$e;->i()Lcom/android/tools/r8/graph/H3$j;

    move-result-object v0

    .line 15
    iget-object v0, v0, Lcom/android/tools/r8/graph/H3$j;->b:Ljava/lang/String;

    .line 16
    iget-object v1, p0, Lcom/android/tools/r8/graph/U3;->a:Lcom/android/tools/r8/graph/M3$a;

    .line 17
    iget-object v1, v1, Lcom/android/tools/r8/graph/M3$a;->b:Ljava/util/Set;

    .line 18
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_2

    .line 19
    :cond_6
    iget-object p1, p0, Lcom/android/tools/r8/graph/U3;->a:Lcom/android/tools/r8/graph/M3$a;

    .line 20
    sget-boolean v1, Lcom/android/tools/r8/graph/M3$a;->d:Z

    if-nez v1, :cond_8

    .line 21
    iget-object v1, p1, Lcom/android/tools/r8/graph/M3$a;->b:Ljava/util/Set;

    .line 22
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_1

    .line 23
    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 24
    :cond_8
    :goto_1
    iget-object p1, p1, Lcom/android/tools/r8/graph/M3$a;->a:Ljava/util/Map;

    .line 25
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/H3$e;

    if-nez p1, :cond_9

    .line 26
    iget-object p1, p0, Lcom/android/tools/r8/graph/U3;->e:Lcom/android/tools/r8/graph/H3$c;

    return-object p1

    :cond_9
    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Lcom/android/tools/r8/graph/U3;->f:Z

    .line 28
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/U3;->b(Lcom/android/tools/r8/graph/H3$e;)Lcom/android/tools/r8/graph/H3$e;

    move-result-object p1

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/android/tools/r8/graph/U3;->f:Z

    .line 30
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H3$e;->k()Z

    move-result v0

    if-eqz v0, :cond_a

    return-object p1

    .line 31
    :cond_a
    sget-object v0, Lcom/android/tools/r8/graph/H3$k;->c:Lcom/android/tools/r8/graph/H3$k;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/H3$e;->a(Lcom/android/tools/r8/graph/H3$k;)Lcom/android/tools/r8/graph/H3$e;

    move-result-object p1

    :cond_b
    :goto_2
    return-object p1
.end method

.method public final b(Ljava/util/List;)Ljava/util/List;
    .locals 1

    .line 2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Lcom/android/tools/r8/graph/Wa;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/graph/Wa;-><init>(Lcom/android/tools/r8/graph/U3;)V

    .line 4
    invoke-static {p1, v0, p1}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/List;Ljava/util/function/Function;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final c(Ljava/util/List;)Ljava/util/List;
    .locals 1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    new-instance v0, Lcom/android/tools/r8/graph/Ua;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/graph/Ua;-><init>(Lcom/android/tools/r8/graph/U3;)V

    invoke-static {p1, v0, p1}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/List;Ljava/util/function/Function;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/util/List;)Ljava/util/List;
    .locals 1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    new-instance v0, Lcom/android/tools/r8/graph/Wa;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/graph/Wa;-><init>(Lcom/android/tools/r8/graph/U3;)V

    invoke-static {p1, v0, p1}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/List;Ljava/util/function/Function;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final e(Ljava/util/List;)Ljava/util/List;
    .locals 1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    new-instance v0, Lcom/android/tools/r8/graph/Xa;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/graph/Xa;-><init>(Lcom/android/tools/r8/graph/U3;)V

    invoke-static {p1, v0, p1}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/List;Ljava/util/function/Function;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final f(Ljava/util/List;)Lcom/android/tools/r8/graph/U3;
    .locals 4

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/graph/U3;

    iget-object v1, p0, Lcom/android/tools/r8/graph/U3;->d:Lcom/android/tools/r8/graph/y;

    iget-object v2, p0, Lcom/android/tools/r8/graph/U3;->a:Lcom/android/tools/r8/graph/M3$a;

    new-instance v3, Lcom/android/tools/r8/graph/fa;

    invoke-direct {v3}, Lcom/android/tools/r8/graph/fa;-><init>()V

    invoke-static {p1, v3}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/android/tools/r8/graph/M3$a;->a(Ljava/util/Collection;)Lcom/android/tools/r8/graph/M3$a;

    move-result-object p1

    iget-object v2, p0, Lcom/android/tools/r8/graph/U3;->b:Ljava/util/function/BiPredicate;

    iget-object v3, p0, Lcom/android/tools/r8/graph/U3;->c:Ljava/util/function/Predicate;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/android/tools/r8/graph/U3;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M3$a;Ljava/util/function/BiPredicate;Ljava/util/function/Predicate;)V

    return-object v0
.end method
