.class public Lcom/android/tools/r8/graph/j;
.super Lcom/android/tools/r8/graph/h;
.source "SourceFile"


# static fields
.field public static final synthetic i:Z = true


# instance fields
.field public h:Lcom/android/tools/r8/shaking/u2;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/h;)V
    .locals 6

    .line 3
    invoke-static {}, Lcom/android/tools/r8/internal/Zd;->a()Lcom/android/tools/r8/internal/Zd;

    move-result-object v2

    .line 4
    iget-object v1, p1, Lcom/android/tools/r8/graph/h;->a:Lcom/android/tools/r8/graph/x0;

    iget-object v3, p1, Lcom/android/tools/r8/graph/h;->e:Lcom/android/tools/r8/synthesis/J;

    iget-object v4, p1, Lcom/android/tools/r8/graph/h;->d:Lcom/android/tools/r8/shaking/o2;

    iget-object v5, p1, Lcom/android/tools/r8/graph/h;->f:Lcom/android/tools/r8/internal/U6;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/graph/h;-><init>(Lcom/android/tools/r8/graph/x0;Lcom/android/tools/r8/internal/Zd;Lcom/android/tools/r8/synthesis/J;Lcom/android/tools/r8/shaking/o2;Lcom/android/tools/r8/internal/U6;)V

    .line 5
    new-instance p1, Lcom/android/tools/r8/shaking/u2;

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/tools/r8/shaking/u2;-><init>(Ljava/util/Set;)V

    .line 6
    iput-object p1, p0, Lcom/android/tools/r8/graph/j;->h:Lcom/android/tools/r8/shaking/u2;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/synthesis/b;Lcom/android/tools/r8/internal/Zd;Lcom/android/tools/r8/shaking/o2;Lcom/android/tools/r8/shaking/u2;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p1, p3}, Lcom/android/tools/r8/graph/h;-><init>(Lcom/android/tools/r8/internal/Zd;Lcom/android/tools/r8/synthesis/b;Lcom/android/tools/r8/shaking/o2;)V

    .line 2
    iput-object p4, p0, Lcom/android/tools/r8/graph/j;->h:Lcom/android/tools/r8/shaking/u2;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/x0;Lcom/android/tools/r8/internal/Zd;Lcom/android/tools/r8/shaking/o2;Lcom/android/tools/r8/synthesis/E;)Lcom/android/tools/r8/graph/j;
    .locals 2

    .line 5
    new-instance v0, Lcom/android/tools/r8/graph/j;

    .line 6
    invoke-static {p0, p3}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/graph/x0;Lcom/android/tools/r8/synthesis/E;)Lcom/android/tools/r8/synthesis/b;

    move-result-object p0

    .line 7
    new-instance p3, Lcom/android/tools/r8/shaking/u2;

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v1

    invoke-direct {p3, v1}, Lcom/android/tools/r8/shaking/u2;-><init>(Ljava/util/Set;)V

    .line 8
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/tools/r8/graph/j;-><init>(Lcom/android/tools/r8/synthesis/b;Lcom/android/tools/r8/internal/Zd;Lcom/android/tools/r8/shaking/o2;Lcom/android/tools/r8/shaking/u2;)V

    return-object v0
.end method

