.class public Lcom/android/tools/r8/shaking/K3;
.super Lcom/android/tools/r8/shaking/L3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/shaking/K3$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;Ljava/lang/String;Ljava/util/List;Lcom/android/tools/r8/shaking/S2;Lcom/android/tools/r8/shaking/S2;ZLcom/android/tools/r8/shaking/l3;Lcom/android/tools/r8/shaking/c3;Ljava/util/List;Lcom/android/tools/r8/shaking/i4;ZLjava/util/List;Lcom/android/tools/r8/shaking/O3;Lcom/android/tools/r8/shaking/M3;)V
    .locals 0

    invoke-direct/range {p0 .. p15}, Lcom/android/tools/r8/shaking/L3;-><init>(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;Ljava/lang/String;Ljava/util/List;Lcom/android/tools/r8/shaking/S2;Lcom/android/tools/r8/shaking/S2;ZLcom/android/tools/r8/shaking/l3;Lcom/android/tools/r8/shaking/c3;Ljava/util/List;Lcom/android/tools/r8/shaking/i4;ZLjava/util/List;Lcom/android/tools/r8/shaking/O3;Lcom/android/tools/r8/shaking/M3;)V

    return-void
.end method

.method public static E()Lcom/android/tools/r8/shaking/K3$a;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/shaking/K3$a;

    invoke-direct {v0}, Lcom/android/tools/r8/shaking/K3$a;-><init>()V

    return-object v0
.end method

