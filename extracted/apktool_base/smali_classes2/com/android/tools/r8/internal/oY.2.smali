.class public Lcom/android/tools/r8/internal/oY;
.super Lcom/android/tools/r8/internal/DR;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/tools/r8/internal/DR;-><init>(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;ZI)V

    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/internal/ws0;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/android/tools/r8/internal/CF;
    .locals 22

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/tools/r8/internal/DR;->f:Lcom/android/tools/r8/internal/gL;

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/DR;->a(Lcom/android/tools/r8/internal/gL;Ljava/lang/String;)Lcom/android/tools/r8/internal/dL;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/CF;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/CF;-><init>()V

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/dL;->c()Lcom/android/tools/r8/internal/bL;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/r8/internal/bL;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_5

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/tools/r8/internal/dL;

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/dL;->d()Lcom/android/tools/r8/internal/gL;

    move-result-object v5

    const-string v6, "api_level_below_or_equal"

    invoke-virtual {v0, v5, v6}, Lcom/android/tools/r8/internal/DR;->a(Lcom/android/tools/r8/internal/gL;Ljava/lang/String;)Lcom/android/tools/r8/internal/dL;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/dL;->b()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/android/tools/r8/internal/CF;->a(I)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v2, v6}, Lcom/android/tools/r8/internal/CF;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/IR;

    iget-object v9, v0, Lcom/android/tools/r8/internal/DR;->a:Lcom/android/tools/r8/graph/u1;

    iget-object v10, v0, Lcom/android/tools/r8/internal/DR;->b:Lcom/android/tools/r8/internal/Ef0;

    sget-boolean v8, Lcom/android/tools/r8/internal/DR;->h:Z

    if-nez v8, :cond_1

    iget-object v8, v0, Lcom/android/tools/r8/internal/DR;->e:Lcom/android/tools/r8/origin/Origin;

    if-eqz v8, :cond_0

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_1
    :goto_1
    iget-object v11, v0, Lcom/android/tools/r8/internal/DR;->e:Lcom/android/tools/r8/origin/Origin;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v20, Lcom/android/tools/r8/internal/IR$a;

    iget-object v12, v7, Lcom/android/tools/r8/internal/IR;->a:Lcom/android/tools/r8/internal/nC;

    iget-object v13, v7, Lcom/android/tools/r8/internal/IR;->b:Lcom/android/tools/r8/internal/nC;

    iget-object v14, v7, Lcom/android/tools/r8/internal/IR;->c:Lcom/android/tools/r8/internal/nC;

    iget-object v15, v7, Lcom/android/tools/r8/internal/IR;->d:Lcom/android/tools/r8/internal/nC;

    iget-object v8, v7, Lcom/android/tools/r8/internal/IR;->e:Lcom/android/tools/r8/internal/nC;

    move-object/from16 p1, v1

    iget-object v1, v7, Lcom/android/tools/r8/internal/IR;->f:Lcom/android/tools/r8/internal/hC;

    move/from16 v21, v3

    iget-object v3, v7, Lcom/android/tools/r8/internal/IR;->g:Lcom/android/tools/r8/internal/QC;

    iget-object v7, v7, Lcom/android/tools/r8/internal/IR;->h:Lcom/android/tools/r8/internal/QC;

    move-object/from16 v16, v8

    move-object/from16 v8, v20

    move-object/from16 v17, v1

    move-object/from16 v18, v3

    move-object/from16 v19, v7

    invoke-direct/range {v8 .. v19}, Lcom/android/tools/r8/internal/IR$a;-><init>(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/origin/Origin;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/Set;Ljava/util/Set;)V

    :goto_2
    move-object/from16 v1, v20

    goto :goto_4

    :cond_2
    move-object/from16 p1, v1

    move/from16 v21, v3

    iget-object v1, v0, Lcom/android/tools/r8/internal/DR;->a:Lcom/android/tools/r8/graph/u1;

    iget-object v3, v0, Lcom/android/tools/r8/internal/DR;->b:Lcom/android/tools/r8/internal/Ef0;

    sget-boolean v7, Lcom/android/tools/r8/internal/DR;->h:Z

    if-nez v7, :cond_4

    iget-object v7, v0, Lcom/android/tools/r8/internal/DR;->e:Lcom/android/tools/r8/origin/Origin;

    if-eqz v7, :cond_3

    goto :goto_3

    :cond_3
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_4
    :goto_3
    iget-object v7, v0, Lcom/android/tools/r8/internal/DR;->e:Lcom/android/tools/r8/origin/Origin;

    invoke-static {v1, v3, v7}, Lcom/android/tools/r8/internal/IR;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/origin/Origin;)Lcom/android/tools/r8/internal/IR$a;

    move-result-object v20

    goto :goto_2

    :goto_4
    invoke-static {v5, v1}, Lcom/android/tools/r8/internal/DR;->a(Lcom/android/tools/r8/internal/gL;Lcom/android/tools/r8/internal/IR$a;)V

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/IR$a;->a()Lcom/android/tools/r8/internal/IR;

    move-result-object v1

    invoke-virtual {v2, v6, v1}, Lcom/android/tools/r8/internal/CF;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, p1

    move/from16 v3, v21

    goto/16 :goto_0

    :cond_5
    return-object v2
.end method

.method public c(Lcom/android/tools/r8/v0;)Lcom/android/tools/r8/internal/nY;
    .locals 7

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/DR;->b(Lcom/android/tools/r8/v0;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/internal/Io1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Io1;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/DR;->a(Ljava/util/function/Consumer;Ljava/lang/String;)Lcom/android/tools/r8/internal/MR;

    move-result-object v3

    const-string p1, "common_flags"

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/oY;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/CF;

    move-result-object v4

    const-string p1, "library_flags"

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/oY;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/CF;

    move-result-object v5

    const-string p1, "program_flags"

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/oY;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/CF;

    move-result-object v6

    new-instance p1, Lcom/android/tools/r8/internal/nY;

    sget-boolean v0, Lcom/android/tools/r8/internal/DR;->h:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/DR;->e:Lcom/android/tools/r8/origin/Origin;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/DR;->e:Lcom/android/tools/r8/origin/Origin;

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/tools/r8/internal/nY;-><init>(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/internal/MR;Lcom/android/tools/r8/internal/CF;Lcom/android/tools/r8/internal/CF;Lcom/android/tools/r8/internal/CF;)V

    return-object p1
.end method
