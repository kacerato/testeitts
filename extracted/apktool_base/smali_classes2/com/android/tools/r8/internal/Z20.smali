.class public Lcom/android/tools/r8/internal/Z20;
.super Lcom/android/tools/r8/internal/d30;
.source "SourceFile"


# instance fields
.field public final synthetic g:Lcom/android/tools/r8/internal/c30;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/c30;)V
    .locals 1

    iput-object p1, p0, Lcom/android/tools/r8/internal/Z20;->g:Lcom/android/tools/r8/internal/c30;

    iget-object v0, p1, Lcom/android/tools/r8/internal/c30;->i:Lcom/android/tools/r8/internal/f30;

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/d30;-><init>(Lcom/android/tools/r8/internal/f30;)V

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/c30;->j()Lcom/android/tools/r8/internal/R20;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/d30;->c:Lcom/android/tools/r8/internal/R20;

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/d30;->c:Lcom/android/tools/r8/internal/R20;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/R20;->c()Lcom/android/tools/r8/internal/R20;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/d30;->c:Lcom/android/tools/r8/internal/R20;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Z20;->g:Lcom/android/tools/r8/internal/c30;

    iget-boolean v2, v1, Lcom/android/tools/r8/internal/c30;->e:Z

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    iget-object v2, v1, Lcom/android/tools/r8/internal/c30;->i:Lcom/android/tools/r8/internal/f30;

    iget-object v0, v0, Lcom/android/tools/r8/internal/R20;->b:Ljava/lang/Object;

    iget-object v1, v1, Lcom/android/tools/r8/internal/c30;->c:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Ljava/lang/Comparable;

    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/d30;->c:Lcom/android/tools/r8/internal/R20;

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/d30;->b:Lcom/android/tools/r8/internal/R20;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/R20;->e()Lcom/android/tools/r8/internal/R20;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/d30;->b:Lcom/android/tools/r8/internal/R20;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Z20;->g:Lcom/android/tools/r8/internal/c30;

    iget-boolean v2, v1, Lcom/android/tools/r8/internal/c30;->d:Z

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    iget-object v2, v1, Lcom/android/tools/r8/internal/c30;->i:Lcom/android/tools/r8/internal/f30;

    iget-object v0, v0, Lcom/android/tools/r8/internal/R20;->b:Ljava/lang/Object;

    iget-object v1, v1, Lcom/android/tools/r8/internal/c30;->b:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Ljava/lang/Comparable;

    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/d30;->b:Lcom/android/tools/r8/internal/R20;

    :cond_0
    return-void
.end method
