.class public final Lcom/android/tools/r8/internal/kE;
.super Lcom/android/tools/r8/internal/te;
.source "SourceFile"


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public final e:Lcom/android/tools/r8/graph/u1;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/te;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/kE;->e:Lcom/android/tools/r8/graph/u1;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/tools/r8/synthesis/S;->U:Lcom/android/tools/r8/synthesis/S$b;

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/tZ;Lcom/android/tools/r8/internal/zE;)Z
    .locals 0

    .line 1
    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic b(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/android/tools/r8/synthesis/S;->U:Lcom/android/tools/r8/synthesis/S$b;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/i0;
    .locals 3

    .line 74
    iget-object v0, p0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    .line 75
    new-instance v1, Lcom/android/tools/r8/internal/cy;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/cy;-><init>(Lcom/android/tools/r8/graph/u1;)V

    .line 76
    sget-boolean v2, Lcom/android/tools/r8/internal/cy;->l:Z

    if-nez v2, :cond_1

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/A2;->b(Lcom/android/tools/r8/graph/u1;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 77
    :cond_1
    :goto_0
    iput-object p1, v1, Lcom/android/tools/r8/internal/cy;->c:Lcom/android/tools/r8/graph/A2;

    const/4 p1, 0x1

    .line 78
    iput-boolean p1, v1, Lcom/android/tools/r8/internal/cy;->j:Z

    .line 79
    sget-object v0, Lcom/android/tools/r8/internal/ay;->e:Lcom/android/tools/r8/internal/ay;

    iput-object v0, v1, Lcom/android/tools/r8/internal/cy;->f:Lcom/android/tools/r8/internal/ay;

    .line 80
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, v1, Lcom/android/tools/r8/internal/cy;->g:Ljava/lang/Boolean;

    .line 81
    iput-object p2, v1, Lcom/android/tools/r8/internal/cy;->b:Lcom/android/tools/r8/graph/A2;

    .line 82
    iput-boolean p1, v1, Lcom/android/tools/r8/internal/cy;->e:Z

    .line 83
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/cy;->a()Lcom/android/tools/r8/graph/G;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/i0;
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    .line 38
    new-instance v1, Lcom/android/tools/r8/internal/uZ;

    invoke-direct {v1, v0, p2, p1}, Lcom/android/tools/r8/internal/uZ;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)V

    .line 39
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/uZ;->b()Lcom/android/tools/r8/graph/G;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/androidapi/f;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/Df;)Lcom/android/tools/r8/graph/j1;
    .locals 6

    .line 40
    iget-object v0, p0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    .line 41
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    .line 42
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/A2;->x0()Lcom/android/tools/r8/graph/O2;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/O2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v0

    .line 43
    iget-object v1, p0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    .line 44
    iget-object v1, v1, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 45
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v1

    .line 46
    new-instance v2, Lcom/android/tools/r8/internal/xg1;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/xg1;-><init>()V

    .line 47
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/Df;->a()Lcom/android/tools/r8/internal/Gf;

    move-result-object v3

    iget-object v4, p0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    new-instance v5, Lcom/android/tools/r8/internal/yg1;

    invoke-direct {v5, p0, p1, v0, p2}, Lcom/android/tools/r8/internal/yg1;-><init>(Lcom/android/tools/r8/internal/kE;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/androidapi/f;)V

    .line 48
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/tools/r8/synthesis/J;->b(Lcom/android/tools/r8/synthesis/I;Lcom/android/tools/r8/internal/Gf;Lcom/android/tools/r8/graph/y;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    .line 49
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/dX;->d()Lcom/android/tools/r8/internal/fX;

    move-result-object p2

    .line 50
    iget-object p4, p4, Lcom/android/tools/r8/internal/Df;->c:Lcom/android/tools/r8/graph/H5;

    .line 51
    invoke-interface {p2, p1, p4}, Lcom/android/tools/r8/internal/lE;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    .line 52
    invoke-virtual {p3, p1}, Lcom/android/tools/r8/internal/dX;->b(Lcom/android/tools/r8/graph/H5;)V

    .line 53
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/androidapi/f;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/Df;)Lcom/android/tools/r8/graph/j1;
    .locals 6

    .line 25
    iget-object v0, p0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/kE;->e:Lcom/android/tools/r8/graph/u1;

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v0

    .line 26
    iget-object v1, p0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    .line 27
    iget-object v1, v1, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 28
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v1

    .line 29
    new-instance v2, Lcom/android/tools/r8/internal/Ag1;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/Ag1;-><init>()V

    .line 30
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/Df;->a()Lcom/android/tools/r8/internal/Gf;

    move-result-object v3

    iget-object v4, p0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    new-instance v5, Lcom/android/tools/r8/internal/Bg1;

    invoke-direct {v5, p0, v0, p2, p1}, Lcom/android/tools/r8/internal/Bg1;-><init>(Lcom/android/tools/r8/internal/kE;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/androidapi/f;Lcom/android/tools/r8/graph/M2;)V

    .line 31
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/tools/r8/synthesis/J;->b(Lcom/android/tools/r8/synthesis/I;Lcom/android/tools/r8/internal/Gf;Lcom/android/tools/r8/graph/y;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    .line 32
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/dX;->d()Lcom/android/tools/r8/internal/fX;

    move-result-object p2

    .line 33
    iget-object p4, p4, Lcom/android/tools/r8/internal/Df;->c:Lcom/android/tools/r8/graph/H5;

    .line 34
    invoke-interface {p2, p1, p4}, Lcom/android/tools/r8/internal/lE;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    .line 35
    invoke-virtual {p3, p1}, Lcom/android/tools/r8/internal/dX;->b(Lcom/android/tools/r8/graph/H5;)V

    .line 36
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    return-object p1
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .line 91
    const-string v0, "InstanceInitializerOutliner"

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/androidapi/f;Lcom/android/tools/r8/synthesis/N;)V
    .locals 3

    .line 55
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    .line 56
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    invoke-static {v0, v2, v1}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object v0

    .line 59
    sget-boolean v1, Lcom/android/tools/r8/internal/xt;->a:Z

    .line 60
    new-instance v1, Lcom/android/tools/r8/internal/kv;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/kv;-><init>(Lcom/android/tools/r8/internal/de;)V

    const/16 v0, 0x1009

    const/4 v2, 0x0

    .line 61
    invoke-static {v0, v2}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v0

    .line 62
    iput-object v0, p4, Lcom/android/tools/r8/synthesis/N;->i:Lcom/android/tools/r8/graph/L4;

    .line 63
    iput-object p2, p4, Lcom/android/tools/r8/synthesis/N;->e:Lcom/android/tools/r8/graph/I2;

    .line 64
    iget-object p2, p0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    .line 65
    iget-object p2, p2, Lcom/android/tools/r8/graph/y;->T:Lcom/android/tools/r8/androidapi/f;

    .line 66
    iput-object p2, p4, Lcom/android/tools/r8/synthesis/N;->m:Lcom/android/tools/r8/androidapi/f;

    .line 67
    iput-object p3, p4, Lcom/android/tools/r8/synthesis/N;->n:Lcom/android/tools/r8/androidapi/f;

    .line 68
    new-instance p2, Lcom/android/tools/r8/internal/wg1;

    invoke-direct {p2, p0, p1}, Lcom/android/tools/r8/internal/wg1;-><init>(Lcom/android/tools/r8/internal/kE;Lcom/android/tools/r8/graph/A2;)V

    .line 69
    iput-object p2, p4, Lcom/android/tools/r8/synthesis/N;->g:Lcom/android/tools/r8/synthesis/M;

    .line 70
    sget-object p1, Lcom/android/tools/r8/internal/Fj;->b:Lcom/android/tools/r8/internal/Fj;

    .line 71
    new-instance p1, Lcom/android/tools/r8/internal/WY;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/WY;-><init>()V

    .line 72
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/WY;->a(Lcom/android/tools/r8/internal/xt;)Lcom/android/tools/r8/internal/WY;

    move-result-object p1

    .line 73
    iput-object p1, p4, Lcom/android/tools/r8/synthesis/N;->o:Lcom/android/tools/r8/internal/TW;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/androidapi/f;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/synthesis/N;)V
    .locals 2

    const/16 v0, 0x1009

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v0

    .line 3
    iput-object v0, p4, Lcom/android/tools/r8/synthesis/N;->i:Lcom/android/tools/r8/graph/L4;

    .line 4
    iput-object p1, p4, Lcom/android/tools/r8/synthesis/N;->e:Lcom/android/tools/r8/graph/I2;

    .line 5
    iget-object p1, p0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    .line 6
    iget-object p1, p1, Lcom/android/tools/r8/graph/y;->T:Lcom/android/tools/r8/androidapi/f;

    .line 7
    iput-object p1, p4, Lcom/android/tools/r8/synthesis/N;->m:Lcom/android/tools/r8/androidapi/f;

    .line 8
    iput-object p2, p4, Lcom/android/tools/r8/synthesis/N;->n:Lcom/android/tools/r8/androidapi/f;

    .line 9
    new-instance p1, Lcom/android/tools/r8/internal/zg1;

    invoke-direct {p1, p0, p3}, Lcom/android/tools/r8/internal/zg1;-><init>(Lcom/android/tools/r8/internal/kE;Lcom/android/tools/r8/graph/M2;)V

    .line 10
    iput-object p1, p4, Lcom/android/tools/r8/synthesis/N;->g:Lcom/android/tools/r8/synthesis/M;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/zE;)Z
    .locals 2

    .line 21
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->v1()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 22
    instance-of v0, p2, Lcom/android/tools/r8/internal/cj;

    if-nez v0, :cond_0

    return v1

    .line 23
    :cond_0
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object p2

    .line 24
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/B60;->o()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/B60;->f()I

    move-result p1

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/B60;->f()I

    move-result p2

    if-eq p1, p2, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/dX;)Z
    .locals 3

    .line 84
    iget-object v0, p0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->L0:Lcom/android/tools/r8/internal/nJ$f;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ$f;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    .line 85
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->a()Lcom/android/tools/r8/internal/H2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/H2;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    .line 86
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->z()Lcom/android/tools/r8/internal/C2;

    move-result-object v0

    sget-object v2, Lcom/android/tools/r8/internal/C2;->w:Lcom/android/tools/r8/internal/C2;

    invoke-interface {v0, v2}, Lcom/android/tools/r8/internal/C40;->d(Lcom/android/tools/r8/internal/C40;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    instance-of v0, p2, Lcom/android/tools/r8/internal/Ki;

    if-nez v0, :cond_1

    .line 89
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/dX;->f()Z

    move-result p2

    if-nez p2, :cond_1

    return v1

    .line 90
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->F0()Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_0
    return v1
.end method

.method public final a(Lcom/android/tools/r8/internal/hB;Lcom/android/tools/r8/internal/tZ;Lcom/android/tools/r8/internal/xw0;)Z
    .locals 4

    .line 11
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/zE;->i0()Lcom/android/tools/r8/internal/gK;

    move-result-object p3

    .line 12
    sget-boolean v0, Lcom/android/tools/r8/internal/kE;->f:Z

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 13
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v1

    .line 14
    new-instance v2, Lcom/android/tools/r8/internal/ug1;

    invoke-direct {v2, p0, v1}, Lcom/android/tools/r8/internal/ug1;-><init>(Lcom/android/tools/r8/internal/kE;Lcom/android/tools/r8/internal/B60;)V

    .line 15
    invoke-interface {p1, v2}, Lcom/android/tools/r8/internal/GZ;->a(Ljava/util/function/Predicate;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/zE;

    .line 16
    new-instance v3, Lcom/android/tools/r8/internal/vg1;

    invoke-direct {v3, p2}, Lcom/android/tools/r8/internal/vg1;-><init>(Lcom/android/tools/r8/internal/tZ;)V

    invoke-interface {p1, v3}, Lcom/android/tools/r8/internal/s70;->d(Ljava/util/function/Predicate;)V

    .line 17
    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/zE;

    if-nez v0, :cond_3

    if-ne p1, p2, :cond_2

    goto :goto_1

    .line 18
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-ne v2, p3, :cond_5

    .line 19
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object p1

    .line 20
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/B60;->o()Z

    move-result p2

    if-nez p2, :cond_4

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/B60;->f()I

    move-result p2

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/B60;->f()I

    move-result p1

    if-eq p2, p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 p1, 0x1

    return p1

    :cond_5
    :goto_2
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/Df;)Lcom/android/tools/r8/internal/we;
    .locals 9

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/internal/kE;->f:Z

    if-nez v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    instance-of v0, p2, Lcom/android/tools/r8/internal/P60;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 4
    :cond_1
    :goto_0
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 5
    iget-object v1, p0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    .line 6
    iget-object v1, v1, Lcom/android/tools/r8/graph/y;->T:Lcom/android/tools/r8/androidapi/f;

    .line 7
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->p()Lcom/android/tools/r8/internal/hB;

    move-result-object v2

    .line 8
    :goto_1
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_8

    .line 9
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/zE;

    .line 10
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->c0()Lcom/android/tools/r8/internal/QJ;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_1

    .line 11
    :cond_2
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v6

    .line 12
    iget-object v7, p0, Lcom/android/tools/r8/internal/kE;->e:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {v6, v7}, Lcom/android/tools/r8/graph/A2;->b(Lcom/android/tools/r8/graph/u1;)Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_1

    .line 13
    :cond_3
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->W0()Lcom/android/tools/r8/internal/xw0;

    move-result-object v7

    .line 14
    invoke-interface {v7}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_1

    .line 15
    :cond_4
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/zE;->w0()Lcom/android/tools/r8/internal/tZ;

    move-result-object v7

    if-nez v7, :cond_5

    goto :goto_1

    .line 16
    :cond_5
    iget-object v8, p0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    .line 17
    iget-object v8, v8, Lcom/android/tools/r8/graph/y;->S:Lcom/android/tools/r8/androidapi/a;

    .line 18
    invoke-virtual {v8, v6, v1}, Lcom/android/tools/r8/androidapi/a;->a(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/androidapi/f;)Lcom/android/tools/r8/androidapi/f;

    move-result-object v6

    .line 19
    invoke-interface {v1, v6}, Lcom/android/tools/r8/androidapi/f;->d(Lcom/android/tools/r8/androidapi/f;)Z

    move-result v8

    if-eqz v8, :cond_6

    goto :goto_1

    .line 20
    :cond_6
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v8

    invoke-static {v8, v6}, Lcom/android/tools/r8/internal/G2;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/androidapi/f;)Z

    move-result v8

    if-eqz v8, :cond_7

    goto :goto_1

    .line 21
    :cond_7
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    .line 22
    invoke-virtual {p0, v5, v6, p2, p3}, Lcom/android/tools/r8/internal/kE;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/androidapi/f;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/Df;)Lcom/android/tools/r8/graph/j1;

    move-result-object v5

    .line 23
    iget-object v6, v3, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 24
    sget-boolean v8, Lcom/android/tools/r8/internal/gK;->o:Z

    .line 25
    new-instance v8, Lcom/android/tools/r8/internal/fK;

    invoke-direct {v8}, Lcom/android/tools/r8/internal/fK;-><init>()V

    .line 26
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/A2;

    .line 27
    iput-object v5, v8, Lcom/android/tools/r8/internal/UJ;->d:Lcom/android/tools/r8/graph/A2;

    .line 28
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v3

    .line 29
    iput-object v3, v8, Lcom/android/tools/r8/internal/sE;->b:Lcom/android/tools/r8/internal/B60;

    .line 30
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/zE;->a()Lcom/android/tools/r8/internal/pu0;

    move-result-object v3

    .line 31
    invoke-interface {p1, v3, v4}, Lcom/android/tools/r8/internal/zw0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    .line 32
    iput-object v3, v8, Lcom/android/tools/r8/internal/sE;->a:Lcom/android/tools/r8/internal/xw0;

    .line 33
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x1

    invoke-interface {v6, v5, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v8, v3}, Lcom/android/tools/r8/internal/UJ;->a(Ljava/util/List;)Lcom/android/tools/r8/internal/UJ;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/fK;

    .line 34
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/fK;->c()Lcom/android/tools/r8/internal/gK;

    move-result-object v3

    .line 35
    invoke-interface {v2, v3, v4}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    .line 36
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    invoke-virtual {v0, v7, v3}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 37
    :cond_8
    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 38
    sget-object p1, Lcom/android/tools/r8/internal/we;->a:Lcom/android/tools/r8/internal/ve;

    return-object p1

    .line 39
    :cond_9
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->p()Lcom/android/tools/r8/internal/hB;

    move-result-object v2

    .line 40
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v3

    .line 41
    :goto_2
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 42
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/zE;

    .line 43
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->c2()Z

    move-result v6

    if-nez v6, :cond_a

    goto :goto_2

    .line 44
    :cond_a
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->w0()Lcom/android/tools/r8/internal/tZ;

    move-result-object v6

    .line 45
    invoke-virtual {v0, v6}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/xw0;

    if-nez v7, :cond_b

    goto :goto_2

    .line 46
    :cond_b
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/android/tools/r8/internal/xw0;->f(Lcom/android/tools/r8/internal/xw0;)V

    .line 47
    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 48
    invoke-virtual {p0, v2, v6, v7}, Lcom/android/tools/r8/internal/kE;->a(Lcom/android/tools/r8/internal/hB;Lcom/android/tools/r8/internal/tZ;Lcom/android/tools/r8/internal/xw0;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 49
    invoke-interface {v2}, Lcom/android/tools/r8/internal/EE;->i()V

    goto :goto_2

    .line 50
    :cond_c
    iget-object v7, p0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    .line 51
    iget-object v7, v7, Lcom/android/tools/r8/graph/y;->S:Lcom/android/tools/r8/androidapi/a;

    .line 52
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/tZ;->u2()Lcom/android/tools/r8/graph/M2;

    move-result-object v8

    invoke-virtual {v7, v8, v1}, Lcom/android/tools/r8/androidapi/a;->a(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/androidapi/f;)Lcom/android/tools/r8/androidapi/f;

    move-result-object v7

    .line 53
    sget-boolean v8, Lcom/android/tools/r8/internal/kE;->f:Z

    if-nez v8, :cond_e

    invoke-interface {v7}, Lcom/android/tools/r8/androidapi/f;->q()Z

    move-result v8

    if-eqz v8, :cond_d

    goto :goto_3

    :cond_d
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 54
    :cond_e
    :goto_3
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/tZ;->u2()Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    .line 55
    invoke-virtual {p0, v6, v7, p2, p3}, Lcom/android/tools/r8/internal/kE;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/androidapi/f;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/Df;)Lcom/android/tools/r8/graph/j1;

    move-result-object v6

    .line 56
    sget-boolean v7, Lcom/android/tools/r8/internal/gK;->o:Z

    .line 57
    new-instance v7, Lcom/android/tools/r8/internal/fK;

    invoke-direct {v7}, Lcom/android/tools/r8/internal/fK;-><init>()V

    .line 58
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/graph/A2;

    .line 59
    iput-object v6, v7, Lcom/android/tools/r8/internal/UJ;->d:Lcom/android/tools/r8/graph/A2;

    .line 60
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v5

    .line 61
    iput-object v5, v7, Lcom/android/tools/r8/internal/sE;->b:Lcom/android/tools/r8/internal/B60;

    .line 62
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/fK;->c()Lcom/android/tools/r8/internal/gK;

    move-result-object v5

    .line 63
    invoke-interface {v2, v5, v4}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    goto :goto_2

    .line 64
    :cond_f
    sget-boolean p2, Lcom/android/tools/r8/internal/kE;->f:Z

    if-nez p2, :cond_11

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_10

    goto :goto_4

    :cond_10
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 65
    :cond_11
    :goto_4
    new-instance p2, Lcom/android/tools/r8/internal/lu0;

    iget-object p3, p0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    const/4 v0, 0x0

    .line 66
    invoke-direct {p2, p3, p1, v0}, Lcom/android/tools/r8/internal/lu0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Z)V

    const/4 p3, 0x2

    .line 67
    invoke-virtual {p2, v3, p3}, Lcom/android/tools/r8/internal/lu0;->a(Ljava/lang/Iterable;I)V

    .line 68
    iget-object p2, p0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result p2

    if-eqz p2, :cond_1d

    .line 69
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object p2

    .line 70
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/j1;

    .line 71
    iget-object v0, p3, Lcom/android/tools/r8/graph/j1;->o:Lcom/android/tools/r8/androidapi/f;

    .line 72
    invoke-interface {v0}, Lcom/android/tools/r8/androidapi/f;->q()Z

    move-result v0

    if-nez v0, :cond_12

    goto/16 :goto_8

    .line 73
    :cond_12
    new-instance v0, Lcom/android/tools/r8/shaking/u;

    iget-object v1, p0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    .line 74
    iget-object v2, v1, Lcom/android/tools/r8/graph/y;->S:Lcom/android/tools/r8/androidapi/a;

    .line 75
    invoke-direct {v0, v1, p2, v2}, Lcom/android/tools/r8/shaking/u;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/androidapi/a;)V

    .line 76
    sget-boolean p2, Lcom/android/tools/r8/internal/fB;->k:Z

    if-nez p2, :cond_14

    .line 77
    iget-object p2, v0, Lcom/android/tools/r8/graph/f6;->c:Lcom/android/tools/r8/internal/Zs0;

    .line 78
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Zs0;->d()Z

    move-result p2

    if-eqz p2, :cond_13

    goto :goto_5

    .line 79
    :cond_13
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 80
    :cond_14
    :goto_5
    iget-object p1, p1, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    .line 81
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_15
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/W5;

    .line 82
    iget-object v1, p2, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    .line 83
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/CE;->c()Lcom/android/tools/r8/internal/Y5;

    move-result-object v1

    :cond_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/zE;

    .line 84
    invoke-virtual {v2, v0}, Lcom/android/tools/r8/internal/zE;->a(Lcom/android/tools/r8/shaking/u;)V

    .line 85
    iget-object v2, v0, Lcom/android/tools/r8/graph/f6;->c:Lcom/android/tools/r8/internal/Zs0;

    .line 86
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Zs0;->c()Z

    move-result v2

    if-eqz v2, :cond_16

    goto :goto_6

    .line 87
    :cond_17
    iget-object p2, p2, Lcom/android/tools/r8/internal/W5;->e:Lcom/android/tools/r8/internal/N8;

    .line 88
    iget-object p2, p2, Lcom/android/tools/r8/internal/N8;->b:Lcom/android/tools/r8/internal/hC;

    .line 89
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_18
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/M2;

    .line 90
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/u;->a(Lcom/android/tools/r8/graph/M2;)V

    .line 91
    iget-object v1, v0, Lcom/android/tools/r8/graph/f6;->c:Lcom/android/tools/r8/internal/Zs0;

    .line 92
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Zs0;->c()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 93
    :cond_19
    :goto_6
    iget-object p2, v0, Lcom/android/tools/r8/graph/f6;->c:Lcom/android/tools/r8/internal/Zs0;

    .line 94
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Zs0;->c()Z

    move-result p2

    if-eqz p2, :cond_15

    .line 95
    :cond_1a
    iget-object p1, v0, Lcom/android/tools/r8/shaking/u;->h:Lcom/android/tools/r8/androidapi/f;

    .line 96
    sget-boolean p2, Lcom/android/tools/r8/internal/kE;->f:Z

    if-nez p2, :cond_1c

    invoke-interface {p1}, Lcom/android/tools/r8/androidapi/f;->q()Z

    move-result p2

    if-eqz p2, :cond_1b

    goto :goto_7

    :cond_1b
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 97
    :cond_1c
    :goto_7
    invoke-virtual {p3, p1}, Lcom/android/tools/r8/graph/j1;->f(Lcom/android/tools/r8/androidapi/f;)V

    .line 98
    :cond_1d
    :goto_8
    sget-object p1, Lcom/android/tools/r8/internal/we;->b:Lcom/android/tools/r8/internal/ve;

    return-object p1
.end method
