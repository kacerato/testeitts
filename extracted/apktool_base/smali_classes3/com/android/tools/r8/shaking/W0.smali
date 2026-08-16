.class public final Lcom/android/tools/r8/shaking/W0;
.super Lcom/android/tools/r8/shaking/f3$a;
.source "SourceFile"


# instance fields
.field public p:Lcom/android/tools/r8/shaking/X0;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/shaking/f3$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/shaking/f3;
    .locals 17

    move-object/from16 v0, p0

    new-instance v16, Lcom/android/tools/r8/shaking/Y0;

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

    iget-object v15, v0, Lcom/android/tools/r8/shaking/W0;->p:Lcom/android/tools/r8/shaking/X0;

    move-object/from16 v1, v16

    invoke-direct/range {v1 .. v15}, Lcom/android/tools/r8/shaking/Y0;-><init>(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;Ljava/lang/String;Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/shaking/S2;Lcom/android/tools/r8/shaking/S2;ZLcom/android/tools/r8/shaking/l3;Lcom/android/tools/r8/shaking/c3;Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/shaking/i4;ZLjava/util/List;Lcom/android/tools/r8/shaking/X0;)V

    return-object v16
.end method

.method public final c()Lcom/android/tools/r8/shaking/f3$a;
    .locals 0

    return-object p0
.end method