.method public static a(Ljava/util/function/Consumer;)Lcom/android/tools/r8/shaking/K3;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/tools/r8/shaking/M3$a;",
            ">;)",
            "Lcom/android/tools/r8/shaking/K3;"
        }
    .end annotation

    .line 28
    invoke-static {}, Lcom/android/tools/r8/shaking/K3;->E()Lcom/android/tools/r8/shaking/K3$a;

    move-result-object v0

    .line 29
    new-instance v1, Lcom/android/tools/r8/shaking/J3;

    .line 30
    invoke-static {}, Lcom/android/tools/r8/origin/Origin;->root()Lcom/android/tools/r8/origin/Origin;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/tools/r8/shaking/J3;-><init>(Lcom/android/tools/r8/origin/Origin;)V

    .line 31
    iput-object v1, v0, Lcom/android/tools/r8/shaking/f3$a;->a:Lcom/android/tools/r8/origin/Origin;

    .line 32
    sget-object v1, Lcom/android/tools/r8/shaking/l3;->c:Lcom/android/tools/r8/shaking/l3;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/f3$a;->a(Lcom/android/tools/r8/shaking/l3;)Lcom/android/tools/r8/shaking/f3$a;

    .line 33
    sget-boolean v1, Lcom/android/tools/r8/shaking/i4;->a:Z

    .line 34
    sget-object v1, Lcom/android/tools/r8/shaking/j4;->c:Lcom/android/tools/r8/shaking/j4;

    .line 35
    invoke-static {v1}, Lcom/android/tools/r8/shaking/c3;->a(Lcom/android/tools/r8/shaking/i4;)Lcom/android/tools/r8/shaking/c3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/f3$a;->a(Lcom/android/tools/r8/shaking/c3;)Lcom/android/tools/r8/shaking/f3$a;

    .line 36
    new-instance v1, Lcom/android/tools/r8/shaking/R3$a;

    invoke-direct {v1}, Lcom/android/tools/r8/shaking/R3$a;-><init>()V

    .line 37
    sget-object v2, Lcom/android/tools/r8/shaking/U3;->d:Lcom/android/tools/r8/shaking/U3;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/shaking/R3$a;->a(Lcom/android/tools/r8/shaking/U3;)Lcom/android/tools/r8/shaking/R3$a;

    .line 38
    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/R3$a;->a()Lcom/android/tools/r8/shaking/R3;

    move-result-object v1

    .line 39
    new-instance v2, Lcom/android/tools/r8/internal/Sm0;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    .line 40
    invoke-virtual {v0, v2}, Lcom/android/tools/r8/shaking/f3$a;->a(Ljava/util/List;)Lcom/android/tools/r8/shaking/f3$a;

    .line 41
    sget-object v1, Lcom/android/tools/r8/shaking/O3;->b:Lcom/android/tools/r8/shaking/O3;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/L3$a;->a(Lcom/android/tools/r8/shaking/O3;)Lcom/android/tools/r8/shaking/L3$a;

    .line 42
    iget-object v1, v0, Lcom/android/tools/r8/shaking/L3$a;->q:Lcom/android/tools/r8/shaking/M3$a;

    .line 43
    invoke-interface {p0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 44
    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/K3$a;->d()Lcom/android/tools/r8/shaking/K3;

    move-result-object p0

    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/v3;->o:Z

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/shaking/R3;)Lcom/android/tools/r8/shaking/R3;
    .locals 0

    .line 22
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/shaking/R3;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/shaking/R3;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    if-nez p2, :cond_0

    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 24
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    .line 25
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    :cond_1
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/shaking/K3;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    new-instance v17, Lcom/android/tools/r8/shaking/K3;

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/f3;->i()Lcom/android/tools/r8/origin/Origin;

    move-result-object v2

    .line 3
    iget-object v3, v0, Lcom/android/tools/r8/shaking/f3;->b:Lcom/android/tools/r8/position/Position;

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/f3;->j()Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/f3;->b()Ljava/util/List;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/android/tools/r8/shaking/i4;->a(Ljava/util/List;Lcom/android/tools/r8/graph/u1;)Ljava/util/List;

    move-result-object v5

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/f3;->a()Lcom/android/tools/r8/shaking/S2;

    move-result-object v6

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/f3;->h()Lcom/android/tools/r8/shaking/S2;

    move-result-object v7

    .line 8
    iget-boolean v8, v0, Lcom/android/tools/r8/shaking/f3;->g:Z

    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/f3;->d()Lcom/android/tools/r8/shaking/l3;

    move-result-object v9

    .line 10
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/f3;->c()Lcom/android/tools/r8/shaking/c3;

    move-result-object v10

    const/4 v11, 0x0

    if-nez v10, :cond_0

    move-object v10, v11

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/f3;->c()Lcom/android/tools/r8/shaking/c3;

    move-result-object v10

    invoke-virtual {v10, v1}, Lcom/android/tools/r8/shaking/c3;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/shaking/c3;

    move-result-object v10

    .line 11
    :goto_0
    iget-object v12, v0, Lcom/android/tools/r8/shaking/f3;->j:Ljava/util/List;

    .line 12
    invoke-static {v12, v1}, Lcom/android/tools/r8/shaking/i4;->a(Ljava/util/List;Lcom/android/tools/r8/graph/u1;)Ljava/util/List;

    move-result-object v12

    .line 13
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/f3;->e()Lcom/android/tools/r8/shaking/i4;

    move-result-object v13

    if-nez v13, :cond_1

    move-object v13, v11

    goto :goto_1

    .line 14
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/f3;->e()Lcom/android/tools/r8/shaking/i4;

    move-result-object v13

    invoke-virtual {v13, v1}, Lcom/android/tools/r8/shaking/i4;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/shaking/i4;

    move-result-object v13

    .line 15
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/f3;->f()Z

    move-result v14

    .line 16
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/f3;->g()Ljava/util/List;

    move-result-object v15

    if-nez v15, :cond_2

    move-object v15, v11

    goto :goto_2

    .line 17
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/f3;->g()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v11

    new-instance v15, Lcom/android/tools/r8/shaking/T6;

    invoke-direct {v15, v1}, Lcom/android/tools/r8/shaking/T6;-><init>(Lcom/android/tools/r8/graph/u1;)V

    .line 18
    invoke-interface {v11, v15}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 19
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v11

    invoke-interface {v1, v11}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    move-object v15, v1

    .line 20
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/L3;->D()Lcom/android/tools/r8/shaking/O3;

    move-result-object v16

    .line 21
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/L3;->C()Lcom/android/tools/r8/shaking/M3;

    move-result-object v18

    move-object/from16 v1, v17

    move-object v11, v12

    move-object v12, v13

    move v13, v14

    move-object v14, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v18

    invoke-direct/range {v1 .. v16}, Lcom/android/tools/r8/shaking/K3;-><init>(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;Ljava/lang/String;Ljava/util/List;Lcom/android/tools/r8/shaking/S2;Lcom/android/tools/r8/shaking/S2;ZLcom/android/tools/r8/shaking/l3;Lcom/android/tools/r8/shaking/c3;Ljava/util/List;Lcom/android/tools/r8/shaking/i4;ZLjava/util/List;Lcom/android/tools/r8/shaking/O3;Lcom/android/tools/r8/shaking/M3;)V

    return-object v17
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/android/tools/r8/shaking/K3;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lcom/android/tools/r8/shaking/K3;

    invoke-super {p0, p1}, Lcom/android/tools/r8/shaking/L3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final q()Lcom/android/tools/r8/shaking/K3;
    .locals 0

    return-object p0
.end method
