.class public final Lcom/android/tools/r8/internal/JI;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/internal/yI;

.field public final c:Ljava/util/concurrent/ConcurrentHashMap;

.field public final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/JI;->c:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p1, p0, Lcom/android/tools/r8/internal/JI;->a:Lcom/android/tools/r8/graph/y;

    new-instance v0, Lcom/android/tools/r8/internal/yI;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/yI;-><init>(Lcom/android/tools/r8/graph/y;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/JI;->b:Lcom/android/tools/r8/internal/yI;

    iput p2, p0, Lcom/android/tools/r8/internal/JI;->d:I

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/y;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/H5;
    .locals 10

    .line 166
    iget-object v0, p3, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 167
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v1

    .line 168
    new-instance v4, Lcom/android/tools/r8/internal/BJ0;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/BJ0;-><init>()V

    new-instance v7, Lcom/android/tools/r8/internal/CJ0;

    invoke-direct {v7, p0}, Lcom/android/tools/r8/internal/CJ0;-><init>(Lcom/android/tools/r8/graph/H2;)V

    move-object v2, p1

    move-object v3, p2

    move-object v5, p0

    move-object v6, p3

    move-object v8, p4

    move-object v9, p5

    .line 169
    invoke-virtual/range {v1 .. v9}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/synthesis/I;Lcom/android/tools/r8/graph/J5;Lcom/android/tools/r8/graph/y;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/H5;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/tools/r8/synthesis/S;->j:Lcom/android/tools/r8/synthesis/S$b;

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/synthesis/W;)V
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/tools/r8/graph/E0;->i:Lcom/android/tools/r8/graph/L2;

    .line 39
    iput-object p0, p1, Lcom/android/tools/r8/synthesis/m;->k:Lcom/android/tools/r8/graph/L2;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/GI;Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/graph/j1;)V
    .locals 2

    .line 135
    sget-boolean v0, Lcom/android/tools/r8/internal/JI;->e:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v1

    invoke-static {v1}, Lcom/android/tools/r8/graph/g4;->a(Lcom/android/tools/r8/graph/i0;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 136
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/graph/g4;->a(Lcom/android/tools/r8/graph/i0;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 137
    :cond_3
    :goto_1
    iget-object v0, p1, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    const/16 v1, 0x400

    .line 138
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/g;->a(I)V

    .line 139
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->L0()V

    const/4 v0, 0x0

    .line 140
    iput-object v0, p1, Lcom/android/tools/r8/graph/j1;->j:Lcom/android/tools/r8/graph/i0;

    .line 141
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/A2;

    .line 142
    iget-object p0, p0, Lcom/android/tools/r8/internal/GI;->b:Lcom/android/tools/r8/internal/r6;

    .line 143
    iget-object p0, p0, Lcom/android/tools/r8/internal/r6;->b:Lcom/android/tools/r8/internal/eA;

    const/4 v0, 0x1

    .line 144
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/tools/r8/internal/eA;->a(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic a(Ljava/util/function/BiConsumer;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/II;)V
    .locals 0

    .line 147
    iget-object p1, p2, Lcom/android/tools/r8/internal/II;->b:Ljava/util/IdentityHashMap;

    if-eqz p1, :cond_0

    .line 148
    invoke-virtual {p1, p0}, Ljava/util/IdentityHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    :cond_0
    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/internal/II;
    .locals 0

    new-instance p0, Lcom/android/tools/r8/internal/II;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/II;-><init>()V

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/HI;
    .locals 4

    .line 124
    sget v0, Lcom/android/tools/r8/internal/HI;->o:I

    .line 125
    new-instance v0, Lcom/android/tools/r8/internal/GI;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/GI;-><init>()V

    .line 126
    iget-object v1, p0, Lcom/android/tools/r8/internal/JI;->c:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Lcom/android/tools/r8/internal/zJ0;

    invoke-direct {v2, p0, v0}, Lcom/android/tools/r8/internal/zJ0;-><init>(Lcom/android/tools/r8/internal/JI;Lcom/android/tools/r8/internal/GI;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 127
    iget-object v1, p0, Lcom/android/tools/r8/internal/JI;->a:Lcom/android/tools/r8/graph/y;

    .line 128
    iget-object v2, v0, Lcom/android/tools/r8/internal/Ez;->a:Lcom/android/tools/r8/internal/n6;

    .line 129
    iget-object v2, v2, Lcom/android/tools/r8/internal/l6;->b:Ljava/util/AbstractMap;

    .line 130
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 131
    iget-object v2, v0, Lcom/android/tools/r8/internal/GI;->b:Lcom/android/tools/r8/internal/r6;

    .line 132
    iget-object v2, v2, Lcom/android/tools/r8/internal/r6;->b:Lcom/android/tools/r8/internal/eA;

    .line 133
    invoke-virtual {v2}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 134
    :cond_0
    new-instance v2, Lcom/android/tools/r8/internal/HI;

    iget-object v3, v0, Lcom/android/tools/r8/internal/Ez;->a:Lcom/android/tools/r8/internal/n6;

    iget-object v0, v0, Lcom/android/tools/r8/internal/GI;->b:Lcom/android/tools/r8/internal/r6;

    invoke-direct {v2, v1, v3, v0}, Lcom/android/tools/r8/internal/HI;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/n6;Lcom/android/tools/r8/internal/UY;)V

    return-object v2
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/internal/II;
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/android/tools/r8/internal/JI;->c:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lcom/android/tools/r8/internal/wJ0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/wJ0;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/II;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 9

    .line 40
    sget-boolean v0, Lcom/android/tools/r8/internal/JI;->e:Z

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v1

    invoke-static {v1}, Lcom/android/tools/r8/graph/g4;->a(Lcom/android/tools/r8/graph/i0;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 41
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_18

    .line 42
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v1

    if-nez v0, :cond_3

    if-eqz v1, :cond_2

    goto :goto_1

    .line 43
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 44
    :cond_3
    :goto_1
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/i0;->v0()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 45
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/i0;->C()Lcom/android/tools/r8/graph/J0;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/J0;->j:[Lcom/android/tools/r8/internal/Np;

    array-length v1, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_9

    aget-object v4, v0, v3

    .line 46
    instance-of v4, v4, Lcom/android/tools/r8/internal/jq;

    if-nez v4, :cond_8

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    if-nez v0, :cond_6

    .line 47
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/i0;->t0()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 48
    :cond_6
    :goto_3
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/i0;->V()Lcom/android/tools/r8/graph/G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G;->E0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/W9;

    .line 49
    instance-of v3, v1, Lcom/android/tools/r8/internal/ga;

    if-eqz v3, :cond_7

    check-cast v1, Lcom/android/tools/r8/internal/ga;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/ga;->b(Lcom/android/tools/r8/graph/M2;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_4

    .line 50
    :cond_8
    new-instance p2, Lcom/android/tools/r8/internal/If;

    .line 51
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->r()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "One or more instruction is preventing default interface method from being desugared: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 52
    iget-object p1, p1, Lcom/android/tools/r8/graph/G0;->b:Lcom/android/tools/r8/graph/E0;

    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->d:Lcom/android/tools/r8/origin/Origin;

    .line 53
    invoke-direct {p2, p1, v0, v2}, Lcom/android/tools/r8/internal/If;-><init>(Lcom/android/tools/r8/origin/Origin;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    throw p2

    .line 55
    :cond_9
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    .line 56
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    .line 57
    sget-boolean v2, Lcom/android/tools/r8/internal/JI;->e:Z

    if-nez v2, :cond_b

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->i1()Z

    move-result v3

    if-nez v3, :cond_a

    goto :goto_5

    :cond_a
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_b
    :goto_5
    if-nez v2, :cond_d

    .line 58
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h1;->G0()Z

    move-result v3

    if-nez v3, :cond_d

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h1;->H0()Z

    move-result v3

    if-eqz v3, :cond_c

    goto :goto_6

    :cond_c
    new-instance p2, Ljava/lang/AssertionError;

    .line 59
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->r()Ljava/lang/String;

    move-result-object v0

    .line 60
    iget-object p1, p1, Lcom/android/tools/r8/graph/G0;->b:Lcom/android/tools/r8/graph/E0;

    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->d:Lcom/android/tools/r8/origin/Origin;

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Static interface method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is expected to either be public or private in "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2

    .line 62
    :cond_d
    :goto_6
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result v3

    if-nez v3, :cond_12

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h1;->G0()Z

    move-result v3

    if-eqz v3, :cond_e

    goto :goto_8

    :cond_e
    if-nez v2, :cond_10

    .line 63
    iget-object v2, p0, Lcom/android/tools/r8/internal/JI;->b:Lcom/android/tools/r8/internal/yI;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/tools/r8/internal/yI;->a(Lcom/android/tools/r8/graph/j1;)Z

    move-result v2

    if-eqz v2, :cond_f

    goto :goto_7

    :cond_f
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 64
    :cond_10
    :goto_7
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/JI;->a(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/internal/II;

    move-result-object v0

    .line 65
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/j1;

    .line 66
    iget-object v4, v0, Lcom/android/tools/r8/internal/II;->a:Ljava/util/IdentityHashMap;

    if-nez v4, :cond_11

    .line 67
    new-instance v4, Ljava/util/IdentityHashMap;

    invoke-direct {v4}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v4, v0, Lcom/android/tools/r8/internal/II;->a:Ljava/util/IdentityHashMap;

    .line 68
    :cond_11
    iget-object v0, v0, Lcom/android/tools/r8/internal/II;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, v2, v3}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 69
    :cond_12
    :goto_8
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/JI;->a(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/internal/II;

    move-result-object v2

    const/4 v3, 0x1

    .line 70
    iput-boolean v3, v2, Lcom/android/tools/r8/internal/II;->c:Z

    .line 71
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/JI;->a(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/internal/II;

    move-result-object v0

    .line 72
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/A2;

    .line 73
    iget-object v4, v0, Lcom/android/tools/r8/internal/II;->b:Ljava/util/IdentityHashMap;

    if-nez v4, :cond_13

    .line 74
    new-instance v4, Ljava/util/IdentityHashMap;

    invoke-direct {v4}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v4, v0, Lcom/android/tools/r8/internal/II;->b:Ljava/util/IdentityHashMap;

    .line 75
    :cond_13
    iget-object v0, v0, Lcom/android/tools/r8/internal/II;->b:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, v2, v3}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :goto_9
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->a1()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 77
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->P0()Lcom/android/tools/r8/internal/Ib;

    move-result-object v2

    .line 78
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 79
    sget-boolean v3, Lcom/android/tools/r8/graph/j1;->x:Z

    if-nez v3, :cond_15

    if-eqz v2, :cond_14

    goto :goto_a

    :cond_14
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 80
    :cond_15
    :goto_a
    iget-object v3, v0, Lcom/android/tools/r8/graph/j1;->n:Lcom/android/tools/r8/internal/Ib;

    invoke-static {v3, v2}, Lcom/android/tools/r8/internal/C40;->c(Lcom/android/tools/r8/internal/C40;Lcom/android/tools/r8/internal/C40;)Lcom/android/tools/r8/internal/C40;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/Ib;

    iput-object v2, v0, Lcom/android/tools/r8/graph/j1;->n:Lcom/android/tools/r8/internal/Ib;

    .line 81
    :cond_16
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v3

    .line 82
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/tools/r8/graph/A2;

    .line 83
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h1;->F0()Z

    move-result v5

    .line 84
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/tools/r8/graph/A2;

    .line 85
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h1;->F0()Z

    move-result v7

    iget-object v0, p0, Lcom/android/tools/r8/internal/JI;->a:Lcom/android/tools/r8/graph/y;

    .line 86
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v8

    .line 87
    invoke-virtual/range {v3 .. v8}, Lcom/android/tools/r8/graph/i0;->a(Lcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/i0;

    move-result-object v0

    .line 88
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result v1

    if-nez v1, :cond_17

    .line 89
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/A2;->w0()I

    move-result v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/JI;->a:Lcom/android/tools/r8/graph/y;

    .line 90
    invoke-static {v0, v1, v2}, Lcom/android/tools/r8/graph/j1;->a(Lcom/android/tools/r8/graph/i0;ILcom/android/tools/r8/graph/y;)V

    .line 91
    :cond_17
    iget-object v1, p0, Lcom/android/tools/r8/internal/JI;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2, v0, v1}, Lcom/android/tools/r8/graph/H5;->a(Lcom/android/tools/r8/graph/i0;Lcom/android/tools/r8/graph/y;)V

    .line 92
    sget-object p2, Lcom/android/tools/r8/graph/g4;->e:Lcom/android/tools/r8/graph/g4;

    iget-object v0, p0, Lcom/android/tools/r8/internal/JI;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1, p2, v0}, Lcom/android/tools/r8/graph/H5;->a(Lcom/android/tools/r8/graph/i0;Lcom/android/tools/r8/graph/y;)V

    return-void

    .line 93
    :cond_18
    new-instance p2, Lcom/android/tools/r8/internal/If;

    .line 94
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/A2;->j0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Code is missing for private instance interface method: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    iget-object p1, p1, Lcom/android/tools/r8/graph/G0;->b:Lcom/android/tools/r8/graph/E0;

    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->d:Lcom/android/tools/r8/origin/Origin;

    .line 96
    invoke-direct {p2, p1, v0, v2}, Lcom/android/tools/r8/internal/If;-><init>(Lcom/android/tools/r8/origin/Origin;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 97
    throw p2
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/ea;)V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/internal/JI;->e:Z

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/JI;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 2
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_2

    .line 3
    :cond_2
    iget v1, p0, Lcom/android/tools/r8/internal/JI;->d:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_6

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/JI;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/android/tools/r8/internal/WR;->a:Lcom/android/tools/r8/internal/xU;

    .line 6
    iget-boolean v0, v0, Lcom/android/tools/r8/internal/xU;->a:Z

    if-nez v0, :cond_3

    goto/16 :goto_2

    .line 7
    :cond_3
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    .line 8
    iget-object v0, v0, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    .line 9
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/L4;->D()Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_2

    .line 10
    :cond_4
    iget-object v0, p0, Lcom/android/tools/r8/internal/JI;->b:Lcom/android/tools/r8/internal/yI;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/yI;->c(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 11
    iget-object v0, p0, Lcom/android/tools/r8/internal/JI;->b:Lcom/android/tools/r8/internal/yI;

    .line 12
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/yI;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/H0;)Lcom/android/tools/r8/internal/cu;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 13
    iget-object v0, p0, Lcom/android/tools/r8/internal/JI;->b:Lcom/android/tools/r8/internal/yI;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/tools/r8/internal/yI;->a(Lcom/android/tools/r8/graph/j1;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 14
    iget-object v0, p0, Lcom/android/tools/r8/internal/JI;->b:Lcom/android/tools/r8/internal/yI;

    .line 15
    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/yI;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/AI;)Lcom/android/tools/r8/graph/H5;

    move-result-object p2

    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/JI;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    .line 17
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/JI;->a(Lcom/android/tools/r8/graph/H5;)Z

    move-result p2

    if-nez p2, :cond_b

    .line 18
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/JI;->a(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/internal/II;

    move-result-object p1

    .line 19
    iput-boolean v3, p1, Lcom/android/tools/r8/internal/II;->d:Z

    return-void

    .line 20
    :cond_6
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    .line 21
    iget-object v1, v1, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    .line 22
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/L4;->D()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 23
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->f1()Z

    move-result v0

    if-nez v0, :cond_b

    .line 24
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/JI;->a(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/internal/II;

    move-result-object v0

    .line 25
    iput-boolean v3, v0, Lcom/android/tools/r8/internal/II;->c:Z

    .line 26
    iget-object v0, p0, Lcom/android/tools/r8/internal/JI;->b:Lcom/android/tools/r8/internal/yI;

    .line 27
    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/yI;->b(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/AI;)Lcom/android/tools/r8/graph/H5;

    move-result-object p2

    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/JI;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    return-void

    :cond_7
    if-nez v0, :cond_9

    .line 29
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->J0()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_1

    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 30
    :cond_9
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/JI;->b:Lcom/android/tools/r8/internal/yI;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/tools/r8/internal/yI;->a(Lcom/android/tools/r8/graph/j1;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 31
    iget-object v0, p0, Lcom/android/tools/r8/internal/JI;->b:Lcom/android/tools/r8/internal/yI;

    .line 32
    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/yI;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/AI;)Lcom/android/tools/r8/graph/H5;

    move-result-object p2

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/JI;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    .line 34
    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/JI;->a(Lcom/android/tools/r8/graph/H5;)Z

    move-result p2

    if-nez p2, :cond_b

    .line 35
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/JI;->a(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/internal/II;

    move-result-object p1

    .line 36
    iput-boolean v3, p1, Lcom/android/tools/r8/internal/II;->d:Z

    :cond_b
    :goto_2
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/GI;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/II;)V
    .locals 2

    .line 149
    iget-boolean v0, p3, Lcom/android/tools/r8/internal/II;->c:Z

    if-nez v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/tools/r8/internal/JI;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 151
    :cond_0
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->L0()Lcom/android/tools/r8/graph/j1;

    move-result-object v0

    .line 152
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->b0()Lcom/android/tools/r8/graph/N4;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 153
    filled-new-array {v0}, [Lcom/android/tools/r8/graph/j1;

    move-result-object v0

    .line 154
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/graph/N4;->a([Lcom/android/tools/r8/graph/j1;)V

    goto :goto_0

    .line 155
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 156
    sget-object v0, Lcom/android/tools/r8/graph/j1;->v:Lcom/android/tools/r8/graph/j1;

    iput-object v0, v1, Lcom/android/tools/r8/graph/N4;->c:Lcom/android/tools/r8/graph/j1;

    .line 157
    iget-object v0, v1, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/O4;->a()V

    .line 158
    :cond_2
    :goto_0
    iget-object v0, p3, Lcom/android/tools/r8/internal/II;->a:Ljava/util/IdentityHashMap;

    if-eqz v0, :cond_3

    .line 159
    new-instance v1, Lcom/android/tools/r8/internal/xJ0;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/xJ0;-><init>(Lcom/android/tools/r8/internal/GI;)V

    .line 160
    invoke-virtual {v0, v1}, Ljava/util/IdentityHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 161
    :cond_3
    iget-object v0, p3, Lcom/android/tools/r8/internal/II;->b:Ljava/util/IdentityHashMap;

    if-eqz v0, :cond_4

    .line 162
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/tools/r8/internal/yJ0;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/yJ0;-><init>(Lcom/android/tools/r8/internal/GI;)V

    invoke-virtual {v0, v1}, Ljava/util/IdentityHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 163
    :cond_4
    iget-boolean p1, p3, Lcom/android/tools/r8/internal/II;->d:Z

    if-eqz p1, :cond_7

    .line 164
    sget-boolean p1, Lcom/android/tools/r8/internal/JI;->e:Z

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/android/tools/r8/internal/JI;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 165
    :cond_6
    :goto_1
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/JI;->c(Lcom/android/tools/r8/graph/H2;)V

    :cond_7
    return-void
.end method

.method public final a(Ljava/util/function/BiConsumer;)V
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/android/tools/r8/internal/JI;->c:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lcom/android/tools/r8/internal/AJ0;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/AJ0;-><init>(Ljava/util/function/BiConsumer;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;)Z
    .locals 9

    .line 98
    sget-boolean v0, Lcom/android/tools/r8/internal/JI;->e:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/JI;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 99
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    .line 100
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/L4;->I()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 101
    iget-object v1, p0, Lcom/android/tools/r8/internal/JI;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->M()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    return v2

    .line 102
    :cond_2
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    .line 103
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 104
    iget-object v4, v0, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    if-eqz v4, :cond_3

    .line 105
    new-instance v5, Lcom/android/tools/r8/internal/o50;

    invoke-direct {v5, v0, v4}, Lcom/android/tools/r8/internal/o50;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_3
    iget-object v4, v0, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    iget-object v4, v4, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    array-length v5, v4

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_4

    aget-object v7, v4, v6

    .line 107
    new-instance v8, Lcom/android/tools/r8/internal/o50;

    invoke-direct {v8, v0, v7}, Lcom/android/tools/r8/internal/o50;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 108
    :cond_4
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 109
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/o50;

    .line 110
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/o50;->b()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/o50;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/E0;

    .line 111
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 112
    iget-object v5, p0, Lcom/android/tools/r8/internal/JI;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    iget-object v6, v0, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    if-ne v6, v4, :cond_5

    goto :goto_3

    .line 114
    :cond_5
    invoke-virtual {v5, v4}, Lcom/android/tools/r8/graph/h;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 115
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/E0;->f0()Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->f0()Z

    move-result v6

    if-nez v6, :cond_6

    .line 116
    invoke-virtual {v5, v0, v4}, Lcom/android/tools/r8/graph/h;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/E0;)V

    :cond_6
    move-object v0, v4

    goto :goto_3

    .line 117
    :cond_7
    iget-object v0, p0, Lcom/android/tools/r8/internal/JI;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, v4}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    :goto_3
    if-eqz v0, :cond_4

    .line 118
    iget-object v4, v0, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_2

    .line 119
    :cond_8
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, v4}, Lcom/android/tools/r8/graph/E0;->c(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;

    move-result-object v4

    if-eqz v4, :cond_9

    return v2

    .line 120
    :cond_9
    iget-object v4, v0, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    if-eqz v4, :cond_a

    .line 121
    new-instance v5, Lcom/android/tools/r8/internal/o50;

    invoke-direct {v5, v0, v4}, Lcom/android/tools/r8/internal/o50;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 122
    :cond_a
    iget-object v4, v0, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    iget-object v4, v4, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    array-length v5, v4

    move v6, v2

    :goto_4
    if-ge v6, v5, :cond_4

    aget-object v7, v4, v6

    .line 123
    new-instance v8, Lcom/android/tools/r8/internal/o50;

    invoke-direct {v8, v0, v7}, Lcom/android/tools/r8/internal/o50;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_b
    const/4 p1, 0x1

    return p1
.end method

.method public final c(Lcom/android/tools/r8/graph/H2;)V
    .locals 4

    sget-boolean v0, Lcom/android/tools/r8/internal/JI;->e:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/JI;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H2;->M1()Lcom/android/tools/r8/internal/sK;

    move-result-object v1

    iget-object v2, v1, Lcom/android/tools/r8/internal/sK;->b:Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    iget-object v1, v1, Lcom/android/tools/r8/internal/sK;->c:Lcom/android/tools/r8/internal/Jy;

    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/JK;->a(Ljava/util/Iterator;Lcom/android/tools/r8/internal/Jy;)Lcom/android/tools/r8/internal/CK;

    move-result-object v1

    :cond_2
    :goto_1
    iget-object v2, v1, Lcom/android/tools/r8/internal/Ps0;->b:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v1, Lcom/android/tools/r8/internal/Ps0;->b:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/Ps0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/H5;

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/JI;->a(Lcom/android/tools/r8/graph/H5;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->b0()Lcom/android/tools/r8/graph/N4;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/N4;->e()I

    move-result v2

    if-ge v1, v2, :cond_4

    sget-object v1, Lcom/android/tools/r8/graph/j1;->u:[Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/E0;->a([Lcom/android/tools/r8/graph/j1;)V

    return-void

    :cond_4
    sget-boolean v0, Lcom/android/tools/r8/internal/JI;->e:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " was analysed as having bridges to remove, but no bridges were found."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
