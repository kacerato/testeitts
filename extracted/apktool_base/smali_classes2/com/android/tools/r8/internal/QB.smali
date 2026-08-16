.class public Lcom/android/tools/r8/internal/QB;
.super Lcom/android/tools/r8/graph/g6;
.source "SourceFile"


# static fields
.field public static final synthetic h:Z = true


# instance fields
.field public final f:Lcom/android/tools/r8/graph/y;

.field public final g:Lcom/android/tools/r8/internal/Hz;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/tools/r8/graph/g6;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Ljava/lang/Boolean;)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/QB;->f:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/graph/i0;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/Hz;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/QB;->g:Lcom/android/tools/r8/internal/Hz;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/A2;)V
    .locals 7

    .line 42
    iget-object v0, p0, Lcom/android/tools/r8/internal/QB;->f:Lcom/android/tools/r8/graph/y;

    .line 43
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v1

    .line 44
    iget-object v0, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    .line 45
    check-cast v0, Lcom/android/tools/r8/graph/H5;

    iget-object v5, p0, Lcom/android/tools/r8/internal/QB;->g:Lcom/android/tools/r8/internal/Hz;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/tools/r8/graph/A2;

    sget-object v4, Lcom/android/tools/r8/internal/kK;->d:Lcom/android/tools/r8/internal/kK;

    .line 47
    sget-object v0, Lcom/android/tools/r8/internal/t40;->c:Lcom/android/tools/r8/internal/t40;

    move-object v2, p1

    move-object v6, v0

    .line 48
    invoke-virtual/range {v1 .. v6}, Lcom/android/tools/r8/internal/Hz;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/t40;)Lcom/android/tools/r8/internal/NW;

    move-result-object p1

    .line 49
    iget-object p1, p1, Lcom/android/tools/r8/internal/IV;->a:Lcom/android/tools/r8/graph/v2;

    .line 50
    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/QB;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/t40;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/t40;)V
    .locals 3

    .line 5
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/QB;->f:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 7
    iget-object v1, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    .line 8
    check-cast v1, Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 9
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->z0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/M2;->z0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 10
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 11
    invoke-static {}, Lcom/android/tools/r8/internal/Hz;->g()Lcom/android/tools/r8/internal/Hz;

    move-result-object v1

    invoke-static {}, Lcom/android/tools/r8/internal/Hz;->g()Lcom/android/tools/r8/internal/Hz;

    move-result-object v2

    .line 12
    invoke-virtual {p0, v1, v2, v0}, Lcom/android/tools/r8/internal/QB;->a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13
    sget-boolean p1, Lcom/android/tools/r8/internal/QB;->h:Z

    if-nez p1, :cond_1

    .line 14
    iget-object p1, p0, Lcom/android/tools/r8/graph/g6;->e:Ljava/lang/Boolean;

    .line 15
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-void

    .line 16
    :cond_2
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/f7;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 17
    iget-object p2, p0, Lcom/android/tools/r8/internal/QB;->f:Lcom/android/tools/r8/graph/y;

    .line 18
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/j;

    .line 19
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/graph/j;->e(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object p1

    goto :goto_1

    .line 20
    :cond_3
    iget-object v0, p0, Lcom/android/tools/r8/internal/QB;->f:Lcom/android/tools/r8/graph/y;

    .line 21
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j;

    .line 22
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/f7;->d()Z

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/graph/j;->a(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/graph/Z4;

    move-result-object p1

    .line 23
    :goto_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/Z4;->w()Z

    move-result p2

    if-nez p2, :cond_4

    .line 24
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/QB;->d()V

    return-void

    .line 25
    :cond_4
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/Z4;->o()Lcom/android/tools/r8/graph/Z4$c;

    move-result-object p1

    .line 26
    iget-object p2, p1, Lcom/android/tools/r8/graph/Z4$c;->c:Lcom/android/tools/r8/graph/E0;

    .line 27
    iget-object p1, p1, Lcom/android/tools/r8/graph/Z4$c;->d:Lcom/android/tools/r8/graph/j1;

    invoke-static {p2, p1}, Lcom/android/tools/r8/graph/H0;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/H0;

    move-result-object p1

    .line 28
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->getHolder()Lcom/android/tools/r8/graph/E0;

    move-result-object p2

    .line 29
    iget-object v0, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    .line 30
    check-cast v0, Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    if-eq p2, v0, :cond_5

    .line 31
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/g;->l()Z

    move-result p1

    if-nez p1, :cond_5

    .line 32
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/QB;->d()V

    :cond_5
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/l1;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/QB;->f:Lcom/android/tools/r8/graph/y;

    .line 3
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/QB;->g:Lcom/android/tools/r8/internal/Hz;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/l1;

    move-result-object p1

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/QB;->i(Lcom/android/tools/r8/graph/l1;)Z

    return-void
.end method

.method public a(Lcom/android/tools/r8/graph/F0;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Z
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/android/tools/r8/internal/QB;->f:Lcom/android/tools/r8/graph/y;

    .line 34
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 35
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 36
    iget-object p2, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    .line 37
    check-cast p2, Lcom/android/tools/r8/graph/H5;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    .line 38
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->z0()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/M2;->z0()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 39
    iget-object p2, p0, Lcom/android/tools/r8/internal/QB;->f:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 40
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->w1()Z

    move-result p1

    if-nez p1, :cond_1

    .line 41
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/QB;->d()V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Lcom/android/tools/r8/graph/A2;)V
    .locals 7

    .line 11
    iget-object v0, p0, Lcom/android/tools/r8/internal/QB;->f:Lcom/android/tools/r8/graph/y;

    .line 12
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v1

    .line 13
    iget-object v0, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    .line 14
    check-cast v0, Lcom/android/tools/r8/graph/H5;

    iget-object v5, p0, Lcom/android/tools/r8/internal/QB;->g:Lcom/android/tools/r8/internal/Hz;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/tools/r8/graph/A2;

    sget-object v4, Lcom/android/tools/r8/internal/kK;->e:Lcom/android/tools/r8/internal/kK;

    .line 16
    sget-object v6, Lcom/android/tools/r8/internal/t40;->c:Lcom/android/tools/r8/internal/t40;

    move-object v2, p1

    .line 17
    invoke-virtual/range {v1 .. v6}, Lcom/android/tools/r8/internal/Hz;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/t40;)Lcom/android/tools/r8/internal/NW;

    move-result-object p1

    .line 18
    iget-object p1, p1, Lcom/android/tools/r8/internal/IV;->a:Lcom/android/tools/r8/graph/v2;

    .line 19
    check-cast p1, Lcom/android/tools/r8/graph/A2;

    sget-object v0, Lcom/android/tools/r8/internal/t40;->a:Lcom/android/tools/r8/internal/t40;

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/QB;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/t40;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/M2;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/QB;->f:Lcom/android/tools/r8/graph/y;

    .line 2
    iget-object v0, v0, Lcom/android/tools/r8/graph/y;->j:Lcom/android/tools/r8/internal/uD;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    instance-of v0, v0, Lcom/android/tools/r8/internal/dx;

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/QB;->f:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/QB;->g:Lcom/android/tools/r8/internal/Hz;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/internal/QB;->f:Lcom/android/tools/r8/graph/y;

    .line 7
    iget-object v0, v0, Lcom/android/tools/r8/graph/y;->j:Lcom/android/tools/r8/internal/uD;

    .line 8
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/uD;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/l1;

    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/QB;->i(Lcom/android/tools/r8/graph/l1;)Z

    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/QB;->f:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/QB;->g:Lcom/android/tools/r8/internal/Hz;

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/tools/r8/internal/QB;->a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Z

    return-void
.end method

.method public final c(Lcom/android/tools/r8/graph/M2;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/QB;->f:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/QB;->g:Lcom/android/tools/r8/internal/Hz;

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/tools/r8/internal/QB;->a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Z

    return-void
.end method

.method public final c(Lcom/android/tools/r8/graph/l1;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/QB;->f:Lcom/android/tools/r8/graph/y;

    .line 2
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/QB;->g:Lcom/android/tools/r8/internal/Hz;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/l1;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/QB;->i(Lcom/android/tools/r8/graph/l1;)Z

    return-void
.end method

.method public final d()V
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2
    iput-object v0, p0, Lcom/android/tools/r8/graph/g6;->e:Ljava/lang/Boolean;

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/f6;->a()V

    return-void
.end method

.method public final d(Lcom/android/tools/r8/graph/A2;)V
    .locals 7

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/QB;->f:Lcom/android/tools/r8/graph/y;

    .line 6
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v1

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    .line 8
    check-cast v0, Lcom/android/tools/r8/graph/H5;

    iget-object v5, p0, Lcom/android/tools/r8/internal/QB;->g:Lcom/android/tools/r8/internal/Hz;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/tools/r8/graph/A2;

    sget-object v4, Lcom/android/tools/r8/internal/kK;->f:Lcom/android/tools/r8/internal/kK;

    .line 10
    sget-object v0, Lcom/android/tools/r8/internal/t40;->c:Lcom/android/tools/r8/internal/t40;

    move-object v2, p1

    move-object v6, v0

    .line 11
    invoke-virtual/range {v1 .. v6}, Lcom/android/tools/r8/internal/Hz;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/t40;)Lcom/android/tools/r8/internal/NW;

    move-result-object p1

    .line 12
    iget-object p1, p1, Lcom/android/tools/r8/internal/IV;->a:Lcom/android/tools/r8/graph/v2;

    .line 13
    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/QB;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/t40;)V

    return-void
.end method

.method public final d(Lcom/android/tools/r8/graph/M2;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/QB;->f:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/QB;->g:Lcom/android/tools/r8/internal/Hz;

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/tools/r8/internal/QB;->a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Z

    return-void
.end method

.method public final e(Lcom/android/tools/r8/graph/l1;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/QB;->f:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/QB;->g:Lcom/android/tools/r8/internal/Hz;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/l1;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/QB;->i(Lcom/android/tools/r8/graph/l1;)Z

    return-void
.end method

.method public final f(Lcom/android/tools/r8/graph/A2;)V
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/QB;->f:Lcom/android/tools/r8/graph/y;

    .line 3
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v1

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    .line 5
    check-cast v0, Lcom/android/tools/r8/graph/H5;

    iget-object v5, p0, Lcom/android/tools/r8/internal/QB;->g:Lcom/android/tools/r8/internal/Hz;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/tools/r8/graph/A2;

    sget-object v4, Lcom/android/tools/r8/internal/kK;->g:Lcom/android/tools/r8/internal/kK;

    .line 7
    sget-object v0, Lcom/android/tools/r8/internal/t40;->c:Lcom/android/tools/r8/internal/t40;

    move-object v2, p1

    move-object v6, v0

    .line 8
    invoke-virtual/range {v1 .. v6}, Lcom/android/tools/r8/internal/Hz;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/t40;)Lcom/android/tools/r8/internal/NW;

    move-result-object p1

    .line 9
    iget-object p1, p1, Lcom/android/tools/r8/internal/IV;->a:Lcom/android/tools/r8/graph/v2;

    .line 10
    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/QB;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/t40;)V

    return-void
.end method

.method public final f(Lcom/android/tools/r8/graph/M2;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/QB;->f:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/QB;->g:Lcom/android/tools/r8/internal/Hz;

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/tools/r8/internal/QB;->a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Z

    return-void
.end method

.method public final g(Lcom/android/tools/r8/graph/A2;)V
    .locals 7

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/QB;->f:Lcom/android/tools/r8/graph/y;

    .line 5
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v1

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    .line 7
    check-cast v0, Lcom/android/tools/r8/graph/H5;

    iget-object v5, p0, Lcom/android/tools/r8/internal/QB;->g:Lcom/android/tools/r8/internal/Hz;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/tools/r8/graph/A2;

    sget-object v4, Lcom/android/tools/r8/internal/kK;->h:Lcom/android/tools/r8/internal/kK;

    .line 9
    sget-object v6, Lcom/android/tools/r8/internal/t40;->c:Lcom/android/tools/r8/internal/t40;

    move-object v2, p1

    .line 10
    invoke-virtual/range {v1 .. v6}, Lcom/android/tools/r8/internal/Hz;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/t40;)Lcom/android/tools/r8/internal/NW;

    move-result-object p1

    .line 11
    iget-object p1, p1, Lcom/android/tools/r8/internal/IV;->a:Lcom/android/tools/r8/graph/v2;

    .line 12
    check-cast p1, Lcom/android/tools/r8/graph/A2;

    sget-object v0, Lcom/android/tools/r8/internal/t40;->b:Lcom/android/tools/r8/internal/t40;

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/QB;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/t40;)V

    return-void
