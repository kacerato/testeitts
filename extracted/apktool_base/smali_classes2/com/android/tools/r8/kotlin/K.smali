.class public final Lcom/android/tools/r8/kotlin/K;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/kotlin/d0;


# instance fields
.field public final a:Lcom/android/tools/r8/internal/pQ;

.field public final b:Lcom/android/tools/r8/internal/hC;

.field public final c:Lcom/android/tools/r8/kotlin/p0;

.field public final d:Lcom/android/tools/r8/kotlin/p0;

.field public final e:Lcom/android/tools/r8/internal/hC;

.field public final f:Lcom/android/tools/r8/kotlin/N;

.field public final g:Lcom/android/tools/r8/kotlin/s0;

.field public final h:Lcom/android/tools/r8/kotlin/A;

.field public final i:Z

.field public final j:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/pQ;Lcom/android/tools/r8/kotlin/p0;Lcom/android/tools/r8/kotlin/p0;Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/kotlin/N;Lcom/android/tools/r8/kotlin/s0;Lcom/android/tools/r8/kotlin/A;ZLjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/kotlin/K;->a:Lcom/android/tools/r8/internal/pQ;

    iput-object p2, p0, Lcom/android/tools/r8/kotlin/K;->c:Lcom/android/tools/r8/kotlin/p0;

    iput-object p3, p0, Lcom/android/tools/r8/kotlin/K;->d:Lcom/android/tools/r8/kotlin/p0;

    iput-object p4, p0, Lcom/android/tools/r8/kotlin/K;->b:Lcom/android/tools/r8/internal/hC;

    iput-object p5, p0, Lcom/android/tools/r8/kotlin/K;->e:Lcom/android/tools/r8/internal/hC;

    iput-object p6, p0, Lcom/android/tools/r8/kotlin/K;->f:Lcom/android/tools/r8/kotlin/N;

    iput-object p7, p0, Lcom/android/tools/r8/kotlin/K;->g:Lcom/android/tools/r8/kotlin/s0;

    iput-object p8, p0, Lcom/android/tools/r8/kotlin/K;->h:Lcom/android/tools/r8/kotlin/A;

    iput-boolean p9, p0, Lcom/android/tools/r8/kotlin/K;->i:Z

    iput-object p10, p0, Lcom/android/tools/r8/kotlin/K;->j:Ljava/util/List;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/pQ;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;)Lcom/android/tools/r8/kotlin/K;
    .locals 12

    .line 7
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pQ;->e()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/android/tools/r8/kotlin/t0;->a(Ljava/util/List;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;)Lcom/android/tools/r8/internal/hC;

    move-result-object v5

    .line 8
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/kotlin/t0;

    .line 9
    iget-object v1, v1, Lcom/android/tools/r8/kotlin/t0;->a:Lcom/android/tools/r8/internal/EQ;

    .line 10
    sget-object v2, Lcom/android/tools/r8/internal/i5;->a:[Lcom/android/tools/r8/internal/XY;

    .line 11
    const-string v3, "<this>"

    invoke-static {v1, v3}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    sget-object v3, Lcom/android/tools/r8/internal/i5;->b0:Lcom/android/tools/r8/internal/Y6;

    const/16 v4, 0x34

    aget-object v2, v2, v4

    invoke-virtual {v3, v1, v2}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    move v10, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 13
    :goto_1
    new-instance v0, Lcom/android/tools/r8/kotlin/K;

    .line 14
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pQ;->c()Lcom/android/tools/r8/internal/yQ;

    move-result-object v1

    invoke-static {p1, p2, v1}, Lcom/android/tools/r8/kotlin/p0;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/internal/yQ;)Lcom/android/tools/r8/kotlin/p0;

    move-result-object v3

    .line 15
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pQ;->b()Lcom/android/tools/r8/internal/yQ;

    move-result-object v1

    invoke-static {p1, p2, v1}, Lcom/android/tools/r8/kotlin/p0;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/internal/yQ;)Lcom/android/tools/r8/kotlin/p0;

    move-result-object v4

    .line 16
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pQ;->d()Ljava/util/List;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/android/tools/r8/kotlin/q0;->a(Ljava/util/List;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;)Lcom/android/tools/r8/internal/hC;

    move-result-object v6

    .line 17
    invoke-static {p0}, Lcom/android/tools/r8/internal/BL;->a(Lcom/android/tools/r8/internal/pQ;)Lcom/android/tools/r8/internal/OL;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/tools/r8/kotlin/N;->a(Lcom/android/tools/r8/internal/OL;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/kotlin/N;

    move-result-object v7

    .line 18
    invoke-static {p0}, Lcom/android/tools/r8/internal/AL;->a(Lcom/android/tools/r8/internal/pQ;)Lcom/android/tools/r8/internal/EL;

    move-result-object v1

    .line 19
    iget-object v1, v1, Lcom/android/tools/r8/internal/EL;->b:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 20
    invoke-static {v1, p1, v1}, Lcom/android/tools/r8/kotlin/s0;->a(Ljava/lang/String;Lcom/android/tools/r8/graph/u1;Ljava/lang/String;)Lcom/android/tools/r8/kotlin/s0;

    move-result-object v1

    :goto_2
    move-object v8, v1

    goto :goto_3

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    .line 21
    :goto_3
    iget-object v1, p0, Lcom/android/tools/r8/internal/pQ;->i:Lcom/android/tools/r8/internal/gQ;

    .line 22
    invoke-static {v1, p1, p2}, Lcom/android/tools/r8/kotlin/A;->a(Lcom/android/tools/r8/internal/gQ;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;)Lcom/android/tools/r8/kotlin/A;

    move-result-object v9

    .line 23
    iget-object v1, p0, Lcom/android/tools/r8/internal/pQ;->e:Ljava/util/ArrayList;

    .line 24
    new-instance v2, Lcom/android/tools/r8/kotlin/R0;

    invoke-direct {v2, p1, p2}, Lcom/android/tools/r8/kotlin/R0;-><init>(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;)V

    .line 25
    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object v11

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v11}, Lcom/android/tools/r8/kotlin/K;-><init>(Lcom/android/tools/r8/internal/pQ;Lcom/android/tools/r8/kotlin/p0;Lcom/android/tools/r8/kotlin/p0;Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/kotlin/N;Lcom/android/tools/r8/kotlin/s0;Lcom/android/tools/r8/kotlin/A;ZLjava/util/List;)V

    return-object v0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/internal/yQ;)Lcom/android/tools/r8/kotlin/p0;
    .locals 0

    .line 26
    invoke-static {p0, p1, p2}, Lcom/android/tools/r8/kotlin/p0;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/internal/yQ;)Lcom/android/tools/r8/kotlin/p0;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/kotlin/p0;)Ljava/util/function/Consumer;
    .locals 1

    .line 104
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/tools/r8/kotlin/b1;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/kotlin/b1;-><init>(Lcom/android/tools/r8/kotlin/p0;)V

    return-object v0
