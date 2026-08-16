.class public final Lcom/android/tools/r8/internal/cR;
.super Lcom/android/tools/r8/internal/bR;
.source "SourceFile"


# static fields
.field public static final synthetic h:Z = true


# instance fields
.field public final f:Lcom/android/tools/r8/graph/A2;

.field public final g:Lcom/android/tools/r8/graph/y;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/y;)V
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/kK;->h:Lcom/android/tools/r8/internal/kK;

    invoke-direct {p0, p3, v0, p2}, Lcom/android/tools/r8/internal/bR;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;Z)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/cR;->f:Lcom/android/tools/r8/graph/A2;

    iput-object p4, p0, Lcom/android/tools/r8/internal/cR;->g:Lcom/android/tools/r8/graph/y;

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/graph/A2;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/android/tools/r8/internal/cR;->f:Lcom/android/tools/r8/graph/A2;

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/Zx;Lcom/android/tools/r8/internal/rr0;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/H5;
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/android/tools/r8/internal/cR;->g:Lcom/android/tools/r8/graph/y;

    iget-object p3, p0, Lcom/android/tools/r8/internal/cR;->f:Lcom/android/tools/r8/graph/A2;

    iget-object p3, p3, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p2, p3}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object p2

    .line 2
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->b0()Lcom/android/tools/r8/graph/N4;

    move-result-object p3

    iget-object v0, p0, Lcom/android/tools/r8/internal/cR;->f:Lcom/android/tools/r8/graph/A2;

    new-instance v1, Lcom/android/tools/r8/internal/l71;

    invoke-direct {v1, p0, p1}, Lcom/android/tools/r8/internal/l71;-><init>(Lcom/android/tools/r8/internal/cR;Lcom/android/tools/r8/internal/Zx;)V

    .line 3
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    sget-object p1, Lcom/android/tools/r8/graph/j1;->v:Lcom/android/tools/r8/graph/j1;

    iput-object p1, p3, Lcom/android/tools/r8/graph/N4;->c:Lcom/android/tools/r8/graph/j1;

    .line 5
    iget-object p1, p3, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/graph/O4;->b(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/Jy;)Lcom/android/tools/r8/graph/j1;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 6
    sget-boolean p3, Lcom/android/tools/r8/internal/cR;->h:Z

    if-nez p3, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/cR;->g:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    .line 7
    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->l:Lcom/android/tools/r8/ProgramConsumer;

    .line 8
    instance-of v0, v0, Lcom/android/tools/r8/ClassFileConsumer;

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/i0;->t0()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez p3, :cond_3

    .line 10
    iget-object p3, p0, Lcom/android/tools/r8/internal/cR;->g:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/nJ;->P()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 11
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/i0;->v0()Z

    move-result p3

    if-nez p3, :cond_3

    iget-object p3, p0, Lcom/android/tools/r8/internal/cR;->g:Lcom/android/tools/r8/graph/y;

    .line 12
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p3

    iget-object p3, p3, Lcom/android/tools/r8/internal/nJ;->E1:Lcom/android/tools/r8/internal/qb0;

    if-eqz p3, :cond_2

    goto :goto_1

    .line 13
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 14
    :cond_3
    :goto_1
    new-instance p3, Lcom/android/tools/r8/graph/H5;

    invoke-direct {p3, p2, p1}, Lcom/android/tools/r8/graph/H5;-><init>(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/j1;)V

    return-object p3

    .line 15
    :cond_4
    iget-object p1, p0, Lcom/android/tools/r8/internal/hR;->a:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/graph/H2;->e(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    .line 16
    sget-boolean p2, Lcom/android/tools/r8/internal/cR;->h:Z

    if-nez p2, :cond_6

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_6
    :goto_2
    if-nez p2, :cond_8

    .line 17
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/j1;->n1()Z

    move-result p2

    if-eqz p2, :cond_7

    goto :goto_3

    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_8
    :goto_3
    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Zx;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/j1;
    .locals 9

    .line 18
    sget-boolean v0, Lcom/android/tools/r8/internal/cR;->h:Z

    if-nez v0, :cond_2

    .line 19
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 20
    iget-object v0, p2, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->h()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p2, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    const/high16 v1, 0x10000

    .line 21
    iget v0, v0, Lcom/android/tools/r8/graph/g;->c:I

    .line 22
    invoke-static {v0, v1}, Lcom/android/tools/r8/graph/g;->d(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23
    :cond_0
    iget-object v0, p2, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 24
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 25
    :cond_2
    :goto_0
    iget-object v0, p2, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    .line 26
    new-instance v1, Lcom/android/tools/r8/graph/L4;

    .line 27
    iget v2, v0, Lcom/android/tools/r8/graph/g;->b:I

    .line 28
    iget v0, v0, Lcom/android/tools/r8/graph/g;->c:I

    invoke-direct {v1, v2, v0}, Lcom/android/tools/r8/graph/L4;-><init>(II)V

    .line 29
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/g;->A()V

    .line 30
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v3

    .line 31
    iget-object v0, p0, Lcom/android/tools/r8/internal/cR;->g:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v8

    .line 32
    new-instance v0, Lcom/android/tools/r8/graph/j1$a;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lcom/android/tools/r8/graph/j1$a;-><init>(Z)V

    .line 33
    iget-object v2, p0, Lcom/android/tools/r8/internal/hR;->a:Lcom/android/tools/r8/graph/A2;

    .line 34
    invoke-virtual {v0, v2}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 35
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 36
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/j1;->S0()Lcom/android/tools/r8/graph/H3$g;

    move-result-object v1

    .line 37
    iput-object v1, v0, Lcom/android/tools/r8/graph/j1$a;->d:Lcom/android/tools/r8/graph/H3$g;

    .line 38
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/b1;->k0()Lcom/android/tools/r8/graph/u0;

    move-result-object v1

    .line 39
    iput-object v1, v0, Lcom/android/tools/r8/graph/j1$a;->e:Lcom/android/tools/r8/graph/u0;

    .line 40
    iget-object v1, p2, Lcom/android/tools/r8/graph/j1;->i:Lcom/android/tools/r8/graph/z5;

    .line 41
    iput-object v1, v0, Lcom/android/tools/r8/graph/j1$a;->g:Lcom/android/tools/r8/graph/z5;

    .line 42
    iget-object v4, p0, Lcom/android/tools/r8/internal/hR;->a:Lcom/android/tools/r8/graph/A2;

    .line 43
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/tools/r8/graph/A2;

    .line 44
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h1;->F0()Z

    move-result v7

    const/4 v5, 0x1

    .line 45
    invoke-virtual/range {v3 .. v8}, Lcom/android/tools/r8/graph/i0;->a(Lcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/i0;

    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/i0;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 47
    iget-object v1, p2, Lcom/android/tools/r8/graph/h1;->e:Lcom/android/tools/r8/androidapi/f;

    .line 48
    iput-object v1, v0, Lcom/android/tools/r8/graph/j1$a;->l:Lcom/android/tools/r8/androidapi/f;

    .line 49
    iget-object v1, p2, Lcom/android/tools/r8/graph/j1;->o:Lcom/android/tools/r8/androidapi/f;

    .line 50
    iput-object v1, v0, Lcom/android/tools/r8/graph/j1$a;->m:Lcom/android/tools/r8/androidapi/f;

    .line 51
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object v0

    .line 52
    iget-object v1, p0, Lcom/android/tools/r8/internal/cR;->g:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, v1, p2}, Lcom/android/tools/r8/graph/j1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j1;)V

    .line 53
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/A2;

    iget-object v1, p0, Lcom/android/tools/r8/internal/hR;->a:Lcom/android/tools/r8/graph/A2;

    .line 54
    invoke-interface {p1, p2, v1}, Lcom/android/tools/r8/internal/Zx;->b(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)V

    return-object v0
.end method
