.class public abstract Lcom/android/tools/r8/internal/m9;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/m9;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object v1

    .line 3
    iget-object v1, v1, Lcom/android/tools/r8/internal/WR;->a:Lcom/android/tools/r8/internal/xU;

    .line 4
    iget-boolean v1, v1, Lcom/android/tools/r8/internal/xU;->a:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    .line 5
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object v1

    .line 6
    iget-object v1, v1, Lcom/android/tools/r8/internal/WR;->a:Lcom/android/tools/r8/internal/xU;

    .line 7
    iget-boolean v1, v1, Lcom/android/tools/r8/internal/xU;->a:Z

    if-eqz v1, :cond_1

    .line 8
    invoke-static {p0}, Lcom/android/tools/r8/internal/X2;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/xU;

    move-result-object v1

    .line 9
    iget-object v1, v1, Lcom/android/tools/r8/internal/xU;->c:Lcom/android/tools/r8/internal/CU;

    .line 10
    iget-object v1, v1, Lcom/android/tools/r8/internal/CU;->k:Lcom/android/tools/r8/internal/nC;

    .line 11
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nC;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    new-instance v1, Lcom/android/tools/r8/internal/d80;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/d80;-><init>(Lcom/android/tools/r8/graph/y;)V

    goto :goto_1

    :cond_1
    :goto_0
    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_2

    .line 13
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_2
    sget-boolean v1, Lcom/android/tools/r8/internal/pm;->d:Z

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object v1

    .line 15
    iget-object v1, v1, Lcom/android/tools/r8/internal/WR;->a:Lcom/android/tools/r8/internal/xU;

    .line 16
    iget-boolean v1, v1, Lcom/android/tools/r8/internal/xU;->a:Z

    if-eqz v1, :cond_3

    goto :goto_2

    .line 17
    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 18
    :cond_4
    :goto_2
    invoke-static {p0}, Lcom/android/tools/r8/internal/X2;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/xU;

    move-result-object v1

    .line 19
    iget-object v1, v1, Lcom/android/tools/r8/internal/xU;->c:Lcom/android/tools/r8/internal/CU;

    .line 20
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/CU;->h()Ljava/util/Map;

    move-result-object v1

    .line 21
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    move-object v1, v2

    goto :goto_3

    .line 22
    :cond_5
    new-instance v1, Lcom/android/tools/r8/internal/pm;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/pm;-><init>(Lcom/android/tools/r8/graph/y;)V

    :goto_3
    if-eqz v1, :cond_6

    .line 23
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    :cond_6
    new-instance v1, Lcom/android/tools/r8/internal/Cm;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/Cm;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    :cond_7
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->k()I

    move-result v1

    invoke-static {v1}, Lcom/android/tools/r8/internal/oJ;->a(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 26
    new-instance v1, Lcom/android/tools/r8/internal/fc0;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/fc0;-><init>(Lcom/android/tools/r8/graph/y;)V

    goto :goto_4

    :cond_8
    move-object v1, v2

    :goto_4
    if-eqz v1, :cond_9

    .line 27
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    :cond_9
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->d0()Z

    move-result v1

    if-eqz v1, :cond_a

    new-instance v2, Lcom/android/tools/r8/internal/Pw0;

    invoke-direct {v2, p0}, Lcom/android/tools/r8/internal/Pw0;-><init>(Lcom/android/tools/r8/graph/y;)V

    :cond_a
    if-eqz v2, :cond_b

    .line 29
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    :cond_b
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 31
    new-instance p0, Lcom/android/tools/r8/internal/k9;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/k9;-><init>()V

    return-object p0

    .line 32
    :cond_c
    new-instance v1, Lcom/android/tools/r8/internal/l9;

    invoke-direct {v1, p0, v0}, Lcom/android/tools/r8/internal/l9;-><init>(Lcom/android/tools/r8/graph/y;Ljava/util/ArrayList;)V

    return-object v1
.end method


# virtual methods
.method public abstract a(Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/o9;Lcom/android/tools/r8/internal/ns0;)V
.end method
