.class public abstract Lcom/android/tools/r8/internal/si;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/android/tools/r8/graph/y;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/bt1;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/bt1;-><init>(Lcom/android/tools/r8/graph/y;)V

    .line 2
    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/qi;->a(Lcom/android/tools/r8/graph/u1;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/A2;)V
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/h;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p0

    .line 4
    sget-boolean v0, Lcom/android/tools/r8/graph/u2;->u:Z

    if-eqz p0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->G()Lcom/android/tools/r8/graph/u2;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/E0;->b(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;

    move-result-object v0

    if-eqz v0, :cond_2

    :goto_1
    return-void

    .line 7
    :cond_2
    invoke-static {}, Lcom/android/tools/r8/graph/j1;->K0()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 8
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object p1

    .line 9
    new-instance v0, Lcom/android/tools/r8/graph/K4;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/K4;-><init>()V

    const/4 v1, 0x1

    .line 10
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/f;->a(Z)Lcom/android/tools/r8/graph/f;

    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/tools/r8/graph/K4;

    .line 12
    iget-object v0, v0, Lcom/android/tools/r8/graph/f;->a:Lcom/android/tools/r8/graph/g;

    .line 13
    check-cast v0, Lcom/android/tools/r8/graph/L4;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object p1

    .line 14
    sget-object v0, Lcom/android/tools/r8/androidapi/g;->b:Lcom/android/tools/r8/androidapi/g;

    .line 15
    iput-object v0, p1, Lcom/android/tools/r8/graph/j1$a;->l:Lcom/android/tools/r8/androidapi/f;

    .line 16
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object p1

    .line 17
    iget-object p0, p0, Lcom/android/tools/r8/graph/E0;->l:Lcom/android/tools/r8/graph/N4;

    .line 18
    iget-object p0, p0, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    .line 19
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/O4;->c(Lcom/android/tools/r8/graph/j1;)V

    return-void
.end method
