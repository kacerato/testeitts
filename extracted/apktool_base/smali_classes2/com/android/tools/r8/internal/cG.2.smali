.class public Lcom/android/tools/r8/internal/cG;
.super Lcom/android/tools/r8/internal/gG;
.source "SourceFile"


# instance fields
.field public final synthetic g:Lcom/android/tools/r8/internal/fG;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/fG;)V
    .locals 1

    iput-object p1, p0, Lcom/android/tools/r8/internal/cG;->g:Lcom/android/tools/r8/internal/fG;

    iget-object v0, p1, Lcom/android/tools/r8/internal/fG;->i:Lcom/android/tools/r8/internal/iG;

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/gG;-><init>(Lcom/android/tools/r8/internal/iG;)V

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fG;->i()Lcom/android/tools/r8/internal/UF;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/gG;->c:Lcom/android/tools/r8/internal/UF;

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/gG;->c:Lcom/android/tools/r8/internal/UF;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/UF;->c()Lcom/android/tools/r8/internal/UF;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/gG;->c:Lcom/android/tools/r8/internal/UF;

    iget-object v1, p0, Lcom/android/tools/r8/internal/cG;->g:Lcom/android/tools/r8/internal/fG;

    iget-boolean v2, v1, Lcom/android/tools/r8/internal/fG;->e:Z

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    iget-object v2, v1, Lcom/android/tools/r8/internal/fG;->i:Lcom/android/tools/r8/internal/iG;

    iget v0, v0, Lcom/android/tools/r8/internal/M;->b:I

    iget v1, v1, Lcom/android/tools/r8/internal/fG;->c:I

    invoke-virtual {v2, v0, v1}, Lcom/android/tools/r8/internal/iG;->c(II)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/gG;->c:Lcom/android/tools/r8/internal/UF;

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/gG;->b:Lcom/android/tools/r8/internal/UF;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/UF;->e()Lcom/android/tools/r8/internal/UF;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/gG;->b:Lcom/android/tools/r8/internal/UF;

    iget-object v1, p0, Lcom/android/tools/r8/internal/cG;->g:Lcom/android/tools/r8/internal/fG;

    iget-boolean v2, v1, Lcom/android/tools/r8/internal/fG;->d:Z

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    iget-object v2, v1, Lcom/android/tools/r8/internal/fG;->i:Lcom/android/tools/r8/internal/iG;

    iget v0, v0, Lcom/android/tools/r8/internal/M;->b:I

    iget v1, v1, Lcom/android/tools/r8/internal/fG;->b:I

    invoke-virtual {v2, v0, v1}, Lcom/android/tools/r8/internal/iG;->c(II)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/gG;->b:Lcom/android/tools/r8/internal/UF;

    :cond_0
    return-void
.end method
