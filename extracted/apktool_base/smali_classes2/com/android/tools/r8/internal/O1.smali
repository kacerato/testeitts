.class public abstract Lcom/android/tools/r8/internal/O1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/F5;Z)Lcom/android/tools/r8/graph/H5;
    .locals 6

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/internal/O1;->a:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/F0;->u()Lcom/android/tools/r8/graph/k3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 3
    :cond_3
    :goto_1
    new-instance v0, Lcom/android/tools/r8/graph/H5;

    .line 4
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/F5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    .line 5
    sget-object v2, Lcom/android/tools/r8/graph/j1;->u:[Lcom/android/tools/r8/graph/j1;

    .line 6
    new-instance v2, Lcom/android/tools/r8/graph/j1$a;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/android/tools/r8/graph/j1$a;-><init>(Z)V

    .line 7
    new-instance v3, Lcom/android/tools/r8/graph/K4;

    invoke-direct {v3}, Lcom/android/tools/r8/graph/K4;-><init>()V

    .line 8
    iget-object v4, v3, Lcom/android/tools/r8/graph/f;->a:Lcom/android/tools/r8/graph/g;

    check-cast v4, Lcom/android/tools/r8/graph/L4;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/L4;->N()Lcom/android/tools/r8/graph/L4;

    .line 9
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/F5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/graph/f;->a(Z)Lcom/android/tools/r8/graph/f;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/K4;

    .line 10
    iget-object v4, v3, Lcom/android/tools/r8/graph/f;->a:Lcom/android/tools/r8/graph/g;

    .line 11
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/g;->y()V

    .line 12
    iget-object v4, v3, Lcom/android/tools/r8/graph/f;->a:Lcom/android/tools/r8/graph/g;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/g;->z()Lcom/android/tools/r8/graph/g;

    .line 13
    iget-object v3, v3, Lcom/android/tools/r8/graph/f;->a:Lcom/android/tools/r8/graph/g;

    .line 14
    check-cast v3, Lcom/android/tools/r8/graph/L4;

    .line 15
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v2

    .line 16
    new-instance v3, Lcom/android/tools/r8/internal/Uv;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/Uv;-><init>()V

    .line 17
    new-instance v4, Lcom/android/tools/r8/internal/aP0;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/aP0;-><init>()V

    new-instance v5, Lcom/android/tools/r8/internal/bP0;

    invoke-direct {v5}, Lcom/android/tools/r8/internal/bP0;-><init>()V

    .line 18
    invoke-virtual {v3, p2, v4, v5}, Lcom/android/tools/r8/internal/Uv;->a(ZLjava/util/function/Consumer;Ljava/util/function/Consumer;)Lcom/android/tools/r8/internal/Uv;

    move-result-object p2

    .line 19
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/F0;->u()Lcom/android/tools/r8/graph/k3;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 20
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/l1;

    .line 21
    iput-object v3, p2, Lcom/android/tools/r8/internal/Uv;->a:Lcom/android/tools/r8/graph/l1;

    .line 22
    sget-object v3, Lcom/android/tools/r8/internal/t40;->b:Lcom/android/tools/r8/internal/t40;

    iput-object v3, p2, Lcom/android/tools/r8/internal/Uv;->b:Lcom/android/tools/r8/internal/t40;

    goto :goto_2

    .line 23
    :cond_4
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/l1;

    .line 24
    iput-object v3, p2, Lcom/android/tools/r8/internal/Uv;->a:Lcom/android/tools/r8/graph/l1;

    .line 25
    sget-object v3, Lcom/android/tools/r8/internal/t40;->a:Lcom/android/tools/r8/internal/t40;

    iput-object v3, p2, Lcom/android/tools/r8/internal/Uv;->b:Lcom/android/tools/r8/internal/t40;

    .line 26
    :goto_2
    iput-object p0, p2, Lcom/android/tools/r8/internal/Uv;->d:Lcom/android/tools/r8/graph/A2;

    .line 27
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Uv;->a()Lcom/android/tools/r8/graph/G;

    move-result-object p2

    .line 28
    invoke-virtual {v2, p2}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/i0;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object p2

    .line 29
    invoke-virtual {p2, p0}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object p0

    .line 30
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/g1;

    .line 31
    iget-object p2, p2, Lcom/android/tools/r8/graph/h1;->e:Lcom/android/tools/r8/androidapi/f;

    .line 32
    iput-object p2, p0, Lcom/android/tools/r8/graph/j1$a;->l:Lcom/android/tools/r8/androidapi/f;

    .line 33
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/g1;

    .line 34
    iget-object p1, p1, Lcom/android/tools/r8/graph/h1;->e:Lcom/android/tools/r8/androidapi/f;

    .line 35
    iput-object p1, p0, Lcom/android/tools/r8/graph/j1$a;->m:Lcom/android/tools/r8/androidapi/f;

    .line 36
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/android/tools/r8/graph/H5;-><init>(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/j1;)V

    return-object v0
.end method

.method public static a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/H5;
    .locals 7

    .line 37
    sget-boolean v0, Lcom/android/tools/r8/internal/O1;->a:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    const/high16 v1, 0x10000

    if-nez v0, :cond_3

    .line 38
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object v2

    .line 39
    iget v2, v2, Lcom/android/tools/r8/graph/g;->c:I

    .line 40
    invoke-static {v2, v1}, Lcom/android/tools/r8/graph/g;->d(II)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 41
    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    .line 42
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/g;->h()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_5
    :goto_2
    if-nez v0, :cond_7

    .line 43
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 44
    :cond_7
    :goto_3
    new-instance v0, Lcom/android/tools/r8/graph/H5;

    .line 45
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v2

    .line 46
    sget-object v3, Lcom/android/tools/r8/graph/j1;->u:[Lcom/android/tools/r8/graph/j1;

    .line 47
    new-instance v3, Lcom/android/tools/r8/graph/j1$a;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcom/android/tools/r8/graph/j1$a;-><init>(Z)V

    .line 48
    new-instance v5, Lcom/android/tools/r8/graph/K4;

    invoke-direct {v5}, Lcom/android/tools/r8/graph/K4;-><init>()V

    .line 49
    iget-object v6, v5, Lcom/android/tools/r8/graph/f;->a:Lcom/android/tools/r8/graph/g;

    check-cast v6, Lcom/android/tools/r8/graph/L4;

    .line 50
    invoke-virtual {v6, v1}, Lcom/android/tools/r8/graph/g;->a(I)V

    .line 51
    iget-object v1, v5, Lcom/android/tools/r8/graph/f;->a:Lcom/android/tools/r8/graph/g;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/g;->z()Lcom/android/tools/r8/graph/g;

    .line 52
    iget-object v1, v5, Lcom/android/tools/r8/graph/f;->a:Lcom/android/tools/r8/graph/g;

    .line 53
    check-cast v1, Lcom/android/tools/r8/graph/L4;

    invoke-virtual {v3, v1}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v1

    .line 54
    new-instance v3, Lcom/android/tools/r8/internal/cy;

    invoke-direct {v3, p2}, Lcom/android/tools/r8/internal/cy;-><init>(Lcom/android/tools/r8/graph/u1;)V

    .line 55
    iput-object p0, v3, Lcom/android/tools/r8/internal/cy;->b:Lcom/android/tools/r8/graph/A2;

    const/4 p2, 0x0

    .line 56
    iput-boolean p2, v3, Lcom/android/tools/r8/internal/cy;->e:Z

    .line 57
    iput-boolean v4, v3, Lcom/android/tools/r8/internal/cy;->d:Z

    .line 58
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/A2;

    .line 59
    iput-object p2, v3, Lcom/android/tools/r8/internal/cy;->c:Lcom/android/tools/r8/graph/A2;

    .line 60
    sget-object p2, Lcom/android/tools/r8/internal/ay;->e:Lcom/android/tools/r8/internal/ay;

    iput-object p2, v3, Lcom/android/tools/r8/internal/cy;->f:Lcom/android/tools/r8/internal/ay;

    .line 61
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p2, v3, Lcom/android/tools/r8/internal/cy;->g:Ljava/lang/Boolean;

    .line 62
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/cy;->a()Lcom/android/tools/r8/graph/G;

    move-result-object p2

    .line 63
    invoke-virtual {v1, p2}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/i0;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object p2

    .line 64
    invoke-virtual {p2, p0}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object p0

    .line 65
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/j1;

    .line 66
    iget-object p2, p2, Lcom/android/tools/r8/graph/h1;->e:Lcom/android/tools/r8/androidapi/f;

    .line 67
    iput-object p2, p0, Lcom/android/tools/r8/graph/j1$a;->l:Lcom/android/tools/r8/androidapi/f;

    .line 68
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    .line 69
    iget-object p1, p1, Lcom/android/tools/r8/graph/j1;->o:Lcom/android/tools/r8/androidapi/f;

    .line 70
    iput-object p1, p0, Lcom/android/tools/r8/graph/j1$a;->m:Lcom/android/tools/r8/androidapi/f;

    .line 71
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object p0

    invoke-direct {v0, v2, p0}, Lcom/android/tools/r8/graph/H5;-><init>(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/j1;)V

    return-object v0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/H5;ZLcom/android/tools/r8/internal/cy;)V
    .locals 0

    .line 72
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p2, p0, p1}, Lcom/android/tools/r8/internal/cy;->a(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/internal/cy;

    return-void
.end method

.method public static b(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/H5;
    .locals 7

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/internal/O1;->a:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object v1

    const/high16 v2, 0x10000

    .line 3
    iget v1, v1, Lcom/android/tools/r8/graph/g;->c:I

    .line 4
    invoke-static {v1, v2}, Lcom/android/tools/r8/graph/g;->d(II)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 5
    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    .line 6
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->h()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 7
    :cond_5
    :goto_2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v0

    .line 8
    new-instance v1, Lcom/android/tools/r8/graph/H5;

    .line 9
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v2

    .line 10
    sget-object v3, Lcom/android/tools/r8/graph/j1;->u:[Lcom/android/tools/r8/graph/j1;

    .line 11
    new-instance v3, Lcom/android/tools/r8/graph/j1$a;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcom/android/tools/r8/graph/j1$a;-><init>(Z)V

    .line 12
    new-instance v5, Lcom/android/tools/r8/graph/K4;

    invoke-direct {v5}, Lcom/android/tools/r8/graph/K4;-><init>()V

    .line 13
    iget-object v6, v5, Lcom/android/tools/r8/graph/f;->a:Lcom/android/tools/r8/graph/g;

    check-cast v6, Lcom/android/tools/r8/graph/L4;

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/L4;->N()Lcom/android/tools/r8/graph/L4;

    .line 14
    invoke-virtual {v5, v0}, Lcom/android/tools/r8/graph/f;->a(Z)Lcom/android/tools/r8/graph/f;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/K4;

    .line 15
    iget-object v6, v5, Lcom/android/tools/r8/graph/f;->a:Lcom/android/tools/r8/graph/g;

    .line 16
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/g;->y()V

    .line 17
    iget-object v6, v5, Lcom/android/tools/r8/graph/f;->a:Lcom/android/tools/r8/graph/g;

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/g;->z()Lcom/android/tools/r8/graph/g;

    .line 18
    iget-object v5, v5, Lcom/android/tools/r8/graph/f;->a:Lcom/android/tools/r8/graph/g;

    .line 19
    check-cast v5, Lcom/android/tools/r8/graph/L4;

    .line 20
    invoke-virtual {v3, v5}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v3

    .line 21
    new-instance v5, Lcom/android/tools/r8/internal/cy;

    invoke-direct {v5, p2}, Lcom/android/tools/r8/internal/cy;-><init>(Lcom/android/tools/r8/graph/u1;)V

    .line 22
    iput-object p0, v5, Lcom/android/tools/r8/internal/cy;->b:Lcom/android/tools/r8/graph/A2;

    .line 23
    iput-boolean v4, v5, Lcom/android/tools/r8/internal/cy;->e:Z

    .line 24
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result p2

    new-instance v4, Lcom/android/tools/r8/internal/cP0;

    invoke-direct {v4, p1, v0}, Lcom/android/tools/r8/internal/cP0;-><init>(Lcom/android/tools/r8/graph/H5;Z)V

    new-instance v6, Lcom/android/tools/r8/internal/dP0;

    invoke-direct {v6, p1, v0}, Lcom/android/tools/r8/internal/dP0;-><init>(Lcom/android/tools/r8/graph/H5;Z)V

    .line 25
    invoke-virtual {v5, p2, v4, v6}, Lcom/android/tools/r8/internal/cy;->a(ZLjava/util/function/Consumer;Ljava/util/function/Consumer;)Lcom/android/tools/r8/internal/cy;

    move-result-object p2

    .line 26
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/cy;->a()Lcom/android/tools/r8/graph/G;

    move-result-object p2

    .line 27
    invoke-virtual {v3, p2}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/i0;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object p2

    .line 28
    invoke-virtual {p2, p0}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object p0

    .line 29
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/j1;

    .line 30
    iget-object p2, p2, Lcom/android/tools/r8/graph/h1;->e:Lcom/android/tools/r8/androidapi/f;

    .line 31
    iput-object p2, p0, Lcom/android/tools/r8/graph/j1$a;->l:Lcom/android/tools/r8/androidapi/f;

    .line 32
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    .line 33
    iget-object p1, p1, Lcom/android/tools/r8/graph/h1;->e:Lcom/android/tools/r8/androidapi/f;

    .line 34
    iput-object p1, p0, Lcom/android/tools/r8/graph/j1$a;->m:Lcom/android/tools/r8/androidapi/f;

    .line 35
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Lcom/android/tools/r8/graph/H5;-><init>(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/j1;)V

    return-object v1
.end method

.method public static b(Lcom/android/tools/r8/graph/H5;ZLcom/android/tools/r8/internal/cy;)V
    .locals 0

    .line 36
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/A2;

    .line 37
    iput-object p0, p2, Lcom/android/tools/r8/internal/cy;->c:Lcom/android/tools/r8/graph/A2;

    .line 38
    sget-object p0, Lcom/android/tools/r8/internal/ay;->e:Lcom/android/tools/r8/internal/ay;

    iput-object p0, p2, Lcom/android/tools/r8/internal/cy;->f:Lcom/android/tools/r8/internal/ay;

    .line 39
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    iput-object p0, p2, Lcom/android/tools/r8/internal/cy;->g:Ljava/lang/Boolean;

    return-void
.end method
