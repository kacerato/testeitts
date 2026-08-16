.class public final Lcom/android/tools/r8/shaking/H;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/dex/M;


# instance fields
.field public final a:Lcom/android/tools/r8/graph/D5;

.field public final b:Lcom/android/tools/r8/shaking/S1;

.field public final synthetic c:Lcom/android/tools/r8/shaking/N;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/graph/r0;Lcom/android/tools/r8/graph/D5;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/shaking/H;->c:Lcom/android/tools/r8/shaking/N;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/android/tools/r8/shaking/H;->a:Lcom/android/tools/r8/graph/D5;

    new-instance p1, Lcom/android/tools/r8/shaking/S1;

    invoke-direct {p1, p2, p3}, Lcom/android/tools/r8/shaking/S1;-><init>(Lcom/android/tools/r8/graph/r0;Lcom/android/tools/r8/graph/D5;)V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/H;->b:Lcom/android/tools/r8/shaking/S1;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/A2;)Z
    .locals 4

    .line 38
    iget-object v0, p0, Lcom/android/tools/r8/shaking/H;->c:Lcom/android/tools/r8/shaking/N;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/H;->a:Lcom/android/tools/r8/graph/D5;

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/E5;)V

    .line 39
    iget-object v0, p0, Lcom/android/tools/r8/shaking/H;->c:Lcom/android/tools/r8/shaking/N;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/H;->a:Lcom/android/tools/r8/graph/D5;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/android/tools/r8/shaking/N;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/D5;)Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 41
    :cond_0
    iget-object v2, v0, Lcom/android/tools/r8/graph/E0;->l:Lcom/android/tools/r8/graph/N4;

    .line 42
    iget-object v2, v2, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    .line 43
    invoke-virtual {v2, p1}, Lcom/android/tools/r8/graph/O4;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 44
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v3

    if-ne v3, p1, :cond_2

    .line 45
    iget-object p1, p0, Lcom/android/tools/r8/shaking/H;->c:Lcom/android/tools/r8/shaking/N;

    new-instance v3, Lcom/android/tools/r8/graph/H5;

    invoke-direct {v3, v0, v2}, Lcom/android/tools/r8/graph/H5;-><init>(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/j1;)V

    iget-object v0, p0, Lcom/android/tools/r8/shaking/H;->b:Lcom/android/tools/r8/shaking/S1;

    invoke-virtual {p1, v0, v3}, Lcom/android/tools/r8/shaking/N;->b(Lcom/android/tools/r8/shaking/X1;Lcom/android/tools/r8/graph/H5;)V

    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/E0;->c(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 47
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v3

    if-ne v3, p1, :cond_2

    .line 48
    iget-object p1, p0, Lcom/android/tools/r8/shaking/H;->c:Lcom/android/tools/r8/shaking/N;

    new-instance v3, Lcom/android/tools/r8/graph/H5;

    invoke-direct {v3, v0, v2}, Lcom/android/tools/r8/graph/H5;-><init>(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/j1;)V

    iget-object v0, p0, Lcom/android/tools/r8/shaking/H;->b:Lcom/android/tools/r8/shaking/S1;

    invoke-virtual {p1, v0, v3}, Lcom/android/tools/r8/shaking/N;->c(Lcom/android/tools/r8/shaking/X1;Lcom/android/tools/r8/graph/H5;)V

    :cond_2
    :goto_0
    return v1
.end method

.method public final a(Lcom/android/tools/r8/graph/C2;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/D0;)Z
    .locals 0

    .line 2
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;)Z
    .locals 0

    .line 3
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/I2;)Z
    .locals 0

    .line 4
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/L2;)Z
    .locals 0

    .line 5
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;)Z
    .locals 3

    .line 49
    iget-object v0, p0, Lcom/android/tools/r8/shaking/H;->c:Lcom/android/tools/r8/shaking/N;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/H;->a:Lcom/android/tools/r8/graph/D5;

    iget-object v2, p0, Lcom/android/tools/r8/shaking/H;->b:Lcom/android/tools/r8/shaking/S1;

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/shaking/X1;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/l1;)Z
    .locals 5

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/shaking/H;->c:Lcom/android/tools/r8/shaking/N;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/H;->a:Lcom/android/tools/r8/graph/D5;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/android/tools/r8/shaking/N;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/E5;)V

    .line 8
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/android/tools/r8/shaking/N;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/E5;)V

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/shaking/H;->c:Lcom/android/tools/r8/shaking/N;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/H;->a:Lcom/android/tools/r8/graph/D5;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/android/tools/r8/shaking/N;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/D5;)Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 11
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/H2;->c(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/F5;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 12
    :cond_1
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    if-eq v2, p1, :cond_2

    return v1

    .line 13
    :cond_2
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/g1;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/g1;->w0()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 14
    iget-object v2, p0, Lcom/android/tools/r8/shaking/H;->c:Lcom/android/tools/r8/shaking/N;

    iget-object v2, v2, Lcom/android/tools/r8/shaking/N;->n:Lcom/android/tools/r8/graph/n3;

    .line 15
    iget-object v2, v2, Lcom/android/tools/r8/graph/n3;->a:Ljava/util/Map;

    .line 16
    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 17
    iget-object v2, p0, Lcom/android/tools/r8/shaking/H;->c:Lcom/android/tools/r8/shaking/N;

    iget-object v2, v2, Lcom/android/tools/r8/shaking/N;->n:Lcom/android/tools/r8/graph/n3;

    .line 18
    iget-object v2, v2, Lcom/android/tools/r8/graph/n3;->a:Ljava/util/Map;

    .line 19
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/o3;

    goto :goto_0

    .line 20
    :cond_3
    iget-object v2, p0, Lcom/android/tools/r8/shaking/H;->c:Lcom/android/tools/r8/shaking/N;

    iget-object v2, v2, Lcom/android/tools/r8/shaking/N;->n:Lcom/android/tools/r8/graph/n3;

    new-instance v3, Lcom/android/tools/r8/graph/o3;

    .line 21
    sget-object v4, Lcom/android/tools/r8/graph/b;->a:Lcom/android/tools/r8/graph/b;

    invoke-direct {v3, p1, v1, v4, v4}, Lcom/android/tools/r8/graph/o3;-><init>(Lcom/android/tools/r8/graph/l1;ILcom/android/tools/r8/graph/d;Lcom/android/tools/r8/graph/d;)V

    .line 22
    invoke-virtual {v2, p1, v3}, Lcom/android/tools/r8/graph/n3;->a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/o3;)Lcom/android/tools/r8/graph/o3;

    move-result-object p1

    .line 23
    :goto_0
    iget v2, p1, Lcom/android/tools/r8/graph/o3;->b:I

    or-int/lit8 v2, v2, 0x1

    .line 24
    iput v2, p1, Lcom/android/tools/r8/graph/o3;->b:I

    .line 25
    iget-object p1, p0, Lcom/android/tools/r8/shaking/H;->c:Lcom/android/tools/r8/shaking/N;

    iget-object v2, p0, Lcom/android/tools/r8/shaking/H;->a:Lcom/android/tools/r8/graph/D5;

    iget-object v3, p0, Lcom/android/tools/r8/shaking/H;->b:Lcom/android/tools/r8/shaking/S1;

    invoke-virtual {p1, v0, v2, v3}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/shaking/X1;)V

    .line 26
    iget-object p1, p0, Lcom/android/tools/r8/shaking/H;->c:Lcom/android/tools/r8/shaking/N;

    iget-object p1, p1, Lcom/android/tools/r8/shaking/N;->j:Lcom/android/tools/r8/internal/nJ;

    .line 27
    iget-object p1, p1, Lcom/android/tools/r8/internal/nJ;->l:Lcom/android/tools/r8/ProgramConsumer;

    .line 28
    instance-of p1, p1, Lcom/android/tools/r8/ClassFileConsumer;

    if-eqz p1, :cond_5

    .line 29
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/F5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->o1()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 30
    iget-object p1, p0, Lcom/android/tools/r8/shaking/H;->c:Lcom/android/tools/r8/shaking/N;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/F5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v2

    iget-object v3, p0, Lcom/android/tools/r8/shaking/H;->b:Lcom/android/tools/r8/shaking/S1;

    invoke-virtual {p1, v2, v3}, Lcom/android/tools/r8/shaking/N;->c(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/X1;)V

    .line 31
    iget-object p1, p0, Lcom/android/tools/r8/shaking/H;->c:Lcom/android/tools/r8/shaking/N;

    .line 32
    sget-object v2, Lcom/android/tools/r8/shaking/q1;->o:Lcom/android/tools/r8/shaking/q1;

    .line 33
    invoke-virtual {v2}, Lcom/android/tools/r8/shaking/q1;->c()Lcom/android/tools/r8/shaking/p1;

    move-result-object v2

    .line 34
    invoke-virtual {v2}, Lcom/android/tools/r8/shaking/s1;->g()Lcom/android/tools/r8/shaking/s1;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/shaking/p1;

    .line 35
    sget-object v3, Lcom/android/tools/r8/shaking/c0;->a:Lcom/android/tools/r8/shaking/c0;

    .line 36
    invoke-virtual {p1, v3, v0, v2}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/shaking/d0;Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/shaking/p1;)V

    goto :goto_1

    .line 37
    :cond_4
    iget-object p1, p0, Lcom/android/tools/r8/shaking/H;->c:Lcom/android/tools/r8/shaking/N;

    iget-object p1, p1, Lcom/android/tools/r8/shaking/N;->S:Lcom/android/tools/r8/shaking/L0;

    iget-object v2, p0, Lcom/android/tools/r8/shaking/H;->a:Lcom/android/tools/r8/graph/D5;

    iget-object v3, p0, Lcom/android/tools/r8/shaking/H;->b:Lcom/android/tools/r8/shaking/S1;

    invoke-virtual {p1, v0, v2, v3}, Lcom/android/tools/r8/shaking/L0;->a(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/shaking/X1;)V

    :cond_5
    :goto_1
    return v1
.end method
