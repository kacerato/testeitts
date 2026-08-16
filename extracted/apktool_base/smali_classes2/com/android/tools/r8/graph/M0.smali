.class public Lcom/android/tools/r8/graph/M0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/graph/V0;


# static fields
.field public static final synthetic i:Z = true


# instance fields
.field public a:Z

.field public b:Z

.field public final c:Ljava/util/HashMap;

.field public final d:Lcom/android/tools/r8/internal/GG;

.field public e:Lcom/android/tools/r8/graph/K0;

.field public final f:Ljava/util/HashMap;

.field public g:Ljava/util/ArrayList;

.field public final h:Lcom/android/tools/r8/graph/a1;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ILcom/android/tools/r8/graph/A2;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/tools/r8/graph/M0;->a:Z

    .line 3
    iput-boolean v0, p0, Lcom/android/tools/r8/graph/M0;->b:Z

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/graph/M0;->c:Ljava/util/HashMap;

    .line 5
    new-instance v0, Lcom/android/tools/r8/internal/GG;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/GG;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/graph/M0;->d:Lcom/android/tools/r8/internal/GG;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/android/tools/r8/graph/M0;->e:Lcom/android/tools/r8/graph/K0;

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/graph/M0;->f:Ljava/util/HashMap;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/graph/M0;->g:Ljava/util/ArrayList;

    .line 9
    sget-boolean v0, Lcom/android/tools/r8/graph/M0;->i:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 10
    :cond_1
    :goto_0
    new-instance v0, Lcom/android/tools/r8/graph/a1;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/tools/r8/graph/a1;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    iput-object v0, p0, Lcom/android/tools/r8/graph/M0;->h:Lcom/android/tools/r8/graph/a1;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/graph/u1;)V
    .locals 11

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/android/tools/r8/graph/M0;->a:Z

    .line 13
    iput-boolean v0, p0, Lcom/android/tools/r8/graph/M0;->b:Z

    .line 14
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/tools/r8/graph/M0;->c:Ljava/util/HashMap;

    .line 15
    new-instance v2, Lcom/android/tools/r8/internal/GG;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/GG;-><init>()V

    iput-object v2, p0, Lcom/android/tools/r8/graph/M0;->d:Lcom/android/tools/r8/internal/GG;

    const/4 v3, 0x0

    .line 16
    iput-object v3, p0, Lcom/android/tools/r8/graph/M0;->e:Lcom/android/tools/r8/graph/K0;

    .line 17
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/tools/r8/graph/M0;->f:Ljava/util/HashMap;

    .line 18
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/tools/r8/graph/M0;->g:Ljava/util/ArrayList;

    .line 19
    sget-boolean v5, Lcom/android/tools/r8/graph/M0;->i:Z

    if-nez v5, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v6

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 20
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/i0;->C()Lcom/android/tools/r8/graph/J0;

    move-result-object v6

    .line 21
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/J0;->E0()Lcom/android/tools/r8/graph/W0;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/graph/W0;->l0()Lcom/android/tools/r8/graph/W0$a;

    move-result-object v7

    if-nez v5, :cond_3

    if-eqz v7, :cond_2

    goto :goto_1

    .line 22
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 23
    :cond_3
    :goto_1
    new-instance v5, Lcom/android/tools/r8/graph/a1;

    iget v8, v7, Lcom/android/tools/r8/graph/W0$a;->e:I

    .line 24
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->F0()Z

    move-result v10

    invoke-direct {v5, v8, v9, v10}, Lcom/android/tools/r8/graph/a1;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    iput-object v5, p0, Lcom/android/tools/r8/graph/M0;->h:Lcom/android/tools/r8/graph/a1;

    .line 25
    iget v5, v6, Lcom/android/tools/r8/graph/J0;->e:I

    iget v6, v6, Lcom/android/tools/r8/graph/J0;->f:I

    sub-int/2addr v5, v6

    .line 26
    iget-object v6, p1, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result v6

    if-nez v6, :cond_6

    .line 27
    iget-object p2, p2, Lcom/android/tools/r8/graph/u1;->k1:Lcom/android/tools/r8/graph/L2;

    .line 28
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->B0()Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    .line 29
    new-instance v8, Lcom/android/tools/r8/graph/j0;

    invoke-direct {v8, p2, v6, v3}, Lcom/android/tools/r8/graph/j0;-><init>(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/L2;)V

    .line 30
    invoke-virtual {v4, v8, v8}, Ljava/util/HashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/j0;

    if-eqz p2, :cond_4

    move-object v8, p2

    .line 31
    :cond_4
    invoke-virtual {v2, v5, v8}, Lcom/android/tools/r8/internal/GG;->a(ILjava/lang/Object;)Ljava/lang/Object;

    .line 32
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/L0;

    if-nez p2, :cond_5

    .line 33
    new-instance p2, Lcom/android/tools/r8/graph/L0;

    invoke-direct {p2}, Lcom/android/tools/r8/graph/L0;-><init>()V

    .line 34
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    :cond_5
    iput-object v8, p2, Lcom/android/tools/r8/graph/L0;->a:Lcom/android/tools/r8/graph/j0;

    .line 36
    iput-object v8, p2, Lcom/android/tools/r8/graph/L0;->b:Lcom/android/tools/r8/graph/j0;

    .line 37
    invoke-static {v6}, Lcom/android/tools/r8/internal/Kw0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Kw0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Kw0;->c()I

    move-result p2

    add-int/2addr v5, p2

    .line 38
    :cond_6
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    iget-object p1, p1, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    iget-object p1, p1, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    iget-object p1, p1, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    .line 39
    iget-object p2, v7, Lcom/android/tools/r8/graph/W0$a;->f:[Lcom/android/tools/r8/graph/L2;

    move v1, v0

    .line 40
    :goto_2
    array-length v2, p1

    if-ge v1, v2, :cond_a

    .line 41
    array-length v2, p2

    if-ge v1, v2, :cond_9

    aget-object v2, p2, v1

    if-eqz v2, :cond_9

    .line 42
    aget-object v4, p1, v1

    .line 43
    new-instance v6, Lcom/android/tools/r8/graph/j0;

    invoke-direct {v6, v2, v4, v3}, Lcom/android/tools/r8/graph/j0;-><init>(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/L2;)V

    .line 44
    iget-object v2, p0, Lcom/android/tools/r8/graph/M0;->f:Ljava/util/HashMap;

    invoke-virtual {v2, v6, v6}, Ljava/util/HashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j0;

    if-eqz v2, :cond_7

    move-object v6, v2

    .line 45
    :cond_7
    iget-object v2, p0, Lcom/android/tools/r8/graph/M0;->d:Lcom/android/tools/r8/internal/GG;

    invoke-virtual {v2, v5, v6}, Lcom/android/tools/r8/internal/GG;->a(ILjava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v2, p0, Lcom/android/tools/r8/graph/M0;->c:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/L0;

    if-nez v2, :cond_8

    .line 47
    new-instance v2, Lcom/android/tools/r8/graph/L0;

    invoke-direct {v2}, Lcom/android/tools/r8/graph/L0;-><init>()V

    .line 48
    iget-object v4, p0, Lcom/android/tools/r8/graph/M0;->c:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    :cond_8
    iput-object v6, v2, Lcom/android/tools/r8/graph/L0;->a:Lcom/android/tools/r8/graph/j0;

    .line 50
    iput-object v6, v2, Lcom/android/tools/r8/graph/L0;->b:Lcom/android/tools/r8/graph/j0;

    .line 51
    :cond_9
    aget-object v2, p1, v1

    invoke-static {v2}, Lcom/android/tools/r8/internal/Kw0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Kw0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Kw0;->c()I

    move-result v2

    add-int/2addr v5, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 52
    :cond_a
    iget-object p1, v7, Lcom/android/tools/r8/graph/W0$a;->g:[Lcom/android/tools/r8/graph/O0;

    array-length p2, p1

    :goto_3
    if-ge v0, p2, :cond_b

    aget-object v1, p1, v0

    .line 53
    invoke-virtual {v1, p0}, Lcom/android/tools/r8/graph/O0;->a(Lcom/android/tools/r8/graph/V0;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_b
    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/tools/r8/graph/K0;",
            ">;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/android/tools/r8/graph/M0;->e:Lcom/android/tools/r8/graph/K0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 50
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/M0;->a(Z)V

    .line 51
    iput-object v1, p0, Lcom/android/tools/r8/graph/M0;->e:Lcom/android/tools/r8/graph/K0;

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/M0;->g:Ljava/util/ArrayList;

    .line 53
    iput-object v1, p0, Lcom/android/tools/r8/graph/M0;->g:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/N0;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/graph/M0;->h:Lcom/android/tools/r8/graph/a1;

    .line 4
    iget v1, v0, Lcom/android/tools/r8/graph/a1;->b:I

    .line 5
    iget p1, p1, Lcom/android/tools/r8/graph/N0;->d:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/android/tools/r8/graph/a1;->b:I

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/O0$a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/graph/M0;->h:Lcom/android/tools/r8/graph/a1;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/a1;->a(Lcom/android/tools/r8/graph/O0$a;)V

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/M0;->a(Z)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/O0$b;)V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/graph/M0;->h:Lcom/android/tools/r8/graph/a1;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/a1;->a(Lcom/android/tools/r8/graph/O0$b;)V

    const/4 p1, 0x1

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/M0;->a(Z)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/O0$c;)V
    .locals 0

    .line 9
    iget-object p1, p0, Lcom/android/tools/r8/graph/M0;->h:Lcom/android/tools/r8/graph/a1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/O0$d;)V
    .locals 4

    .line 12
    iget v0, p1, Lcom/android/tools/r8/graph/O0$d;->d:I

    .line 13
    iget-object v1, p0, Lcom/android/tools/r8/graph/M0;->c:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/L0;

    if-nez v1, :cond_0

    .line 14
    new-instance v1, Lcom/android/tools/r8/graph/L0;

    invoke-direct {v1}, Lcom/android/tools/r8/graph/L0;-><init>()V

    .line 15
    iget-object v2, p0, Lcom/android/tools/r8/graph/M0;->c:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    :cond_0
    iget-object v0, p1, Lcom/android/tools/r8/graph/O0$d;->e:Lcom/android/tools/r8/graph/L2;

    iget-object v2, p1, Lcom/android/tools/r8/graph/O0$d;->f:Lcom/android/tools/r8/graph/M2;

    iget-object p1, p1, Lcom/android/tools/r8/graph/O0$d;->g:Lcom/android/tools/r8/graph/L2;

    .line 17
    new-instance v3, Lcom/android/tools/r8/graph/j0;

    invoke-direct {v3, v0, v2, p1}, Lcom/android/tools/r8/graph/j0;-><init>(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/L2;)V

    .line 18
    iget-object p1, p0, Lcom/android/tools/r8/graph/M0;->f:Ljava/util/HashMap;

    invoke-virtual {p1, v3, v3}, Ljava/util/HashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j0;

    if-eqz p1, :cond_1

    move-object v3, p1

    .line 19
    :cond_1
    iput-object v3, v1, Lcom/android/tools/r8/graph/L0;->a:Lcom/android/tools/r8/graph/j0;

    .line 20
    iput-object v3, v1, Lcom/android/tools/r8/graph/L0;->b:Lcom/android/tools/r8/graph/j0;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/P0;)V
    .locals 2

    .line 21
    iget p1, p1, Lcom/android/tools/r8/graph/P0;->d:I

    .line 22
    iget-object v0, p0, Lcom/android/tools/r8/graph/M0;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/L0;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/android/tools/r8/graph/L0;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/L0;-><init>()V

    .line 24
    iget-object v1, p0, Lcom/android/tools/r8/graph/M0;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 p1, 0x0

    .line 25
    iput-object p1, v0, Lcom/android/tools/r8/graph/L0;->a:Lcom/android/tools/r8/graph/j0;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/Q0;)V
    .locals 2

    .line 26
    iget p1, p1, Lcom/android/tools/r8/graph/Q0;->d:I

    .line 27
    iget-object v0, p0, Lcom/android/tools/r8/graph/M0;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/L0;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/android/tools/r8/graph/L0;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/L0;-><init>()V

    .line 29
    iget-object v1, p0, Lcom/android/tools/r8/graph/M0;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    :cond_0
    iget-object p1, v0, Lcom/android/tools/r8/graph/L0;->b:Lcom/android/tools/r8/graph/j0;

    iput-object p1, v0, Lcom/android/tools/r8/graph/L0;->a:Lcom/android/tools/r8/graph/j0;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/R0;)V
    .locals 0

    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lcom/android/tools/r8/graph/M0;->b:Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/S0;)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/graph/M0;->h:Lcom/android/tools/r8/graph/a1;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/a1;->a(Lcom/android/tools/r8/graph/S0;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/T0;)V
    .locals 0

    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lcom/android/tools/r8/graph/M0;->a:Z

    return-void