.end method

.method public final g(Lcom/android/tools/r8/graph/l1;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/QB;->f:Lcom/android/tools/r8/graph/y;

    .line 2
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/QB;->g:Lcom/android/tools/r8/internal/Hz;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/l1;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/QB;->i(Lcom/android/tools/r8/graph/l1;)Z

    return-void
.end method

.method public final i(Lcom/android/tools/r8/graph/l1;)Z
    .locals 4

    sget-boolean v0, Lcom/android/tools/r8/internal/QB;->h:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    check-cast v2, Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/M2;->z0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/M2;->z0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {}, Lcom/android/tools/r8/internal/Hz;->g()Lcom/android/tools/r8/internal/Hz;

    move-result-object v2

    invoke-static {}, Lcom/android/tools/r8/internal/Hz;->g()Lcom/android/tools/r8/internal/Hz;

    move-result-object v3

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/tools/r8/internal/QB;->a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    if-nez v0, :cond_3

    iget-object p1, p0, Lcom/android/tools/r8/graph/g6;->e:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    return v2

    :cond_4
    iget-object v1, p0, Lcom/android/tools/r8/internal/QB;->f:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/D3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/D3;->p()Lcom/android/tools/r8/graph/F0;

    move-result-object p1

    if-nez p1, :cond_5

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/QB;->d()V

    return v2

    :cond_5
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->getHolder()Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    iget-object v3, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    check-cast v3, Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v3

    if-eq v1, v3, :cond_6

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/F0;->u()Lcom/android/tools/r8/graph/k3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/g;->l()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/QB;->d()V

    return v2

    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/QB;->a(Lcom/android/tools/r8/graph/F0;)Z

    move-result p1

    if-eqz p1, :cond_9

    if-nez v0, :cond_8

    iget-object p1, p0, Lcom/android/tools/r8/graph/g6;->e:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_2

    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_8
    :goto_2
    return v2

    :cond_9
    const/4 p1, 0x0

    return p1
.end method
