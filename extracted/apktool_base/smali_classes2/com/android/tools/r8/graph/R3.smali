.class public Lcom/android/tools/r8/graph/R3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/graph/R3$a;
    }
.end annotation


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:I

.field public final c:Lcom/android/tools/r8/graph/M3;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M3;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/R3;->a:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/graph/R3;->c:Lcom/android/tools/r8/graph/M3;

    iput p3, p0, Lcom/android/tools/r8/graph/R3;->b:I

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/P3;Lcom/android/tools/r8/graph/M3$a;Lcom/android/tools/r8/graph/H3$e;)Lcom/android/tools/r8/graph/R3$a;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/android/tools/r8/graph/P3;->b:Lcom/android/tools/r8/graph/H2;

    .line 119
    iget-object v0, v0, Lcom/android/tools/r8/graph/E0;->s:Lcom/android/tools/r8/graph/H3$b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    invoke-virtual {p0, p2, p1}, Lcom/android/tools/r8/graph/P3;->a(Lcom/android/tools/r8/graph/H3$i;Lcom/android/tools/r8/graph/M3$a;)Lcom/android/tools/r8/graph/R3$a;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/P3;Lcom/android/tools/r8/graph/M3$a;Lcom/android/tools/r8/graph/H3$g;)Lcom/android/tools/r8/graph/R3$a;
    .locals 0

    .line 70
    invoke-virtual {p0, p2, p1}, Lcom/android/tools/r8/graph/P3;->a(Lcom/android/tools/r8/graph/H3$g;Lcom/android/tools/r8/graph/M3$a;)Lcom/android/tools/r8/graph/R3$a;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M3;)Lcom/android/tools/r8/graph/R3;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/graph/y<",
            "*>;",
            "Lcom/android/tools/r8/graph/M3;",
            ")",
            "Lcom/android/tools/r8/graph/R3;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/android/tools/r8/graph/R3;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, v1}, Lcom/android/tools/r8/graph/R3;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M3;I)V

    return-object v0
.end method

