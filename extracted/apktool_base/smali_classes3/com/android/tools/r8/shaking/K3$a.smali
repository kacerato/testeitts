.class public Lcom/android/tools/r8/shaking/K3$a;
.super Lcom/android/tools/r8/shaking/L3$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/shaking/K3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/r8/shaking/L3$a<",
        "Lcom/android/tools/r8/shaking/K3;",
        "Lcom/android/tools/r8/shaking/K3$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/shaking/L3$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Lcom/android/tools/r8/shaking/f3;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/K3$a;->d()Lcom/android/tools/r8/shaking/K3;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lcom/android/tools/r8/shaking/f3$a;
    .locals 0

    return-object p0
.end method

.method public d()Lcom/android/tools/r8/shaking/K3;
    .locals 35

    move-object/from16 v0, p0

    new-instance v17, Lcom/android/tools/r8/shaking/K3;

    iget-object v2, v0, Lcom/android/tools/r8/shaking/f3$a;->a:Lcom/android/tools/r8/origin/Origin;

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/f3$a;->b()Lcom/android/tools/r8/position/Position;

    move-result-object v3

    iget-object v4, v0, Lcom/android/tools/r8/shaking/f3$a;->d:Ljava/lang/String;

    iget-object v1, v0, Lcom/android/tools/r8/shaking/f3$a;->e:Lcom/android/tools/r8/internal/eC;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/eC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v5

    iget-object v6, v0, Lcom/android/tools/r8/shaking/f3$a;->f:Lcom/android/tools/r8/shaking/S2;

    iget-object v7, v0, Lcom/android/tools/r8/shaking/f3$a;->g:Lcom/android/tools/r8/shaking/S2;

    iget-boolean v8, v0, Lcom/android/tools/r8/shaking/f3$a;->h:Z

    iget-object v9, v0, Lcom/android/tools/r8/shaking/f3$a;->i:Lcom/android/tools/r8/shaking/l3;

    iget-object v10, v0, Lcom/android/tools/r8/shaking/f3$a;->j:Lcom/android/tools/r8/shaking/c3;

    iget-object v1, v0, Lcom/android/tools/r8/shaking/f3$a;->k:Lcom/android/tools/r8/internal/eC;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/eC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v11

    iget-object v12, v0, Lcom/android/tools/r8/shaking/f3$a;->l:Lcom/android/tools/r8/shaking/i4;

    iget-boolean v13, v0, Lcom/android/tools/r8/shaking/f3$a;->m:Z

    iget-object v14, v0, Lcom/android/tools/r8/shaking/f3$a;->n:Ljava/util/List;

    iget-object v15, v0, Lcom/android/tools/r8/shaking/L3$a;->p:Lcom/android/tools/r8/shaking/O3;

    iget-object v1, v0, Lcom/android/tools/r8/shaking/L3$a;->q:Lcom/android/tools/r8/shaking/M3$a;

    new-instance v16, Lcom/android/tools/r8/shaking/M3;

    iget-boolean v0, v1, Lcom/android/tools/r8/shaking/M3$a;->a:Z

    move-object/from16 v28, v15

    iget-boolean v15, v1, Lcom/android/tools/r8/shaking/M3$a;->b:Z

    move-object/from16 v29, v14

    iget-boolean v14, v1, Lcom/android/tools/r8/shaking/M3$a;->c:Z

    move/from16 v30, v13

    iget-boolean v13, v1, Lcom/android/tools/r8/shaking/M3$a;->d:Z

    move-object/from16 v31, v12

    iget-boolean v12, v1, Lcom/android/tools/r8/shaking/M3$a;->e:Z

    move-object/from16 v32, v11

    iget-boolean v11, v1, Lcom/android/tools/r8/shaking/M3$a;->f:Z

    move-object/from16 v33, v10

    iget-boolean v10, v1, Lcom/android/tools/r8/shaking/M3$a;->g:Z

    move-object/from16 v34, v9

    iget-boolean v9, v1, Lcom/android/tools/r8/shaking/M3$a;->h:Z

    iget-boolean v1, v1, Lcom/android/tools/r8/shaking/M3$a;->i:Z

    move-object/from16 v18, v16

    move/from16 v19, v0

    move/from16 v20, v15

    move/from16 v21, v14

    move/from16 v22, v13

    move/from16 v23, v12

    move/from16 v24, v11

    move/from16 v25, v10

    move/from16 v26, v9

    move/from16 v27, v1

    invoke-direct/range {v18 .. v27}, Lcom/android/tools/r8/shaking/M3;-><init>(ZZZZZZZZZ)V

    move-object/from16 v1, v17

    move-object/from16 v9, v34

    move-object/from16 v10, v33

    move-object/from16 v11, v32

    move-object/from16 v12, v31

    move/from16 v13, v30

    move-object/from16 v14, v29

    move-object/from16 v15, v28

    invoke-direct/range {v1 .. v16}, Lcom/android/tools/r8/shaking/K3;-><init>(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;Ljava/lang/String;Ljava/util/List;Lcom/android/tools/r8/shaking/S2;Lcom/android/tools/r8/shaking/S2;ZLcom/android/tools/r8/shaking/l3;Lcom/android/tools/r8/shaking/c3;Ljava/util/List;Lcom/android/tools/r8/shaking/i4;ZLjava/util/List;Lcom/android/tools/r8/shaking/O3;Lcom/android/tools/r8/shaking/M3;)V

    return-object v17
.end method
