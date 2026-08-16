.class public final Lcom/android/tools/r8/internal/S00;
.super Lcom/android/tools/r8/graph/n0;
.source "SourceFile"


# instance fields
.field public final synthetic f:Lcom/android/tools/r8/internal/T00;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/T00;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/android/tools/r8/internal/S00;->f:Lcom/android/tools/r8/internal/T00;

    invoke-direct {p0, p2, p3, v0}, Lcom/android/tools/r8/graph/n0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Ljava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/A2;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/S00;->f:Lcom/android/tools/r8/internal/T00;

    iget-object v0, v0, Lcom/android/tools/r8/internal/T00;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j;

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/j;->e(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/S00;->a(Lcom/android/tools/r8/graph/Z4;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/Z4;)V
    .locals 1

    .line 4
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/Z4;->p()Lcom/android/tools/r8/graph/H0;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 7
    iput-object p1, p0, Lcom/android/tools/r8/graph/g6;->e:Ljava/lang/Boolean;

    .line 8
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/f6;->a()V

    return-void

    .line 9
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    .line 11
    invoke-interface {v0}, Lcom/android/tools/r8/graph/o0;->getReference()Lcom/android/tools/r8/graph/J2;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/tools/r8/graph/o0;->a(Lcom/android/tools/r8/graph/J2;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 12
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 13
    iput-object p1, p0, Lcom/android/tools/r8/graph/g6;->e:Ljava/lang/Boolean;

    .line 14
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/f6;->a()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/l1;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/S00;->i(Lcom/android/tools/r8/graph/l1;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/A2;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/S00;->f:Lcom/android/tools/r8/internal/T00;

    iget-object v0, v0, Lcom/android/tools/r8/internal/T00;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/graph/j;->a(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/graph/Z4;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/S00;->a(Lcom/android/tools/r8/graph/Z4;)V

    return-void
.end method

.method public final c(Lcom/android/tools/r8/graph/l1;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/S00;->i(Lcom/android/tools/r8/graph/l1;)V

    return-void
.end method

.method public final d(Lcom/android/tools/r8/graph/A2;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/S00;->f:Lcom/android/tools/r8/internal/T00;

    iget-object v0, v0, Lcom/android/tools/r8/internal/T00;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/j;->e(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/S00;->a(Lcom/android/tools/r8/graph/Z4;)V

    return-void
.end method

.method public final e(Lcom/android/tools/r8/graph/l1;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/S00;->i(Lcom/android/tools/r8/graph/l1;)V

    return-void
.end method

.method public final f(Lcom/android/tools/r8/graph/A2;)V
    .locals 0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/android/tools/r8/graph/g6;->e:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/f6;->a()V

    return-void
.end method

.method public final g(Lcom/android/tools/r8/graph/A2;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/S00;->f:Lcom/android/tools/r8/internal/T00;

    iget-object v0, v0, Lcom/android/tools/r8/internal/T00;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/graph/j;->a(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/graph/Z4;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/S00;->a(Lcom/android/tools/r8/graph/Z4;)V

    return-void
.end method

.method public final g(Lcom/android/tools/r8/graph/l1;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/S00;->i(Lcom/android/tools/r8/graph/l1;)V

    return-void
.end method

.method public final i(Lcom/android/tools/r8/graph/l1;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/S00;->f:Lcom/android/tools/r8/internal/T00;

    iget-object v0, v0, Lcom/android/tools/r8/internal/T00;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j;

    iget-object v1, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    check-cast v1, Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v2, p1, v1}, Lcom/android/tools/r8/graph/j;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/D3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/D3;->p()Lcom/android/tools/r8/graph/F0;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/F0;->u()Lcom/android/tools/r8/graph/k3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/android/tools/r8/graph/g6;->e:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/f6;->a()V

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/F0;->u()Lcom/android/tools/r8/graph/k3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    invoke-interface {v0}, Lcom/android/tools/r8/graph/o0;->getReference()Lcom/android/tools/r8/graph/J2;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/tools/r8/graph/o0;->a(Lcom/android/tools/r8/graph/J2;)Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/android/tools/r8/graph/g6;->e:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/f6;->a()V

    :cond_2
    :goto_0
    return-void
.end method
