.class public Lcom/android/tools/r8/internal/pH;
.super Lcom/android/tools/r8/internal/tH;
.source "SourceFile"


# instance fields
.field public final synthetic g:Lcom/android/tools/r8/internal/sH;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/sH;)V
    .locals 1

    iput-object p1, p0, Lcom/android/tools/r8/internal/pH;->g:Lcom/android/tools/r8/internal/sH;

    iget-object v0, p1, Lcom/android/tools/r8/internal/sH;->i:Lcom/android/tools/r8/internal/vH;

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/tH;-><init>(Lcom/android/tools/r8/internal/vH;)V

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/sH;->i()Lcom/android/tools/r8/internal/hH;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/tH;->c:Lcom/android/tools/r8/internal/hH;

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/tH;->c:Lcom/android/tools/r8/internal/hH;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/hH;->c()Lcom/android/tools/r8/internal/hH;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/tH;->c:Lcom/android/tools/r8/internal/hH;

    iget-object v1, p0, Lcom/android/tools/r8/internal/pH;->g:Lcom/android/tools/r8/internal/sH;

    iget-boolean v2, v1, Lcom/android/tools/r8/internal/sH;->e:Z

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    iget-object v2, v1, Lcom/android/tools/r8/internal/sH;->i:Lcom/android/tools/r8/internal/vH;

    iget v0, v0, Lcom/android/tools/r8/internal/S;->b:I

    iget v1, v1, Lcom/android/tools/r8/internal/sH;->c:I

    invoke-virtual {v2, v0, v1}, Lcom/android/tools/r8/internal/vH;->c(II)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/tH;->c:Lcom/android/tools/r8/internal/hH;

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/tH;->b:Lcom/android/tools/r8/internal/hH;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/hH;->e()Lcom/android/tools/r8/internal/hH;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/tH;->b:Lcom/android/tools/r8/internal/hH;

    iget-object v1, p0, Lcom/android/tools/r8/internal/pH;->g:Lcom/android/tools/r8/internal/sH;

    iget-boolean v2, v1, Lcom/android/tools/r8/internal/sH;->d:Z

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    iget-object v2, v1, Lcom/android/tools/r8/internal/sH;->i:Lcom/android/tools/r8/internal/vH;

    iget v0, v0, Lcom/android/tools/r8/internal/S;->b:I

    iget v1, v1, Lcom/android/tools/r8/internal/sH;->b:I

    invoke-virtual {v2, v0, v1}, Lcom/android/tools/r8/internal/vH;->c(II)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/tH;->b:Lcom/android/tools/r8/internal/hH;

    :cond_0
    return-void
.end method
