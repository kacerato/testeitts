.class public final Lcom/android/tools/r8/shaking/Z2;
.super Lcom/android/tools/r8/shaking/f3$a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/shaking/f3$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/shaking/f3;
    .locals 15

    new-instance v14, Lcom/android/tools/r8/shaking/a3;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/f3$a;->a:Lcom/android/tools/r8/origin/Origin;

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/f3$a;->b()Lcom/android/tools/r8/position/Position;

    move-result-object v2

    iget-object v3, p0, Lcom/android/tools/r8/shaking/f3$a;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/tools/r8/shaking/f3$a;->e:Lcom/android/tools/r8/internal/eC;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/eC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v4

    iget-object v5, p0, Lcom/android/tools/r8/shaking/f3$a;->f:Lcom/android/tools/r8/shaking/S2;

    iget-object v6, p0, Lcom/android/tools/r8/shaking/f3$a;->g:Lcom/android/tools/r8/shaking/S2;

    iget-boolean v7, p0, Lcom/android/tools/r8/shaking/f3$a;->h:Z

    iget-object v8, p0, Lcom/android/tools/r8/shaking/f3$a;->i:Lcom/android/tools/r8/shaking/l3;

    iget-object v9, p0, Lcom/android/tools/r8/shaking/f3$a;->j:Lcom/android/tools/r8/shaking/c3;

    iget-object v0, p0, Lcom/android/tools/r8/shaking/f3$a;->k:Lcom/android/tools/r8/internal/eC;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/eC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v10

    iget-object v11, p0, Lcom/android/tools/r8/shaking/f3$a;->l:Lcom/android/tools/r8/shaking/i4;

    iget-boolean v12, p0, Lcom/android/tools/r8/shaking/f3$a;->m:Z

    iget-object v13, p0, Lcom/android/tools/r8/shaking/f3$a;->n:Ljava/util/List;

    move-object v0, v14

    invoke-direct/range {v0 .. v13}, Lcom/android/tools/r8/shaking/a3;-><init>(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;Ljava/lang/String;Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/shaking/S2;Lcom/android/tools/r8/shaking/S2;ZLcom/android/tools/r8/shaking/l3;Lcom/android/tools/r8/shaking/c3;Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/shaking/i4;ZLjava/util/List;)V

    return-object v14
.end method

.method public final c()Lcom/android/tools/r8/shaking/f3$a;
    .locals 0

    return-object p0
.end method
