.class public final Lcom/android/tools/r8/shaking/q2;
.super Lcom/android/tools/r8/shaking/f3$a;
.source "SourceFile"


# static fields
.field public static final synthetic q:Z = true


# instance fields
.field public p:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/shaking/f3$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Lcom/android/tools/r8/shaking/f3;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/q2;->d()Lcom/android/tools/r8/shaking/r2;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lcom/android/tools/r8/shaking/f3$a;
    .locals 0

    return-object p0
.end method

.method public final d()Lcom/android/tools/r8/shaking/r2;
    .locals 17

    move-object/from16 v0, p0

    sget-boolean v1, Lcom/android/tools/r8/shaking/q2;->q:Z

    if-nez v1, :cond_1

    iget v1, v0, Lcom/android/tools/r8/shaking/q2;->p:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_1
    :goto_0
    new-instance v1, Lcom/android/tools/r8/shaking/r2;

    iget-object v3, v0, Lcom/android/tools/r8/shaking/f3$a;->a:Lcom/android/tools/r8/origin/Origin;

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/f3$a;->b()Lcom/android/tools/r8/position/Position;

    move-result-object v4

    iget-object v5, v0, Lcom/android/tools/r8/shaking/f3$a;->d:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/tools/r8/shaking/f3$a;->e:Lcom/android/tools/r8/internal/eC;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/eC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v6

    iget-object v7, v0, Lcom/android/tools/r8/shaking/f3$a;->f:Lcom/android/tools/r8/shaking/S2;

    iget-object v8, v0, Lcom/android/tools/r8/shaking/f3$a;->g:Lcom/android/tools/r8/shaking/S2;

    iget-boolean v9, v0, Lcom/android/tools/r8/shaking/f3$a;->h:Z

    iget-object v10, v0, Lcom/android/tools/r8/shaking/f3$a;->i:Lcom/android/tools/r8/shaking/l3;

    iget-object v11, v0, Lcom/android/tools/r8/shaking/f3$a;->j:Lcom/android/tools/r8/shaking/c3;

    iget-object v2, v0, Lcom/android/tools/r8/shaking/f3$a;->k:Lcom/android/tools/r8/internal/eC;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/eC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v12

    iget-object v13, v0, Lcom/android/tools/r8/shaking/f3$a;->l:Lcom/android/tools/r8/shaking/i4;

    iget-boolean v14, v0, Lcom/android/tools/r8/shaking/f3$a;->m:Z

    iget-object v15, v0, Lcom/android/tools/r8/shaking/f3$a;->n:Ljava/util/List;

    iget v2, v0, Lcom/android/tools/r8/shaking/q2;->p:I

    move/from16 v16, v2

    move-object v2, v1

    invoke-direct/range {v2 .. v16}, Lcom/android/tools/r8/shaking/r2;-><init>(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;Ljava/lang/String;Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/shaking/S2;Lcom/android/tools/r8/shaking/S2;ZLcom/android/tools/r8/shaking/l3;Lcom/android/tools/r8/shaking/c3;Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/shaking/i4;ZLjava/util/List;I)V

    return-object v1
.end method
