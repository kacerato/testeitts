.class public Lcom/android/tools/r8/internal/xU;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/vm;


# instance fields
.field public final a:Z

.field public final b:Lcom/android/tools/r8/internal/EU;

.field public final c:Lcom/android/tools/r8/internal/CU;

.field public d:I


# direct methods
.method public constructor <init>(ZLcom/android/tools/r8/internal/EU;Lcom/android/tools/r8/internal/CU;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/tools/r8/internal/xU;->d:I

    iput-boolean p1, p0, Lcom/android/tools/r8/internal/xU;->a:Z

    iput-object p2, p0, Lcom/android/tools/r8/internal/xU;->b:Lcom/android/tools/r8/internal/EU;

    iput-object p3, p0, Lcom/android/tools/r8/internal/xU;->c:Lcom/android/tools/r8/internal/CU;

    return-void
.end method

.method public static a(Ljava/util/Map;)Lcom/android/tools/r8/internal/xU;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/android/tools/r8/graph/M2;",
            "Lcom/android/tools/r8/graph/M2;",
            ">;)",
            "Lcom/android/tools/r8/internal/xU;"
        }
    .end annotation

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/internal/CU;->s:Z

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/BU;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/BU;-><init>()V

    .line 3
    new-instance v1, Lcom/android/tools/r8/internal/Ey1;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/Ey1;-><init>(Lcom/android/tools/r8/internal/BU;)V

    invoke-interface {p0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 4
    new-instance p0, Lcom/android/tools/r8/internal/xU;

    .line 5
    new-instance v8, Lcom/android/tools/r8/internal/EU;

    sget-object v2, Lcom/android/tools/r8/internal/C2;->c:Lcom/android/tools/r8/internal/C2;

    .line 6
    sget v1, Lcom/android/tools/r8/internal/hC;->c:I

    .line 7
    sget-object v7, Lcom/android/tools/r8/internal/Xe0;->e:Lcom/android/tools/r8/internal/Xe0;

    .line 8
    const-string v3, "unused"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/tools/r8/internal/EU;-><init>(Lcom/android/tools/r8/internal/C2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)V

    .line 9
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/BU;->a()Lcom/android/tools/r8/internal/CU;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v8, v0}, Lcom/android/tools/r8/internal/xU;-><init>(ZLcom/android/tools/r8/internal/EU;Lcom/android/tools/r8/internal/CU;)V

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/cu;
    .locals 3

    .line 12
    iget-object v0, p0, Lcom/android/tools/r8/internal/xU;->c:Lcom/android/tools/r8/internal/CU;

    .line 13
    iget-object v1, v0, Lcom/android/tools/r8/internal/CU;->k:Lcom/android/tools/r8/internal/nC;

    .line 14
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 15
    :cond_0
    iget-object v0, v0, Lcom/android/tools/r8/internal/CU;->k:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/eu;

    .line 16
    iget-object v0, v0, Lcom/android/tools/r8/internal/eu;->b:Ljava/util/IdentityHashMap;

    .line 17
    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/cu;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/x0;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/xU;
    .locals 1

    .line 20
    iget-boolean p2, p0, Lcom/android/tools/r8/internal/xU;->a:Z

    .line 21
    iget-object v0, p0, Lcom/android/tools/r8/internal/xU;->b:Lcom/android/tools/r8/internal/EU;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/EU;->d()Lcom/android/tools/r8/internal/C2;

    move-result-object v0

    .line 22
    invoke-static {p1, p2, v0}, Lcom/android/tools/r8/internal/eS;->a(Lcom/android/tools/r8/graph/x0;ZLcom/android/tools/r8/internal/C2;)V

    return-object p0
.end method