.method public static b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M3;)Lcom/android/tools/r8/graph/R3;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/graph/y<",
            "*>;",
            "Lcom/android/tools/r8/graph/M3;",
            ")",
            "Lcom/android/tools/r8/graph/R3;"
        }
    .end annotation

    new-instance v0, Lcom/android/tools/r8/graph/R3;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/tools/r8/graph/R3;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M3;I)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/graph/R3$a;
    .locals 8

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/graph/R3;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/tools/r8/graph/R3;->a:Lcom/android/tools/r8/graph/y;

    .line 9
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    iget-object v0, p0, Lcom/android/tools/r8/graph/R3;->c:Lcom/android/tools/r8/graph/M3;

    iget-object v1, p0, Lcom/android/tools/r8/graph/R3;->a:Lcom/android/tools/r8/graph/y;

    iget-object v2, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 11
    sget-object v3, Lcom/android/tools/r8/internal/d70;->c:Lcom/android/tools/r8/internal/a70;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/tools/r8/graph/M3;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/J2;Ljava/util/function/Predicate;)Lcom/android/tools/r8/graph/M3$a;

    move-result-object v0

    .line 12
    new-instance v1, Lcom/android/tools/r8/graph/P3;

    iget-object v2, p0, Lcom/android/tools/r8/graph/R3;->a:Lcom/android/tools/r8/graph/y;

    iget v3, p0, Lcom/android/tools/r8/graph/R3;->b:I

    invoke-direct {v1, v3, v2, p1}, Lcom/android/tools/r8/graph/P3;-><init>(ILcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H2;)V

    .line 13
    iget-object v4, p1, Lcom/android/tools/r8/graph/E0;->s:Lcom/android/tools/r8/graph/H3$b;

    .line 14
    invoke-interface {v4}, Lcom/android/tools/r8/graph/H3$d;->a()Z

    move-result v5

    if-nez v5, :cond_b

    .line 15
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/H3$b;->c()Ljava/util/List;

    move-result-object v5

    .line 16
    invoke-virtual {v1, v5, v0}, Lcom/android/tools/r8/graph/P3;->a(Ljava/util/List;Lcom/android/tools/r8/graph/M3$a;)Lcom/android/tools/r8/graph/R3$a;

    move-result-object v5

    .line 17
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/R3$a;->a()Z

    move-result v6

    if-eqz v6, :cond_0

    goto/16 :goto_4

    .line 18
    :cond_0
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v2

    .line 19
    iget-object v5, v4, Lcom/android/tools/r8/graph/H3$b;->b:Lcom/android/tools/r8/graph/H3$c;

    if-eqz v5, :cond_1

    goto :goto_0

    .line 20
    :cond_1
    new-instance v5, Lcom/android/tools/r8/graph/H3$c;

    iget-object v2, v2, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    invoke-direct {v5, v2}, Lcom/android/tools/r8/graph/H3$c;-><init>(Lcom/android/tools/r8/graph/M2;)V

    .line 21
    :goto_0
    iget-object v2, p1, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    .line 22
    iget-object v6, v5, Lcom/android/tools/r8/graph/H3$c;->b:Lcom/android/tools/r8/graph/M2;

    if-eq v2, v6, :cond_4

    .line 23
    sget-boolean v2, Lcom/android/tools/r8/graph/P3;->d:Z

    if-nez v2, :cond_3

    .line 24
    invoke-static {v3}, Lcom/android/tools/r8/graph/Q3;->a(I)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 25
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Super type inconsistency in generic signature"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 26
    :cond_3
    :goto_1
    sget-object v5, Lcom/android/tools/r8/graph/R3$a;->b:Lcom/android/tools/r8/graph/R3$a;

    goto :goto_4

    .line 27
    :cond_4
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/H3$c;->r()Ljava/util/List;

    move-result-object v2

    iget-object v5, p1, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    .line 28
    invoke-virtual {v1, v2, v5, v0}, Lcom/android/tools/r8/graph/P3;->a(Ljava/util/List;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M3$a;)Lcom/android/tools/r8/graph/R3$a;

    move-result-object v5

    .line 29
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/R3$a;->a()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_4

    .line 30
    :cond_5
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/H3$b;->e()Ljava/util/List;

    move-result-object v2

    .line 31
    iget-object v4, p1, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/O2;->size()I

    move-result v4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-eq v4, v5, :cond_8

    .line 32
    sget-boolean v2, Lcom/android/tools/r8/graph/P3;->d:Z

    if-nez v2, :cond_7

    .line 33
    invoke-static {v3}, Lcom/android/tools/r8/graph/Q3;->a(I)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_2

    .line 34
    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 35
    :cond_7
    :goto_2
    sget-object v5, Lcom/android/tools/r8/graph/R3$a;->c:Lcom/android/tools/r8/graph/R3$a;

    goto :goto_4

    .line 36
    :cond_8
    iget-object v3, p1, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    iget-object v3, v3, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    const/4 v4, 0x0

    .line 37
    :goto_3
    array-length v5, v3

    if-ge v4, v5, :cond_a

    .line 38
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/H3$c;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/H3$c;->r()Ljava/util/List;

    move-result-object v5

    aget-object v6, v3, v4

    .line 39
    invoke-virtual {v1, v5, v6, v0}, Lcom/android/tools/r8/graph/P3;->a(Ljava/util/List;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M3$a;)Lcom/android/tools/r8/graph/R3$a;

    move-result-object v5

    .line 40
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/R3$a;->a()Z

    move-result v6

    if-eqz v6, :cond_9

    goto :goto_4

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 41
    :cond_a
    sget-object v5, Lcom/android/tools/r8/graph/R3$a;->f:Lcom/android/tools/r8/graph/R3$a;

    goto :goto_4

    .line 42
    :cond_b
    sget-object v5, Lcom/android/tools/r8/graph/R3$a;->f:Lcom/android/tools/r8/graph/R3$a;

    .line 43
    :goto_4
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/R3$a;->a()Z

    move-result v2

    if-eqz v2, :cond_d

    iget v2, p0, Lcom/android/tools/r8/graph/R3;->b:I

    invoke-static {v2}, Lcom/android/tools/r8/graph/Q3;->a(I)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 44
    iget-object v2, p0, Lcom/android/tools/r8/graph/R3;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->r()Lcom/android/tools/r8/shaking/y1;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/tools/r8/shaking/y1;->a(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/shaking/l1;

    move-result-object v2

    .line 45
    iget-object v3, p0, Lcom/android/tools/r8/graph/R3;->a:Lcom/android/tools/r8/graph/y;

    .line 46
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v3

    .line 47
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/h;->i()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 48
    iget-object v3, p0, Lcom/android/tools/r8/graph/R3;->a:Lcom/android/tools/r8/graph/y;

    .line 49
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/shaking/t1;->e(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v3

    if-nez v3, :cond_c

    iget-object v3, p0, Lcom/android/tools/r8/graph/R3;->a:Lcom/android/tools/r8/graph/y;

    .line 50
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/shaking/t1;->f(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 51
    iget-object v2, p0, Lcom/android/tools/r8/graph/R3;->a:Lcom/android/tools/r8/graph/y;

    .line 52
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    iget-object v2, v2, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    .line 53
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->N0()Lcom/android/tools/r8/graph/H3$b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/H3$b;->toString()Ljava/lang/String;

    move-result-object v3

    .line 54
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->b1()Ljava/lang/String;

    move-result-object v4

    .line 55
    iget-object v6, p1, Lcom/android/tools/r8/graph/E0;->d:Lcom/android/tools/r8/origin/Origin;

    .line 56
    const-string v7, "class"

    invoke-static {v3, v7, v4, v6, v5}, Lcom/android/tools/r8/graph/a4;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/graph/R3$a;)Lcom/android/tools/r8/graph/a4;

    move-result-object v3

    .line 57
    monitor-enter v2

    .line 58
    :try_start_0
    sget-object v4, Lcom/android/tools/r8/DiagnosticsLevel;->INFO:Lcom/android/tools/r8/DiagnosticsLevel;

    invoke-virtual {v2, v4, v3}, Lcom/android/tools/r8/internal/Ef0;->a(Lcom/android/tools/r8/DiagnosticsLevel;Lcom/android/tools/r8/Diagnostic;)V

    .line 59
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception p1

    .line 60
    monitor-exit v2

    throw p1

    .line 61
    :cond_c
    :goto_5
    invoke-static {}, Lcom/android/tools/r8/graph/H3$b;->f()Lcom/android/tools/r8/graph/H3$b;

    move-result-object v2

    iput-object v2, p1, Lcom/android/tools/r8/graph/E0;->s:Lcom/android/tools/r8/graph/H3$b;

    .line 62
    :cond_d
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->z1()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/j1;

    .line 63
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/tools/r8/graph/Ba;

    invoke-direct {v4, v3}, Lcom/android/tools/r8/graph/Ba;-><init>(Lcom/android/tools/r8/graph/j1;)V

    new-instance v6, Lcom/android/tools/r8/graph/Ca;

    invoke-direct {v6, v1, v0}, Lcom/android/tools/r8/graph/Ca;-><init>(Lcom/android/tools/r8/graph/P3;Lcom/android/tools/r8/graph/M3$a;)V

    new-instance v7, Lcom/android/tools/r8/graph/Da;

    invoke-direct {v7, p0, v3, p1}, Lcom/android/tools/r8/graph/Da;-><init>(Lcom/android/tools/r8/graph/R3;Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/graph/H2;)V

    .line 64
    invoke-virtual {p0, v4, v6, v7}, Lcom/android/tools/r8/graph/R3;->a(Ljava/util/function/Supplier;Ljava/util/function/Function;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/R3$a;

    move-result-object v3

    .line 65
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/R3$a;->a()Z

    move-result v4

    if-eqz v4, :cond_e

    goto :goto_6

    :cond_e
    move-object v5, v3

    goto :goto_6

    .line 66
    :cond_f
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->I0()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/g1;

    .line 67
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/tools/r8/graph/Ea;

    invoke-direct {v4, v3}, Lcom/android/tools/r8/graph/Ea;-><init>(Lcom/android/tools/r8/graph/g1;)V

    new-instance v6, Lcom/android/tools/r8/graph/Fa;

    invoke-direct {v6, v1, v0}, Lcom/android/tools/r8/graph/Fa;-><init>(Lcom/android/tools/r8/graph/P3;Lcom/android/tools/r8/graph/M3$a;)V

    new-instance v7, Lcom/android/tools/r8/graph/Ga;

    invoke-direct {v7, p0, v3, p1}, Lcom/android/tools/r8/graph/Ga;-><init>(Lcom/android/tools/r8/graph/R3;Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/graph/H2;)V

    .line 68
    invoke-virtual {p0, v4, v6, v7}, Lcom/android/tools/r8/graph/R3;->a(Ljava/util/function/Supplier;Ljava/util/function/Function;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/R3$a;

    move-result-object v3

    .line 69
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/R3$a;->a()Z

    move-result v4

    if-eqz v4, :cond_10

    goto :goto_7

    :cond_10
    move-object v5, v3

    goto :goto_7

    :cond_11
    return-object v5
.end method

.method public a(Ljava/util/Collection;)Lcom/android/tools/r8/graph/R3$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/tools/r8/graph/H2;",
            ">;)",
            "Lcom/android/tools/r8/graph/R3$a;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/graph/R3;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/tools/r8/graph/R3;->a:Lcom/android/tools/r8/graph/y;

    .line 3
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    sget-object v0, Lcom/android/tools/r8/graph/R3$a;->f:Lcom/android/tools/r8/graph/R3$a;

    .line 5
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/H2;

    .line 6
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/graph/R3;->a(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/graph/R3$a;

    move-result-object v1

    .line 7
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/R3$a;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final a(Ljava/util/function/Supplier;Ljava/util/function/Function;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/R3$a;
    .locals 1

    .line 107
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/H3$d;

    .line 108
    invoke-interface {p1}, Lcom/android/tools/r8/graph/H3$d;->a()Z

    move-result v0

    if-nez v0, :cond_4

    .line 109
    invoke-interface {p2, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/R3$a;

    .line 110
    sget-boolean p2, Lcom/android/tools/r8/graph/R3;->d:Z

    if-nez p2, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    sget-object p2, Lcom/android/tools/r8/graph/R3$a;->f:Lcom/android/tools/r8/graph/R3$a;

    if-ne p1, p2, :cond_0

    goto :goto_0

    .line 112
    :cond_0
    iget p2, p0, Lcom/android/tools/r8/graph/R3;->b:I

    .line 113
    invoke-static {p2}, Lcom/android/tools/r8/graph/Q3;->a(I)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 114
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 115
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/R3$a;->a()Z

    move-result p2

    if-eqz p2, :cond_3

    iget p2, p0, Lcom/android/tools/r8/graph/R3;->b:I

    invoke-static {p2}, Lcom/android/tools/r8/graph/Q3;->a(I)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 116
    invoke-interface {p3, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_3
    return-object p1

    .line 117
    :cond_4
    sget-object p1, Lcom/android/tools/r8/graph/R3$a;->f:Lcom/android/tools/r8/graph/R3$a;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/R3$a;)V
    .locals 4

    .line 89
    iget-object v0, p0, Lcom/android/tools/r8/graph/R3;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->r()Lcom/android/tools/r8/shaking/y1;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/shaking/y1;->a(Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/shaking/q1;

    move-result-object v0

    .line 90
    iget-object v1, p0, Lcom/android/tools/r8/graph/R3;->a:Lcom/android/tools/r8/graph/y;

    .line 91
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    .line 92
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/android/tools/r8/graph/R3;->a:Lcom/android/tools/r8/graph/y;

    .line 94
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/t1;->e(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/tools/r8/graph/R3;->a:Lcom/android/tools/r8/graph/y;

    .line 95
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/t1;->f(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/tools/r8/graph/R3;->a:Lcom/android/tools/r8/graph/y;

    .line 97
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    .line 98
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/g1;->J0()Lcom/android/tools/r8/graph/H3$e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/H3$e;->toString()Ljava/lang/String;

    move-result-object v1

    .line 99
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/g1;->j0()Ljava/lang/String;

    move-result-object v2

    .line 100
    iget-object p2, p2, Lcom/android/tools/r8/graph/E0;->d:Lcom/android/tools/r8/origin/Origin;

    .line 101
    const-string v3, "field"

    invoke-static {v1, v3, v2, p2, p3}, Lcom/android/tools/r8/graph/a4;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/graph/R3$a;)Lcom/android/tools/r8/graph/a4;

    move-result-object p2

    .line 102
    monitor-enter v0

    .line 103
    :try_start_0
    sget-object p3, Lcom/android/tools/r8/DiagnosticsLevel;->INFO:Lcom/android/tools/r8/DiagnosticsLevel;

    invoke-virtual {v0, p3, p2}, Lcom/android/tools/r8/internal/Ef0;->a(Lcom/android/tools/r8/DiagnosticsLevel;Lcom/android/tools/r8/Diagnostic;)V

    .line 104
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 105
    monitor-exit v0

    throw p1

    .line 106
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/tools/r8/graph/H3$e;->p()Lcom/android/tools/r8/graph/H3$e;

    move-result-object p2

    iput-object p2, p1, Lcom/android/tools/r8/graph/g1;->k:Lcom/android/tools/r8/graph/H3$e;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/R3$a;)V
    .locals 4

    .line 71
    iget-object v0, p0, Lcom/android/tools/r8/graph/R3;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->r()Lcom/android/tools/r8/shaking/y1;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/android/tools/r8/shaking/y1;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/shaking/I1;

    move-result-object v0

    .line 72
    iget-object v1, p0, Lcom/android/tools/r8/graph/R3;->a:Lcom/android/tools/r8/graph/y;

    .line 73
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    .line 74
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/android/tools/r8/graph/R3;->a:Lcom/android/tools/r8/graph/y;

    .line 76
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/t1;->e(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/tools/r8/graph/R3;->a:Lcom/android/tools/r8/graph/y;

    .line 77
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/t1;->f(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/android/tools/r8/graph/R3;->a:Lcom/android/tools/r8/graph/y;

    .line 79
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    .line 80
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->S0()Lcom/android/tools/r8/graph/H3$g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/H3$g;->toString()Ljava/lang/String;

    move-result-object v1

    .line 81
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->j0()Ljava/lang/String;

    move-result-object v2

    .line 82
    iget-object p2, p2, Lcom/android/tools/r8/graph/E0;->d:Lcom/android/tools/r8/origin/Origin;

    .line 83
    const-string v3, "method"

    invoke-static {v1, v3, v2, p2, p3}, Lcom/android/tools/r8/graph/a4;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/graph/R3$a;)Lcom/android/tools/r8/graph/a4;

    move-result-object p2

    .line 84
    monitor-enter v0

    .line 85
    :try_start_0
    sget-object p3, Lcom/android/tools/r8/DiagnosticsLevel;->INFO:Lcom/android/tools/r8/DiagnosticsLevel;

    invoke-virtual {v0, p3, p2}, Lcom/android/tools/r8/internal/Ef0;->a(Lcom/android/tools/r8/DiagnosticsLevel;Lcom/android/tools/r8/Diagnostic;)V

    .line 86
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 87
    monitor-exit v0

    throw p1

    .line 88
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/tools/r8/graph/H3$g;->d()Lcom/android/tools/r8/graph/H3$g;

    move-result-object p2

    iput-object p2, p1, Lcom/android/tools/r8/graph/j1;->q:Lcom/android/tools/r8/graph/H3$g;

    return-void
.end method