.end method

.method public static synthetic a(Lcom/android/tools/r8/kotlin/q0;)Ljava/util/function/Consumer;
    .locals 1

    .line 103
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/tools/r8/kotlin/X0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/kotlin/X0;-><init>(Lcom/android/tools/r8/kotlin/q0;)V

    return-object v0
.end method

.method public static synthetic a(Lcom/android/tools/r8/kotlin/t0;)Ljava/util/function/Consumer;
    .locals 1

    .line 91
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/tools/r8/kotlin/W0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/kotlin/W0;-><init>(Lcom/android/tools/r8/kotlin/t0;)V

    return-object v0
.end method

.method public static a(Lcom/android/tools/r8/internal/pQ;Lcom/android/tools/r8/internal/OL;)V
    .locals 1

    .line 1
    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Lcom/android/tools/r8/internal/AL;->a(Lcom/android/tools/r8/internal/pQ;)Lcom/android/tools/r8/internal/EL;

    move-result-object p0

    .line 3
    iput-object p1, p0, Lcom/android/tools/r8/internal/EL;->a:Lcom/android/tools/r8/internal/OL;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/pQ;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 4
    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-static {p0}, Lcom/android/tools/r8/internal/AL;->a(Lcom/android/tools/r8/internal/pQ;)Lcom/android/tools/r8/internal/EL;

    move-result-object p0

    .line 6
    iput-object p1, p0, Lcom/android/tools/r8/internal/EL;->b:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/d1;)V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/K;->b:Lcom/android/tools/r8/internal/hC;

    new-instance v1, Lcom/android/tools/r8/kotlin/Y0;

    invoke-direct {v1}, Lcom/android/tools/r8/kotlin/Y0;-><init>()V

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/internal/Ky;->a(Ljava/lang/Iterable;Ljava/util/function/Function;Ljava/lang/Object;)V

    .line 93
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/K;->c:Lcom/android/tools/r8/kotlin/p0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/kotlin/p0;->a(Lcom/android/tools/r8/graph/d1;)V

    .line 94
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/K;->d:Lcom/android/tools/r8/kotlin/p0;

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/kotlin/p0;->a(Lcom/android/tools/r8/graph/d1;)V

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/K;->e:Lcom/android/tools/r8/internal/hC;

    new-instance v1, Lcom/android/tools/r8/kotlin/Z0;

    invoke-direct {v1}, Lcom/android/tools/r8/kotlin/Z0;-><init>()V

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/internal/Ky;->a(Ljava/lang/Iterable;Ljava/util/function/Function;Ljava/lang/Object;)V

    .line 97
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/K;->j:Ljava/util/List;

    new-instance v1, Lcom/android/tools/r8/kotlin/a1;

    invoke-direct {v1}, Lcom/android/tools/r8/kotlin/a1;-><init>()V

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/internal/Ky;->a(Ljava/lang/Iterable;Ljava/util/function/Function;Ljava/lang/Object;)V

    .line 98
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/K;->f:Lcom/android/tools/r8/kotlin/N;

    if-eqz v0, :cond_1

    .line 99
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/kotlin/N;->a(Lcom/android/tools/r8/graph/d1;)V

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/K;->g:Lcom/android/tools/r8/kotlin/s0;

    if-eqz v0, :cond_2

    .line 101
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/kotlin/s0;->a(Lcom/android/tools/r8/graph/d1;)V

    .line 102
    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/K;->h:Lcom/android/tools/r8/kotlin/A;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/kotlin/A;->a(Lcom/android/tools/r8/graph/d1;)V

    return-void
