.class public final Lcom/android/tools/r8/graph/proto/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lcom/android/tools/r8/graph/proto/j;

.field public static final synthetic e:Z = true


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Lcom/android/tools/r8/graph/proto/c;

.field public final c:Lcom/android/tools/r8/graph/proto/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/graph/proto/j;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/proto/j;-><init>()V

    sput-object v0, Lcom/android/tools/r8/graph/proto/j;->d:Lcom/android/tools/r8/graph/proto/j;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/android/tools/r8/graph/proto/j;->a:Ljava/util/List;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/android/tools/r8/graph/proto/j;->c:Lcom/android/tools/r8/graph/proto/k;

    .line 4
    sget-object v0, Lcom/android/tools/r8/graph/proto/c;->f:Lcom/android/tools/r8/graph/proto/c;

    .line 5
    iput-object v0, p0, Lcom/android/tools/r8/graph/proto/j;->b:Lcom/android/tools/r8/graph/proto/c;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/android/tools/r8/graph/proto/k;Lcom/android/tools/r8/graph/proto/c;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    sget-boolean v0, Lcom/android/tools/r8/graph/proto/j;->e:Z

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 8
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/graph/proto/j;->a:Ljava/util/List;

    .line 9
    iput-object p2, p0, Lcom/android/tools/r8/graph/proto/j;->c:Lcom/android/tools/r8/graph/proto/k;

    .line 10
    iput-object p3, p0, Lcom/android/tools/r8/graph/proto/j;->b:Lcom/android/tools/r8/graph/proto/c;

    if-nez v0, :cond_3

    .line 11
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/proto/j;->c()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method public static a(Ljava/util/List;Lcom/android/tools/r8/graph/proto/k;Lcom/android/tools/r8/graph/proto/c;)Lcom/android/tools/r8/graph/proto/j;
    .locals 1

    .line 1
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/proto/c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p0, Lcom/android/tools/r8/graph/proto/j;->d:Lcom/android/tools/r8/graph/proto/j;

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Lcom/android/tools/r8/graph/proto/j;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/tools/r8/graph/proto/j;-><init>(Ljava/util/List;Lcom/android/tools/r8/graph/proto/k;Lcom/android/tools/r8/graph/proto/c;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/A2;
    .locals 9

    .line 26
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/proto/j;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    return-object p1

    .line 28
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/proto/j;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    .line 30
    check-cast v0, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object v0

    goto/16 :goto_7

    .line 31
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/graph/proto/j;->c:Lcom/android/tools/r8/graph/proto/k;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/proto/k;->e()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 32
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->C()Lcom/android/tools/r8/graph/O2;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    .line 33
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/proto/j;->c()Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_6

    .line 34
    :cond_3
    array-length v2, v1

    iget-object v3, p0, Lcom/android/tools/r8/graph/proto/j;->b:Lcom/android/tools/r8/graph/proto/c;

    .line 35
    iget-object v4, v3, Lcom/android/tools/r8/graph/proto/c;->a:Lcom/android/tools/r8/internal/iG;

    const v5, 0x7fffffff

    .line 36
    invoke-static {v5, v4}, Lcom/android/tools/r8/graph/proto/c;->a(ILcom/android/tools/r8/internal/jG;)I

    move-result v4

    .line 37
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/j1;

    .line 38
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v5, :cond_4

    .line 39
    invoke-virtual {v3, v6}, Lcom/android/tools/r8/graph/proto/c;->a(I)Lcom/android/tools/r8/graph/proto/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/proto/b;->c()Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v7

    goto :goto_1

    :cond_4
    move v3, v6

    .line 40
    :goto_1
    invoke-static {v3}, Lcom/android/tools/r8/internal/o7;->a(Z)I

    move-result v3

    sub-int/2addr v4, v3

    sub-int/2addr v2, v4

    .line 41
    iget-object v3, p0, Lcom/android/tools/r8/graph/proto/j;->a:Ljava/util/List;

    .line 42
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, v2

    new-array v2, v3, [Lcom/android/tools/r8/graph/M2;

    .line 43
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/j1;

    .line 44
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result v3

    xor-int/2addr v3, v7

    move v4, v6

    .line 45
    :goto_2
    array-length v5, v1

    if-ge v6, v5, :cond_9

    .line 46
    iget-object v5, p0, Lcom/android/tools/r8/graph/proto/j;->b:Lcom/android/tools/r8/graph/proto/c;

    add-int v7, v6, v3

    invoke-virtual {v5, v7}, Lcom/android/tools/r8/graph/proto/c;->a(I)Lcom/android/tools/r8/graph/proto/b;

    move-result-object v5

    .line 47
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    instance-of v7, v5, Lcom/android/tools/r8/graph/proto/a;

    if-eqz v7, :cond_5

    add-int/lit8 v5, v4, 0x1

    .line 49
    aget-object v7, v1, v6

    aput-object v7, v2, v4

    move v4, v5

    goto :goto_4

    .line 50
    :cond_5
    instance-of v7, v5, Lcom/android/tools/r8/graph/proto/k;

    if-eqz v7, :cond_8

    .line 51
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/proto/b;->b()Lcom/android/tools/r8/graph/proto/k;

    move-result-object v5

    .line 52
    sget-boolean v7, Lcom/android/tools/r8/graph/proto/j;->e:Z

    if-nez v7, :cond_7

    aget-object v7, v1, v6

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/proto/k;->f()Lcom/android/tools/r8/graph/M2;

    move-result-object v8

    if-ne v7, v8, :cond_6

    goto :goto_3

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_7
    :goto_3
    add-int/lit8 v7, v4, 0x1

    .line 53
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/proto/k;->e()Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    aput-object v5, v2, v4

    move v4, v7

    :cond_8
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 54
    :cond_9
    iget-object v1, p0, Lcom/android/tools/r8/graph/proto/j;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/Bv;

    add-int/lit8 v5, v4, 0x1

    .line 55
    invoke-virtual {v3, p2}, Lcom/android/tools/r8/internal/Bv;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    aput-object v3, v2, v4

    move v4, v5

    goto :goto_5

    :cond_a
    move-object v1, v2

    .line 56
    :goto_6
    invoke-virtual {p2, v0, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v0

    .line 57
    :goto_7
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    .line 58
    iget-object v1, p1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    .line 59
    iget-object p1, p1, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {p2, v1, v0, p1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/proto/j;)Lcom/android/tools/r8/graph/proto/j;
    .locals 3

    .line 5
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/proto/j;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/proto/j;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    .line 7
    :cond_1
    sget v0, Lcom/android/tools/r8/internal/hC;->c:I

    .line 8
    new-instance v0, Lcom/android/tools/r8/internal/eC;

    .line 9
    invoke-direct {v0}, Lcom/android/tools/r8/internal/eC;-><init>()V

    .line 10
    iget-object v1, p0, Lcom/android/tools/r8/graph/proto/j;->a:Ljava/util/List;

    .line 11
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Iterable;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    .line 12
    iget-object v1, p1, Lcom/android/tools/r8/graph/proto/j;->a:Ljava/util/List;

    .line 13
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Iterable;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/eC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    .line 15
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/proto/j;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 16
    iget-object v1, p0, Lcom/android/tools/r8/graph/proto/j;->c:Lcom/android/tools/r8/graph/proto/k;

    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/proto/j;->b()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 19
    iget-object v2, p1, Lcom/android/tools/r8/graph/proto/j;->c:Lcom/android/tools/r8/graph/proto/k;

    .line 20
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/proto/k;->a(Lcom/android/tools/r8/graph/proto/k;)Lcom/android/tools/r8/graph/proto/k;

    move-result-object v1

    goto :goto_0

    .line 21
    :cond_2
    iget-object v1, p1, Lcom/android/tools/r8/graph/proto/j;->c:Lcom/android/tools/r8/graph/proto/k;

    .line 22
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/graph/proto/j;->b:Lcom/android/tools/r8/graph/proto/c;

    iget-object p1, p1, Lcom/android/tools/r8/graph/proto/j;->b:Lcom/android/tools/r8/graph/proto/c;

    .line 23
    invoke-virtual {v2, p1}, Lcom/android/tools/r8/graph/proto/c;->a(Lcom/android/tools/r8/graph/proto/c;)Lcom/android/tools/r8/graph/proto/c;

    move-result-object p1

    .line 24
    new-instance v2, Lcom/android/tools/r8/graph/proto/j;

    invoke-direct {v2, v0, v1, p1}, Lcom/android/tools/r8/graph/proto/j;-><init>(Ljava/util/List;Lcom/android/tools/r8/graph/proto/k;Lcom/android/tools/r8/graph/proto/c;)V

    return-object v2
.end method

.method public final a(Ljava/util/List;)Lcom/android/tools/r8/graph/proto/j;
    .locals 3

    .line 60
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 61
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/tools/r8/graph/proto/j;->a:Ljava/util/List;

    .line 62
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, v1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 63
    iget-object v1, p0, Lcom/android/tools/r8/graph/proto/j;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 64
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 65
    new-instance p1, Lcom/android/tools/r8/graph/proto/j;

    iget-object v1, p0, Lcom/android/tools/r8/graph/proto/j;->c:Lcom/android/tools/r8/graph/proto/k;

    iget-object v2, p0, Lcom/android/tools/r8/graph/proto/j;->b:Lcom/android/tools/r8/graph/proto/c;

    invoke-direct {p1, v0, v1, v2}, Lcom/android/tools/r8/graph/proto/j;-><init>(Ljava/util/List;Lcom/android/tools/r8/graph/proto/k;Lcom/android/tools/r8/graph/proto/c;)V

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/j1;)Ljava/util/function/Consumer;
    .locals 1

    .line 4
    new-instance v0, Lcom/android/tools/r8/graph/proto/o;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/graph/proto/o;-><init>(Lcom/android/tools/r8/graph/proto/j;Lcom/android/tools/r8/graph/j1;)V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/graph/j1$a;)V
    .locals 8

    .line 66
    iget-object v0, p2, Lcom/android/tools/r8/graph/j1$a;->g:Lcom/android/tools/r8/graph/z5;

    .line 67
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/z5;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/proto/j;->b:Lcom/android/tools/r8/graph/proto/c;

    .line 69
    iget-object v1, v0, Lcom/android/tools/r8/graph/proto/c;->c:Lcom/android/tools/r8/graph/proto/d;

    .line 70
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    instance-of v1, v1, Lcom/android/tools/r8/graph/proto/f;

    if-eqz v1, :cond_3

    .line 72
    iget-object v1, v0, Lcom/android/tools/r8/graph/proto/c;->a:Lcom/android/tools/r8/internal/iG;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/iG;->values()Lcom/android/tools/r8/internal/w30;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/TF;

    .line 73
    new-instance v2, Lcom/android/tools/r8/internal/hG;

    .line 74
    iget-object v1, v1, Lcom/android/tools/r8/internal/TF;->b:Lcom/android/tools/r8/internal/iG;

    .line 75
    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/hG;-><init>(Lcom/android/tools/r8/internal/iG;)V

    .line 76
    :cond_1
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/gG;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 77
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/gG;->a()Lcom/android/tools/r8/internal/UF;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/r8/internal/M;->c:Ljava/lang/Object;

    .line 78
    check-cast v1, Lcom/android/tools/r8/graph/proto/b;

    .line 79
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/proto/b;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 80
    :cond_2
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/proto/j;->a()Z

    move-result v1

    if-nez v1, :cond_3

    :goto_0
    return-void

    .line 81
    :cond_3
    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p2, Lcom/android/tools/r8/graph/j1$a;->g:Lcom/android/tools/r8/graph/z5;

    .line 82
    iget-object v2, v2, Lcom/android/tools/r8/graph/z5;->b:[Lcom/android/tools/r8/graph/u0;

    .line 83
    array-length v2, v2

    .line 84
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 85
    :goto_2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->V0()Lcom/android/tools/r8/graph/O2;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/O2;->size()I

    move-result v5

    if-ge v3, v5, :cond_8

    .line 86
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    add-int/2addr v5, v3

    .line 87
    invoke-virtual {v0, v5}, Lcom/android/tools/r8/graph/proto/c;->a(I)Lcom/android/tools/r8/graph/proto/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/proto/b;->c()Z

    move-result v5

    if-nez v5, :cond_7

    .line 88
    iget-object v5, p2, Lcom/android/tools/r8/graph/j1$a;->g:Lcom/android/tools/r8/graph/z5;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    sget-boolean v6, Lcom/android/tools/r8/graph/z5;->e:Z

    if-nez v6, :cond_5

    if-ltz v3, :cond_4

    goto :goto_3

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 90
    :cond_5
    :goto_3
    iget v5, v5, Lcom/android/tools/r8/graph/z5;->c:I

    if-ge v3, v5, :cond_6

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 91
    :cond_6
    iget-object v5, p2, Lcom/android/tools/r8/graph/j1$a;->g:Lcom/android/tools/r8/graph/z5;

    invoke-virtual {v5, v3}, Lcom/android/tools/r8/graph/z5;->j(I)Lcom/android/tools/r8/graph/u0;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 92
    :cond_8
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 93
    sget-object p1, Lcom/android/tools/r8/graph/z5;->d:Lcom/android/tools/r8/graph/z5;

    .line 94
    iput-object p1, p2, Lcom/android/tools/r8/graph/j1$a;->g:Lcom/android/tools/r8/graph/z5;

    return-void

    .line 95
    :cond_9
    iget-object v3, v0, Lcom/android/tools/r8/graph/proto/c;->c:Lcom/android/tools/r8/graph/proto/d;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    instance-of v3, v3, Lcom/android/tools/r8/graph/proto/f;

    if-nez v3, :cond_c

    if-lez v4, :cond_a

    .line 97
    sget-object p1, Lcom/android/tools/r8/graph/z5;->d:Lcom/android/tools/r8/graph/z5;

    .line 98
    iput-object p1, p2, Lcom/android/tools/r8/graph/j1$a;->g:Lcom/android/tools/r8/graph/z5;

    return-void

    .line 99
    :cond_a
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->V0()Lcom/android/tools/r8/graph/O2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/O2;->size()I

    move-result v3

    new-array v3, v3, [Lcom/android/tools/r8/graph/u0;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    move v5, v4

    .line 100
    :goto_5
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->V0()Lcom/android/tools/r8/graph/O2;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/O2;->size()I

    move-result v6

    if-ge v5, v6, :cond_b

    .line 101
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    add-int/2addr v6, v5

    .line 102
    iget-object v7, v0, Lcom/android/tools/r8/graph/proto/c;->c:Lcom/android/tools/r8/graph/proto/d;

    invoke-virtual {v7, v6}, Lcom/android/tools/r8/graph/proto/d;->a(I)I

    move-result v6

    .line 103
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    sub-int/2addr v6, v7

    sub-int v7, v5, v4

    .line 104
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/graph/u0;

    .line 105
    invoke-interface {v3, v6, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_b
    move v4, v2

    move-object v1, v3

    .line 106
    :cond_c
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/proto/j;->a()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 107
    :goto_6
    iget-object p1, p0, Lcom/android/tools/r8/graph/proto/j;->a:Ljava/util/List;

    .line 108
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_d

    .line 109
    invoke-static {}, Lcom/android/tools/r8/graph/u0;->l0()Lcom/android/tools/r8/graph/u0;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 110
    :cond_d
    sget-object p1, Lcom/android/tools/r8/graph/u0;->f:[Lcom/android/tools/r8/graph/u0;

    .line 111
    invoke-interface {v1, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/tools/r8/graph/u0;

    .line 112
    invoke-static {p1, v4}, Lcom/android/tools/r8/graph/z5;->a([Lcom/android/tools/r8/graph/u0;I)Lcom/android/tools/r8/graph/z5;

    move-result-object p1

    .line 113
    iput-object p1, p2, Lcom/android/tools/r8/graph/j1$a;->g:Lcom/android/tools/r8/graph/z5;

    return-void
.end method

.method public final a()Z
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/android/tools/r8/graph/proto/j;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/proto/j;->c:Lcom/android/tools/r8/graph/proto/k;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/proto/j;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/graph/proto/j;->c:Lcom/android/tools/r8/graph/proto/k;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/graph/proto/j;->b:Lcom/android/tools/r8/graph/proto/c;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/proto/c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/android/tools/r8/graph/proto/j;

    if-eq v2, v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/android/tools/r8/graph/proto/j;

    iget-object v1, p0, Lcom/android/tools/r8/graph/proto/j;->a:Ljava/util/List;

    iget-object v2, p1, Lcom/android/tools/r8/graph/proto/j;->a:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/graph/proto/j;->c:Lcom/android/tools/r8/graph/proto/k;

    iget-object v2, p1, Lcom/android/tools/r8/graph/proto/j;->c:Lcom/android/tools/r8/graph/proto/k;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/graph/proto/j;->b:Lcom/android/tools/r8/graph/proto/c;

    iget-object p1, p1, Lcom/android/tools/r8/graph/proto/j;->b:Lcom/android/tools/r8/graph/proto/c;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/graph/proto/c;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/graph/proto/j;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/android/tools/r8/graph/proto/j;->c:Lcom/android/tools/r8/graph/proto/k;

    iget-object v2, p0, Lcom/android/tools/r8/graph/proto/j;->b:Lcom/android/tools/r8/graph/proto/c;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