.method public static a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/internal/Zs0;
    .locals 0

    .line 34
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    if-ne p1, p3, :cond_0

    .line 35
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 36
    new-instance p1, Lcom/android/tools/r8/internal/Ws0;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/internal/Ws0;-><init>(Ljava/lang/Object;)V

    return-object p1

    :cond_0
    if-nez p2, :cond_1

    .line 37
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 38
    new-instance p1, Lcom/android/tools/r8/internal/Ws0;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/internal/Ws0;-><init>(Ljava/lang/Object;)V

    return-object p1

    .line 39
    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result p0

    if-nez p0, :cond_2

    .line 40
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 41
    new-instance p1, Lcom/android/tools/r8/internal/Ws0;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/internal/Ws0;-><init>(Ljava/lang/Object;)V

    return-object p1

    .line 42
    :cond_2
    sget-object p0, Lcom/android/tools/r8/internal/Ys0;->c:Lcom/android/tools/r8/internal/Xs0;

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/E0;Ljava/lang/Boolean;)Lcom/android/tools/r8/internal/Zs0;
    .locals 0

    if-ne p1, p0, :cond_0

    .line 24
    sget-object p0, Lcom/android/tools/r8/internal/Ws0;->c:Lcom/android/tools/r8/internal/Vs0;

    return-object p0

    :cond_0
    sget-object p0, Lcom/android/tools/r8/internal/Ys0;->c:Lcom/android/tools/r8/internal/Xs0;

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/ft0;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/E0;Ljava/lang/Boolean;)Lcom/android/tools/r8/internal/Zs0;
    .locals 0

    .line 22
    invoke-interface {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/ft0;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 23
    sget-object p0, Lcom/android/tools/r8/internal/Ys0;->c:Lcom/android/tools/r8/internal/Xs0;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/D3;
    .locals 7

    .line 111
    sget-boolean v0, Lcom/android/tools/r8/graph/j;->i:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->c()V

    .line 112
    :cond_0
    new-instance v1, Lcom/android/tools/r8/graph/u3;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/graph/u3;-><init>(Lcom/android/tools/r8/graph/j;)V

    .line 113
    sget-boolean v0, Lcom/android/tools/r8/graph/u3;->b:Z

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 114
    :cond_2
    :goto_0
    sget-boolean v0, Lcom/android/tools/r8/graph/D3;->a:Z

    .line 115
    new-instance v0, Lcom/android/tools/r8/graph/v3;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/v3;-><init>()V

    const/16 v2, 0x8

    .line 116
    invoke-static {v2}, Lcom/android/tools/r8/internal/Al0;->b(I)Ljava/util/Set;

    move-result-object v5

    move-object v2, p1

    move-object v3, p2

    move-object v4, p1

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/tools/r8/graph/u3;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/E0;Ljava/util/Set;Lcom/android/tools/r8/graph/v3;)V

    .line 117
    sget-object p1, Lcom/android/tools/r8/graph/w3;->b:Lcom/android/tools/r8/graph/w3;

    .line 118
    iget-object p2, v0, Lcom/android/tools/r8/graph/v3;->a:Lcom/android/tools/r8/graph/D3;

    if-nez p2, :cond_3

    return-object p1

    :cond_3
    return-object p2
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/D3;
    .locals 0

    .line 108
    sget-boolean p3, Lcom/android/tools/r8/graph/j;->i:Z

    if-nez p3, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->c()V

    :cond_0
    if-nez p3, :cond_1

    .line 109
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->c()V

    .line 110
    :cond_1
    new-instance p3, Lcom/android/tools/r8/graph/u3;

    invoke-direct {p3, p0}, Lcom/android/tools/r8/graph/u3;-><init>(Lcom/android/tools/r8/graph/j;)V

    invoke-virtual {p3, p1, p2}, Lcom/android/tools/r8/graph/u3;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/D3;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/H0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/graph/A2;",
            "Lcom/android/tools/r8/graph/H2;",
            "Lcom/android/tools/r8/graph/y<",
            "+",
            "Lcom/android/tools/r8/graph/j;",
            ">;)",
            "Lcom/android/tools/r8/graph/H0;"
        }
    .end annotation

    .line 81
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/tools/r8/graph/j;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;)Lcom/android/tools/r8/graph/H0;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;)Lcom/android/tools/r8/graph/H0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/graph/A2;",
            "Lcom/android/tools/r8/graph/H2;",
            "Lcom/android/tools/r8/graph/y<",
            "*>;",
            "Lcom/android/tools/r8/graph/j;",
            ")",
            "Lcom/android/tools/r8/graph/H0;"
        }
    .end annotation

    .line 82
    sget-boolean v0, Lcom/android/tools/r8/graph/j;->i:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->c()V

    .line 83
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/j;->f(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object p1

    .line 84
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/tools/r8/graph/Z4;->c(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;)Lcom/android/tools/r8/graph/H0;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/H0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/graph/A2;",
            "Lcom/android/tools/r8/graph/H5;",
            "Lcom/android/tools/r8/graph/y<",
            "+",
            "Lcom/android/tools/r8/graph/j;",
            ">;)",
            "Lcom/android/tools/r8/graph/H0;"
        }
    .end annotation

    .line 85
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j;

    .line 86
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p2

    .line 87
    sget-boolean v1, Lcom/android/tools/r8/graph/j;->i:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->c()V

    .line 88
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/j;->f(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object p1

    .line 89
    invoke-virtual {p1, p2, p3, v0}, Lcom/android/tools/r8/graph/Z4;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;)Lcom/android/tools/r8/graph/H0;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/graph/Z4;
    .locals 2

    .line 92
    sget-boolean v0, Lcom/android/tools/r8/graph/j;->i:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->c()V

    .line 93
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    if-nez v0, :cond_1

    .line 94
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->c()V

    :cond_1
    if-eqz p2, :cond_2

    .line 95
    invoke-virtual {p0, v1, p1}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object p1

    return-object p1

    :cond_2
    if-nez v0, :cond_3

    .line 96
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->c()V

    .line 97
    :cond_3
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    invoke-virtual {p0, v1, p2, p1}, Lcom/android/tools/r8/graph/j;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/Z4;
    .locals 4

    .line 103
    sget-boolean v0, Lcom/android/tools/r8/graph/j;->i:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->c()V

    .line 104
    :cond_0
    new-instance v0, Lcom/android/tools/r8/graph/Ed;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/graph/Ed;-><init>(Lcom/android/tools/r8/graph/j;)V

    .line 105
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    .line 106
    new-instance v2, Lcom/android/tools/r8/graph/U4;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, v3, v3}, Lcom/android/tools/r8/graph/U4;-><init>(Ljava/util/function/Function;Lcom/android/tools/r8/graph/u1;ZZ)V

    .line 107
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/tools/r8/graph/U4;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;
    .locals 1

    .line 90
    sget-boolean v0, Lcom/android/tools/r8/graph/j;->i:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->c()V

    .line 91
    :cond_0
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/Z4;
    .locals 4

    .line 98
    sget-boolean v0, Lcom/android/tools/r8/graph/j;->i:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->c()V

    .line 99
    :cond_0
    new-instance v0, Lcom/android/tools/r8/graph/Ed;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/graph/Ed;-><init>(Lcom/android/tools/r8/graph/j;)V

    .line 100
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    .line 101
    new-instance v2, Lcom/android/tools/r8/graph/U4;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, v3, v3}, Lcom/android/tools/r8/graph/U4;-><init>(Ljava/util/function/Function;Lcom/android/tools/r8/graph/u1;ZZ)V

    .line 102
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/tools/r8/graph/U4;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/kR;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;
    .locals 9

    .line 76
    new-instance v0, Lcom/android/tools/r8/graph/Fd;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/graph/Fd;-><init>(Lcom/android/tools/r8/graph/j;)V

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/tools/r8/graph/U4;->a(Lcom/android/tools/r8/graph/u1;Ljava/util/function/Function;)Lcom/android/tools/r8/graph/U4;

    move-result-object v2

    .line 77
    new-instance v0, Lcom/android/tools/r8/graph/R4;

    iget-object v1, v2, Lcom/android/tools/r8/graph/U4;->a:Ljava/util/function/Function;

    iget-object v3, v2, Lcom/android/tools/r8/graph/U4;->b:Lcom/android/tools/r8/graph/u1;

    invoke-direct {v0, v3, v1}, Lcom/android/tools/r8/graph/R4;-><init>(Lcom/android/tools/r8/graph/u1;Ljava/util/function/Function;)V

    .line 78
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object v3

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object v4

    iget-object p2, v2, Lcom/android/tools/r8/graph/U4;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v7, p2, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    iget-object v8, p1, Lcom/android/tools/r8/internal/kR;->e:Ljava/util/ArrayList;

    const/4 v5, 0x0

    move-object v6, v0

    .line 79
    invoke-virtual/range {v2 .. v8}, Lcom/android/tools/r8/graph/U4;->a(Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/R4;Lcom/android/tools/r8/graph/M2;Ljava/util/List;)V

    const/4 p1, 0x0

    .line 80
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/R4;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/Z4;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Lcom/android/tools/r8/graph/O5;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/graph/h;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/graph/O5;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/graph/j;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Lcom/android/tools/r8/graph/x0;)Lcom/android/tools/r8/graph/h;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/graph/x0;)Lcom/android/tools/r8/graph/j;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Lcom/android/tools/r8/shaking/o2;)Lcom/android/tools/r8/graph/h;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/shaking/o2;)Lcom/android/tools/r8/graph/j;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Lcom/android/tools/r8/synthesis/b;)Lcom/android/tools/r8/graph/h;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/synthesis/b;)Lcom/android/tools/r8/graph/j;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/util/function/Function;)Lcom/android/tools/r8/graph/j;
    .locals 4

    .line 9
    sget-boolean v0, Lcom/android/tools/r8/graph/j;->i:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->c()V

    .line 10
    :cond_0
    new-instance v0, Lcom/android/tools/r8/graph/j;

    .line 11
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->a()Lcom/android/tools/r8/graph/x0;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/x0;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/graph/x0;)Lcom/android/tools/r8/synthesis/b;

    move-result-object p1

    .line 12
    iget-object v1, p0, Lcom/android/tools/r8/graph/h;->b:Lcom/android/tools/r8/internal/Zd;

    .line 13
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->f()Lcom/android/tools/r8/shaking/o2;

    move-result-object v2

    .line 14
    iget-object v3, p0, Lcom/android/tools/r8/graph/j;->h:Lcom/android/tools/r8/shaking/u2;

    .line 15
    invoke-direct {v0, p1, v1, v2, v3}, Lcom/android/tools/r8/graph/j;-><init>(Lcom/android/tools/r8/synthesis/b;Lcom/android/tools/r8/internal/Zd;Lcom/android/tools/r8/shaking/o2;Lcom/android/tools/r8/shaking/u2;)V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/internal/gt0;)Lcom/android/tools/r8/internal/Zs0;
    .locals 2

    :goto_0
    if-eqz p1, :cond_1

    .line 16
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->a1()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 17
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->a1()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/h;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    .line 18
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->a1()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-interface {p2, v1, v0, p1}, Lcom/android/tools/r8/internal/gt0;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Zs0;

    .line 19
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Zs0;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p1

    :cond_0
    move-object p1, v0

    goto :goto_0

    .line 20
    :cond_1
    sget-object p1, Lcom/android/tools/r8/internal/Ys0;->c:Lcom/android/tools/r8/internal/Xs0;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/A2;)Ljava/util/ArrayList;
    .locals 9

    .line 59
    new-instance v0, Lcom/android/tools/r8/graph/Fd;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/graph/Fd;-><init>(Lcom/android/tools/r8/graph/j;)V

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/tools/r8/graph/U4;->a(Lcom/android/tools/r8/graph/u1;Ljava/util/function/Function;)Lcom/android/tools/r8/graph/U4;

    move-result-object v2

    .line 60
    new-instance v0, Lcom/android/tools/r8/graph/R4;

    iget-object v1, v2, Lcom/android/tools/r8/graph/U4;->a:Ljava/util/function/Function;

    iget-object v3, v2, Lcom/android/tools/r8/graph/U4;->b:Lcom/android/tools/r8/graph/u1;

    invoke-direct {v0, v3, v1}, Lcom/android/tools/r8/graph/R4;-><init>(Lcom/android/tools/r8/graph/u1;Ljava/util/function/Function;)V

    .line 61
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object v3

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object v4

    .line 62
    iget-object v7, p1, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    iget-object p2, p1, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    iget-object p2, p2, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    .line 63
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    move-object v5, p1

    move-object v6, v0

    .line 64
    invoke-virtual/range {v2 .. v8}, Lcom/android/tools/r8/graph/U4;->a(Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/R4;Lcom/android/tools/r8/graph/M2;Ljava/util/List;)V

    .line 65
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 66
    iget-object p2, v0, Lcom/android/tools/r8/graph/R4;->a:Ljava/util/LinkedHashMap;

    .line 67
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 68
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j1;

    if-nez v2, :cond_1

    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/j1;->d1()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 71
    :cond_2
    iget-object p2, v0, Lcom/android/tools/r8/graph/R4;->b:Ljava/util/LinkedHashMap;

    .line 72
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 73
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    if-nez v1, :cond_4

    goto :goto_1

    .line 74
    :cond_4
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->d1()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 75
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/ft0;)V
    .locals 1

    .line 21
    new-instance v0, Lcom/android/tools/r8/graph/Id;

    invoke-direct {v0, p2}, Lcom/android/tools/r8/graph/Id;-><init>(Lcom/android/tools/r8/internal/ft0;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/internal/gt0;)Lcom/android/tools/r8/internal/Zs0;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/E0;)Z
    .locals 4

    .line 25
    sget-boolean v0, Lcom/android/tools/r8/graph/j;->i:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    if-eqz p2, :cond_2

    goto :goto_1

    .line 26
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    .line 27
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_2
    if-nez v0, :cond_7

    .line 28
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_7
    :goto_3
    const/4 v0, 0x0

    if-ne p1, p2, :cond_8

    return v0

    .line 29
    :cond_8
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v2

    iget-object v2, v2, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    if-ne v1, v2, :cond_9

    return v0

    .line 30
    :cond_9
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v2

    iget-object v2, v2, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_a

    return v3

    .line 31
    :cond_a
    new-instance v1, Lcom/android/tools/r8/graph/Gd;

    invoke-direct {v1, p2}, Lcom/android/tools/r8/graph/Gd;-><init>(Lcom/android/tools/r8/graph/E0;)V

    .line 32
    invoke-virtual {p0, p1, v1}, Lcom/android/tools/r8/graph/j;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/internal/gt0;)Lcom/android/tools/r8/internal/Zs0;

    move-result-object p1

    .line 33
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Zs0;->c()Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Zs0;->a()Lcom/android/tools/r8/internal/Ws0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ws0;->e()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_b

    return v3

    :cond_b
    return v0
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z
    .locals 2

    .line 43
    sget-boolean v0, Lcom/android/tools/r8/graph/j;->i:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 44
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 45
    :cond_3
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_5

    invoke-virtual {p0, p2, p1}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    move p1, v1

    :goto_3
    xor-int/2addr p1, v1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/graph/M2;)Z
    .locals 7

    .line 46
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/graph/h;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 47
    :cond_0
    sget-boolean v1, Lcom/android/tools/r8/graph/j;->i:Z

    if-nez v1, :cond_2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 48
    :cond_2
    :goto_0
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->D1()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j1;

    .line 49
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v4, v5}, Lcom/android/tools/r8/graph/A2;->c(Lcom/android/tools/r8/graph/A2;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 50
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/j1;->O0()Lcom/android/tools/r8/graph/L4;

    move-result-object v4

    .line 51
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/g;->d()I

    move-result v5

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->O0()Lcom/android/tools/r8/graph/L4;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/g;->d()I

    move-result v6

    if-eq v5, v6, :cond_4

    goto :goto_2

    .line 52
    :cond_4
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/g;->l()Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_1

    .line 53
    :cond_5
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/g;->h()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 54
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h1;->B0()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->B0()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    if-ne v2, v4, :cond_6

    :goto_1
    move v2, v3

    goto :goto_4

    :cond_6
    :goto_2
    move v2, v0

    goto :goto_4

    .line 55
    :cond_7
    sget-boolean v5, Lcom/android/tools/r8/graph/j1;->x:Z

    if-nez v5, :cond_9

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/g;->g()Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_3

    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 56
    :cond_9
    :goto_3
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h1;->B0()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/M2;->A0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->B0()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/M2;->A0()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    :goto_4
    if-eqz v2, :cond_3

    return v3

    .line 57
    :cond_a
    iget-object p2, p2, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    iget-object p2, p2, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    array-length v1, p2

    move v2, v0

    :goto_5
    if-ge v2, v1, :cond_c

    aget-object v4, p2, v2

    .line 58
    invoke-virtual {p0, p1, v4}, Lcom/android/tools/r8/graph/j;->a(Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/graph/M2;)Z

    move-result v4

    if-eqz v4, :cond_b

    return v3

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_c
    return v0
.end method

.method public b(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/F0;
    .locals 3

    .line 89
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 90
    sget-boolean v1, Lcom/android/tools/r8/graph/j;->i:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->c()V

    :cond_0
    if-nez v1, :cond_2

    .line 91
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_0
    if-nez v1, :cond_3

    .line 92
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->c()V

    .line 93
    :cond_3
    new-instance v1, Lcom/android/tools/r8/graph/u3;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/graph/u3;-><init>(Lcom/android/tools/r8/graph/j;)V

    invoke-virtual {v1, v0, p1}, Lcom/android/tools/r8/graph/u3;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/D3;

    move-result-object p1

    .line 94
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/D3;->p()Lcom/android/tools/r8/graph/F0;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 95
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/F0;->u()Lcom/android/tools/r8/graph/k3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    return-object p1

    :cond_5
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/H0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/graph/A2;",
            "Lcom/android/tools/r8/graph/H5;",
            "Lcom/android/tools/r8/graph/y<",
            "+",
            "Lcom/android/tools/r8/graph/j;",
            ">;)",
            "Lcom/android/tools/r8/graph/H0;"
        }
    .end annotation

    .line 96
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p2

    .line 97
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j;

    .line 98
    sget-boolean v1, Lcom/android/tools/r8/graph/j;->i:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->c()V

    .line 99
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/j;->f(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object p1

    .line 100
    invoke-virtual {p1, p2, p3, v0}, Lcom/android/tools/r8/graph/Z4;->b(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;)Lcom/android/tools/r8/graph/H0;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H0;
    .locals 9

    .line 82
    new-instance v0, Lcom/android/tools/r8/graph/Fd;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/graph/Fd;-><init>(Lcom/android/tools/r8/graph/j;)V

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/tools/r8/graph/U4;->a(Lcom/android/tools/r8/graph/u1;Ljava/util/function/Function;)Lcom/android/tools/r8/graph/U4;

    move-result-object v2

    .line 83
    new-instance v0, Lcom/android/tools/r8/graph/R4;

    iget-object v1, v2, Lcom/android/tools/r8/graph/U4;->a:Ljava/util/function/Function;

    iget-object v3, v2, Lcom/android/tools/r8/graph/U4;->b:Lcom/android/tools/r8/graph/u1;

    invoke-direct {v0, v3, v1}, Lcom/android/tools/r8/graph/R4;-><init>(Lcom/android/tools/r8/graph/u1;Ljava/util/function/Function;)V

    .line 84
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object v3

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object v4

    .line 85
    iget-object v7, p1, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    iget-object p2, p1, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    iget-object p2, p2, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    .line 86
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    move-object v5, p1

    move-object v6, v0

    .line 87
    invoke-virtual/range {v2 .. v8}, Lcom/android/tools/r8/graph/U4;->a(Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/R4;Lcom/android/tools/r8/graph/M2;Ljava/util/List;)V

    const/4 p1, 0x0

    .line 88
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/R4;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/Z4;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/Z4;->p()Lcom/android/tools/r8/graph/H0;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/graph/Z4;
    .locals 2

    .line 101
    sget-boolean v0, Lcom/android/tools/r8/graph/j;->i:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->c()V

    .line 102
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    if-nez v0, :cond_1

    .line 103
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->c()V

    :cond_1
    if-eqz p2, :cond_2

    .line 104
    invoke-virtual {p0, v1, p1}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object p1

    return-object p1

    .line 105
    :cond_2
    invoke-virtual {p0, v1, p1}, Lcom/android/tools/r8/graph/j;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/Z4;
    .locals 2

    .line 109
    sget-boolean v0, Lcom/android/tools/r8/graph/j;->i:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->c()V

    .line 110
    :cond_0
    new-instance v0, Lcom/android/tools/r8/graph/Fd;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/graph/Fd;-><init>(Lcom/android/tools/r8/graph/j;)V

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/tools/r8/graph/U4;->a(Lcom/android/tools/r8/graph/u1;Ljava/util/function/Function;)Lcom/android/tools/r8/graph/U4;

    move-result-object v0

    .line 111
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/tools/r8/graph/U4;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;
    .locals 4

    .line 112
    sget-boolean v0, Lcom/android/tools/r8/graph/j;->i:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->c()V

    .line 113
    :cond_0
    new-instance v0, Lcom/android/tools/r8/graph/Ed;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/graph/Ed;-><init>(Lcom/android/tools/r8/graph/j;)V

    .line 114
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    .line 115
    new-instance v2, Lcom/android/tools/r8/graph/U4;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, v3, v3}, Lcom/android/tools/r8/graph/U4;-><init>(Ljava/util/function/Function;Lcom/android/tools/r8/graph/u1;ZZ)V

    .line 116
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object p2

    invoke-virtual {v2, p1, v0, p2}, Lcom/android/tools/r8/graph/U4;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/Z4;
    .locals 2

    .line 106
    sget-boolean v0, Lcom/android/tools/r8/graph/j;->i:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->c()V

    .line 107
    :cond_0
    new-instance v0, Lcom/android/tools/r8/graph/Fd;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/graph/Fd;-><init>(Lcom/android/tools/r8/graph/j;)V

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/tools/r8/graph/U4;->a(Lcom/android/tools/r8/graph/u1;Ljava/util/function/Function;)Lcom/android/tools/r8/graph/U4;

    move-result-object v0

    .line 108
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/tools/r8/graph/U4;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/android/tools/r8/graph/O5;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/graph/j;
    .locals 7

    .line 14
    sget-boolean p2, Lcom/android/tools/r8/graph/j;->i:Z

    if-nez p2, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/tools/r8/graph/j;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez p2, :cond_2

    .line 15
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->c()V

    :cond_2
    if-nez p2, :cond_4

    .line 16
    iget-object p2, p1, Lcom/android/tools/r8/graph/O5;->a:Lcom/android/tools/r8/graph/x0;

    .line 17
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->a()Lcom/android/tools/r8/graph/x0;

    move-result-object v0

    if-ne p2, v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 18
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/O5;->b()Z

    move-result p2

    if-eqz p2, :cond_5

    return-object p0

    .line 19
    :cond_5
    const-string p2, "Pruning AppInfoWithClassHierarchy"

    invoke-virtual {p3, p2}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 20
    new-instance p2, Lcom/android/tools/r8/graph/j;

    .line 21
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v0

    .line 22
    iget-object v2, v0, Lcom/android/tools/r8/synthesis/J;->d:Lcom/android/tools/r8/synthesis/F;

    .line 23
    iget-object v3, v0, Lcom/android/tools/r8/synthesis/J;->e:Lcom/android/tools/r8/synthesis/A;

    iget-object v4, v0, Lcom/android/tools/r8/synthesis/J;->c:Lcom/android/tools/r8/synthesis/d;

    iget v5, v0, Lcom/android/tools/r8/synthesis/J;->a:I

    iget-object v6, v0, Lcom/android/tools/r8/synthesis/J;->f:Lcom/android/tools/r8/synthesis/E;

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/graph/O5;Lcom/android/tools/r8/synthesis/F;Lcom/android/tools/r8/synthesis/A;Lcom/android/tools/r8/synthesis/d;ILcom/android/tools/r8/synthesis/E;)Lcom/android/tools/r8/synthesis/b;

    move-result-object v0

    .line 24
    iget-object v1, p0, Lcom/android/tools/r8/graph/h;->b:Lcom/android/tools/r8/internal/Zd;

    .line 25
    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/Zd;->a(Lcom/android/tools/r8/graph/O5;)Lcom/android/tools/r8/internal/Zd;

    move-result-object v1

    .line 26
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->f()Lcom/android/tools/r8/shaking/o2;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/tools/r8/shaking/o2;->a(Lcom/android/tools/r8/graph/O5;)Lcom/android/tools/r8/shaking/o2;

    move-result-object p1

    .line 27
    iget-object v2, p0, Lcom/android/tools/r8/graph/j;->h:Lcom/android/tools/r8/shaking/u2;

    .line 28
    invoke-direct {p2, v0, v1, p1, v2}, Lcom/android/tools/r8/graph/j;-><init>(Lcom/android/tools/r8/synthesis/b;Lcom/android/tools/r8/internal/Zd;Lcom/android/tools/r8/shaking/o2;Lcom/android/tools/r8/shaking/u2;)V

    .line 29
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-object p2
.end method

