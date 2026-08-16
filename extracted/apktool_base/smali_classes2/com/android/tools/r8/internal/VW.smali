.class public final Lcom/android/tools/r8/internal/VW;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/internal/kc;

.field public final c:Lcom/android/tools/r8/graph/u1;

.field public final d:Lcom/android/tools/r8/internal/nJ;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/kB;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/VW;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ;->i1:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/kc;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/internal/kc;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/kB;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/android/tools/r8/internal/VW;->b:Lcom/android/tools/r8/internal/kc;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/VW;->c:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/VW;->d:Lcom/android/tools/r8/internal/nJ;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/k3;)Z
    .locals 1

    .line 189
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->a()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 190
    instance-of v0, v0, Lcom/android/tools/r8/internal/uI;

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/internal/kZ0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/kZ0;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/xw0;->c(Ljava/util/function/Predicate;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)Z
    .locals 3

    sget-object v0, Lcom/android/tools/r8/internal/D4;->a:Lcom/android/tools/r8/internal/D4;

    .line 1
    invoke-interface {p0}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->B()Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    .line 2
    :cond_0
    sget-object v1, Lcom/android/tools/r8/internal/d70;->c:Lcom/android/tools/r8/internal/a70;

    invoke-virtual {p0, v0, v1}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/e2;Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p0

    if-ne p0, p1, :cond_1

    return v2

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/xw0;)Z
    .locals 2

    .line 93
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->H1()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 94
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->V()Lcom/android/tools/r8/internal/EB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/EB;->x2()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 96
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 97
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->V()Lcom/android/tools/r8/internal/EB;

    move-result-object p1

    .line 98
    iget-object p1, p1, Lcom/android/tools/r8/internal/EB;->l:Lcom/android/tools/r8/internal/NB;

    .line 99
    sget-object v0, Lcom/android/tools/r8/internal/NB;->b:Lcom/android/tools/r8/internal/NB;

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->V()Lcom/android/tools/r8/internal/EB;

    move-result-object p0

    .line 100
    iget-object p0, p0, Lcom/android/tools/r8/internal/EB;->l:Lcom/android/tools/r8/internal/NB;

    .line 101
    sget-object p1, Lcom/android/tools/r8/internal/NB;->g:Lcom/android/tools/r8/internal/NB;

    if-ne p0, p1, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/zE;)Z
    .locals 0

    if-eq p1, p0, :cond_1

    .line 188
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->o()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic b(Lcom/android/tools/r8/graph/H2;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/AE;)Lcom/android/tools/r8/internal/UW;
    .locals 7

    .line 38
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p3, p1}, Lcom/android/tools/r8/internal/VW;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/xw0;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    sget-object p1, Lcom/android/tools/r8/internal/UW;->c:Lcom/android/tools/r8/internal/UW;

    return-object p1

    .line 41
    :cond_0
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/zE;->R1()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 42
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/zE;->i0()Lcom/android/tools/r8/internal/gK;

    move-result-object v1

    .line 43
    iget-object v2, p0, Lcom/android/tools/r8/internal/VW;->a:Lcom/android/tools/r8/graph/y;

    .line 44
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v3

    .line 45
    iget-object v3, v3, Lcom/android/tools/r8/internal/nJ;->v1:Lcom/android/tools/r8/internal/qJ;

    .line 46
    iget-boolean v3, v3, Lcom/android/tools/r8/internal/qJ;->a:Z

    const-string v4, "kotlin"

    if-eqz v3, :cond_1

    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v3

    iget-object v3, v3, Lcom/android/tools/r8/graph/u1;->a5:Lcom/android/tools/r8/kotlin/g;

    iget-object v3, v3, Lcom/android/tools/r8/kotlin/g;->c:Lcom/android/tools/r8/kotlin/d;

    .line 48
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    invoke-static {}, Lcom/android/tools/r8/internal/Hz;->g()Lcom/android/tools/r8/internal/Hz;

    move-result-object v6

    .line 50
    invoke-virtual {v2, v6, v5}, Lcom/android/tools/r8/internal/Hz;->a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    .line 51
    iget-object v5, v3, Lcom/android/tools/r8/kotlin/d;->c:Lcom/android/tools/r8/graph/A2;

    .line 52
    invoke-virtual {v2, v5}, Lcom/android/tools/r8/graph/A2;->c(Lcom/android/tools/r8/graph/A2;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v3, v3, Lcom/android/tools/r8/kotlin/d;->d:Lcom/android/tools/r8/graph/A2;

    .line 53
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/graph/A2;->c(Lcom/android/tools/r8/graph/A2;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    const/4 v3, 0x0

    .line 54
    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    if-ne v3, p1, :cond_3

    .line 55
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/M2;->z0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 56
    sget-object p1, Lcom/android/tools/r8/internal/UW;->b:Lcom/android/tools/r8/internal/UW;

    return-object p1

    .line 57
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/VW;->a:Lcom/android/tools/r8/graph/y;

    .line 58
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v3

    .line 59
    iget-object v3, v3, Lcom/android/tools/r8/internal/nJ;->v1:Lcom/android/tools/r8/internal/qJ;

    .line 60
    iget-boolean v3, v3, Lcom/android/tools/r8/internal/qJ;->a:Z

    if-eqz v3, :cond_4

    goto :goto_1

    .line 61
    :cond_4
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v3

    iget-object v3, v3, Lcom/android/tools/r8/graph/u1;->a5:Lcom/android/tools/r8/kotlin/g;

    iget-object v3, v3, Lcom/android/tools/r8/kotlin/g;->c:Lcom/android/tools/r8/kotlin/d;

    .line 62
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    invoke-static {}, Lcom/android/tools/r8/internal/Hz;->g()Lcom/android/tools/r8/internal/Hz;

    move-result-object v5

    .line 64
    invoke-virtual {v2, v5, v1}, Lcom/android/tools/r8/internal/Hz;->a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    .line 65
    iget-object v2, v3, Lcom/android/tools/r8/kotlin/d;->a:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/A2;->c(Lcom/android/tools/r8/graph/A2;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, v3, Lcom/android/tools/r8/kotlin/d;->b:Lcom/android/tools/r8/graph/A2;

    .line 66
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/A2;->c(Lcom/android/tools/r8/graph/A2;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 67
    :cond_5
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/M2;->z0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 68
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/internal/W5;

    .line 69
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object p3

    invoke-static {p3, p1}, Lcom/android/tools/r8/internal/VW;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/xw0;)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 70
    sget-object p1, Lcom/android/tools/r8/internal/UW;->b:Lcom/android/tools/r8/internal/UW;

    return-object p1

    .line 71
    :cond_7
    sget-object p1, Lcom/android/tools/r8/internal/UW;->e:Lcom/android/tools/r8/internal/UW;

    return-object p1

    .line 72
    :cond_8
    :goto_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/VW;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    .line 73
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/zE;->c2()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 74
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/zE;->w0()Lcom/android/tools/r8/internal/tZ;

    move-result-object v2

    iget-object v2, v2, Lcom/android/tools/r8/internal/tZ;->k:Lcom/android/tools/r8/graph/M2;

    iget-object v3, v1, Lcom/android/tools/r8/graph/u1;->E3:Lcom/android/tools/r8/graph/M2;

    if-eq v2, v3, :cond_9

    goto :goto_2

    .line 75
    :cond_9
    invoke-interface {p4}, Lcom/android/tools/r8/internal/AE;->h()Lcom/android/tools/r8/internal/zE;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 76
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->O1()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 77
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->c0()Lcom/android/tools/r8/internal/QJ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->W4:Lcom/android/tools/r8/graph/h2;

    iget-object v1, v1, Lcom/android/tools/r8/graph/h2;->a:Lcom/android/tools/r8/graph/A2;

    if-eq v2, v1, :cond_a

    goto :goto_2

    .line 78
    :cond_a
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    sget-object p1, Lcom/android/tools/r8/internal/UW;->e:Lcom/android/tools/r8/internal/UW;

    return-object p1

    .line 80
    :cond_b
    :goto_2
    iget-object p4, p0, Lcom/android/tools/r8/internal/VW;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v1

    invoke-virtual {p3, p4, v1, p1}, Lcom/android/tools/r8/internal/zE;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/xw0;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 81
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result p1

    if-nez p1, :cond_e

    .line 82
    sget-object p1, Lcom/android/tools/r8/internal/UW;->b:Lcom/android/tools/r8/internal/UW;

    return-object p1

    .line 83
    :cond_c
    iget-object p1, p0, Lcom/android/tools/r8/internal/VW;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object p4

    .line 84
    invoke-static {p1, p4}, Lcom/android/tools/r8/internal/M1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/M1;

    move-result-object v0

    .line 85
    sget-object v1, Lcom/android/tools/r8/internal/yE;->a:Lcom/android/tools/r8/internal/yE;

    invoke-virtual {p3, p1, p4, v0, v1}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;Lcom/android/tools/r8/internal/yE;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 86
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/zE;->x1()Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/android/tools/r8/internal/VW;->a:Lcom/android/tools/r8/graph/y;

    .line 87
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object p2

    .line 88
    invoke-static {p1, p2}, Lcom/android/tools/r8/internal/M1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/M1;

    move-result-object p4

    .line 89
    invoke-virtual {p3, p1, p2, p4, v1}, Lcom/android/tools/r8/internal/zE;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;Lcom/android/tools/r8/internal/yE;)Z

    move-result p1

    if-nez p1, :cond_d

    .line 90
    sget-object p1, Lcom/android/tools/r8/internal/UW;->e:Lcom/android/tools/r8/internal/UW;

    return-object p1

    .line 91
    :cond_d
    sget-object p1, Lcom/android/tools/r8/internal/UW;->d:Lcom/android/tools/r8/internal/UW;

    return-object p1

    .line 92
    :cond_e
    sget-object p1, Lcom/android/tools/r8/internal/UW;->e:Lcom/android/tools/r8/internal/UW;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/k40;Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/internal/fB;)V
    .locals 5

    .line 102
    sget-boolean v0, Lcom/android/tools/r8/internal/VW;->e:Z

    if-nez v0, :cond_1

    iget-object v1, p2, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/L4;->J()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 103
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/VW;->d:Lcom/android/tools/r8/internal/nJ;

    iget-boolean v1, v1, Lcom/android/tools/r8/internal/nJ;->M:Z

    if-nez v1, :cond_2

    goto/16 :goto_1

    .line 104
    :cond_2
    iget-object v1, p0, Lcom/android/tools/r8/internal/VW;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/i;

    iget-object v1, v1, Lcom/android/tools/r8/shaking/i;->w:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto/16 :goto_1

    .line 105
    :cond_3
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v1

    .line 106
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/j1;->f1()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 107
    iget-object v2, p0, Lcom/android/tools/r8/internal/VW;->a:Lcom/android/tools/r8/graph/y;

    .line 108
    invoke-static {v2, p3}, Lcom/android/tools/r8/internal/Uc;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;)I

    move-result p3

    const/4 v2, 0x3

    if-ne p3, v2, :cond_4

    .line 109
    invoke-interface {p1, p2}, Lcom/android/tools/r8/internal/SW;->a(Lcom/android/tools/r8/graph/j1;)V

    .line 110
    invoke-interface {p1, p2}, Lcom/android/tools/r8/internal/SW;->d(Lcom/android/tools/r8/graph/j1;)V

    return-void

    :cond_4
    const/4 v2, 0x1

    if-eq p3, v2, :cond_5

    .line 111
    invoke-interface {p1, p2}, Lcom/android/tools/r8/internal/SW;->d(Lcom/android/tools/r8/graph/j1;)V

    return-void

    :cond_5
    if-nez v0, :cond_a

    .line 112
    iget-object p1, p0, Lcom/android/tools/r8/internal/VW;->d:Lcom/android/tools/r8/internal/nJ;

    iget-boolean p1, p1, Lcom/android/tools/r8/internal/nJ;->i1:Z

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/android/tools/r8/internal/VW;->a:Lcom/android/tools/r8/graph/y;

    .line 113
    iget-object p1, p1, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 114
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object p1

    .line 115
    invoke-virtual {p1}, Lcom/android/tools/r8/synthesis/J;->c()Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/android/tools/r8/internal/VW;->a:Lcom/android/tools/r8/graph/y;

    .line 116
    iget-object p1, p1, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 117
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object p1

    .line 118
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p2

    new-instance p3, Lcom/android/tools/r8/internal/mZ0;

    invoke-direct {p3, p0}, Lcom/android/tools/r8/internal/mZ0;-><init>(Lcom/android/tools/r8/internal/VW;)V

    new-instance v0, Lcom/android/tools/r8/internal/nZ0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/nZ0;-><init>()V

    .line 119
    invoke-virtual {p1, p2, p3, v0}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/V60;Lcom/android/tools/r8/internal/V60;)V

    return-void

    .line 120
    :cond_6
    iget-object v0, p2, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/L4;->L()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_1

    .line 121
    :cond_7
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/fB;->q()Ljava/lang/Iterable;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_8
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/zE;

    .line 122
    iget-object v2, p0, Lcom/android/tools/r8/internal/VW;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/zE;->a(Lcom/android/tools/r8/graph/u1;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 123
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->c0()Lcom/android/tools/r8/internal/QJ;

    move-result-object v2

    .line 124
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    .line 125
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    new-instance v3, Lcom/android/tools/r8/internal/hz0;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/hz0;-><init>()V

    .line 126
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/xw0;->d(Ljava/util/function/Predicate;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 127
    iget-object v2, p0, Lcom/android/tools/r8/internal/VW;->a:Lcom/android/tools/r8/graph/y;

    sget-object v3, Lcom/android/tools/r8/internal/yE;->c:Lcom/android/tools/r8/internal/uE;

    .line 128
    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/M1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/M1;

    move-result-object v4

    .line 129
    invoke-virtual {v0, v2, v1, v4, v3}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;Lcom/android/tools/r8/internal/yE;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_1

    .line 130
    :cond_9
    iget-object v2, p0, Lcom/android/tools/r8/internal/VW;->a:Lcom/android/tools/r8/graph/y;

    .line 131
    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/M1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/M1;

    move-result-object v3

    .line 132
    sget-object v4, Lcom/android/tools/r8/internal/yE;->a:Lcom/android/tools/r8/internal/yE;

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;Lcom/android/tools/r8/internal/yE;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_a
    :goto_1
    return-void

    .line 133
    :cond_b
    invoke-interface {p1, p2}, Lcom/android/tools/r8/internal/SW;->a(Lcom/android/tools/r8/graph/j1;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;)Z
    .locals 3

    .line 134
    iget-object v0, p0, Lcom/android/tools/r8/internal/VW;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 135
    sget-boolean v1, Lcom/android/tools/r8/shaking/i;->J:Z

    if-nez v1, :cond_1

    .line 136
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 138
    :cond_1
    :goto_0
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/shaking/i;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    .line 139
    invoke-static {p1}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 140
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H2;->E1()Lcom/android/tools/r8/internal/sK;

    move-result-object p1

    .line 141
    iget-object v1, p1, Lcom/android/tools/r8/internal/sK;->b:Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iget-object p1, p1, Lcom/android/tools/r8/internal/sK;->c:Lcom/android/tools/r8/internal/Jy;

    invoke-static {v1, p1}, Lcom/android/tools/r8/internal/JK;->a(Ljava/util/Iterator;Lcom/android/tools/r8/internal/Jy;)Lcom/android/tools/r8/internal/CK;

    move-result-object p1

    .line 142
    :cond_2
    iget-object v1, p1, Lcom/android/tools/r8/internal/Ps0;->b:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 143
    iget-object v1, p1, Lcom/android/tools/r8/internal/Ps0;->b:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/Ps0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 144
    check-cast v1, Lcom/android/tools/r8/graph/H5;

    .line 145
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/j1;->j1()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/i;->a(Lcom/android/tools/r8/graph/G0;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/xw0;)Z
    .locals 7

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/oZ0;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/tools/r8/internal/oZ0;-><init>(Lcom/android/tools/r8/internal/VW;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/fB;)V

    .line 4
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->y()I

    move-result p2

    .line 5
    :try_start_0
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    .line 6
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->k()Lcom/android/tools/r8/internal/W5;

    move-result-object v2

    .line 7
    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-virtual {v2, p2}, Lcom/android/tools/r8/internal/W5;->c(I)V

    .line 9
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_11

    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/W5;

    .line 11
    sget-boolean v3, Lcom/android/tools/r8/internal/VW;->e:Z

    if-nez v3, :cond_2

    invoke-virtual {v2, p2}, Lcom/android/tools/r8/internal/W5;->a(I)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    .line 12
    :cond_2
    :goto_1
    sget-object v3, Lcom/android/tools/r8/internal/UW;->e:Lcom/android/tools/r8/internal/UW;

    .line 13
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->H()Lcom/android/tools/r8/internal/AE;

    move-result-object v4

    .line 14
    :goto_2
    sget-object v5, Lcom/android/tools/r8/internal/UW;->e:Lcom/android/tools/r8/internal/UW;

    if-ne v3, v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 15
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/zE;

    invoke-interface {v0, v3, v4}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/UW;

    goto :goto_2

    .line 16
    :cond_3
    sget-object v4, Lcom/android/tools/r8/internal/UW;->d:Lcom/android/tools/r8/internal/UW;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v6, 0x0

    if-ne v3, v4, :cond_4

    .line 17
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/fB;->a(I)V

    return v6

    .line 18
    :cond_4
    :try_start_1
    sget-object v4, Lcom/android/tools/r8/internal/UW;->b:Lcom/android/tools/r8/internal/UW;

    if-ne v3, v4, :cond_5

    goto :goto_0

    .line 19
    :cond_5
    sget-object v4, Lcom/android/tools/r8/internal/UW;->c:Lcom/android/tools/r8/internal/UW;

    if-ne v3, v4, :cond_a

    .line 20
    sget-boolean v3, Lcom/android/tools/r8/internal/VW;->e:Z

    if-nez v3, :cond_7

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->p()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_3

    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 21
    :cond_7
    :goto_3
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/CE;->b()Lcom/android/tools/r8/internal/zE;

    move-result-object v2

    if-nez v3, :cond_9

    .line 22
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->H1()Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_4

    :cond_8
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 23
    :cond_9
    :goto_4
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->V()Lcom/android/tools/r8/internal/EB;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/tools/r8/internal/EB;->b(I)Lcom/android/tools/r8/internal/W5;

    move-result-object v2

    .line 24
    invoke-virtual {v2, p2}, Lcom/android/tools/r8/internal/W5;->a(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 25
    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 26
    invoke-virtual {v2, p2}, Lcom/android/tools/r8/internal/W5;->c(I)V

    goto/16 :goto_0

    .line 27
    :cond_a
    sget-boolean v4, Lcom/android/tools/r8/internal/VW;->e:Z

    if-nez v4, :cond_c

    if-ne v3, v5, :cond_b

    goto :goto_5

    :cond_b
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 28
    :cond_c
    :goto_5
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->p()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 29
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/CE;->b()Lcom/android/tools/r8/internal/zE;

    move-result-object v0

    if-nez v4, :cond_e

    .line 30
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->g2()Z

    move-result v1

    if-nez v1, :cond_e

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->m2()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_6

    :cond_d
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    :cond_e
    :goto_6
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/fB;->a(I)V

    return v6

    .line 32
    :cond_f
    :try_start_2
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->v()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_10
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/W5;

    .line 33
    invoke-virtual {v3, p2}, Lcom/android/tools/r8/internal/W5;->a(I)Z

    move-result v4

    if-nez v4, :cond_10

    .line 34
    invoke-virtual {v1, v3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 35
    invoke-virtual {v3, p2}, Lcom/android/tools/r8/internal/W5;->c(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_7

    .line 36
    :cond_11
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/fB;->a(I)V

    const/4 p1, 0x1

    return p1

    :goto_8
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/fB;->a(I)V

    .line 37
    throw v0
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/dt;Ljava/util/Set;)Z
    .locals 7

    .line 146
    sget-boolean v0, Lcom/android/tools/r8/internal/VW;->e:Z

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 147
    :cond_1
    :goto_0
    iget-boolean v0, p2, Lcom/android/tools/r8/internal/xw0;->j:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    return v1

    .line 148
    :cond_2
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    .line 149
    sget-object v2, Lcom/android/tools/r8/internal/qj;->a:Lcom/android/tools/r8/internal/qj;

    .line 150
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v3

    .line 151
    invoke-static {v2, p2, v3}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/e2;Lcom/android/tools/r8/internal/xw0;Ljava/util/Set;)V

    .line 152
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/zE;

    .line 153
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->r1()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 154
    sget-boolean v4, Lcom/android/tools/r8/internal/VW;->e:Z

    if-nez v4, :cond_5

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 155
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/CE;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/android/tools/r8/internal/lZ0;

    invoke-direct {v5, v3}, Lcom/android/tools/r8/internal/lZ0;-><init>(Lcom/android/tools/r8/internal/zE;)V

    .line 156
    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v4

    .line 157
    invoke-interface {v4}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v4

    .line 158
    invoke-virtual {v4}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_4

    goto :goto_2

    .line 159
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 160
    :cond_5
    :goto_2
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 161
    :cond_6
    iget-object v4, p0, Lcom/android/tools/r8/internal/VW;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v5

    invoke-virtual {v3, v4, v5, p2}, Lcom/android/tools/r8/internal/zE;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/xw0;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 162
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 163
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->p()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 164
    :cond_7
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 165
    :cond_8
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->H1()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 166
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->V()Lcom/android/tools/r8/internal/EB;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/EB;->x2()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 167
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->V()Lcom/android/tools/r8/internal/EB;

    move-result-object v4

    .line 168
    iget-object v4, v4, Lcom/android/tools/r8/internal/EB;->l:Lcom/android/tools/r8/internal/NB;

    .line 169
    sget-object v5, Lcom/android/tools/r8/internal/NB;->b:Lcom/android/tools/r8/internal/NB;

    if-eq v4, v5, :cond_9

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->V()Lcom/android/tools/r8/internal/EB;

    move-result-object v4

    .line 170
    iget-object v4, v4, Lcom/android/tools/r8/internal/EB;->l:Lcom/android/tools/r8/internal/NB;

    .line 171
    sget-object v5, Lcom/android/tools/r8/internal/NB;->g:Lcom/android/tools/r8/internal/NB;

    if-ne v4, v5, :cond_3

    .line 172
    :cond_9
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->V()Lcom/android/tools/r8/internal/EB;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/EB;->z2()Lcom/android/tools/r8/internal/W5;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 173
    :cond_a
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    const/4 v2, 0x0

    if-eqz p2, :cond_b

    return v2

    .line 174
    :cond_b
    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_c
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_16

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/tools/r8/internal/W5;

    .line 175
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/W5;

    .line 176
    invoke-virtual {p3, p4, v4}, Lcom/android/tools/r8/internal/dt;->a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/W5;)Z

    move-result v4

    if-eqz v4, :cond_d

    goto :goto_3

    .line 177
    :cond_e
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v3

    .line 178
    new-instance v4, Ljava/util/ArrayDeque;

    invoke-virtual {p4}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object p4

    invoke-direct {v4, p4}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    .line 179
    :cond_f
    :goto_4
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_14

    .line 180
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/tools/r8/internal/W5;

    .line 181
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->k()Lcom/android/tools/r8/internal/W5;

    move-result-object v5

    if-ne p4, v5, :cond_10

    goto :goto_5

    .line 182
    :cond_10
    invoke-interface {v3, p4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    .line 183
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_f

    :goto_5
    return v2

    .line 184
    :cond_11
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_12
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/W5;

    .line 185
    invoke-virtual {p3, p4, v6}, Lcom/android/tools/r8/internal/dt;->a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/W5;)Z

    move-result v6

    if-eqz v6, :cond_12

    goto :goto_4

    .line 186
    :cond_13
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object p4

    invoke-virtual {v4, p4}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    goto :goto_4

    .line 187
    :cond_14
    sget-boolean p4, Lcom/android/tools/r8/internal/VW;->e:Z

    if-nez p4, :cond_c

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_15

    goto :goto_3

    :cond_15
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_16
    return v1
.end method