.end method

.method public final a(Z)V
    .locals 17

    move-object/from16 v0, p0

    .line 31
    iget-object v1, v0, Lcom/android/tools/r8/graph/M0;->e:Lcom/android/tools/r8/graph/K0;

    if-eqz v1, :cond_2

    .line 32
    iget-object v1, v0, Lcom/android/tools/r8/graph/M0;->g:Ljava/util/ArrayList;

    new-instance v9, Lcom/android/tools/r8/graph/K0;

    iget-object v2, v0, Lcom/android/tools/r8/graph/M0;->e:Lcom/android/tools/r8/graph/K0;

    iget-boolean v3, v2, Lcom/android/tools/r8/graph/K0;->a:Z

    iget v4, v2, Lcom/android/tools/r8/graph/K0;->b:I

    iget-boolean v5, v2, Lcom/android/tools/r8/graph/K0;->c:Z

    iget-boolean v6, v2, Lcom/android/tools/r8/graph/K0;->d:Z

    .line 33
    new-instance v2, Lcom/android/tools/r8/internal/kC;

    const/4 v7, 0x4

    .line 34
    invoke-direct {v2, v7}, Lcom/android/tools/r8/internal/kC;-><init>(I)V

    .line 35
    iget-object v7, v0, Lcom/android/tools/r8/graph/M0;->c:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 36
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 37
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/graph/L0;

    .line 38
    iget-object v8, v8, Lcom/android/tools/r8/graph/L0;->a:Lcom/android/tools/r8/graph/j0;

    if-eqz v8, :cond_0

    .line 39
    invoke-virtual {v2, v10, v8}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/kC;->b()Lcom/android/tools/r8/internal/nC;

    move-result-object v7

    .line 41
    iget-object v2, v0, Lcom/android/tools/r8/graph/M0;->e:Lcom/android/tools/r8/graph/K0;

    .line 42
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/K0;->b()Lcom/android/tools/r8/internal/B60;

    move-result-object v8

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/android/tools/r8/graph/K0;-><init>(ZIZZLcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/B60;)V

    .line 43
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    :cond_2
    new-instance v1, Lcom/android/tools/r8/graph/K0;

    iget-object v2, v0, Lcom/android/tools/r8/graph/M0;->h:Lcom/android/tools/r8/graph/a1;

    .line 45
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/a1;->b()I

    move-result v12

    iget-boolean v13, v0, Lcom/android/tools/r8/graph/M0;->a:Z

    iget-boolean v14, v0, Lcom/android/tools/r8/graph/M0;->b:Z

    iget-object v2, v0, Lcom/android/tools/r8/graph/M0;->h:Lcom/android/tools/r8/graph/a1;

    .line 46
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/a1;->c()Lcom/android/tools/r8/internal/B60;

    move-result-object v16

    const/4 v15, 0x0

    move-object v10, v1

    move/from16 v11, p1

    invoke-direct/range {v10 .. v16}, Lcom/android/tools/r8/graph/K0;-><init>(ZIZZLcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/B60;)V

    iput-object v1, v0, Lcom/android/tools/r8/graph/M0;->e:Lcom/android/tools/r8/graph/K0;

    const/4 v1, 0x0

    .line 47
    iput-boolean v1, v0, Lcom/android/tools/r8/graph/M0;->a:Z

    .line 48
    iput-boolean v1, v0, Lcom/android/tools/r8/graph/M0;->b:Z

    return-void
.end method
