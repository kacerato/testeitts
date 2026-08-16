.class public interface abstract Lcom/android/tools/r8/graph/d1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/graph/c1;->a:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;
    .locals 1

    .line 2
    iget-object v0, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    if-ne p2, v0, :cond_0

    return-object p1

    :cond_0
    invoke-interface {p0, p2}, Lcom/android/tools/r8/graph/d1;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lcom/android/tools/r8/graph/d1;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/E0;
    .locals 0

    .line 3
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p2

    invoke-interface {p0, p2, p1}, Lcom/android/tools/r8/graph/d1;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/android/tools/r8/graph/v2;)Lcom/android/tools/r8/graph/E0;
    .locals 0

    .line 7
    iget-object p1, p1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-interface {p0, p1}, Lcom/android/tools/r8/graph/d1;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/F0;
    .locals 1

    .line 4
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/android/tools/r8/graph/d1;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/E0;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/F0;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Lcom/android/tools/r8/graph/A2;)Z
    .locals 0

    .line 6
    invoke-interface {p0, p1}, Lcom/android/tools/r8/graph/d1;->b(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H0;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H0;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/android/tools/r8/graph/d1;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/E0;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H0;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/H2;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    invoke-interface {p0, p1}, Lcom/android/tools/r8/graph/d1;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    return-object p1
.end method

.method public abstract b()Lcom/android/tools/r8/graph/u1;
.end method

.method public e(Lcom/android/tools/r8/graph/M2;)Z
    .locals 0

    invoke-interface {p0, p1}, Lcom/android/tools/r8/graph/d1;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public abstract f(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/b0;
.end method

.method public abstract g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;
.end method