.end method

.method public final a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/graph/y;)Z
    .locals 7

    .line 27
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/K;->a:Lcom/android/tools/r8/internal/pQ;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pQ;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 28
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    iget-object v2, v2, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v2

    .line 29
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->s()Lcom/android/tools/r8/naming/r0;

    move-result-object v3

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/naming/r0;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/L2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v3

    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move-object v3, v0

    move v0, v1

    .line 31
    :goto_0
    new-instance v2, Lcom/android/tools/r8/internal/pQ;

    .line 32
    const-string v4, "name"

    invoke-static {v3, v4}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {v2, v1, v3}, Lcom/android/tools/r8/internal/pQ;-><init>(ILjava/lang/String;)V

    .line 34
    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 35
    iget-object p1, p0, Lcom/android/tools/r8/kotlin/K;->a:Lcom/android/tools/r8/internal/pQ;

    .line 36
    sget-object v1, Lcom/android/tools/r8/internal/i5;->a:[Lcom/android/tools/r8/internal/XY;

    .line 37
    const-string v3, "<this>"

    invoke-static {p1, v3}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    sget-object v3, Lcom/android/tools/r8/internal/i5;->d:Lcom/android/tools/r8/internal/Y6;

    const/4 v4, 0x2

    aget-object v5, v1, v4

    invoke-virtual {v3, p1, v5}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Z

    move-result v5

    .line 39
    aget-object v4, v1, v4

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;Z)V

    .line 40
    sget-object v3, Lcom/android/tools/r8/internal/i5;->v:Lcom/android/tools/r8/internal/pu;

    const/16 v4, 0x14

    aget-object v5, v1, v4

    invoke-virtual {v3, p1, v5}, Lcom/android/tools/r8/internal/pu;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Ljava/lang/Enum;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/HV;

    .line 41
    const-string v6, "<set-?>"

    invoke-static {v5, v6}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    aget-object v4, v1, v4

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/tools/r8/internal/pu;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;Ljava/lang/Enum;)V

    .line 43
    sget-object v3, Lcom/android/tools/r8/internal/i5;->x:Lcom/android/tools/r8/internal/pu;

    const/16 v4, 0x16

    aget-object v5, v1, v4

    invoke-virtual {v3, p1, v5}, Lcom/android/tools/r8/internal/pu;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Ljava/lang/Enum;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/HX;

    .line 44
    invoke-static {v5, v6}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    aget-object v4, v1, v4

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/tools/r8/internal/pu;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;Ljava/lang/Enum;)V

    .line 46
    sget-object v3, Lcom/android/tools/r8/internal/i5;->y:Lcom/android/tools/r8/internal/Y6;

    const/16 v4, 0x17

    aget-object v5, v1, v4

    invoke-virtual {v3, p1, v5}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Z

    move-result v5

    .line 47
    aget-object v4, v1, v4

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;Z)V

    .line 48
    sget-object v3, Lcom/android/tools/r8/internal/i5;->z:Lcom/android/tools/r8/internal/Y6;

    const/16 v4, 0x18

    aget-object v5, v1, v4

    invoke-virtual {v3, p1, v5}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Z

    move-result v5

    .line 49
    aget-object v4, v1, v4

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;Z)V

    .line 50
    sget-object v3, Lcom/android/tools/r8/internal/i5;->A:Lcom/android/tools/r8/internal/Y6;

    const/16 v4, 0x19

    aget-object v5, v1, v4

    invoke-virtual {v3, p1, v5}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Z

    move-result v5

    .line 51
    aget-object v4, v1, v4

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;Z)V

    .line 52
    sget-object v3, Lcom/android/tools/r8/internal/i5;->B:Lcom/android/tools/r8/internal/Y6;

    const/16 v4, 0x1a

    aget-object v5, v1, v4

    invoke-virtual {v3, p1, v5}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Z

    move-result v5

    .line 53
    aget-object v4, v1, v4

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;Z)V

    .line 54
    sget-object v3, Lcom/android/tools/r8/internal/i5;->C:Lcom/android/tools/r8/internal/Y6;

    const/16 v4, 0x1b

    aget-object v5, v1, v4

    invoke-virtual {v3, p1, v5}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Z

    move-result v5

    .line 55
    aget-object v4, v1, v4

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;Z)V

    .line 56
    sget-object v3, Lcom/android/tools/r8/internal/i5;->D:Lcom/android/tools/r8/internal/Y6;

    const/16 v4, 0x1c

    aget-object v5, v1, v4

    invoke-virtual {v3, p1, v5}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Z

    move-result v5

    .line 57
    aget-object v4, v1, v4

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;Z)V

    .line 58
    sget-object v3, Lcom/android/tools/r8/internal/i5;->E:Lcom/android/tools/r8/internal/Y6;

    const/16 v4, 0x1d

    aget-object v5, v1, v4

    invoke-virtual {v3, p1, v5}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Z

    move-result v5

    .line 59
    aget-object v4, v1, v4

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;Z)V

    .line 60
    sget-object v3, Lcom/android/tools/r8/internal/i5;->w:Lcom/android/tools/r8/internal/pu;

    const/16 v4, 0x15

    aget-object v5, v1, v4

    invoke-virtual {v3, p1, v5}, Lcom/android/tools/r8/internal/pu;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Ljava/lang/Enum;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/Ax0;

    .line 61
    invoke-static {v5, v6}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    aget-object v4, v1, v4

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/tools/r8/internal/pu;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;Ljava/lang/Enum;)V

    .line 63
    sget-object v3, Lcom/android/tools/r8/internal/i5;->F:Lcom/android/tools/r8/internal/Y6;

    const/16 v4, 0x1e

    aget-object v5, v1, v4

    invoke-virtual {v3, p1, v5}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Z

    move-result p1

    .line 64
    aget-object v1, v1, v4

    invoke-virtual {v3, v2, v1, p1}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;Z)V

    .line 65
    iget-object p1, p0, Lcom/android/tools/r8/kotlin/K;->c:Lcom/android/tools/r8/kotlin/p0;

    new-instance v1, Lcom/android/tools/r8/kotlin/c1;

    invoke-direct {v1, v2}, Lcom/android/tools/r8/kotlin/c1;-><init>(Lcom/android/tools/r8/internal/pQ;)V

    invoke-virtual {p1, v1, p3}, Lcom/android/tools/r8/kotlin/p0;->b(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/y;)Z

    move-result p1

    or-int/2addr p1, v0

    .line 66
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/K;->b:Lcom/android/tools/r8/internal/hC;

    .line 67
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/pQ;->e()Ljava/util/List;

    move-result-object v1

    new-instance v3, Lcom/android/tools/r8/kotlin/d1;

    invoke-direct {v3}, Lcom/android/tools/r8/kotlin/d1;-><init>()V

    .line 68
    invoke-static {p3, v0, v1, v3}, Lcom/android/tools/r8/kotlin/b0;->a(Lcom/android/tools/r8/graph/y;Ljava/util/List;Ljava/util/List;Lcom/android/tools/r8/internal/gt0;)Z

    move-result v0

    or-int/2addr p1, v0

    .line 69
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/K;->e:Lcom/android/tools/r8/internal/hC;

    .line 70
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/pQ;->d()Ljava/util/List;

    move-result-object v1

    new-instance v3, Lcom/android/tools/r8/kotlin/e1;

    invoke-direct {v3}, Lcom/android/tools/r8/kotlin/e1;-><init>()V

    .line 71
    invoke-static {p3, v0, v1, v3}, Lcom/android/tools/r8/kotlin/b0;->a(Lcom/android/tools/r8/graph/y;Ljava/util/List;Ljava/util/List;Lcom/android/tools/r8/internal/gt0;)Z

    move-result v0

    or-int/2addr p1, v0

    .line 72
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/K;->j:Ljava/util/List;

    .line 73
    iget-object v1, v2, Lcom/android/tools/r8/internal/pQ;->e:Ljava/util/ArrayList;

    .line 74
    new-instance v3, Lcom/android/tools/r8/kotlin/K0;

    invoke-direct {v3}, Lcom/android/tools/r8/kotlin/K0;-><init>()V

    .line 75
    invoke-static {p3, v0, v1, v3}, Lcom/android/tools/r8/kotlin/b0;->a(Lcom/android/tools/r8/graph/y;Ljava/util/List;Ljava/util/List;Lcom/android/tools/r8/internal/gt0;)Z

    move-result v0

    or-int/2addr p1, v0

    .line 76
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/K;->d:Lcom/android/tools/r8/kotlin/p0;

    .line 77
    new-instance v1, Lcom/android/tools/r8/kotlin/S0;

    invoke-direct {v1, v2}, Lcom/android/tools/r8/kotlin/S0;-><init>(Lcom/android/tools/r8/internal/pQ;)V

    new-instance v3, Lcom/android/tools/r8/kotlin/K0;

    invoke-direct {v3}, Lcom/android/tools/r8/kotlin/K0;-><init>()V

    .line 78
    invoke-static {p3, v0, v1, v3}, Lcom/android/tools/r8/kotlin/b0;->a(Lcom/android/tools/r8/graph/y;Ljava/lang/Object;Ljava/util/function/Consumer;Lcom/android/tools/r8/internal/gt0;)Z

    move-result v0

    or-int/2addr p1, v0

    .line 79
    iget-object v0, v2, Lcom/android/tools/r8/internal/pQ;->h:Ljava/util/ArrayList;

    .line 80
    iget-object v1, p0, Lcom/android/tools/r8/kotlin/K;->a:Lcom/android/tools/r8/internal/pQ;

    .line 81
    iget-object v1, v1, Lcom/android/tools/r8/internal/pQ;->h:Ljava/util/ArrayList;

    .line 82
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 83
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/K;->f:Lcom/android/tools/r8/kotlin/N;

    if-eqz v0, :cond_1

    .line 84
    new-instance v1, Lcom/android/tools/r8/kotlin/T0;

    invoke-direct {v1, v2}, Lcom/android/tools/r8/kotlin/T0;-><init>(Lcom/android/tools/r8/internal/pQ;)V

    .line 85
    invoke-virtual {v0, v1, p2, p3}, Lcom/android/tools/r8/kotlin/N;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/graph/y;)Z

    move-result p2

    or-int/2addr p1, p2

    .line 86
    :cond_1
    iget-object p2, p0, Lcom/android/tools/r8/kotlin/K;->g:Lcom/android/tools/r8/kotlin/s0;

    if-eqz p2, :cond_2

    .line 87
    new-instance v0, Lcom/android/tools/r8/kotlin/U0;

    invoke-direct {v0, v2}, Lcom/android/tools/r8/kotlin/U0;-><init>(Lcom/android/tools/r8/internal/pQ;)V

    const/4 v1, 0x0

    .line 88
    invoke-virtual {p2, v0, p3, v1}, Lcom/android/tools/r8/kotlin/s0;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/y;Ljava/lang/String;)Z

    move-result p2

    or-int/2addr p1, p2

    .line 89
    :cond_2
    iget-object p2, p0, Lcom/android/tools/r8/kotlin/K;->h:Lcom/android/tools/r8/kotlin/A;

    new-instance v0, Lcom/android/tools/r8/kotlin/V0;

    invoke-direct {v0, v2}, Lcom/android/tools/r8/kotlin/V0;-><init>(Lcom/android/tools/r8/internal/pQ;)V

    invoke-virtual {p2, v0, p3}, Lcom/android/tools/r8/kotlin/A;->b(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/y;)Z

    move-result p2

    or-int/2addr p1, p2

    return p1
.end method

.method public final a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/y;)Z
    .locals 1

    const/4 v0, 0x0

    .line 90
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/tools/r8/kotlin/K;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/graph/y;)Z

    move-result p1

    return p1
.end method

.method public final d()Lcom/android/tools/r8/kotlin/K;
    .locals 0

    return-object p0
.end method

.method public final j()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