.method public b(Lcom/android/tools/r8/graph/x0;)Lcom/android/tools/r8/graph/j;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/graph/x0;)Lcom/android/tools/r8/synthesis/b;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/synthesis/b;)Lcom/android/tools/r8/graph/j;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/android/tools/r8/shaking/o2;)Lcom/android/tools/r8/graph/j;
    .locals 4

    .line 7
    sget-boolean v0, Lcom/android/tools/r8/graph/j;->i:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/android/tools/r8/graph/j;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->c()V

    .line 9
    :cond_2
    new-instance v0, Lcom/android/tools/r8/graph/j;

    .line 10
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->a()Lcom/android/tools/r8/graph/x0;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/graph/x0;)Lcom/android/tools/r8/synthesis/b;

    move-result-object v1

    .line 11
    iget-object v2, p0, Lcom/android/tools/r8/graph/h;->b:Lcom/android/tools/r8/internal/Zd;

    .line 12
    iget-object v3, p0, Lcom/android/tools/r8/graph/j;->h:Lcom/android/tools/r8/shaking/u2;

    .line 13
    invoke-direct {v0, v1, v2, p1, v3}, Lcom/android/tools/r8/graph/j;-><init>(Lcom/android/tools/r8/synthesis/b;Lcom/android/tools/r8/internal/Zd;Lcom/android/tools/r8/shaking/o2;Lcom/android/tools/r8/shaking/u2;)V

    return-object v0
