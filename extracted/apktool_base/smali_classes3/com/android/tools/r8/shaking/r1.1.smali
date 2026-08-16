.class public abstract Lcom/android/tools/r8/shaking/r1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/shaking/t1;

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Lcom/android/tools/r8/shaking/d1;

.field public j:Lcom/android/tools/r8/shaking/d1;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/shaking/t1;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/android/tools/r8/shaking/r1;->a:Lcom/android/tools/r8/shaking/t1;

    .line 4
    iget-boolean v0, p1, Lcom/android/tools/r8/shaking/t1;->a:Z

    .line 5
    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/r1;->b:Z

    .line 6
    iget-boolean v0, p1, Lcom/android/tools/r8/shaking/t1;->b:Z

    .line 7
    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/r1;->c:Z

    .line 8
    iget-boolean v0, p1, Lcom/android/tools/r8/shaking/t1;->c:Z

    .line 9
    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/r1;->d:Z

    .line 10
    iget-boolean v0, p1, Lcom/android/tools/r8/shaking/t1;->d:Z

    .line 11
    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/r1;->e:Z

    .line 12
    iget-boolean v0, p1, Lcom/android/tools/r8/shaking/t1;->e:Z

    .line 13
    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/r1;->f:Z

    .line 14
    iget-boolean v0, p1, Lcom/android/tools/r8/shaking/t1;->f:Z

    .line 15
    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/r1;->g:Z

    .line 16
    iget-boolean v0, p1, Lcom/android/tools/r8/shaking/t1;->g:Z

    .line 17
    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/r1;->h:Z

    .line 18
    iget-object v0, p1, Lcom/android/tools/r8/shaking/t1;->h:Lcom/android/tools/r8/shaking/i1;

    .line 19
    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/i1;->c()Lcom/android/tools/r8/shaking/d1;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/shaking/r1;->i:Lcom/android/tools/r8/shaking/d1;

    .line 20
    iget-object p1, p1, Lcom/android/tools/r8/shaking/t1;->i:Lcom/android/tools/r8/shaking/i1;

    .line 21
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/i1;->c()Lcom/android/tools/r8/shaking/d1;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/shaking/r1;->j:Lcom/android/tools/r8/shaking/d1;

    return-void
.end method


