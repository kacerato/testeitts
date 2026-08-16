.class public Lcom/android/tools/r8/internal/xG;
.super Lcom/android/tools/r8/internal/BG;
.source "SourceFile"


# instance fields
.field public final synthetic g:Lcom/android/tools/r8/internal/AG;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/AG;)V
    .locals 1

    iput-object p1, p0, Lcom/android/tools/r8/internal/xG;->g:Lcom/android/tools/r8/internal/AG;

    iget-object v0, p1, Lcom/android/tools/r8/internal/AG;->i:Lcom/android/tools/r8/internal/DG;

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/BG;-><init>(Lcom/android/tools/r8/internal/DG;)V

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/AG;->i()Lcom/android/tools/r8/internal/pG;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/BG;->c:Lcom/android/tools/r8/internal/pG;

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/BG;->c:Lcom/android/tools/r8/internal/pG;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pG;->b()Lcom/android/tools/r8/internal/pG;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/BG;->c:Lcom/android/tools/r8/internal/pG;

    iget-object v1, p0, Lcom/android/tools/r8/internal/xG;->g:Lcom/android/tools/r8/internal/AG;

    iget-boolean v2, v1, Lcom/android/tools/r8/internal/AG;->e:Z

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    iget-object v2, v1, Lcom/android/tools/r8/internal/AG;->i:Lcom/android/tools/r8/internal/DG;

    iget v0, v0, Lcom/android/tools/r8/internal/S;->b:I

    iget v1, v1, Lcom/android/tools/r8/internal/AG;->c:I

    invoke-virtual {v2, v0, v1}, Lcom/android/tools/r8/internal/DG;->c(II)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/BG;->c:Lcom/android/tools/r8/internal/pG;

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/BG;->b:Lcom/android/tools/r8/internal/pG;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pG;->d()Lcom/android/tools/r8/internal/pG;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/BG;->b:Lcom/android/tools/r8/internal/pG;

    iget-object v1, p0, Lcom/android/tools/r8/internal/xG;->g:Lcom/android/tools/r8/internal/AG;

    iget-boolean v2, v1, Lcom/android/tools/r8/internal/AG;->d:Z

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    iget-object v2, v1, Lcom/android/tools/r8/internal/AG;->i:Lcom/android/tools/r8/internal/DG;

    iget v0, v0, Lcom/android/tools/r8/internal/S;->b:I

    iget v1, v1, Lcom/android/tools/r8/internal/AG;->b:I

    invoke-virtual {v2, v0, v1}, Lcom/android/tools/r8/internal/DG;->c(II)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/BG;->b:Lcom/android/tools/r8/internal/pG;

    :cond_0
    return-void
.end method