.end method

.method public b(Lcom/android/tools/r8/synthesis/b;)Lcom/android/tools/r8/graph/j;
    .locals 4

    .line 2
    new-instance v0, Lcom/android/tools/r8/graph/j;

    .line 3
    iget-object v1, p0, Lcom/android/tools/r8/graph/h;->b:Lcom/android/tools/r8/internal/Zd;

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->f()Lcom/android/tools/r8/shaking/o2;

    move-result-object v2

    .line 5
    iget-object v3, p0, Lcom/android/tools/r8/graph/j;->h:Lcom/android/tools/r8/shaking/u2;

    .line 6
    invoke-direct {v0, p1, v1, v2, v3}, Lcom/android/tools/r8/graph/j;-><init>(Lcom/android/tools/r8/synthesis/b;Lcom/android/tools/r8/internal/Zd;Lcom/android/tools/r8/shaking/o2;Lcom/android/tools/r8/shaking/u2;)V

    return-object v0
.end method

.method public final b(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/internal/gt0;)Lcom/android/tools/r8/internal/Zs0;
    .locals 9

    const/4 v0, 0x0

    move-object v1, p1

    move v2, v0

    :goto_0
    if-eqz v1, :cond_2

    .line 30
    iget-object v3, v1, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    iget-object v3, v3, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    array-length v3, v3

    add-int/2addr v2, v3

    .line 31
    iget-object v3, v1, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    if-nez v3, :cond_0

    goto :goto_1

    .line 32
    :cond_0
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p2, v3, v1, v4}, Lcom/android/tools/r8/internal/gt0;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/Zs0;

    .line 33
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Zs0;->c()Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    .line 34
    :cond_1
    iget-object v1, v1, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/graph/h;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v2, :cond_3

    .line 35
    sget-object p1, Lcom/android/tools/r8/internal/Ys0;->c:Lcom/android/tools/r8/internal/Xs0;

    return-object p1

    .line 36
    :cond_3
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v1

    .line 37
    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    :goto_2
    if-eqz p1, :cond_8

    .line 38
    iget-object v3, p1, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    iget-object v3, v3, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    array-length v4, v3

    move v5, v0

    :goto_3
    if-ge v5, v4, :cond_6

    aget-object v6, v3, v5

    .line 39
    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 40
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p2, v6, p1, v7}, Lcom/android/tools/r8/internal/gt0;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/Zs0;

    .line 41
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/Zs0;->c()Z

    move-result v8

    if-eqz v8, :cond_4

    return-object v7

    .line 42
    :cond_4
    invoke-virtual {v2, v6}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 43
    :cond_6
    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    if-nez p1, :cond_7

    goto :goto_4

    .line 44
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/h;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    goto :goto_2

    .line 45
    :cond_8
    :goto_4
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_b

    .line 46
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    .line 47
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/h;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 48
    iget-object v3, p1, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    iget-object v3, v3, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    array-length v4, v3

    move v5, v0

    :goto_5
    if-ge v5, v4, :cond_8

    aget-object v6, v3, v5

    .line 49
    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 50
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p2, v6, p1, v7}, Lcom/android/tools/r8/internal/gt0;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/Zs0;

    .line 51
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/Zs0;->c()Z

    move-result v8

    if-eqz v8, :cond_9

    return-object v7

    .line 52
    :cond_9
    invoke-virtual {v2, v6}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 53
    :cond_b
    sget-object p1, Lcom/android/tools/r8/internal/Ys0;->c:Lcom/android/tools/r8/internal/Xs0;

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/M2;)Ljava/util/ArrayList;
    .locals 2

    .line 71
    sget-boolean v0, Lcom/android/tools/r8/graph/j;->i:Z

    if-nez v0, :cond_1

    iget-object v1, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p0, v1, p2}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 72
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    .line 73
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    if-eq p2, v0, :cond_5

    .line 74
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/graph/h;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 75
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/graph/h;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2

    .line 76
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 77
    :cond_5
    :goto_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_3
    if-eqz p1, :cond_8

    .line 78
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 79
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    :cond_6
    iget-object v1, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    if-ne v1, p2, :cond_7

    goto :goto_4

    .line 81
    :cond_7
    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/h;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    goto :goto_3

    :cond_8
    :goto_4
    return-object v0