.method public final a(Ljava/lang/String;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/internal/xU;
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 23
    iget-object v2, v0, Lcom/android/tools/r8/internal/xU;->b:Lcom/android/tools/r8/internal/EU;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/EU;->e()Ljava/lang/String;

    move-result-object v2

    .line 24
    invoke-static/range {p1 .. p1}, Lcom/android/tools/r8/internal/Bl;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 25
    new-instance v4, Lcom/android/tools/r8/internal/xU;

    iget-boolean v5, v0, Lcom/android/tools/r8/internal/xU;->a:Z

    iget-object v6, v0, Lcom/android/tools/r8/internal/xU;->b:Lcom/android/tools/r8/internal/EU;

    move-object/from16 v7, p1

    .line 26
    invoke-virtual {v6, v7}, Lcom/android/tools/r8/internal/EU;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/EU;

    move-result-object v6

    iget-object v7, v0, Lcom/android/tools/r8/internal/xU;->c:Lcom/android/tools/r8/internal/CU;

    .line 27
    new-instance v15, Lcom/android/tools/r8/internal/CU;

    move-object v8, v15

    .line 28
    iget-object v9, v7, Lcom/android/tools/r8/internal/CU;->a:Ljava/lang/Object;

    .line 29
    invoke-virtual {v7, v9, v1, v2, v3}, Lcom/android/tools/r8/internal/CU;->a(Ljava/util/Map;Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/r8/internal/nC;

    move-result-object v9

    iget-object v10, v7, Lcom/android/tools/r8/internal/CU;->b:Lcom/android/tools/r8/internal/QC;

    iget-object v11, v7, Lcom/android/tools/r8/internal/CU;->c:Ljava/lang/Object;

    .line 30
    invoke-virtual {v7, v11, v1, v2, v3}, Lcom/android/tools/r8/internal/CU;->a(Ljava/util/Map;Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/r8/internal/nC;

    move-result-object v11

    iget-object v12, v7, Lcom/android/tools/r8/internal/CU;->d:Lcom/android/tools/r8/internal/nC;

    iget-object v13, v7, Lcom/android/tools/r8/internal/CU;->e:Lcom/android/tools/r8/internal/nC;

    iget-object v14, v7, Lcom/android/tools/r8/internal/CU;->f:Lcom/android/tools/r8/internal/nC;

    iget-object v0, v7, Lcom/android/tools/r8/internal/CU;->g:Lcom/android/tools/r8/internal/nC;

    move-object/from16 v27, v15

    move-object v15, v0

    iget-object v0, v7, Lcom/android/tools/r8/internal/CU;->h:Lcom/android/tools/r8/internal/nC;

    move-object/from16 v16, v0

    iget-object v0, v7, Lcom/android/tools/r8/internal/CU;->i:Lcom/android/tools/r8/internal/nC;

    move-object/from16 v17, v0

    iget-object v0, v7, Lcom/android/tools/r8/internal/CU;->j:Lcom/android/tools/r8/internal/nC;

    move-object/from16 v18, v0

    .line 31
    invoke-virtual {v7, v2, v1, v3}, Lcom/android/tools/r8/internal/CU;->b(Ljava/lang/String;Lcom/android/tools/r8/graph/u1;Ljava/lang/String;)Lcom/android/tools/r8/internal/nC;

    move-result-object v19

    iget-object v0, v7, Lcom/android/tools/r8/internal/CU;->l:Ljava/util/LinkedHashMap;

    move-object/from16 v20, v0

    iget-object v0, v7, Lcom/android/tools/r8/internal/CU;->m:Lcom/android/tools/r8/internal/nC;

    move-object/from16 v21, v0

    iget-object v0, v7, Lcom/android/tools/r8/internal/CU;->n:Lcom/android/tools/r8/internal/QC;

    move-object/from16 v22, v0

    .line 32
    invoke-virtual {v7, v2, v1, v3}, Lcom/android/tools/r8/internal/CU;->a(Ljava/lang/String;Lcom/android/tools/r8/graph/u1;Ljava/lang/String;)Lcom/android/tools/r8/internal/nC;

    move-result-object v23

    iget-object v0, v7, Lcom/android/tools/r8/internal/CU;->p:Lcom/android/tools/r8/internal/QC;

    move-object/from16 v24, v0

    iget-object v0, v7, Lcom/android/tools/r8/internal/CU;->q:Lcom/android/tools/r8/internal/nC;

    move-object/from16 v25, v0

    iget-object v0, v7, Lcom/android/tools/r8/internal/CU;->r:Lcom/android/tools/r8/internal/nC;

    move-object/from16 v26, v0

    invoke-direct/range {v8 .. v26}, Lcom/android/tools/r8/internal/CU;-><init>(Ljava/util/Map;Lcom/android/tools/r8/internal/QC;Ljava/util/Map;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/nC;Ljava/util/LinkedHashMap;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/QC;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/QC;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/nC;)V

    move-object/from16 v0, v27

    .line 33
    invoke-direct {v4, v5, v6, v0}, Lcom/android/tools/r8/internal/xU;-><init>(ZLcom/android/tools/r8/internal/EU;Lcom/android/tools/r8/internal/CU;)V

    return-object v4
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/android/tools/r8/internal/xU;->b:Lcom/android/tools/r8/internal/EU;

    .line 11
    iget-object v0, v0, Lcom/android/tools/r8/internal/EU;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/J2;)Z
    .locals 2

    .line 18
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xU;->j()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/J2;->S()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 19
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xU;->i()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/J2;->S()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/xU;->a:Z

    return v0
.end method

.method public b(Lcom/android/tools/r8/graph/J2;)Z
    .locals 4

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/xU;->a(Lcom/android/tools/r8/graph/J2;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/J2;->r0()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/J2;->n0()Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/xU;->c:Lcom/android/tools/r8/internal/CU;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/CU;->p()Ljava/util/Map;

    move-result-object v0

    .line 6
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/internal/xU;->c:Lcom/android/tools/r8/internal/CU;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/CU;->l()Ljava/util/Map;

    move-result-object v0

    .line 8
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/internal/xU;->c:Lcom/android/tools/r8/internal/CU;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/CU;->h()Ljava/util/Map;

    move-result-object v0

    .line 10
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/xU;->c:Lcom/android/tools/r8/internal/CU;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/CU;->g()Ljava/util/Map;

    move-result-object v0

    .line 12
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/eu;

    .line 13
    iget-object v3, v3, Lcom/android/tools/r8/internal/eu;->b:Ljava/util/IdentityHashMap;

    .line 14
    invoke-virtual {v3, p1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v1

    :cond_4
    return v2

    :cond_5
    :goto_0
    return v1
.end method

.method public final c()Ljava/util/Set;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/xU;->c:Lcom/android/tools/r8/internal/CU;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/CU;->k()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/graph/kh;

    invoke-direct {v1}, Lcom/android/tools/r8/graph/kh;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public final d()Lcom/android/tools/r8/internal/C2;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/xU;->b:Lcom/android/tools/r8/internal/EU;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/EU;->d()Lcom/android/tools/r8/internal/C2;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/xU;->b:Lcom/android/tools/r8/internal/EU;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/EU;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/xU;->b:Lcom/android/tools/r8/internal/EU;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/EU;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/android/tools/r8/graph/A2;",
            "[",
            "Lcom/android/tools/r8/graph/A2;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/internal/xU;->c:Lcom/android/tools/r8/internal/CU;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/CU;->c()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/android/tools/r8/graph/M2;",
            "Lcom/android/tools/r8/internal/ui;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/internal/xU;->c:Lcom/android/tools/r8/internal/CU;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/CU;->e()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/android/tools/r8/graph/M2;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/internal/xU;->c:Lcom/android/tools/r8/internal/CU;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/CU;->k()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final isEmpty()Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/xU;->c:Lcom/android/tools/r8/internal/CU;

    iget-object v1, v0, Lcom/android/tools/r8/internal/CU;->a:Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/tools/r8/internal/CU;->b:Lcom/android/tools/r8/internal/QC;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/tools/r8/internal/CU;->c:Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/CU;->r()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/android/tools/r8/internal/CU;->k:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nC;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/android/tools/r8/internal/CU;->m:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nC;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public j()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/android/tools/r8/graph/M2;",
            "Lcom/android/tools/r8/graph/M2;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/internal/xU;->c:Lcom/android/tools/r8/internal/CU;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/CU;->n()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public k()Lcom/android/tools/r8/internal/CU;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/xU;->c:Lcom/android/tools/r8/internal/CU;

    return-object v0
.end method

.method public l()Lcom/android/tools/r8/internal/EU;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/xU;->b:Lcom/android/tools/r8/internal/EU;

    return-object v0
.end method

.method public m()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/android/tools/r8/graph/M2;",
            "Lcom/android/tools/r8/internal/ay0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/internal/xU;->c:Lcom/android/tools/r8/internal/CU;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/CU;->q()Ljava/util/LinkedHashMap;

    move-result-object v0

    return-object v0
.end method
