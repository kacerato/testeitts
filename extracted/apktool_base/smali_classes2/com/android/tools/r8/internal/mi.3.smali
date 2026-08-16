.class public final Lcom/android/tools/r8/internal/mi;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/internal/t70;

.field public final c:Lcom/android/tools/r8/graph/u1;

.field public final d:Lcom/android/tools/r8/internal/ri;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/t70;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/mi;->a:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/internal/mi;->b:Lcom/android/tools/r8/internal/t70;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/mi;->c:Lcom/android/tools/r8/graph/u1;

    new-instance p2, Lcom/android/tools/r8/internal/ri;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/ri;-><init>(Lcom/android/tools/r8/graph/u1;)V

    iput-object p2, p0, Lcom/android/tools/r8/internal/mi;->d:Lcom/android/tools/r8/internal/ri;

    return-void
.end method

.method public static synthetic a(Ljava/util/List;Lcom/android/tools/r8/internal/oi;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    .line 73
    invoke-interface {p0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    invoke-interface {p1, p3, p2}, Lcom/android/tools/r8/internal/oi;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ;->S0:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lcom/android/tools/r8/internal/WR;->a:Lcom/android/tools/r8/internal/xU;

    .line 4
    iget-boolean v0, v0, Lcom/android/tools/r8/internal/xU;->a:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p0

    .line 6
    const-string v0, "Ldalvik/annotation/codegen/CovariantReturnType;"

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    .line 7
    iget-object p0, p0, Lcom/android/tools/r8/graph/u1;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/M2;

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v1
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/Yx;Lcom/android/tools/r8/internal/oi;)Ljava/util/ArrayList;
    .locals 2

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    new-instance v1, Lcom/android/tools/r8/internal/kl1;

    invoke-direct {v1, p0, v0, p3}, Lcom/android/tools/r8/internal/kl1;-><init>(Lcom/android/tools/r8/internal/mi;Ljava/util/List;Lcom/android/tools/r8/internal/oi;)V

    invoke-interface {p2, v1}, Lcom/android/tools/r8/internal/Yx;->forEach(Ljava/util/function/Consumer;)V

    .line 26
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->b0()Lcom/android/tools/r8/graph/N4;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/N4;->a(Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;)Ljava/util/LinkedHashSet;
    .locals 8

    .line 75
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 76
    iget-object v1, p1, Lcom/android/tools/r8/graph/G0;->c:Lcom/android/tools/r8/graph/h1;

    .line 77
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/b1;->k0()Lcom/android/tools/r8/graph/u0;

    move-result-object v1

    .line 78
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/u0;->m0()[Lcom/android/tools/r8/graph/r0;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 79
    iget-object v5, p0, Lcom/android/tools/r8/internal/mi;->d:Lcom/android/tools/r8/internal/ri;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/r0;->l0()Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    .line 80
    iget-object v7, v5, Lcom/android/tools/r8/internal/ri;->a:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v6, v7}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 81
    iget-object v5, v5, Lcom/android/tools/r8/internal/ri;->b:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v6, v5}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 82
    :cond_0
    iget-object v4, v4, Lcom/android/tools/r8/graph/r0;->c:Lcom/android/tools/r8/graph/e1;

    .line 83
    invoke-virtual {p0, p1, v4, v0}, Lcom/android/tools/r8/internal/mi;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/e1;Ljava/util/LinkedHashSet;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 84
    :cond_2
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 85
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    .line 86
    iget-object p1, p1, Lcom/android/tools/r8/graph/G0;->c:Lcom/android/tools/r8/graph/h1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->k0()Lcom/android/tools/r8/graph/u0;

    move-result-object p1

    .line 87
    new-instance v2, Lcom/android/tools/r8/internal/il1;

    invoke-direct {v2, p0}, Lcom/android/tools/r8/internal/il1;-><init>(Lcom/android/tools/r8/internal/mi;)V

    .line 88
    invoke-virtual {p1, v2}, Lcom/android/tools/r8/graph/u0;->b(Ljava/util/function/Predicate;)Lcom/android/tools/r8/graph/u0;

    move-result-object p1

    .line 89
    iput-object p1, v1, Lcom/android/tools/r8/graph/b1;->b:Lcom/android/tools/r8/graph/u0;

    :cond_3
    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/e1;Ljava/util/LinkedHashSet;)V
    .locals 11

    .line 95
    iget-object v0, p2, Lcom/android/tools/r8/graph/e1;->c:[Lcom/android/tools/r8/graph/t0;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_9

    aget-object v5, v0, v3

    .line 96
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/t0;->k0()Lcom/android/tools/r8/graph/L2;

    move-result-object v6

    .line 97
    iget-object v7, p0, Lcom/android/tools/r8/internal/mi;->d:Lcom/android/tools/r8/internal/ri;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/e1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v8

    .line 98
    iget-object v7, v7, Lcom/android/tools/r8/internal/ri;->a:Lcom/android/tools/r8/graph/M2;

    .line 99
    invoke-virtual {v8, v7}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v7

    const-string v8, ")"

    const-string v9, "\", was: "

    if-eqz v7, :cond_2

    .line 100
    iget-object v7, p0, Lcom/android/tools/r8/internal/mi;->d:Lcom/android/tools/r8/internal/ri;

    iget-object v7, v7, Lcom/android/tools/r8/internal/ri;->d:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v6, v7}, Lcom/android/tools/r8/graph/L2;->g(Lcom/android/tools/r8/graph/L2;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 101
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/t0;->l0()Lcom/android/tools/r8/graph/R2;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/R2;->E0()Lcom/android/tools/r8/graph/R2$l;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 102
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/R2$l;->W0()Lcom/android/tools/r8/graph/d4;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/M2;

    invoke-interface {p3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 103
    :cond_0
    new-instance p2, Lcom/android/tools/r8/internal/If;

    .line 104
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->r()Ljava/lang/String;

    move-result-object p1

    iget-object p3, v5, Lcom/android/tools/r8/graph/t0;->c:Lcom/android/tools/r8/graph/R2;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p3

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expected element \"returnType\" of CovariantReturnType annotation to reference a type (method: \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;)V

    throw p2

    .line 106
    :cond_1
    iget-object v5, p0, Lcom/android/tools/r8/internal/mi;->d:Lcom/android/tools/r8/internal/ri;

    iget-object v5, v5, Lcom/android/tools/r8/internal/ri;->c:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v6, v5}, Lcom/android/tools/r8/graph/L2;->g(Lcom/android/tools/r8/graph/L2;)Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v4, 0x1

    goto/16 :goto_4

    .line 107
    :cond_2
    sget-boolean v7, Lcom/android/tools/r8/internal/mi;->e:Z

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/android/tools/r8/internal/mi;->d:Lcom/android/tools/r8/internal/ri;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/e1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v10

    .line 108
    iget-object v7, v7, Lcom/android/tools/r8/internal/ri;->b:Lcom/android/tools/r8/graph/M2;

    .line 109
    invoke-virtual {v10, v7}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_1

    .line 110
    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 111
    :cond_4
    :goto_1
    iget-object v7, p0, Lcom/android/tools/r8/internal/mi;->d:Lcom/android/tools/r8/internal/ri;

    iget-object v7, v7, Lcom/android/tools/r8/internal/ri;->e:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v6, v7}, Lcom/android/tools/r8/graph/L2;->g(Lcom/android/tools/r8/graph/L2;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 112
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/t0;->l0()Lcom/android/tools/r8/graph/R2;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/R2;->n0()Lcom/android/tools/r8/graph/R2$b;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 113
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/R2$b;->W0()[Lcom/android/tools/r8/graph/R2;

    move-result-object v5

    array-length v6, v5

    move v7, v2

    :goto_2
    if-ge v7, v6, :cond_8

    aget-object v8, v5, v7

    .line 114
    sget-boolean v9, Lcom/android/tools/r8/internal/mi;->e:Z

    if-nez v9, :cond_6

    invoke-virtual {v8}, Lcom/android/tools/r8/graph/R2;->H0()Z

    move-result v9

    if-eqz v9, :cond_5

    goto :goto_3

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 115
    :cond_6
    :goto_3
    invoke-virtual {v8}, Lcom/android/tools/r8/graph/R2;->m0()Lcom/android/tools/r8/graph/R2$a;

    move-result-object v8

    .line 116
    iget-object v8, v8, Lcom/android/tools/r8/graph/R2$a;->d:Lcom/android/tools/r8/graph/e1;

    .line 117
    invoke-virtual {p0, p1, v8, p3}, Lcom/android/tools/r8/internal/mi;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/e1;Ljava/util/LinkedHashSet;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 118
    :cond_7
    new-instance p2, Lcom/android/tools/r8/internal/If;

    .line 119
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->r()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/t0;->l0()Lcom/android/tools/r8/graph/R2;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p3

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expected element \"value\" of CovariantReturnTypes annotation to be an array (method: \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_8
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 121
    :cond_9
    iget-object p3, p0, Lcom/android/tools/r8/internal/mi;->d:Lcom/android/tools/r8/internal/ri;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/e1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    .line 122
    iget-object p3, p3, Lcom/android/tools/r8/internal/ri;->a:Lcom/android/tools/r8/graph/M2;

    .line 123
    invoke-virtual {p2, p3}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result p2

    if-eqz p2, :cond_b

    if-eqz v4, :cond_a

    goto :goto_5

    .line 124
    :cond_a
    new-instance p2, Lcom/android/tools/r8/internal/If;

    .line 125
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->r()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    filled-new-array {p3, p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 126
    const-string p3, "CovariantReturnType annotation for method \"%s\" is missing mandatory element \"presentAfter\" (class %s)"

    invoke-static {p3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_b
    :goto_5
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/oi;Lcom/android/tools/r8/graph/H2;Ljava/util/List;)V
    .locals 2

    .line 20
    new-instance v0, Lcom/android/tools/r8/internal/hH0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/hH0;-><init>()V

    .line 21
    invoke-static {v0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    sget-boolean v1, Lcom/android/tools/r8/internal/AT;->a:Z

    .line 22
    invoke-interface {p3, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 23
    new-instance v0, Lcom/android/tools/r8/internal/rg1;

    invoke-direct {v0, p3}, Lcom/android/tools/r8/internal/rg1;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, p2, v0, p1}, Lcom/android/tools/r8/internal/mi;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/Yx;Lcom/android/tools/r8/internal/oi;)Ljava/util/ArrayList;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/oi;Ljava/util/concurrent/ExecutorService;)V
    .locals 4

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iget-object v1, p0, Lcom/android/tools/r8/internal/mi;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/H2;

    .line 10
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/tools/r8/internal/hl1;

    invoke-direct {v3, v2}, Lcom/android/tools/r8/internal/hl1;-><init>(Lcom/android/tools/r8/graph/H2;)V

    invoke-virtual {p0, v2, v3, p1}, Lcom/android/tools/r8/internal/mi;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/Yx;Lcom/android/tools/r8/internal/oi;)Ljava/util/ArrayList;

    move-result-object v2

    .line 11
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/mi;->b:Lcom/android/tools/r8/internal/t70;

    .line 13
    sget-object v1, Lcom/android/tools/r8/internal/eX;->c:Lcom/android/tools/r8/internal/eX;

    .line 14
    iget-object v2, p0, Lcom/android/tools/r8/internal/mi;->a:Lcom/android/tools/r8/graph/y;

    .line 15
    invoke-static {v2}, Lcom/android/tools/r8/internal/EW;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/EW$a;

    move-result-object v2

    .line 16
    invoke-virtual {p1, v0, v1, v2, p2}, Lcom/android/tools/r8/internal/kB;->a(Ljava/util/ArrayList;Lcom/android/tools/r8/internal/eX;Lcom/android/tools/r8/internal/EW$a;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public final a(Ljava/util/IdentityHashMap;Lcom/android/tools/r8/internal/oi;Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    .line 17
    new-instance v0, Lcom/android/tools/r8/internal/gl1;

    invoke-direct {v0, p0, p2}, Lcom/android/tools/r8/internal/gl1;-><init>(Lcom/android/tools/r8/internal/mi;Lcom/android/tools/r8/internal/oi;)V

    iget-object p2, p0, Lcom/android/tools/r8/internal/mi;->a:Lcom/android/tools/r8/graph/y;

    .line 18
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/nJ;->G()Lcom/android/tools/r8/threading/ThreadingModule;

    move-result-object p2

    .line 19
    invoke-static {p1, v0, p2, p3}, Lcom/android/tools/r8/internal/Kr0;->a(Ljava/util/Map;Lcom/android/tools/r8/internal/Tr0;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public final a(Ljava/util/List;Lcom/android/tools/r8/internal/oi;Lcom/android/tools/r8/graph/H5;)V
    .locals 6

    .line 27
    new-instance v0, Lcom/android/tools/r8/internal/jl1;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/jl1;-><init>(Ljava/util/List;Lcom/android/tools/r8/internal/oi;Lcom/android/tools/r8/graph/H5;)V

    .line 28
    invoke-virtual {p0, p3}, Lcom/android/tools/r8/internal/mi;->a(Lcom/android/tools/r8/graph/H5;)Ljava/util/LinkedHashSet;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/M2;

    .line 29
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    iget-object v2, p0, Lcom/android/tools/r8/internal/mi;->c:Lcom/android/tools/r8/graph/u1;

    .line 30
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/A2;->x0()Lcom/android/tools/r8/graph/O2;

    move-result-object v3

    .line 31
    invoke-virtual {v2, p2, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/O2;)Lcom/android/tools/r8/graph/I2;

    move-result-object p2

    .line 32
    iget-object v3, v1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    iget-object v1, v1, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v2, v3, p2, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p2

    .line 33
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    .line 34
    invoke-virtual {v1, p2}, Lcom/android/tools/r8/graph/E0;->b(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;

    move-result-object v2

    if-nez v2, :cond_0

    .line 35
    sget-object v1, Lcom/android/tools/r8/graph/j1;->u:[Lcom/android/tools/r8/graph/j1;

    const/4 v1, 0x1

    .line 36
    invoke-static {p2, v1}, Lcom/android/tools/r8/internal/li;->a(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v2

    .line 37
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object v3

    .line 38
    new-instance v4, Lcom/android/tools/r8/graph/L4;

    .line 39
    iget v5, v3, Lcom/android/tools/r8/graph/g;->b:I

    .line 40
    iget v3, v3, Lcom/android/tools/r8/graph/g;->c:I

    invoke-direct {v4, v5, v3}, Lcom/android/tools/r8/graph/L4;-><init>(II)V

    .line 41
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/L4;->N()Lcom/android/tools/r8/graph/L4;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/g;->z()Lcom/android/tools/r8/graph/g;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/L4;

    const/16 v4, 0x400

    .line 42
    invoke-virtual {v3, v4}, Lcom/android/tools/r8/graph/g;->b(I)V

    .line 43
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v2

    .line 44
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/j1;->S0()Lcom/android/tools/r8/graph/H3$g;

    move-result-object v3

    .line 45
    iput-object v3, v2, Lcom/android/tools/r8/graph/j1$a;->d:Lcom/android/tools/r8/graph/H3$g;

    .line 46
    iget-object v3, p3, Lcom/android/tools/r8/graph/G0;->c:Lcom/android/tools/r8/graph/h1;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/b1;->k0()Lcom/android/tools/r8/graph/u0;

    move-result-object v3

    .line 47
    iput-object v3, v2, Lcom/android/tools/r8/graph/j1$a;->e:Lcom/android/tools/r8/graph/u0;

    .line 48
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/j1;->U0()Lcom/android/tools/r8/graph/z5;

    move-result-object v3

    .line 49
    iput-object v3, v2, Lcom/android/tools/r8/graph/j1$a;->g:Lcom/android/tools/r8/graph/z5;

    .line 50
    iget-object v3, p0, Lcom/android/tools/r8/internal/mi;->c:Lcom/android/tools/r8/graph/u1;

    .line 51
    new-instance v4, Lcom/android/tools/r8/internal/cy;

    invoke-direct {v4, v3}, Lcom/android/tools/r8/internal/cy;-><init>(Lcom/android/tools/r8/graph/u1;)V

    .line 52
    iput-object p2, v4, Lcom/android/tools/r8/internal/cy;->b:Lcom/android/tools/r8/graph/A2;

    const/4 p2, 0x0

    .line 53
    iput-boolean p2, v4, Lcom/android/tools/r8/internal/cy;->e:Z

    .line 54
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v3

    invoke-virtual {v4, p2, v3}, Lcom/android/tools/r8/internal/cy;->b(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/internal/cy;

    move-result-object p2

    .line 55
    iput-boolean v1, p2, Lcom/android/tools/r8/internal/cy;->h:Z

    .line 56
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/cy;->a()Lcom/android/tools/r8/graph/G;

    move-result-object p2

    .line 57
    invoke-virtual {v2, p2}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/i0;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object p2

    .line 58
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    .line 59
    iget-object v1, v1, Lcom/android/tools/r8/graph/h1;->e:Lcom/android/tools/r8/androidapi/f;

    .line 60
    iput-object v1, p2, Lcom/android/tools/r8/graph/j1$a;->l:Lcom/android/tools/r8/androidapi/f;

    .line 61
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    .line 62
    iget-object v1, v1, Lcom/android/tools/r8/graph/j1;->o:Lcom/android/tools/r8/androidapi/f;

    .line 63
    iput-object v1, p2, Lcom/android/tools/r8/graph/j1$a;->m:Lcom/android/tools/r8/androidapi/f;

    .line 64
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object p2

    .line 65
    new-instance v1, Lcom/android/tools/r8/graph/H5;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lcom/android/tools/r8/graph/H5;-><init>(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/j1;)V

    .line 66
    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 67
    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/mi;->a:Lcom/android/tools/r8/graph/y;

    .line 68
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    .line 69
    iget-object p1, p1, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    .line 70
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->b1()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/A2;->j0()Ljava/lang/String;

    move-result-object p2

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot process CovariantReturnType annotation: Class "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " already has a method \""

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\""

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 72
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/Ef0;->b(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/r0;)Z
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/android/tools/r8/internal/mi;->d:Lcom/android/tools/r8/internal/ri;

    .line 91
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/r0;->l0()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 92
    iget-object v1, v0, Lcom/android/tools/r8/internal/ri;->a:Lcom/android/tools/r8/graph/M2;

    .line 93
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 94
    iget-object v0, v0, Lcom/android/tools/r8/internal/ri;->b:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