.end method

.method public final b(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/E0;)Z
    .locals 3

    .line 64
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    return p1

    .line 66
    :cond_0
    sget-boolean v0, Lcom/android/tools/r8/graph/j;->i:Z

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_0
    if-nez v0, :cond_4

    .line 67
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 68
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    .line 69
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p2

    iget-object p2, p2, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    if-ne p1, p2, :cond_5

    return v2

    :cond_5
    return v1

    :cond_6
    if-eq p1, p2, :cond_8

    .line 70
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/graph/j;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/E0;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_2

    :cond_7
    return v1

    :cond_8
    :goto_2
    return v2
.end method

.method public b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z
    .locals 2

    .line 54
    sget-boolean v0, Lcom/android/tools/r8/graph/j;->i:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    if-eqz p2, :cond_2

    goto :goto_1

    .line 55
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    .line 56
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_2
    if-nez v0, :cond_7

    .line 57
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_3

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_7
    :goto_3
    const/4 v0, 0x0

    if-ne p1, p2, :cond_8

    return v0

    .line 58
    :cond_8
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    if-ne p1, v1, :cond_9

    return v0

    .line 59
    :cond_9
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    if-ne p2, v1, :cond_a

    const/4 p1, 0x1

    return p1

    .line 60
    :cond_a
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_4

    .line 61
    :cond_b
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/h;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    if-nez p1, :cond_c

    return v0

    .line 62
    :cond_c
    new-instance v0, Lcom/android/tools/r8/graph/Hd;

    invoke-direct {v0, p2}, Lcom/android/tools/r8/graph/Hd;-><init>(Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/internal/gt0;)Lcom/android/tools/r8/internal/Zs0;

    move-result-object p1

    .line 63
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Zs0;->c()Z

    move-result p1

    return p1

    :cond_d
    :goto_4
    return v0