# virtual methods
.method public a()Lcom/android/tools/r8/shaking/t1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/shaking/r1;->a:Lcom/android/tools/r8/shaking/t1;

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/shaking/r1;->a(Lcom/android/tools/r8/shaking/t1;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/shaking/r1;->a:Lcom/android/tools/r8/shaking/t1;

    return-object v0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/r1;->d()Lcom/android/tools/r8/shaking/t1;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/shaking/r1;->a(Lcom/android/tools/r8/shaking/t1;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/r1;->d()Lcom/android/tools/r8/shaking/t1;

    move-result-object v0

    return-object v0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/r1;->c()Lcom/android/tools/r8/shaking/t1;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/shaking/r1;->a(Lcom/android/tools/r8/shaking/t1;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/r1;->c()Lcom/android/tools/r8/shaking/t1;

    move-result-object v0

    return-object v0

    .line 8
    :cond_2
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/r1;->b()Lcom/android/tools/r8/shaking/t1;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/android/tools/r8/shaking/t1;)Z
    .locals 2

    .line 9
    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/r1;->b:Z

    .line 10
    iget-boolean v1, p1, Lcom/android/tools/r8/shaking/t1;->a:Z

    if-ne v0, v1, :cond_0

    .line 11
    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/r1;->c:Z

    .line 12
    iget-boolean v1, p1, Lcom/android/tools/r8/shaking/t1;->b:Z

    if-ne v0, v1, :cond_0

    .line 13
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/r1;->e()Z

    move-result v0

    .line 14
    iget-boolean v1, p1, Lcom/android/tools/r8/shaking/t1;->c:Z

    if-ne v0, v1, :cond_0

    .line 15
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/r1;->f()Z

    move-result v0

    .line 16
    iget-boolean v1, p1, Lcom/android/tools/r8/shaking/t1;->d:Z

    if-ne v0, v1, :cond_0

    .line 17
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/r1;->g()Z

    move-result v0

    .line 18
    iget-boolean v1, p1, Lcom/android/tools/r8/shaking/t1;->e:Z

    if-ne v0, v1, :cond_0

    .line 19
    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/r1;->g:Z

    .line 20
    iget-boolean v1, p1, Lcom/android/tools/r8/shaking/t1;->f:Z

    if-ne v0, v1, :cond_0

    .line 21
    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/r1;->h:Z

    .line 22
    iget-boolean v1, p1, Lcom/android/tools/r8/shaking/t1;->g:Z

    if-ne v0, v1, :cond_0

    .line 23
    iget-object v0, p0, Lcom/android/tools/r8/shaking/r1;->i:Lcom/android/tools/r8/shaking/d1;

    .line 24
    iget-object v1, p1, Lcom/android/tools/r8/shaking/t1;->h:Lcom/android/tools/r8/shaking/i1;

    .line 25
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/d1;->a(Lcom/android/tools/r8/shaking/i1;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/shaking/r1;->j:Lcom/android/tools/r8/shaking/d1;

    .line 26
    iget-object p1, p1, Lcom/android/tools/r8/shaking/t1;->i:Lcom/android/tools/r8/shaking/i1;

    .line 27
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/shaking/d1;->a(Lcom/android/tools/r8/shaking/i1;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public abstract b()Lcom/android/tools/r8/shaking/t1;
.end method

.method public abstract b(Lcom/android/tools/r8/shaking/t1;)Z
.end method

.method public abstract c()Lcom/android/tools/r8/shaking/t1;
.end method

.method public abstract d()Lcom/android/tools/r8/shaking/t1;
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/r1;->d:Z

    return v0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/r1;->e:Z

    return v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/r1;->f:Z

    return v0
.end method

.method public final h()Lcom/android/tools/r8/shaking/r1;
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/r1;->b:Z

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/r1;->j()Lcom/android/tools/r8/shaking/r1;

    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/r1;->c:Z

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/r1;->j()Lcom/android/tools/r8/shaking/r1;

    new-instance v1, Lcom/android/tools/r8/shaking/d1;

    sget-object v2, Lcom/android/tools/r8/shaking/f1;->c:Lcom/android/tools/r8/shaking/f1;

    invoke-direct {v1, v2}, Lcom/android/tools/r8/shaking/d1;-><init>(Lcom/android/tools/r8/shaking/f1;)V

    iput-object v1, p0, Lcom/android/tools/r8/shaking/r1;->i:Lcom/android/tools/r8/shaking/d1;

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/r1;->j()Lcom/android/tools/r8/shaking/r1;

    new-instance v1, Lcom/android/tools/r8/shaking/d1;

    invoke-direct {v1, v2}, Lcom/android/tools/r8/shaking/d1;-><init>(Lcom/android/tools/r8/shaking/f1;)V

    iput-object v1, p0, Lcom/android/tools/r8/shaking/r1;->j:Lcom/android/tools/r8/shaking/d1;

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/r1;->j()Lcom/android/tools/r8/shaking/r1;

    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/r1;->d:Z

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/r1;->j()Lcom/android/tools/r8/shaking/r1;

    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/r1;->e:Z

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/r1;->j()Lcom/android/tools/r8/shaking/r1;

    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/r1;->f:Z

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/r1;->j()Lcom/android/tools/r8/shaking/r1;

    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/r1;->g:Z

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/r1;->j()Lcom/android/tools/r8/shaking/r1;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/r1;->h:Z

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/r1;->j()Lcom/android/tools/r8/shaking/r1;

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/r1;->j()Lcom/android/tools/r8/shaking/r1;

    move-result-object v0

    return-object v0
.end method

.method public i()Lcom/android/tools/r8/shaking/r1;
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/r1;->b:Z

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/r1;->j()Lcom/android/tools/r8/shaking/r1;

    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/r1;->c:Z

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/r1;->j()Lcom/android/tools/r8/shaking/r1;

    new-instance v1, Lcom/android/tools/r8/shaking/d1;

    sget-object v2, Lcom/android/tools/r8/shaking/f1;->d:Lcom/android/tools/r8/shaking/f1;

    invoke-direct {v1, v2}, Lcom/android/tools/r8/shaking/d1;-><init>(Lcom/android/tools/r8/shaking/f1;)V

    iput-object v1, p0, Lcom/android/tools/r8/shaking/r1;->i:Lcom/android/tools/r8/shaking/d1;

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/r1;->j()Lcom/android/tools/r8/shaking/r1;

    new-instance v1, Lcom/android/tools/r8/shaking/d1;

    invoke-direct {v1, v2}, Lcom/android/tools/r8/shaking/d1;-><init>(Lcom/android/tools/r8/shaking/f1;)V

    iput-object v1, p0, Lcom/android/tools/r8/shaking/r1;->j:Lcom/android/tools/r8/shaking/d1;

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/r1;->j()Lcom/android/tools/r8/shaking/r1;

    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/r1;->d:Z

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/r1;->j()Lcom/android/tools/r8/shaking/r1;

    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/r1;->e:Z

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/r1;->j()Lcom/android/tools/r8/shaking/r1;

    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/r1;->f:Z

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/r1;->j()Lcom/android/tools/r8/shaking/r1;

    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/r1;->g:Z

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/r1;->j()Lcom/android/tools/r8/shaking/r1;

    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/r1;->h:Z

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/r1;->j()Lcom/android/tools/r8/shaking/r1;

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/r1;->j()Lcom/android/tools/r8/shaking/r1;

    move-result-object v0

    return-object v0
.end method

.method public abstract j()Lcom/android/tools/r8/shaking/r1;
.end method
