.class public final Lcom/android/tools/r8/graph/U4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final a:Ljava/util/function/Function;

.field public final b:Lcom/android/tools/r8/graph/u1;

.field public final c:Z

.field public final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Function;Lcom/android/tools/r8/graph/u1;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/U4;->a:Ljava/util/function/Function;

    iput-object p2, p0, Lcom/android/tools/r8/graph/U4;->b:Lcom/android/tools/r8/graph/u1;

    iput-boolean p3, p0, Lcom/android/tools/r8/graph/U4;->c:Z

    iput-boolean p4, p0, Lcom/android/tools/r8/graph/U4;->d:Z

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/u1;Ljava/util/function/Function;)Lcom/android/tools/r8/graph/U4;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/graph/U4;

    new-instance v1, Lcom/android/tools/r8/graph/Za;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/graph/Za;-><init>(Ljava/util/function/Function;)V

    const/4 p1, 0x0

    invoke-direct {v0, v1, p0, p1, p1}, Lcom/android/tools/r8/graph/U4;-><init>(Ljava/util/function/Function;Lcom/android/tools/r8/graph/u1;ZZ)V

    return-object v0
.end method

.method public static synthetic a(Ljava/util/function/Function;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/b0;
    .locals 0

    .line 2
    invoke-interface {p0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/E0;

    if-nez p0, :cond_0

    .line 3
    sget-object p0, Lcom/android/tools/r8/graph/Z;->b:Lcom/android/tools/r8/graph/Z;

    :cond_0
    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/T4;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    .line 89
    invoke-virtual {p0, p2, p1}, Lcom/android/tools/r8/graph/T4;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/E0;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;
    .locals 4

    .line 4
    iget-object v0, p1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    .line 5
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    .line 7
    sget-boolean v2, Lcom/android/tools/r8/graph/U4;->e:Z

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 8
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/U4;->b:Lcom/android/tools/r8/graph/u1;

    .line 9
    iget-object v2, v0, Lcom/android/tools/r8/graph/u1;->g0:Lcom/android/tools/r8/graph/L2;

    .line 10
    invoke-virtual {v2, p1}, Lcom/android/tools/r8/graph/L2;->g(Lcom/android/tools/r8/graph/L2;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 11
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/I2;->n0()Lcom/android/tools/r8/graph/O2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/O2;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    .line 12
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/I2;->o0()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13
    sget-object p1, Lcom/android/tools/r8/graph/V4;->b:Lcom/android/tools/r8/graph/V4;

    return-object p1

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/graph/U4;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/tools/r8/graph/U4;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object p1

    return-object p1

    .line 15
    :cond_3
    sget-boolean v1, Lcom/android/tools/r8/graph/Z4;->a:Z

    .line 16
    new-instance v1, Lcom/android/tools/r8/graph/W4;

    invoke-direct {v1}, Lcom/android/tools/r8/graph/W4;-><init>()V

    .line 17
    iget-object v2, p0, Lcom/android/tools/r8/graph/U4;->a:Ljava/util/function/Function;

    invoke-interface {v2, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/b0;

    .line 18
    new-instance v3, Lcom/android/tools/r8/graph/gb;

    invoke-direct {v3, p0, v1, p1}, Lcom/android/tools/r8/graph/gb;-><init>(Lcom/android/tools/r8/graph/U4;Lcom/android/tools/r8/graph/W4;Lcom/android/tools/r8/graph/A2;)V

    .line 19
    invoke-interface {v2, v3}, Lcom/android/tools/r8/graph/b0;->a(Ljava/util/function/Consumer;)V

    .line 20
    sget-object p1, Lcom/android/tools/r8/graph/X4;->c:Lcom/android/tools/r8/graph/X4;

    .line 21
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 22
    invoke-virtual {v1, p1, v0}, Lcom/android/tools/r8/graph/W4;->a(Lcom/android/tools/r8/graph/Z4$a;Ljava/util/Collection;)Lcom/android/tools/r8/graph/Z4;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/Z4;
    .locals 8

    .line 47
    sget-boolean v0, Lcom/android/tools/r8/graph/U4;->e:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 48
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2, p3, p1}, Lcom/android/tools/r8/graph/U4;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/Z4;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    .line 49
    :cond_2
    new-instance v0, Lcom/android/tools/r8/graph/R4;

    iget-object v1, p0, Lcom/android/tools/r8/graph/U4;->a:Ljava/util/function/Function;

    iget-object v2, p0, Lcom/android/tools/r8/graph/U4;->b:Lcom/android/tools/r8/graph/u1;

    invoke-direct {v0, v2, v1}, Lcom/android/tools/r8/graph/R4;-><init>(Lcom/android/tools/r8/graph/u1;Ljava/util/function/Function;)V

    .line 50
    iget-object v6, p1, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    iget-object v1, p1, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    iget-object v1, v1, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    .line 51
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p1

    move-object v5, v0

    .line 52
    invoke-virtual/range {v1 .. v7}, Lcom/android/tools/r8/graph/U4;->a(Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/R4;Lcom/android/tools/r8/graph/M2;Ljava/util/List;)V

    .line 53
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/R4;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/Z4;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/Z4;
    .locals 11

    .line 54
    iget-object v0, p0, Lcom/android/tools/r8/graph/U4;->b:Lcom/android/tools/r8/graph/u1;

    .line 55
    iget-object v1, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    iget-object v2, v0, Lcom/android/tools/r8/graph/u1;->O2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    iget-object v3, v0, Lcom/android/tools/r8/graph/u1;->N2:Lcom/android/tools/r8/graph/M2;

    .line 56
    invoke-virtual {v1, v3}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 57
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->D1()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v3, v2

    :goto_0
    move-object v4, v3

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/j1;

    .line 58
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/graph/A2;

    iget-object v6, v6, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    if-ne v6, p3, :cond_1

    if-eqz v4, :cond_3

    :cond_2
    move-object v3, v2

    goto :goto_2

    .line 59
    :cond_3
    invoke-virtual {p1, v5, v0}, Lcom/android/tools/r8/graph/E0;->a(Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/graph/u1;)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object v3, v5

    goto :goto_0

    :cond_4
    move-object v4, v5

    goto :goto_1

    :cond_5
    :goto_2
    if-eqz v3, :cond_6

    .line 60
    invoke-static {p4, p1, v3}, Lcom/android/tools/r8/graph/Z4;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/Z4$c;

    move-result-object p1

    return-object p1

    .line 61
    :cond_6
    iget-object v0, p1, Lcom/android/tools/r8/graph/E0;->l:Lcom/android/tools/r8/graph/N4;

    .line 62
    iget-object v0, v0, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    .line 63
    invoke-virtual {v0, p2, p3}, Lcom/android/tools/r8/graph/O4;->a(Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/j1;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 64
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 65
    iget-object p2, v0, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/g;->h()Z

    move-result p2

    if-eqz p2, :cond_7

    if-eq p1, p4, :cond_7

    .line 66
    new-instance p1, Lcom/android/tools/r8/graph/b5;

    invoke-direct {p1, p4, v0}, Lcom/android/tools/r8/graph/b5;-><init>(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j1;)V

    return-object p1

    .line 67
    :cond_7
    invoke-static {p4, p1, v0}, Lcom/android/tools/r8/graph/Z4;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/Z4$c;

    move-result-object p1

    return-object p1

    .line 68
    :cond_8
    iget-object v0, p1, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    if-eqz v0, :cond_9

    .line 69
    sget-boolean v0, Lcom/android/tools/r8/graph/Z4;->a:Z

    .line 70
    new-instance v0, Lcom/android/tools/r8/graph/W4;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/W4;-><init>()V

    .line 71
    iget-object v1, p1, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    .line 72
    iget-object v3, p0, Lcom/android/tools/r8/graph/U4;->a:Ljava/util/function/Function;

    invoke-interface {v3, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/b0;

    .line 73
    new-instance v10, Lcom/android/tools/r8/graph/cb;

    move-object v3, v10

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, v0

    invoke-direct/range {v3 .. v9}, Lcom/android/tools/r8/graph/cb;-><init>(Lcom/android/tools/r8/graph/U4;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/W4;)V

    .line 74
    invoke-interface {v1, v10}, Lcom/android/tools/r8/graph/b0;->a(Ljava/util/function/Consumer;)V

    .line 75
    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    .line 76
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 77
    invoke-virtual {v0, v2, p1}, Lcom/android/tools/r8/graph/W4;->a(Lcom/android/tools/r8/graph/Z4$a;Ljava/util/Collection;)Lcom/android/tools/r8/graph/Z4;

    move-result-object p1

    return-object p1

    :cond_9
    return-object v2
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/Z4;
    .locals 3

    .line 27
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 28
    sget-boolean v0, Lcom/android/tools/r8/graph/U4;->e:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 29
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/tools/r8/graph/U4;->b:Lcom/android/tools/r8/graph/u1;

    .line 30
    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->g0:Lcom/android/tools/r8/graph/L2;

    .line 31
    invoke-virtual {v0, p3}, Lcom/android/tools/r8/graph/L2;->g(Lcom/android/tools/r8/graph/L2;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 32
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/I2;->n0()Lcom/android/tools/r8/graph/O2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/O2;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    .line 33
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/I2;->o0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 34
    sget-object p1, Lcom/android/tools/r8/graph/V4;->b:Lcom/android/tools/r8/graph/V4;

    return-object p1

    .line 35
    :cond_2
    iget-object p1, p0, Lcom/android/tools/r8/graph/U4;->b:Lcom/android/tools/r8/graph/u1;

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/graph/U4;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object p1

    return-object p1

    .line 36
    :cond_3
    sget-boolean v0, Lcom/android/tools/r8/graph/Z4;->a:Z

    .line 37
    new-instance v0, Lcom/android/tools/r8/graph/W4;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/W4;-><init>()V

    .line 38
    iget-object v1, p0, Lcom/android/tools/r8/graph/U4;->a:Ljava/util/function/Function;

    invoke-interface {v1, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/b0;

    .line 39
    new-instance v2, Lcom/android/tools/r8/graph/ab;

    invoke-direct {v2, p0, v0, p2, p3}, Lcom/android/tools/r8/graph/ab;-><init>(Lcom/android/tools/r8/graph/U4;Lcom/android/tools/r8/graph/W4;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)V

    .line 40
    invoke-interface {v1, v2}, Lcom/android/tools/r8/graph/b0;->a(Ljava/util/function/Consumer;)V

    .line 41
    sget-object p2, Lcom/android/tools/r8/graph/X4;->c:Lcom/android/tools/r8/graph/X4;

    .line 42
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 43
    invoke-virtual {v0, p2, p1}, Lcom/android/tools/r8/graph/W4;->a(Lcom/android/tools/r8/graph/Z4$a;Ljava/util/Collection;)Lcom/android/tools/r8/graph/Z4;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/W4;Lcom/android/tools/r8/graph/E0;)V
    .locals 1

    .line 78
    iget-boolean v0, p0, Lcom/android/tools/r8/graph/U4;->c:Z

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->f0()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 80
    invoke-virtual {p6}, Lcom/android/tools/r8/graph/E0;->f0()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {p0, p6, p2, p3, p4}, Lcom/android/tools/r8/graph/U4;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/Z4;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 82
    invoke-virtual {p5, p1}, Lcom/android/tools/r8/graph/W4;->a(Lcom/android/tools/r8/graph/Z4;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/R4;Lcom/android/tools/r8/graph/T4;Lcom/android/tools/r8/graph/E0;)V
    .locals 8

    .line 121
    iget-boolean v0, p0, Lcom/android/tools/r8/graph/U4;->c:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 122
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->f0()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 123
    invoke-virtual {p6}, Lcom/android/tools/r8/graph/E0;->f0()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 124
    :cond_0
    iget-object v5, p6, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    iget-object p1, p6, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    iget-object p1, p1, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    .line 125
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p6

    move-object v4, p4

    move-object v7, p5

    .line 126
    invoke-virtual/range {v0 .. v7}, Lcom/android/tools/r8/graph/U4;->a(Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/R4;Lcom/android/tools/r8/graph/M2;Ljava/util/List;Lcom/android/tools/r8/graph/T4;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/b0;Lcom/android/tools/r8/graph/R4;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/T4;Lcom/android/tools/r8/graph/E0;)V
    .locals 9

    move-object v4, p3

    move-object v8, p0

    move-object/from16 v3, p8

    .line 96
    iget-boolean v0, v8, Lcom/android/tools/r8/graph/U4;->c:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 97
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->f0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual/range {p8 .. p8}, Lcom/android/tools/r8/graph/E0;->f0()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 99
    :cond_0
    invoke-interface {p2}, Lcom/android/tools/r8/graph/b0;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, v4, Lcom/android/tools/r8/graph/R4;->d:Ljava/util/Set;

    move-object v1, p4

    .line 101
    invoke-interface {v0, p4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_1
    sget-boolean v0, Lcom/android/tools/r8/graph/U4;->e:Z

    if-nez v0, :cond_3

    invoke-virtual/range {p8 .. p8}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 103
    :cond_3
    :goto_0
    iget-object v0, v3, Lcom/android/tools/r8/graph/E0;->l:Lcom/android/tools/r8/graph/N4;

    .line 104
    iget-object v0, v0, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    move-object v1, p5

    move-object v2, p6

    .line 105
    invoke-virtual {v0, p5, p6}, Lcom/android/tools/r8/graph/O4;->a(Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/j1;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 106
    iget-object v5, v0, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/g;->h()Z

    move-result v5

    if-nez v5, :cond_b

    iget-object v5, v0, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result v5

    if-nez v5, :cond_b

    .line 107
    invoke-virtual/range {p7 .. p8}, Lcom/android/tools/r8/graph/T4;->a(Lcom/android/tools/r8/graph/E0;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 108
    iget-object v1, v4, Lcom/android/tools/r8/graph/R4;->b:Ljava/util/LinkedHashMap;

    .line 109
    invoke-virtual {v1, v3}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 110
    iget-object v1, v4, Lcom/android/tools/r8/graph/R4;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v3, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 111
    :cond_4
    iget-object v1, v4, Lcom/android/tools/r8/graph/R4;->a:Ljava/util/LinkedHashMap;

    .line 112
    invoke-virtual {v1, v3}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_4

    .line 113
    :cond_5
    iget-object v1, v4, Lcom/android/tools/r8/graph/R4;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v3, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-boolean v0, Lcom/android/tools/r8/graph/R4;->f:Z

    if-nez v0, :cond_7

    invoke-virtual/range {p8 .. p8}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_1

    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_7
    :goto_1
    if-nez v0, :cond_9

    .line 115
    iget-object v0, v3, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    iget-object v1, v4, Lcom/android/tools/r8/graph/R4;->e:Lcom/android/tools/r8/graph/u1;

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    if-ne v0, v1, :cond_8

    goto :goto_2

    :cond_8
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 116
    :cond_9
    :goto_2
    iget-object v0, v3, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_a

    aget-object v3, v0, v2

    .line 117
    invoke-virtual {p3, v3}, Lcom/android/tools/r8/graph/R4;->a(Lcom/android/tools/r8/graph/M2;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_a
    :goto_4
    return-void

    .line 118
    :cond_b
    iget-object v5, v3, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    iget-object v0, v3, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    .line 119
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    move-object v0, p0

    move-object v1, p5

    move-object v2, p6

    move-object/from16 v3, p8

    move-object v4, p3

    move-object/from16 v7, p7

    .line 120
    invoke-virtual/range {v0 .. v7}, Lcom/android/tools/r8/graph/U4;->a(Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/R4;Lcom/android/tools/r8/graph/M2;Ljava/util/List;Lcom/android/tools/r8/graph/T4;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/R4;Lcom/android/tools/r8/graph/M2;Ljava/util/List;)V
    .locals 9

    .line 83
    iget-boolean v0, p0, Lcom/android/tools/r8/graph/U4;->d:Z

    if-eqz v0, :cond_1

    .line 84
    new-instance v0, Lcom/android/tools/r8/graph/T4;

    iget-object v1, p0, Lcom/android/tools/r8/graph/U4;->a:Ljava/util/function/Function;

    iget-boolean v2, p0, Lcom/android/tools/r8/graph/U4;->c:Z

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/graph/T4;-><init>(Ljava/util/function/Function;Z)V

    .line 85
    new-instance v1, Lcom/android/tools/r8/graph/db;

    invoke-direct {v1, v0, p3}, Lcom/android/tools/r8/graph/db;-><init>(Lcom/android/tools/r8/graph/T4;Lcom/android/tools/r8/graph/E0;)V

    invoke-interface {p6, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    if-eqz p5, :cond_0

    .line 86
    sget-object v1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-virtual {v0, p3, v1, p5}, Lcom/android/tools/r8/graph/T4;->b(Lcom/android/tools/r8/graph/E0;Ljava/util/Set;Lcom/android/tools/r8/graph/M2;)V

    :cond_0
    :goto_0
    move-object v8, v0

    goto :goto_1

    .line 87
    :cond_1
    sget-object v0, Lcom/android/tools/r8/graph/Q4;->f:Lcom/android/tools/r8/graph/Q4;

    goto :goto_0

    :goto_1
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 88
    invoke-virtual/range {v1 .. v8}, Lcom/android/tools/r8/graph/U4;->a(Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/R4;Lcom/android/tools/r8/graph/M2;Ljava/util/List;Lcom/android/tools/r8/graph/T4;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/R4;Lcom/android/tools/r8/graph/M2;Ljava/util/List;Lcom/android/tools/r8/graph/T4;)V
    .locals 14

    move-object v9, p0

    move-object/from16 v10, p5

    .line 90
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/tools/r8/graph/M2;

    .line 91
    iget-object v0, v9, Lcom/android/tools/r8/graph/U4;->a:Ljava/util/function/Function;

    invoke-interface {v0, v5}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/android/tools/r8/graph/b0;

    .line 92
    new-instance v13, Lcom/android/tools/r8/graph/eb;

    move-object v0, v13

    move-object v1, p0

    move-object/from16 v2, p3

    move-object v3, v12

    move-object/from16 v4, p4

    move-object v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/tools/r8/graph/eb;-><init>(Lcom/android/tools/r8/graph/U4;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/b0;Lcom/android/tools/r8/graph/R4;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/T4;)V

    invoke-interface {v12, v13}, Lcom/android/tools/r8/graph/b0;->a(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    if-eqz v10, :cond_1

    .line 93
    iget-object v0, v9, Lcom/android/tools/r8/graph/U4;->a:Ljava/util/function/Function;

    invoke-interface {v0, v10}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/tools/r8/graph/b0;

    .line 94
    new-instance v8, Lcom/android/tools/r8/graph/fb;

    move-object v0, v8

    move-object v1, p0

    move-object/from16 v2, p3

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/android/tools/r8/graph/fb;-><init>(Lcom/android/tools/r8/graph/U4;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/R4;Lcom/android/tools/r8/graph/T4;)V

    .line 95
    invoke-interface {v7, v8}, Lcom/android/tools/r8/graph/b0;->a(Ljava/util/function/Consumer;)V

    :cond_1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/W4;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/E0;)V
    .locals 7

    .line 127
    iget-object v0, p5, Lcom/android/tools/r8/graph/E0;->l:Lcom/android/tools/r8/graph/N4;

    .line 128
    iget-object v0, v0, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    .line 129
    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/graph/O4;->a(Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/j1;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v1, v0, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    .line 131
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/g;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    .line 132
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/L4;->H()Z

    move-result v1

    if-nez v1, :cond_0

    .line 133
    invoke-static {p4, p5, v0}, Lcom/android/tools/r8/graph/Z4;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/Z4$c;

    move-result-object p1

    .line 134
    invoke-virtual {p3, p1}, Lcom/android/tools/r8/graph/W4;->a(Lcom/android/tools/r8/graph/Z4;)V

    return-void

    .line 135
    :cond_0
    new-instance p5, Lcom/android/tools/r8/graph/R4;

    iget-object v0, p0, Lcom/android/tools/r8/graph/U4;->a:Ljava/util/function/Function;

    iget-object v1, p0, Lcom/android/tools/r8/graph/U4;->b:Lcom/android/tools/r8/graph/u1;

    invoke-direct {p5, v1, v0}, Lcom/android/tools/r8/graph/R4;-><init>(Lcom/android/tools/r8/graph/u1;Ljava/util/function/Function;)V

    .line 136
    iget-object v5, p4, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    iget-object v0, p4, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    .line 137
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    .line 138
    invoke-virtual/range {v0 .. v6}, Lcom/android/tools/r8/graph/U4;->a(Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/R4;Lcom/android/tools/r8/graph/M2;Ljava/util/List;)V

    .line 139
    invoke-virtual {p5, p4}, Lcom/android/tools/r8/graph/R4;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/Z4;

    move-result-object p1

    .line 140
    invoke-virtual {p3, p1}, Lcom/android/tools/r8/graph/W4;->a(Lcom/android/tools/r8/graph/Z4;)V

    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/W4;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/E0;)V
    .locals 1

    .line 23
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object p2

    invoke-virtual {p0, p3, v0, p2}, Lcom/android/tools/r8/graph/U4;->b(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object p2

    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object p2

    invoke-virtual {p0, p3, v0, p2}, Lcom/android/tools/r8/graph/U4;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object p2

    .line 26
    :goto_0
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/W4;->a(Lcom/android/tools/r8/graph/Z4;)V

    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/W4;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/E0;)V
    .locals 1

    .line 44
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    sget-object p2, Lcom/android/tools/r8/graph/c5;->d:Lcom/android/tools/r8/graph/c5;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/W4;->a(Lcom/android/tools/r8/graph/Z4;)V

    return-void

    .line 46
    :cond_0
    invoke-virtual {p0, p4, p2, p3}, Lcom/android/tools/r8/graph/U4;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/W4;->a(Lcom/android/tools/r8/graph/Z4;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/Z4;
    .locals 9

    .line 15
    sget-boolean v0, Lcom/android/tools/r8/graph/U4;->e:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 16
    :cond_1
    :goto_0
    iget-object v0, p1, Lcom/android/tools/r8/graph/E0;->l:Lcom/android/tools/r8/graph/N4;

    .line 17
    iget-object v0, v0, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    .line 18
    invoke-virtual {v0, p2, p3}, Lcom/android/tools/r8/graph/O4;->a(Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/j1;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 19
    invoke-static {p1, p1, v0}, Lcom/android/tools/r8/graph/Z4;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/Z4$c;

    move-result-object p1

    return-object p1

    .line 20
    :cond_2
    sget-boolean v0, Lcom/android/tools/r8/graph/Z4;->a:Z

    .line 21
    new-instance v0, Lcom/android/tools/r8/graph/W4;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/W4;-><init>()V

    .line 22
    iget-object v1, p0, Lcom/android/tools/r8/graph/U4;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    .line 23
    iget-object v2, p0, Lcom/android/tools/r8/graph/U4;->a:Ljava/util/function/Function;

    invoke-interface {v2, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/tools/r8/graph/b0;

    .line 24
    new-instance v8, Lcom/android/tools/r8/graph/Ya;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, v0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/tools/r8/graph/Ya;-><init>(Lcom/android/tools/r8/graph/U4;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/W4;Lcom/android/tools/r8/graph/E0;)V

    .line 25
    invoke-interface {v7, v8}, Lcom/android/tools/r8/graph/b0;->a(Ljava/util/function/Consumer;)V

    .line 26
    sget-object p1, Lcom/android/tools/r8/graph/X4;->c:Lcom/android/tools/r8/graph/X4;

    sget-object p2, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/graph/W4;->a(Lcom/android/tools/r8/graph/Z4$a;Ljava/util/Collection;)Lcom/android/tools/r8/graph/Z4;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/Z4;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Lcom/android/tools/r8/graph/c5;->d:Lcom/android/tools/r8/graph/c5;

    return-object p1

    .line 3
    :cond_0
    sget-boolean v0, Lcom/android/tools/r8/graph/Z4;->a:Z

    .line 4
    new-instance v0, Lcom/android/tools/r8/graph/W4;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/W4;-><init>()V

    .line 5
    iget-object v1, p0, Lcom/android/tools/r8/graph/U4;->a:Ljava/util/function/Function;

    invoke-interface {v1, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/b0;

    .line 6
    new-instance v2, Lcom/android/tools/r8/graph/bb;

    invoke-direct {v2, p0, v0, p2, p3}, Lcom/android/tools/r8/graph/bb;-><init>(Lcom/android/tools/r8/graph/U4;Lcom/android/tools/r8/graph/W4;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)V

    .line 7
    invoke-interface {v1, v2}, Lcom/android/tools/r8/graph/b0;->a(Ljava/util/function/Consumer;)V

    .line 8
    sget-object p2, Lcom/android/tools/r8/graph/X4;->c:Lcom/android/tools/r8/graph/X4;

    .line 9
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 10
    invoke-virtual {v0, p2, p1}, Lcom/android/tools/r8/graph/W4;->a(Lcom/android/tools/r8/graph/Z4$a;Ljava/util/Collection;)Lcom/android/tools/r8/graph/Z4;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic b(Lcom/android/tools/r8/graph/W4;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/E0;)V
    .locals 1

    .line 11
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v0

    if-nez v0, :cond_0

    .line 12
    sget-object p2, Lcom/android/tools/r8/graph/c5;->d:Lcom/android/tools/r8/graph/c5;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/W4;->a(Lcom/android/tools/r8/graph/Z4;)V

    return-void

    .line 13
    :cond_0
    invoke-virtual {p0, p4, p2, p3}, Lcom/android/tools/r8/graph/U4;->b(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object p2

    .line 14
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/W4;->a(Lcom/android/tools/r8/graph/Z4;)V

    return-void
.end method
