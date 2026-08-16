.class public final Lcom/android/tools/r8/shaking/o1;
.super Lcom/android/tools/r8/shaking/D1;
.source "SourceFile"


# instance fields
.field public l:Z

.field public m:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/tools/r8/shaking/D1;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/shaking/q1;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Lcom/android/tools/r8/shaking/D1;-><init>(Lcom/android/tools/r8/shaking/F1;)V

    .line 3
    iget-boolean v0, p1, Lcom/android/tools/r8/shaking/q1;->l:Z

    .line 4
    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/o1;->l:Z

    .line 5
    iget-boolean p1, p1, Lcom/android/tools/r8/shaking/q1;->m:Z

    .line 6
    iput-boolean p1, p0, Lcom/android/tools/r8/shaking/o1;->m:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/shaking/t1;)Z
    .locals 2

    check-cast p1, Lcom/android/tools/r8/shaking/q1;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/D1;->a(Lcom/android/tools/r8/shaking/F1;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/o1;->l:Z

    iget-boolean v1, p1, Lcom/android/tools/r8/shaking/q1;->l:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/o1;->m:Z

    iget-boolean p1, p1, Lcom/android/tools/r8/shaking/q1;->m:Z

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b()Lcom/android/tools/r8/shaking/t1;
    .locals 1

    .line 7
    new-instance v0, Lcom/android/tools/r8/shaking/q1;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/shaking/q1;-><init>(Lcom/android/tools/r8/shaking/o1;)V

    return-object v0
.end method

.method public final b(Lcom/android/tools/r8/shaking/t1;)Z
    .locals 2

    .line 1
    check-cast p1, Lcom/android/tools/r8/shaking/q1;

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/D1;->a(Lcom/android/tools/r8/shaking/F1;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/o1;->l:Z

    .line 4
    iget-boolean v1, p1, Lcom/android/tools/r8/shaking/q1;->l:Z

    if-ne v0, v1, :cond_0

    .line 5
    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/o1;->m:Z

    .line 6
    iget-boolean p1, p1, Lcom/android/tools/r8/shaking/q1;->m:Z

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final c()Lcom/android/tools/r8/shaking/t1;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/shaking/q1;->o:Lcom/android/tools/r8/shaking/q1;

    return-object v0
.end method

.method public final d()Lcom/android/tools/r8/shaking/t1;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/shaking/q1;->n:Lcom/android/tools/r8/shaking/q1;

    return-object v0
.end method

.method public final i()Lcom/android/tools/r8/shaking/r1;
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/D1;->k()Lcom/android/tools/r8/shaking/D1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/o1;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/o1;->l:Z

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/o1;->m:Z

    return-object v0
.end method

.method public final j()Lcom/android/tools/r8/shaking/r1;
    .locals 0

    return-object p0
.end method