.end method

.method public c(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/D3;
    .locals 2

    .line 23
    sget-boolean v0, Lcom/android/tools/r8/graph/j;->i:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->c()V

    .line 24
    :cond_0
    iget-object v1, p1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    if-nez v0, :cond_1

    .line 25
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->c()V

    .line 26
    :cond_1
    new-instance v0, Lcom/android/tools/r8/graph/u3;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/graph/u3;-><init>(Lcom/android/tools/r8/graph/j;)V

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/graph/u3;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/D3;

    move-result-object p1

    return-object p1
.end method

.method public c(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;
    .locals 1

    .line 13
    sget-boolean v0, Lcom/android/tools/r8/graph/j;->i:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->c()V

    .line 14
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/graph/j;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;
    .locals 9

    .line 6
    new-instance v0, Lcom/android/tools/r8/graph/Fd;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/graph/Fd;-><init>(Lcom/android/tools/r8/graph/j;)V

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/tools/r8/graph/U4;->a(Lcom/android/tools/r8/graph/u1;Ljava/util/function/Function;)Lcom/android/tools/r8/graph/U4;

    move-result-object v2

    .line 7
    new-instance v0, Lcom/android/tools/r8/graph/R4;

    iget-object v1, v2, Lcom/android/tools/r8/graph/U4;->a:Ljava/util/function/Function;

    iget-object v3, v2, Lcom/android/tools/r8/graph/U4;->b:Lcom/android/tools/r8/graph/u1;

    invoke-direct {v0, v3, v1}, Lcom/android/tools/r8/graph/R4;-><init>(Lcom/android/tools/r8/graph/u1;Ljava/util/function/Function;)V

    .line 8
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object v3

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object v4

    .line 9
    iget-object v7, p1, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    iget-object p2, p1, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    iget-object p2, p2, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    .line 10
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    move-object v5, p1

    move-object v6, v0

    .line 11
    invoke-virtual/range {v2 .. v8}, Lcom/android/tools/r8/graph/U4;->a(Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/R4;Lcom/android/tools/r8/graph/M2;Ljava/util/List;)V

    .line 12
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/R4;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/Z4;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/Z4;
    .locals 4

    .line 18
    sget-boolean v0, Lcom/android/tools/r8/graph/j;->i:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->c()V

    .line 19
    :cond_0
    new-instance v0, Lcom/android/tools/r8/graph/Ed;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/graph/Ed;-><init>(Lcom/android/tools/r8/graph/j;)V

    .line 20
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    .line 21
    new-instance v2, Lcom/android/tools/r8/graph/U4;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, v3, v3}, Lcom/android/tools/r8/graph/U4;-><init>(Ljava/util/function/Function;Lcom/android/tools/r8/graph/u1;ZZ)V

    .line 22
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/tools/r8/graph/U4;->b(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object p1

    return-object p1
.end method

.method public c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;
    .locals 2

    .line 15
    sget-boolean v0, Lcom/android/tools/r8/graph/j;->i:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->c()V

    .line 16
    :cond_0
    new-instance v0, Lcom/android/tools/r8/graph/Fd;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/graph/Fd;-><init>(Lcom/android/tools/r8/graph/j;)V

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/tools/r8/graph/U4;->a(Lcom/android/tools/r8/graph/u1;Ljava/util/function/Function;)Lcom/android/tools/r8/graph/U4;

    move-result-object v0

    .line 17
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object p2

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/tools/r8/graph/U4;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object p1

    return-object p1
.end method

.method public c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/graph/j;->i:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    if-eqz p2, :cond_2

    goto :goto_1

    .line 2
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    .line 3
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_2
    if-nez v0, :cond_7

    .line 4
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_3

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_7
    :goto_3
    if-eq p1, p2, :cond_9

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_4

    :cond_8
    const/4 p1, 0x0

    return p1

    :cond_9
    :goto_4
    const/4 p1, 0x1

    return p1
.end method

.method public d(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;
    .locals 1

    .line 43
    sget-boolean v0, Lcom/android/tools/r8/graph/j;->i:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->c()V

    .line 44
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object p1

    return-object p1
.end method

.method public final d(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;
    .locals 2

    .line 38
    sget-boolean v0, Lcom/android/tools/r8/graph/j;->i:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->c()V

    .line 39
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_1

    .line 40
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->c()V

    .line 41
    :cond_1
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object p1

    return-object p1

    .line 42
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/graph/j;->e(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object p1

    return-object p1
.end method

.method public final d(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/Z4;
    .locals 2

    .line 45
    sget-boolean v0, Lcom/android/tools/r8/graph/j;->i:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->c()V

    .line 46
    :cond_0
    new-instance v0, Lcom/android/tools/r8/graph/Fd;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/graph/Fd;-><init>(Lcom/android/tools/r8/graph/j;)V

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/tools/r8/graph/U4;->a(Lcom/android/tools/r8/graph/u1;Ljava/util/function/Function;)Lcom/android/tools/r8/graph/U4;

    move-result-object v0

    .line 47
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/tools/r8/graph/U4;->b(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object p1

    return-object p1
.end method

.method public d(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/wI;
    .locals 9

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/graph/j;->i:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 2
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/h;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    if-nez v0, :cond_2

    .line 3
    sget-object p1, Lcom/android/tools/r8/internal/wI;->b:Lcom/android/tools/r8/internal/wI;

    return-object p1

    .line 4
    :cond_2
    iget-object v1, v0, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v2

    iget-object v2, v2, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    if-ne v1, v2, :cond_4

    iget-object v1, v0, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/O2;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    invoke-static {p1}, Lcom/android/tools/r8/internal/wI;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/wI;

    move-result-object p1

    return-object p1

    .line 7
    :cond_3
    sget-object p1, Lcom/android/tools/r8/internal/wI;->b:Lcom/android/tools/r8/internal/wI;

    return-object p1

    .line 8
    :cond_4
    invoke-static {}, Lcom/android/tools/r8/internal/wI;->a()Lcom/android/tools/r8/internal/wI$a;

    move-result-object v1

    .line 9
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    .line 10
    invoke-virtual {v1, p1, v3}, Lcom/android/tools/r8/internal/wI$a;->a(Lcom/android/tools/r8/graph/M2;Z)Lcom/android/tools/r8/internal/wI$a;

    .line 11
    :cond_5
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object p1

    .line 12
    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    :goto_1
    if-eqz v0, :cond_b

    .line 13
    iget-object v4, v0, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/O2;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/M2;

    .line 14
    invoke-interface {p1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_2

    .line 15
    :cond_7
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->j()Lcom/android/tools/r8/internal/nJ;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/android/tools/r8/internal/wI;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/nJ;)Z

    move-result v6

    .line 16
    invoke-virtual {v1, v5, v6}, Lcom/android/tools/r8/internal/wI$a;->a(Lcom/android/tools/r8/graph/M2;Z)Lcom/android/tools/r8/internal/wI$a;

    if-eqz v6, :cond_8

    .line 17
    invoke-interface {p1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 18
    :cond_8
    invoke-virtual {p0, v5}, Lcom/android/tools/r8/graph/h;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 19
    iget-object v7, v5, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    invoke-virtual {v7}, Lcom/android/tools/r8/graph/O2;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_6

    .line 20
    new-instance v7, Lcom/android/tools/r8/internal/o50;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v7, v5, v6}, Lcom/android/tools/r8/internal/o50;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 21
    :cond_9
    iget-object v4, v0, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    if-eqz v4, :cond_b

    .line 22
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->j()Lcom/android/tools/r8/internal/nJ;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/nJ;->m()Lcom/android/tools/r8/graph/u1;

    move-result-object v5

    iget-object v5, v5, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    if-ne v4, v5, :cond_a

    goto :goto_3

    .line 23
    :cond_a
    iget-object v0, v0, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/h;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    goto :goto_1

    .line 24
    :cond_b
    :goto_3
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 25
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/o50;

    .line 26
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/o50;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/E0;

    .line 27
    sget-boolean v5, Lcom/android/tools/r8/graph/j;->i:Z

    if-nez v5, :cond_d

    iget-object v5, v4, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/O2;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_c

    goto :goto_4

    :cond_c
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 28
    :cond_d
    :goto_4
    iget-object v5, v4, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/O2;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_e
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/graph/M2;

    .line 29
    invoke-interface {p1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    goto :goto_5

    .line 30
    :cond_f
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/o50;->b()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_10

    .line 31
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->j()Lcom/android/tools/r8/internal/nJ;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/android/tools/r8/internal/wI;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/nJ;)Z

    move-result v7

    if-eqz v7, :cond_10

    move v7, v3

    goto :goto_6

    :cond_10
    const/4 v7, 0x0

    .line 32
    :goto_6
    invoke-virtual {v1, v6, v7}, Lcom/android/tools/r8/internal/wI$a;->a(Lcom/android/tools/r8/graph/M2;Z)Lcom/android/tools/r8/internal/wI$a;

    if-eqz v7, :cond_11

    .line 33
    invoke-interface {p1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 34
    :cond_11
    invoke-virtual {p0, v6}, Lcom/android/tools/r8/graph/h;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v6

    if-eqz v6, :cond_e

    .line 35
    iget-object v8, v6, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    invoke-virtual {v8}, Lcom/android/tools/r8/graph/O2;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_e

    .line 36
    new-instance v8, Lcom/android/tools/r8/internal/o50;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-direct {v8, v6, v7}, Lcom/android/tools/r8/internal/o50;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v8}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 37
    :cond_12
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/wI$a;->a()Lcom/android/tools/r8/internal/wI;

    move-result-object p1

    return-object p1
.end method

.method public e(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/graph/j;->i:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->c()V

    .line 2
    :cond_0
    new-instance v0, Lcom/android/tools/r8/graph/Ed;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/graph/Ed;-><init>(Lcom/android/tools/r8/graph/j;)V

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    .line 4
    new-instance v2, Lcom/android/tools/r8/graph/U4;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, v3, v3}, Lcom/android/tools/r8/graph/U4;-><init>(Ljava/util/function/Function;Lcom/android/tools/r8/graph/u1;ZZ)V

    .line 5
    invoke-virtual {v2, p1}, Lcom/android/tools/r8/graph/U4;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object p1

    return-object p1
.end method

.method public final e(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;
    .locals 1

    .line 6
    sget-boolean v0, Lcom/android/tools/r8/graph/j;->i:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->c()V

    .line 7
    :cond_0
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/tools/r8/graph/j;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object p1

    return-object p1
.end method

.method public f(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/graph/j;->i:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->c()V

    .line 2
    :cond_0
    new-instance v0, Lcom/android/tools/r8/graph/Fd;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/graph/Fd;-><init>(Lcom/android/tools/r8/graph/j;)V

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/tools/r8/graph/U4;->a(Lcom/android/tools/r8/graph/u1;Ljava/util/function/Function;)Lcom/android/tools/r8/graph/U4;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/U4;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object p1

    return-object p1
.end method

.method public f(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;
    .locals 1

    .line 4
    sget-boolean v0, Lcom/android/tools/r8/graph/j;->i:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->c()V

    .line 5
    :cond_0
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object p1

    return-object p1
.end method

.method public g(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/graph/j;->i:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->c()V

    :cond_0
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/tools/r8/graph/j;->d(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object p1

    return-object p1
.end method

.method public h(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;
    .locals 1

    .line 6
    sget-boolean v0, Lcom/android/tools/r8/graph/j;->i:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->c()V

    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/graph/j;->g(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object p1

    return-object p1

    .line 9
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/graph/j;->f(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object p1

    return-object p1
.end method

.method public final h()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/graph/j;->i:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->c()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final h(Lcom/android/tools/r8/graph/M2;)Z
    .locals 4

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/h;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 3
    iget-object v0, p1, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/j;->h(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    iget-object p1, p1, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    .line 5
    invoke-virtual {p0, v3}, Lcom/android/tools/r8/graph/j;->h(Lcom/android/tools/r8/graph/M2;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public final l()Lcom/android/tools/r8/graph/j;
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/graph/j;->i:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->c()V

    :cond_0
    return-object p0
.end method

.method public n()V
    .locals 0

    return-void
.end method
