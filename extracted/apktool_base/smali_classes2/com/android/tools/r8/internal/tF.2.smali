.class public Lcom/android/tools/r8/internal/tF;
.super Lcom/android/tools/r8/internal/xF;
.source "SourceFile"


# instance fields
.field public final synthetic g:Lcom/android/tools/r8/internal/wF;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/wF;)V
    .locals 1

    iput-object p1, p0, Lcom/android/tools/r8/internal/tF;->g:Lcom/android/tools/r8/internal/wF;

    iget-object v0, p1, Lcom/android/tools/r8/internal/wF;->i:Lcom/android/tools/r8/internal/zF;

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/xF;-><init>(Lcom/android/tools/r8/internal/zF;)V

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/wF;->i()Lcom/android/tools/r8/internal/lF;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/xF;->c:Lcom/android/tools/r8/internal/lF;

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/xF;->c:Lcom/android/tools/r8/internal/lF;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/lF;->b()Lcom/android/tools/r8/internal/lF;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/xF;->c:Lcom/android/tools/r8/internal/lF;

    iget-object v1, p0, Lcom/android/tools/r8/internal/tF;->g:Lcom/android/tools/r8/internal/wF;

    iget-boolean v2, v1, Lcom/android/tools/r8/internal/wF;->e:Z

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    iget-object v2, v1, Lcom/android/tools/r8/internal/wF;->i:Lcom/android/tools/r8/internal/zF;

    iget v0, v0, Lcom/android/tools/r8/internal/M;->b:I

    iget v1, v1, Lcom/android/tools/r8/internal/wF;->c:I

    invoke-virtual {v2, v0, v1}, Lcom/android/tools/r8/internal/zF;->c(II)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/xF;->c:Lcom/android/tools/r8/internal/lF;

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/xF;->b:Lcom/android/tools/r8/internal/lF;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/lF;->d()Lcom/android/tools/r8/internal/lF;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/xF;->b:Lcom/android/tools/r8/internal/lF;

    iget-object v1, p0, Lcom/android/tools/r8/internal/tF;->g:Lcom/android/tools/r8/internal/wF;

    iget-boolean v2, v1, Lcom/android/tools/r8/internal/wF;->d:Z

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    iget-object v2, v1, Lcom/android/tools/r8/internal/wF;->i:Lcom/android/tools/r8/internal/zF;

    iget v0, v0, Lcom/android/tools/r8/internal/M;->b:I

    iget v1, v1, Lcom/android/tools/r8/internal/wF;->b:I

    invoke-virtual {v2, v0, v1}, Lcom/android/tools/r8/internal/zF;->c(II)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/xF;->b:Lcom/android/tools/r8/internal/lF;

    :cond_0
    return-void
.end method
