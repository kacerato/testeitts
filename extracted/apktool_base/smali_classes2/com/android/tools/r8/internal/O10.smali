.class public final Lcom/android/tools/r8/internal/O10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Eg;


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Ljava/util/IdentityHashMap;

.field public final c:Lcom/android/tools/r8/internal/nC;

.field public final d:Lcom/android/tools/r8/internal/J10;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Ljava/util/IdentityHashMap;Lcom/android/tools/r8/internal/nC;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/android/tools/r8/internal/K10;->q:I

    new-instance v0, Lcom/android/tools/r8/internal/J10;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/J10;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/O10;->d:Lcom/android/tools/r8/internal/J10;

    iput-object p1, p0, Lcom/android/tools/r8/internal/O10;->a:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/internal/O10;->b:Ljava/util/IdentityHashMap;

    iput-object p3, p0, Lcom/android/tools/r8/internal/O10;->c:Lcom/android/tools/r8/internal/nC;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/internal/G10;)Lcom/android/tools/r8/graph/I2;
    .locals 4

    .line 71
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/I2;->n0()Lcom/android/tools/r8/graph/O2;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    .line 72
    array-length v1, v0

    new-array v1, v1, [Lcom/android/tools/r8/graph/M2;

    new-instance v2, Lcom/android/tools/r8/internal/eP0;

    invoke-direct {v2, p0, v0, p2}, Lcom/android/tools/r8/internal/eP0;-><init>(Lcom/android/tools/r8/internal/O10;[Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/G10;)V

    .line 73
    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/X3;->a([Ljava/lang/Object;Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/tools/r8/graph/M2;

    .line 74
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/I2;->o0()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 75
    sget-boolean v2, Lcom/android/tools/r8/internal/G10;->c:Z

    if-nez v2, :cond_1

    .line 76
    iget-object v2, p2, Lcom/android/tools/r8/internal/G10;->a:Lcom/android/tools/r8/internal/F10;

    .line 77
    sget-object v3, Lcom/android/tools/r8/internal/F10;->b:Lcom/android/tools/r8/internal/F10;

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 78
    :cond_1
    :goto_0
    iget-object p2, p2, Lcom/android/tools/r8/internal/G10;->a:Lcom/android/tools/r8/internal/F10;

    .line 79
    sget-object v2, Lcom/android/tools/r8/internal/F10;->c:Lcom/android/tools/r8/internal/F10;

    if-ne p2, v2, :cond_3

    .line 80
    iget-object p2, p0, Lcom/android/tools/r8/internal/O10;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p2

    iget-object p2, p2, Lcom/android/tools/r8/graph/u1;->s6:Lcom/android/tools/r8/internal/eA;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/eA;->f()Lcom/android/tools/r8/internal/f6;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/aA;

    invoke-virtual {p2, v1}, Lcom/android/tools/r8/internal/aA;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Lcom/android/tools/r8/graph/M2;

    .line 81
    sget-boolean p2, Lcom/android/tools/r8/internal/O10;->e:Z

    if-nez p2, :cond_3

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 82
    :cond_3
    :goto_1
    iget-object p2, p0, Lcom/android/tools/r8/internal/O10;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p2

    invoke-virtual {p2, v1, v0}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object p2

    .line 83
    sget-boolean v0, Lcom/android/tools/r8/internal/O10;->e:Z

    if-nez v0, :cond_5

    .line 84
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/graph/I2;->a(Lcom/android/tools/r8/graph/I2;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_2

    .line 85
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_2
    return-object p2
.end method

.method public final a([Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/G10;I)Lcom/android/tools/r8/graph/M2;
    .locals 2

    .line 86
    aget-object p1, p1, p3

    .line 87
    sget-boolean v0, Lcom/android/tools/r8/internal/G10;->c:Z

    if-nez v0, :cond_1

    .line 88
    iget-object v0, p2, Lcom/android/tools/r8/internal/G10;->b:[Lcom/android/tools/r8/internal/F10;

    .line 89
    aget-object v0, v0, p3

    sget-object v1, Lcom/android/tools/r8/internal/F10;->b:Lcom/android/tools/r8/internal/F10;

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 90
    :cond_1
    :goto_0
    iget-object p2, p2, Lcom/android/tools/r8/internal/G10;->b:[Lcom/android/tools/r8/internal/F10;

    .line 91
    aget-object p2, p2, p3

    sget-object p3, Lcom/android/tools/r8/internal/F10;->c:Lcom/android/tools/r8/internal/F10;

    if-ne p2, p3, :cond_3

    .line 92
    iget-object p2, p0, Lcom/android/tools/r8/internal/O10;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p2

    iget-object p2, p2, Lcom/android/tools/r8/graph/u1;->s6:Lcom/android/tools/r8/internal/eA;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/eA;->f()Lcom/android/tools/r8/internal/f6;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/aA;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/aA;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    .line 93
    sget-boolean p2, Lcom/android/tools/r8/internal/O10;->e:Z

    if-nez p2, :cond_3

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/OW;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/j1;
    .locals 11

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/internal/O10;->b:Ljava/util/IdentityHashMap;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    .line 10
    iget-object v2, p0, Lcom/android/tools/r8/internal/O10;->c:Lcom/android/tools/r8/internal/nC;

    .line 11
    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/nC;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v1, v2

    .line 12
    :cond_0
    check-cast v1, Lcom/android/tools/r8/graph/A2;

    .line 13
    invoke-virtual {v0, v1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 14
    sget-boolean v0, Lcom/android/tools/r8/internal/O10;->e:Z

    if-nez v0, :cond_2

    .line 15
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    .line 16
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/j1;->X0()Lcom/android/tools/r8/graph/I2;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/O10;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v2

    iget-object v2, v2, Lcom/android/tools/r8/graph/u1;->L1:Lcom/android/tools/r8/graph/M2;

    .line 17
    invoke-virtual {p1, p2, v1, v2}, Lcom/android/tools/r8/internal/OW;->a(Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    .line 18
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 19
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_0
    return-object p2

    .line 20
    :cond_3
    iget-object v0, p0, Lcom/android/tools/r8/internal/O10;->b:Ljava/util/IdentityHashMap;

    .line 21
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    .line 22
    iget-object v2, p0, Lcom/android/tools/r8/internal/O10;->c:Lcom/android/tools/r8/internal/nC;

    .line 23
    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/nC;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    move-object v1, v2

    .line 24
    :cond_4
    check-cast v1, Lcom/android/tools/r8/graph/A2;

    .line 25
    invoke-virtual {v0, v1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/G10;

    .line 26
    sget-boolean v1, Lcom/android/tools/r8/internal/O10;->e:Z

    if-nez v1, :cond_6

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/G10;->a()Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 27
    :cond_6
    :goto_1
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/j1;->X0()Lcom/android/tools/r8/graph/I2;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/android/tools/r8/internal/O10;->a(Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/internal/G10;)Lcom/android/tools/r8/graph/I2;

    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/android/tools/r8/internal/O10;->a:Lcom/android/tools/r8/graph/y;

    .line 29
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->L1:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, p2, v0, v1}, Lcom/android/tools/r8/internal/OW;->a(Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    .line 30
    iget-object v0, p0, Lcom/android/tools/r8/internal/O10;->d:Lcom/android/tools/r8/internal/J10;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    .line 32
    sget-boolean v2, Lcom/android/tools/r8/internal/J10;->c:Z

    if-nez v2, :cond_8

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_2

    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 33
    :cond_8
    :goto_2
    invoke-static {v1, p1}, Lcom/android/tools/r8/internal/Hv;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)Ljava/util/List;

    move-result-object v3

    .line 34
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result v4

    if-nez v2, :cond_a

    .line 35
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/A2;->w0()I

    move-result v2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/A2;->w0()I

    move-result v2

    if-ne v5, v2, :cond_9

    goto :goto_3

    :cond_9
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 36
    :cond_a
    :goto_3
    invoke-static {}, Lcom/android/tools/r8/graph/proto/c;->a()Lcom/android/tools/r8/graph/proto/c$a;

    move-result-object v2

    .line 37
    invoke-virtual {v1, v4}, Lcom/android/tools/r8/graph/A2;->a(Z)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/android/tools/r8/graph/proto/c$a;->a(I)Lcom/android/tools/r8/graph/proto/c$a;

    move-result-object v2

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    .line 38
    invoke-static {v4}, Lcom/android/tools/r8/internal/o7;->a(Z)I

    move-result v4

    const/4 v6, 0x0

    .line 39
    :goto_4
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/A2;->x0()Lcom/android/tools/r8/graph/O2;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/graph/O2;->size()I

    move-result v7

    if-ge v6, v7, :cond_c

    .line 40
    invoke-virtual {v1, v6}, Lcom/android/tools/r8/graph/A2;->k(I)Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    .line 41
    invoke-virtual {p1, v6}, Lcom/android/tools/r8/graph/A2;->k(I)Lcom/android/tools/r8/graph/M2;

    move-result-object v8

    .line 42
    invoke-virtual {v7, v8}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v9

    if-nez v9, :cond_b

    add-int v9, v4, v6

    .line 43
    invoke-static {}, Lcom/android/tools/r8/graph/proto/k;->d()Lcom/android/tools/r8/graph/proto/k$a;

    move-result-object v10

    invoke-virtual {v10, v7}, Lcom/android/tools/r8/graph/proto/k$a;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/proto/k$a;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/android/tools/r8/graph/proto/k$a;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/proto/k$a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/graph/proto/k$a;->a()Lcom/android/tools/r8/graph/proto/k;

    move-result-object v7

    .line 44
    invoke-virtual {v2, v9, v7}, Lcom/android/tools/r8/graph/proto/c$a;->a(ILcom/android/tools/r8/graph/proto/b;)Lcom/android/tools/r8/graph/proto/c$a;

    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 45
    :cond_c
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v4

    if-eqz v4, :cond_d

    const/4 v4, 0x0

    goto :goto_5

    .line 46
    :cond_d
    invoke-static {}, Lcom/android/tools/r8/graph/proto/k;->d()Lcom/android/tools/r8/graph/proto/k$a;

    move-result-object v4

    .line 47
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/tools/r8/graph/proto/k$a;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/proto/k$a;

    move-result-object v4

    .line 48
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/tools/r8/graph/proto/k$a;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/proto/k$a;

    move-result-object v4

    .line 49
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/proto/k$a;->a()Lcom/android/tools/r8/graph/proto/k;

    move-result-object v4

    .line 50
    :goto_5
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/proto/c$a;->a()Lcom/android/tools/r8/graph/proto/c;

    move-result-object v2

    .line 51
    invoke-static {v3, v4, v2}, Lcom/android/tools/r8/graph/proto/j;->a(Ljava/util/List;Lcom/android/tools/r8/graph/proto/k;Lcom/android/tools/r8/graph/proto/c;)Lcom/android/tools/r8/graph/proto/j;

    move-result-object v2

    .line 52
    monitor-enter v0

    .line 53
    :try_start_0
    iget-object v3, v0, Lcom/android/tools/r8/internal/J10;->b:Lcom/android/tools/r8/internal/r6;

    .line 54
    iget-object v3, v3, Lcom/android/tools/r8/internal/r6;->b:Lcom/android/tools/r8/internal/eA;

    .line 55
    invoke-virtual {v3, v1, p1, v5}, Lcom/android/tools/r8/internal/eA;->a(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    .line 56
    iget-object v1, v0, Lcom/android/tools/r8/internal/J10;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, p1, v2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    iget-object v0, p0, Lcom/android/tools/r8/internal/O10;->a:Lcom/android/tools/r8/graph/y;

    .line 59
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/fP0;

    invoke-direct {v1, p0, v2, p2}, Lcom/android/tools/r8/internal/fP0;-><init>(Lcom/android/tools/r8/internal/O10;Lcom/android/tools/r8/graph/proto/j;Lcom/android/tools/r8/graph/j1;)V

    .line 60
    invoke-virtual {p2, p1, v0, v1}, Lcom/android/tools/r8/graph/j1;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/u1;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/j1;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 61
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/OW;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->b0()Lcom/android/tools/r8/graph/N4;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/internal/gP0;

    invoke-direct {v0, p0, p2}, Lcom/android/tools/r8/internal/gP0;-><init>(Lcom/android/tools/r8/internal/O10;Lcom/android/tools/r8/internal/OW;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    sget-object p2, Lcom/android/tools/r8/graph/j1;->v:Lcom/android/tools/r8/graph/j1;

    iput-object p2, p1, Lcom/android/tools/r8/graph/N4;->c:Lcom/android/tools/r8/graph/j1;

    .line 3
    iget-object p1, p1, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/O4;->a(Ljava/util/function/Function;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/proto/j;Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/graph/j1$a;)V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/android/tools/r8/internal/O10;->a:Lcom/android/tools/r8/graph/y;

    .line 63
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    new-instance v1, Lcom/android/tools/r8/graph/S5;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/graph/S5;-><init>(Lcom/android/tools/r8/graph/proto/j;)V

    .line 65
    invoke-virtual {p3, v0, v1}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/S5;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object p1

    .line 66
    iget-object p3, p2, Lcom/android/tools/r8/graph/j1;->l:Lcom/android/tools/r8/graph/k1;

    .line 67
    sget-boolean v0, Lcom/android/tools/r8/graph/j1$a;->u:Z

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/android/tools/r8/graph/j1$a;->h:Lcom/android/tools/r8/graph/k1;

    sget-object v1, Lcom/android/tools/r8/graph/k1;->b:Lcom/android/tools/r8/graph/k1;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 68
    :cond_1
    :goto_0
    iput-object p3, p1, Lcom/android/tools/r8/graph/j1$a;->h:Lcom/android/tools/r8/graph/k1;

    .line 69
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/j1;->n1()Z

    move-result p2

    sget-object p3, Lcom/android/tools/r8/internal/t40;->b:Lcom/android/tools/r8/internal/t40;

    if-eqz p2, :cond_2

    .line 70
    invoke-virtual {p1, p3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/internal/t40;)Lcom/android/tools/r8/graph/j1$a;

    :cond_2
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;)Z
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/O10;->b:Ljava/util/IdentityHashMap;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    .line 5
    iget-object v1, p0, Lcom/android/tools/r8/internal/O10;->c:Lcom/android/tools/r8/internal/nC;

    .line 6
    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/nC;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object p1, v1

    .line 7
    :cond_0
    check-cast p1, Lcom/android/tools/r8/graph/A2;

    .line 8
    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final synthetic b(Lcom/android/tools/r8/internal/OW;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/j1;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/O10;->a(Lcom/android/tools/r8/internal/OW;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/j1;

    move-result-object p1

    return-object p1
.end method
