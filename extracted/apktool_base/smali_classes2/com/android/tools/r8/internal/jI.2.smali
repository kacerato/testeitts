.class public final Lcom/android/tools/r8/internal/jI;
.super Lcom/android/tools/r8/internal/iI;
.source "SourceFile"


# instance fields
.field public final synthetic g:Lcom/android/tools/r8/internal/kI;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/kI;)V
    .locals 1

    iput-object p1, p0, Lcom/android/tools/r8/internal/jI;->g:Lcom/android/tools/r8/internal/kI;

    iget-object v0, p1, Lcom/android/tools/r8/internal/kI;->f:Lcom/android/tools/r8/internal/lI;

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/iI;-><init>(Lcom/android/tools/r8/internal/lI;)V

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/kI;->a()Lcom/android/tools/r8/internal/hI;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/iI;->c:Lcom/android/tools/r8/internal/hI;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/iI;->c:Lcom/android/tools/r8/internal/hI;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/hI;->b()Lcom/android/tools/r8/internal/hI;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/iI;->c:Lcom/android/tools/r8/internal/hI;

    iget-object v1, p0, Lcom/android/tools/r8/internal/jI;->g:Lcom/android/tools/r8/internal/kI;

    iget-boolean v2, v1, Lcom/android/tools/r8/internal/kI;->e:Z

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    iget-object v2, v1, Lcom/android/tools/r8/internal/kI;->f:Lcom/android/tools/r8/internal/lI;

    iget v0, v0, Lcom/android/tools/r8/internal/hI;->b:I

    iget v1, v1, Lcom/android/tools/r8/internal/kI;->c:I

    invoke-virtual {v2, v0, v1}, Lcom/android/tools/r8/internal/lI;->e(II)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/iI;->c:Lcom/android/tools/r8/internal/hI;

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/iI;->b:Lcom/android/tools/r8/internal/hI;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/hI;->d()Lcom/android/tools/r8/internal/hI;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/iI;->b:Lcom/android/tools/r8/internal/hI;

    iget-object v1, p0, Lcom/android/tools/r8/internal/jI;->g:Lcom/android/tools/r8/internal/kI;

    iget-boolean v2, v1, Lcom/android/tools/r8/internal/kI;->d:Z

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    iget-object v2, v1, Lcom/android/tools/r8/internal/kI;->f:Lcom/android/tools/r8/internal/lI;

    iget v0, v0, Lcom/android/tools/r8/internal/hI;->b:I

    iget v1, v1, Lcom/android/tools/r8/internal/kI;->b:I

    invoke-virtual {v2, v0, v1}, Lcom/android/tools/r8/internal/lI;->e(II)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/iI;->b:Lcom/android/tools/r8/internal/hI;

    :cond_0
    return-void
.end method
