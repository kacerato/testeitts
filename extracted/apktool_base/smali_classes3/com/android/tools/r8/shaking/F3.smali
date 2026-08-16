.class public final Lcom/android/tools/r8/shaking/F3;
.super Lcom/android/tools/r8/shaking/L3$a;
.source "SourceFile"


# static fields
.field public static final synthetic s:Z = true


# instance fields
.field public r:Lcom/android/tools/r8/shaking/K3;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/shaking/L3$a;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/shaking/F3;->r:Lcom/android/tools/r8/shaking/K3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Lcom/android/tools/r8/shaking/f3;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/F3;->d()Lcom/android/tools/r8/shaking/G3;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lcom/android/tools/r8/shaking/f3$a;
    .locals 0

    return-object p0
.end method

.method public final d()Lcom/android/tools/r8/shaking/G3;
    .locals 19

    move-object/from16 v0, p0

    sget-boolean v1, Lcom/android/tools/r8/shaking/F3;->s:Z

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/android/tools/r8/shaking/F3;->r:Lcom/android/tools/r8/shaking/K3;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Option -if without a subsequent rule."

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_1
    :goto_0
    new-instance v1, Lcom/android/tools/r8/shaking/G3;

    iget-object v4, v0, Lcom/android/tools/r8/shaking/f3$a;->a:Lcom/android/tools/r8/origin/Origin;

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/f3$a;->b()Lcom/android/tools/r8/position/Position;

    move-result-object v5

    iget-object v6, v0, Lcom/android/tools/r8/shaking/f3$a;->d:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/tools/r8/shaking/f3$a;->e:Lcom/android/tools/r8/internal/eC;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/eC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v7

    iget-object v8, v0, Lcom/android/tools/r8/shaking/f3$a;->f:Lcom/android/tools/r8/shaking/S2;

    iget-object v9, v0, Lcom/android/tools/r8/shaking/f3$a;->g:Lcom/android/tools/r8/shaking/S2;

    iget-boolean v10, v0, Lcom/android/tools/r8/shaking/f3$a;->h:Z

    iget-object v11, v0, Lcom/android/tools/r8/shaking/f3$a;->i:Lcom/android/tools/r8/shaking/l3;

    iget-object v12, v0, Lcom/android/tools/r8/shaking/f3$a;->j:Lcom/android/tools/r8/shaking/c3;

    iget-object v2, v0, Lcom/android/tools/r8/shaking/f3$a;->k:Lcom/android/tools/r8/internal/eC;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/eC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v13

    iget-object v14, v0, Lcom/android/tools/r8/shaking/f3$a;->l:Lcom/android/tools/r8/shaking/i4;

    iget-boolean v15, v0, Lcom/android/tools/r8/shaking/f3$a;->m:Z

    iget-object v2, v0, Lcom/android/tools/r8/shaking/f3$a;->n:Ljava/util/List;

    iget-object v3, v0, Lcom/android/tools/r8/shaking/F3;->r:Lcom/android/tools/r8/shaking/K3;

    const/16 v18, 0x0

    move-object/from16 v17, v3

    move-object v3, v1

    move-object/from16 v16, v2

    invoke-direct/range {v3 .. v18}, Lcom/android/tools/r8/shaking/G3;-><init>(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;Ljava/lang/String;Ljava/util/List;Lcom/android/tools/r8/shaking/S2;Lcom/android/tools/r8/shaking/S2;ZLcom/android/tools/r8/shaking/l3;Lcom/android/tools/r8/shaking/c3;Ljava/util/List;Lcom/android/tools/r8/shaking/i4;ZLjava/util/List;Lcom/android/tools/r8/shaking/K3;Lcom/android/tools/r8/graph/E0;)V

    return-object v1
.end method
