.class public final Lcom/android/tools/r8/internal/R7;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic b:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/R7;->a:Lcom/android/tools/r8/graph/y;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/android/tools/r8/synthesis/S;->u:Lcom/android/tools/r8/synthesis/S$b;

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/y;)Ljava/util/Collection;
    .locals 5

    .line 24
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 25
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->e()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/H2;

    .line 26
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->i1()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->a1()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 28
    new-instance v4, Lcom/android/tools/r8/internal/RU0;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/RU0;-><init>()V

    invoke-static {v4}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/Q7;

    .line 29
    iget-object v3, v3, Lcom/android/tools/r8/internal/Q7;->b:Ljava/util/ArrayList;

    .line 30
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 31
    :cond_2
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    new-instance v1, Lcom/android/tools/r8/internal/SU0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/SU0;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    .line 32
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/K70;)V
    .locals 0

    .line 126
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->a1()Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/tools/r8/internal/K70;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/K70;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ns0;Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->T()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->W()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->e()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->F()Lcom/android/tools/r8/internal/nJ$p;

    move-result-object v0

    .line 5
    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ$p;->X:Z

    if-nez v0, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    new-instance v0, Lcom/android/tools/r8/internal/UU0;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/tools/r8/internal/UU0;-><init>(Lcom/android/tools/r8/graph/y;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V

    const-string p0, "BridgeHoistingToSharedSyntheticSuperClass"

    invoke-virtual {p1, p0, v0}, Lcom/android/tools/r8/internal/ns0;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/Sr0;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V
    .locals 3

    .line 7
    new-instance v0, Lcom/android/tools/r8/internal/R7;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/R7;-><init>(Lcom/android/tools/r8/graph/y;)V

    .line 8
    invoke-static {p0}, Lcom/android/tools/r8/internal/R7;->a(Lcom/android/tools/r8/graph/y;)Ljava/util/Collection;

    move-result-object p0

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/Q7;

    .line 11
    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/R7;->a(Lcom/android/tools/r8/internal/Q7;)Lcom/android/tools/r8/internal/rK;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/vK;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    .line 13
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/R7;->a(Ljava/util/ArrayList;)V

    .line 14
    sget-boolean p0, Lcom/android/tools/r8/internal/R7;->b:Z

    if-nez p0, :cond_2

    iget-object p0, v0, Lcom/android/tools/r8/internal/R7;->a:Lcom/android/tools/r8/graph/y;

    .line 15
    iget-object p0, p0, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 16
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object p0

    .line 17
    invoke-virtual {p0}, Lcom/android/tools/r8/synthesis/J;->b()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 18
    :cond_2
    :goto_1
    iget-object p0, v0, Lcom/android/tools/r8/internal/R7;->a:Lcom/android/tools/r8/graph/y;

    .line 19
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->e()Lcom/android/tools/r8/graph/x0;

    move-result-object v2

    .line 20
    invoke-virtual {p0, v2}, Lcom/android/tools/r8/graph/y;->b(Lcom/android/tools/r8/graph/x0;)V

    .line 21
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/R7;->b(Ljava/util/ArrayList;)V

    .line 22
    new-instance p0, Lcom/android/tools/r8/internal/M7;

    iget-object v1, v0, Lcom/android/tools/r8/internal/R7;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {p0, v1}, Lcom/android/tools/r8/internal/M7;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/M7;->a(Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V

    .line 23
    :cond_3
    iget-object p0, v0, Lcom/android/tools/r8/internal/R7;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/u1;->b()V

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/M2;)Z
    .locals 0

    .line 106
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->R0()Lcom/android/tools/r8/graph/O2;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/O2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static a(Lcom/android/tools/r8/internal/Q7;Lcom/android/tools/r8/internal/Q7;)Z
    .locals 1

    .line 67
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Q7;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    iget-object p1, p1, Lcom/android/tools/r8/internal/Q7;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 69
    iget-object p0, p0, Lcom/android/tools/r8/internal/Q7;->b:Ljava/util/ArrayList;

    .line 70
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ge p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/internal/P7;
    .locals 3

    .line 71
    new-instance v0, Lcom/android/tools/r8/internal/P7;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/P7;-><init>()V

    .line 72
    new-instance v1, Lu/P0;

    invoke-direct {v1}, Lu/P0;-><init>()V

    new-instance v2, Lcom/android/tools/r8/internal/LU0;

    invoke-direct {v2, p0, v0}, Lcom/android/tools/r8/internal/LU0;-><init>(Lcom/android/tools/r8/internal/R7;Lcom/android/tools/r8/internal/P7;)V

    invoke-virtual {p1, v2, v1}, Lcom/android/tools/r8/graph/H2;->j(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/Q7;)Lcom/android/tools/r8/internal/rK;
    .locals 11

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 49
    iget-object v1, p1, Lcom/android/tools/r8/internal/Q7;->b:Ljava/util/ArrayList;

    .line 50
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :cond_0
    :goto_0
    if-ge v4, v2, :cond_5

    .line 51
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/tools/r8/graph/H2;

    .line 52
    invoke-virtual {p0, v5}, Lcom/android/tools/r8/internal/R7;->a(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/internal/P7;

    move-result-object v6

    .line 53
    iget-object v7, v6, Lcom/android/tools/r8/internal/P7;->a:Lcom/android/tools/r8/internal/Cq;

    .line 54
    iget-object v7, v7, Lcom/android/tools/r8/internal/Cq;->b:Ljava/util/Map;

    .line 55
    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v8, v3

    :cond_2
    if-ge v8, v7, :cond_4

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    check-cast v9, Lcom/android/tools/r8/internal/Q7;

    .line 57
    iget-object v10, v9, Lcom/android/tools/r8/internal/Q7;->c:Lcom/android/tools/r8/internal/P7;

    .line 58
    invoke-virtual {v6, v10}, Lcom/android/tools/r8/internal/P7;->a(Lcom/android/tools/r8/internal/P7;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 59
    iget-object v7, v9, Lcom/android/tools/r8/internal/Q7;->b:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 60
    :cond_3
    iget-object v10, v9, Lcom/android/tools/r8/internal/Q7;->c:Lcom/android/tools/r8/internal/P7;

    .line 61
    invoke-virtual {v10, v6}, Lcom/android/tools/r8/internal/P7;->a(Lcom/android/tools/r8/internal/P7;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 62
    iget-object v7, v9, Lcom/android/tools/r8/internal/Q7;->b:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    iput-object v6, v9, Lcom/android/tools/r8/internal/Q7;->c:Lcom/android/tools/r8/internal/P7;

    goto :goto_1

    :cond_4
    const/4 v9, 0x0

    :goto_1
    if-nez v9, :cond_0

    .line 64
    new-instance v7, Lcom/android/tools/r8/internal/Q7;

    invoke-direct {v7, v5, v6}, Lcom/android/tools/r8/internal/Q7;-><init>(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/P7;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 65
    :cond_5
    new-instance v1, Lcom/android/tools/r8/internal/XU0;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/XU0;-><init>(Lcom/android/tools/r8/internal/Q7;)V

    .line 66
    new-instance p1, Lcom/android/tools/r8/internal/rK;

    invoke-direct {p1, v0, v1}, Lcom/android/tools/r8/internal/rK;-><init>(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/V60;)V

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/F2;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/K70;)V
    .locals 2

    .line 132
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->a1()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    iget-object v0, p0, Lcom/android/tools/r8/internal/R7;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/F2;->b()Lcom/android/tools/r8/graph/I2;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/F2;->a()Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    invoke-virtual {v0, p2, v1, p1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    .line 134
    invoke-interface {p3, p1}, Lcom/android/tools/r8/internal/K70;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/K70;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/F2;Lcom/android/tools/r8/synthesis/N;)V
    .locals 3

    .line 109
    sget-boolean v0, Lcom/android/tools/r8/graph/L4;->f:Z

    .line 110
    new-instance v0, Lcom/android/tools/r8/graph/K4;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/K4;-><init>()V

    .line 111
    iget-object v1, v0, Lcom/android/tools/r8/graph/f;->a:Lcom/android/tools/r8/graph/g;

    check-cast v1, Lcom/android/tools/r8/graph/L4;

    const/16 v2, 0x400

    .line 112
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/g;->a(I)V

    const/4 v1, 0x1

    .line 113
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/f;->a(Z)Lcom/android/tools/r8/graph/f;

    move-result-object v0

    .line 114
    check-cast v0, Lcom/android/tools/r8/graph/K4;

    .line 115
    iget-object v0, v0, Lcom/android/tools/r8/graph/f;->a:Lcom/android/tools/r8/graph/g;

    .line 116
    check-cast v0, Lcom/android/tools/r8/graph/L4;

    .line 117
    iput-object v0, p2, Lcom/android/tools/r8/synthesis/N;->i:Lcom/android/tools/r8/graph/L4;

    .line 118
    iget-object v0, p0, Lcom/android/tools/r8/internal/R7;->a:Lcom/android/tools/r8/graph/y;

    .line 119
    iget-object v0, v0, Lcom/android/tools/r8/graph/y;->T:Lcom/android/tools/r8/androidapi/f;

    .line 120
    iput-object v0, p2, Lcom/android/tools/r8/synthesis/N;->m:Lcom/android/tools/r8/androidapi/f;

    .line 121
    sget-object v0, Lcom/android/tools/r8/internal/t40;->b:Lcom/android/tools/r8/internal/t40;

    .line 122
    iput-object v0, p2, Lcom/android/tools/r8/synthesis/N;->p:Lcom/android/tools/r8/internal/t40;

    .line 123
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/F2;->a()Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/synthesis/N;->a(Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/synthesis/N;

    move-result-object p2

    .line 124
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/F2;->b()Lcom/android/tools/r8/graph/I2;

    move-result-object p1

    .line 125
    iput-object p1, p2, Lcom/android/tools/r8/synthesis/N;->e:Lcom/android/tools/r8/graph/I2;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/vg;Lcom/android/tools/r8/graph/F2;Lcom/android/tools/r8/graph/F2;)V
    .locals 2

    .line 127
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->b0()Lcom/android/tools/r8/graph/N4;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/F2;->b()Lcom/android/tools/r8/graph/I2;

    move-result-object v0

    invoke-virtual {p4}, Lcom/android/tools/r8/graph/F2;->a()Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    .line 129
    iget-object p3, p3, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    invoke-virtual {p3, v0, v1}, Lcom/android/tools/r8/graph/O4;->a(Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/j1;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 130
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/A2;

    new-instance v0, Lcom/android/tools/r8/internal/PU0;

    invoke-direct {v0, p0, p4, p1}, Lcom/android/tools/r8/internal/PU0;-><init>(Lcom/android/tools/r8/internal/R7;Lcom/android/tools/r8/graph/F2;Lcom/android/tools/r8/graph/H2;)V

    .line 131
    invoke-virtual {p2, p3, v0}, Lcom/android/tools/r8/internal/vg;->a(Lcom/android/tools/r8/graph/A2;Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Ljava/util/Set;Lcom/android/tools/r8/internal/Q7;Lcom/android/tools/r8/synthesis/W;)V
    .locals 2

    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p4, Lcom/android/tools/r8/synthesis/m;->e:Z

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p4, Lcom/android/tools/r8/synthesis/m;->f:Z

    .line 35
    invoke-virtual {p4}, Lcom/android/tools/r8/synthesis/W;->c()Lcom/android/tools/r8/synthesis/m;

    move-result-object v0

    .line 36
    check-cast v0, Lcom/android/tools/r8/synthesis/W;

    .line 37
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->a1()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 38
    iput-object p1, v0, Lcom/android/tools/r8/synthesis/m;->i:Lcom/android/tools/r8/graph/M2;

    .line 39
    invoke-static {}, Ljava/util/Comparator;->naturalOrder()Ljava/util/Comparator;

    move-result-object p1

    sget-boolean v1, Lcom/android/tools/r8/internal/AT;->a:Z

    .line 40
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 41
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 42
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/synthesis/m;->a(Ljava/util/List;)Lcom/android/tools/r8/synthesis/m;

    .line 43
    iget-object p1, p3, Lcom/android/tools/r8/internal/Q7;->c:Lcom/android/tools/r8/internal/P7;

    .line 44
    new-instance p2, Lcom/android/tools/r8/internal/QU0;

    invoke-direct {p2, p0, p4}, Lcom/android/tools/r8/internal/QU0;-><init>(Lcom/android/tools/r8/internal/R7;Lcom/android/tools/r8/synthesis/W;)V

    .line 45
    iget-object p1, p1, Lcom/android/tools/r8/internal/P7;->a:Lcom/android/tools/r8/internal/Cq;

    .line 46
    iget-object p1, p1, Lcom/android/tools/r8/internal/Cq;->b:Ljava/util/Map;

    .line 47
    invoke-interface {p1, p2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/P7;Lcom/android/tools/r8/graph/H5;)V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/android/tools/r8/internal/R7;->a:Lcom/android/tools/r8/graph/y;

    invoke-static {}, Lcom/android/tools/r8/internal/EW;->d()Lcom/android/tools/r8/internal/EW$a;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/android/tools/r8/graph/H5;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/EW$a;)Lcom/android/tools/r8/internal/fB;

    move-result-object v0

    .line 74
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/L7;->a(Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/internal/fB;)Lcom/android/tools/r8/internal/S7;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    invoke-static {}, Lcom/android/tools/r8/internal/k40;->a()Lcom/android/tools/r8/internal/o40;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->T0()Lcom/android/tools/r8/internal/WY;

    move-result-object v1

    .line 77
    iput-object v0, v1, Lcom/android/tools/r8/internal/WY;->l:Lcom/android/tools/r8/internal/S7;

    .line 78
    instance-of v1, v0, Lcom/android/tools/r8/internal/ox0;

    if-eqz v1, :cond_0

    .line 79
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H0;->x()Lcom/android/tools/r8/graph/D2;

    move-result-object p2

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/S7;->a()Lcom/android/tools/r8/internal/ox0;

    move-result-object v0

    .line 80
    iget-object p1, p1, Lcom/android/tools/r8/internal/P7;->a:Lcom/android/tools/r8/internal/Cq;

    .line 81
    iget-object v0, v0, Lcom/android/tools/r8/internal/ox0;->a:Lcom/android/tools/r8/graph/A2;

    .line 82
    invoke-static {v0, v0}, Lcom/android/tools/r8/internal/rd;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/D2;

    move-result-object v0

    .line 83
    iget-object p1, p1, Lcom/android/tools/r8/internal/Cq;->b:Ljava/util/Map;

    .line 84
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/synthesis/W;Lcom/android/tools/r8/graph/F2;Lcom/android/tools/r8/graph/F2;)V
    .locals 0

    .line 108
    new-instance p2, Lcom/android/tools/r8/internal/TU0;

    invoke-direct {p2, p0, p3}, Lcom/android/tools/r8/internal/TU0;-><init>(Lcom/android/tools/r8/internal/R7;Lcom/android/tools/r8/graph/F2;)V

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/synthesis/m;->a(Ljava/util/function/Consumer;)Lcom/android/tools/r8/synthesis/m;

    return-void
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 12

    .line 85
    iget-object v0, p0, Lcom/android/tools/r8/internal/R7;->a:Lcom/android/tools/r8/graph/y;

    .line 86
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->k()Lcom/android/tools/r8/internal/Ef;

    move-result-object v0

    .line 87
    new-instance v1, Lcom/android/tools/r8/internal/Cf;

    iget-object v2, v0, Lcom/android/tools/r8/internal/Ef;->a:Lcom/android/tools/r8/internal/Hf;

    iget-object v2, v2, Lcom/android/tools/r8/internal/Hf;->b:Ljava/lang/Thread;

    invoke-direct {v1, v0, v2}, Lcom/android/tools/r8/internal/Cf;-><init>(Lcom/android/tools/r8/internal/Ef;Ljava/lang/Thread;)V

    .line 88
    sget-boolean v2, Lcom/android/tools/r8/internal/Ef;->c:Z

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Ef;->a(Lcom/android/tools/r8/internal/Bf;)V

    .line 89
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    :cond_1
    if-ge v3, v0, :cond_3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/tools/r8/internal/Q7;

    .line 90
    iget-object v5, v4, Lcom/android/tools/r8/internal/Q7;->b:Ljava/util/ArrayList;

    .line 91
    invoke-static {v5}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/H2;

    .line 92
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/E0;->R0()Lcom/android/tools/r8/graph/O2;

    move-result-object v6

    invoke-static {v6}, Lcom/android/tools/r8/internal/Al0;->a(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v6

    .line 93
    iget-object v7, v4, Lcom/android/tools/r8/internal/Q7;->b:Ljava/util/ArrayList;

    .line 94
    invoke-static {v7}, Lcom/android/tools/r8/internal/vK;->a(Ljava/util/List;)Lcom/android/tools/r8/internal/uK;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/uK;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/graph/H2;

    .line 95
    new-instance v9, Lcom/android/tools/r8/internal/MU0;

    invoke-direct {v9, v8}, Lcom/android/tools/r8/internal/MU0;-><init>(Lcom/android/tools/r8/graph/H2;)V

    invoke-interface {v6, v9}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    goto :goto_0

    .line 96
    :cond_2
    iget-object v7, p0, Lcom/android/tools/r8/internal/R7;->a:Lcom/android/tools/r8/graph/y;

    .line 97
    iget-object v7, v7, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 98
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v7

    .line 99
    new-instance v8, Lcom/android/tools/r8/internal/NU0;

    invoke-direct {v8}, Lcom/android/tools/r8/internal/NU0;-><init>()V

    .line 100
    invoke-virtual {v1, v5}, Lcom/android/tools/r8/internal/Cf;->a(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/internal/Gf;

    move-result-object v9

    iget-object v10, p0, Lcom/android/tools/r8/internal/R7;->a:Lcom/android/tools/r8/graph/y;

    new-instance v11, Lcom/android/tools/r8/internal/OU0;

    invoke-direct {v11, p0, v5, v6, v4}, Lcom/android/tools/r8/internal/OU0;-><init>(Lcom/android/tools/r8/internal/R7;Lcom/android/tools/r8/graph/H2;Ljava/util/Set;Lcom/android/tools/r8/internal/Q7;)V

    .line 101
    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/synthesis/I;Lcom/android/tools/r8/internal/Gf;Lcom/android/tools/r8/graph/y;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/H2;

    move-result-object v5

    .line 102
    iget-object v4, v4, Lcom/android/tools/r8/internal/Q7;->b:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v7, v2

    :goto_1
    if-ge v7, v6, :cond_1

    .line 103
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Lcom/android/tools/r8/graph/H2;

    .line 104
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v9

    .line 105
    iput-object v9, v8, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final b(Ljava/util/ArrayList;)V
    .locals 11

    iget-object v0, p0, Lcom/android/tools/r8/internal/R7;->a:Lcom/android/tools/r8/graph/y;

    invoke-static {v0}, Lcom/android/tools/r8/internal/M70;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/M70;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/M70;->a()Lcom/android/tools/r8/internal/vg;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :cond_1
    if-ge v3, v1, :cond_2

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/tools/r8/internal/Q7;

    iget-object v5, v4, Lcom/android/tools/r8/internal/Q7;->b:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v7, v2

    :goto_0
    if-ge v7, v6, :cond_1

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Lcom/android/tools/r8/graph/H2;

    new-instance v9, Lcom/android/tools/r8/internal/VU0;

    invoke-direct {v9, v8}, Lcom/android/tools/r8/internal/VU0;-><init>(Lcom/android/tools/r8/graph/H2;)V

    invoke-virtual {v0, v9, v8}, Lcom/android/tools/r8/internal/vg;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/H2;)V

    iget-object v9, v4, Lcom/android/tools/r8/internal/Q7;->c:Lcom/android/tools/r8/internal/P7;

    new-instance v10, Lcom/android/tools/r8/internal/WU0;

    invoke-direct {v10, p0, v8, v0}, Lcom/android/tools/r8/internal/WU0;-><init>(Lcom/android/tools/r8/internal/R7;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/vg;)V

    iget-object v8, v9, Lcom/android/tools/r8/internal/P7;->a:Lcom/android/tools/r8/internal/Cq;

    invoke-virtual {v8, v10}, Lcom/android/tools/r8/internal/Cq;->forEach(Ljava/util/function/BiConsumer;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/tools/r8/internal/R7;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/vg;->a(Lcom/android/tools/r8/graph/y;)V

    return-void
.end method
