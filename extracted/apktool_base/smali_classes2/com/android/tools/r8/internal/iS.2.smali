.class public abstract Lcom/android/tools/r8/internal/iS;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/H5;)I
    .locals 3

    .line 110
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/i0;->v0()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 112
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/i0;->C()Lcom/android/tools/r8/graph/J0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/J0;->E0()Lcom/android/tools/r8/graph/W0;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    .line 113
    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/W0;->p0()I

    move-result p0

    return p0

    .line 114
    :cond_2
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/i0;->t0()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 115
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/i0;->V()Lcom/android/tools/r8/graph/G;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G;->E0()Ljava/util/List;

    move-result-object p0

    .line 116
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/W9;

    .line 117
    instance-of v2, v1, Lcom/android/tools/r8/internal/Ma;

    if-nez v2, :cond_3

    goto :goto_0

    .line 118
    :cond_3
    check-cast v1, Lcom/android/tools/r8/internal/Ma;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Ma;->V()Lcom/android/tools/r8/internal/B60;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/B60;->f()I

    move-result p0

    return p0

    :cond_4
    return v0
.end method

.method public static a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)I
    .locals 2

    .line 120
    invoke-static {p0}, Lcom/android/tools/r8/internal/iS;->a(Lcom/android/tools/r8/graph/H5;)I

    move-result v0

    .line 121
    invoke-static {p1}, Lcom/android/tools/r8/internal/iS;->a(Lcom/android/tools/r8/graph/H5;)I

    move-result v1

    sub-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v0

    .line 122
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    .line 123
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-interface {p0, p1}, Lcom/android/tools/r8/internal/Mq0;->a(Lcom/android/tools/r8/internal/Mq0;)I

    move-result p0

    return p0
.end method

.method public static a(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ns0;Lcom/android/tools/r8/internal/K40;Lcom/android/tools/r8/internal/lj;)Lcom/android/tools/r8/naming/I0;
    .locals 9

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/internal/iS;->a:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 2
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->X()Lcom/android/tools/r8/internal/nJ$j;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ$j;->a:Z

    const-string v1, "Write proguard map"

    if-eqz v0, :cond_8

    .line 3
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->a()Lcom/android/tools/r8/graph/x0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/x0;->g()Lcom/android/tools/r8/naming/b;

    move-result-object v0

    if-nez v0, :cond_2

    goto/16 :goto_4

    .line 4
    :cond_2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->a()Lcom/android/tools/r8/graph/x0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/x0;->g()Lcom/android/tools/r8/naming/b;

    move-result-object v0

    .line 5
    iget-object v2, v0, Lcom/android/tools/r8/naming/b;->d:Ljava/util/LinkedHashSet;

    .line 6
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    iget-object v0, v0, Lcom/android/tools/r8/naming/b;->d:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/naming/mappinginformation/b;

    :goto_1
    if-nez v0, :cond_4

    goto :goto_2

    .line 7
    :cond_4
    invoke-virtual {v0}, Lcom/android/tools/r8/naming/mappinginformation/b;->s()Lcom/android/tools/r8/naming/MapVersion;

    move-result-object v0

    .line 8
    invoke-static {v0}, Lcom/android/tools/r8/internal/Jf0;->a(Lcom/android/tools/r8/naming/MapVersion;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 9
    invoke-virtual {v0}, Lcom/android/tools/r8/naming/MapVersion;->isUnknown()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 10
    :cond_5
    :goto_2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p0

    iget-object p0, p0, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    new-instance p3, Lcom/android/tools/r8/utils/positions/NotSupportedMapVersionForMappingComposeDiagnostic;

    invoke-direct {p3}, Lcom/android/tools/r8/utils/positions/NotSupportedMapVersionForMappingComposeDiagnostic;-><init>()V

    invoke-virtual {p0, p3}, Lcom/android/tools/r8/internal/Ef0;->warning(Lcom/android/tools/r8/Diagnostic;)V

    .line 11
    invoke-virtual {p2, v1}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 12
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->a()Lcom/android/tools/r8/graph/x0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/x0;->g()Lcom/android/tools/r8/naming/b;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    .line 13
    sget-boolean p3, Lcom/android/tools/r8/naming/L0;->f:Z

    if-nez p3, :cond_7

    iget-object p3, p1, Lcom/android/tools/r8/internal/nJ;->x0:Lcom/android/tools/r8/dex/W$b;

    if-eqz p3, :cond_6

    goto :goto_3

    :cond_6
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 14
    :cond_7
    :goto_3
    new-instance p3, Lcom/android/tools/r8/naming/L0;

    iget-object p4, p1, Lcom/android/tools/r8/internal/nJ;->x0:Lcom/android/tools/r8/dex/W$b;

    invoke-direct {p3, p0, p4, p1}, Lcom/android/tools/r8/naming/L0;-><init>(Lcom/android/tools/r8/naming/b;Lcom/android/tools/r8/dex/W$b;Lcom/android/tools/r8/internal/nJ;)V

    .line 15
    invoke-virtual {p3}, Lcom/android/tools/r8/naming/L0;->a()Lcom/android/tools/r8/naming/I0;

    move-result-object p0

    .line 16
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-object p0

    .line 17
    :cond_8
    :goto_4
    const-string v0, "Line number remapping"

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 18
    new-instance v0, Lcom/android/tools/r8/internal/na;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/na;-><init>(Lcom/android/tools/r8/utils/i;)V

    .line 19
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p0

    .line 20
    iget-object p0, p0, Lcom/android/tools/r8/internal/nJ;->l:Lcom/android/tools/r8/ProgramConsumer;

    .line 21
    instance-of p0, p0, Lcom/android/tools/r8/ClassFileConsumer;

    if-eqz p0, :cond_9

    .line 22
    new-instance p0, Lcom/android/tools/r8/internal/Jc;

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/Jc;-><init>(Lcom/android/tools/r8/graph/y;)V

    goto :goto_5

    .line 23
    :cond_9
    new-instance p0, Lcom/android/tools/r8/internal/G60;

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/G60;-><init>(Lcom/android/tools/r8/graph/y;)V

    .line 24
    :goto_5
    new-instance v8, Lcom/android/tools/r8/internal/XU;

    invoke-direct {v8, p1, p3}, Lcom/android/tools/r8/internal/XU;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/K40;)V

    .line 25
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_a
    :goto_6
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/H2;

    .line 26
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v3

    .line 27
    iget-object v3, v3, Lcom/android/tools/r8/internal/nJ;->E1:Lcom/android/tools/r8/internal/qb0;

    const/4 v4, 0x1

    if-nez v3, :cond_b

    goto :goto_7

    .line 28
    :cond_b
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/qb0;->b()Lcom/android/tools/r8/internal/pb0;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/tools/r8/internal/pb0;->a(Lcom/android/tools/r8/graph/J2;)Z

    move-result v3

    xor-int/2addr v4, v3

    :goto_7
    if-eqz v4, :cond_a

    move-object v3, p1

    move-object v4, p4

    move-object v5, v8

    move-object v6, v0

    move-object v7, p0

    .line 29
    invoke-static/range {v2 .. v7}, Lcom/android/tools/r8/internal/iS;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/lj;Lcom/android/tools/r8/internal/XU;Lcom/android/tools/r8/internal/na;Lcom/android/tools/r8/internal/L60;)V

    goto :goto_6

    .line 30
    :cond_c
    invoke-interface {p0}, Lcom/android/tools/r8/internal/L60;->a()V

    .line 31
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/XU;->b()Lcom/android/tools/r8/naming/b;

    move-result-object p0

    .line 32
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 33
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/nJ;->X()Lcom/android/tools/r8/internal/nJ$j;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/nJ;->X()Lcom/android/tools/r8/internal/nJ$j;

    move-result-object p3

    iget-boolean p3, p3, Lcom/android/tools/r8/internal/nJ$j;->a:Z

    if-eqz p3, :cond_e

    .line 35
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/h;->a()Lcom/android/tools/r8/graph/x0;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/x0;->g()Lcom/android/tools/r8/naming/b;

    move-result-object p3

    if-eqz p3, :cond_e

    .line 36
    const-string p3, "Proguard map composition"

    invoke-virtual {p2, p3}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 37
    :try_start_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p3

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/tools/r8/graph/h;->a()Lcom/android/tools/r8/graph/x0;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/tools/r8/graph/x0;->g()Lcom/android/tools/r8/naming/b;

    move-result-object p4

    filled-new-array {p4, p0}, [Lcom/android/tools/r8/naming/b;

    move-result-object p0

    .line 38
    sget-boolean p4, Lcom/android/tools/r8/naming/T;->a:Z

    .line 39
    new-instance p4, Lcom/android/tools/r8/naming/v;

    invoke-direct {p4, p3}, Lcom/android/tools/r8/naming/v;-><init>(Lcom/android/tools/r8/internal/nJ;)V

    const/4 p3, 0x0

    :goto_8
    const/4 v0, 0x2

    if-ge p3, v0, :cond_d

    .line 40
    aget-object v0, p0, p3

    .line 41
    invoke-virtual {p4, v0}, Lcom/android/tools/r8/naming/v;->a(Lcom/android/tools/r8/naming/b;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_8

    :catch_0
    move-exception p0

    goto :goto_9

    :catch_1
    move-exception p0

    goto :goto_9

    .line 42
    :cond_d
    invoke-virtual {p4}, Lcom/android/tools/r8/naming/v;->a()Ljava/lang/String;

    move-result-object p0

    .line 43
    invoke-static {p0}, Lcom/android/tools/r8/naming/b;->d(Ljava/lang/String;)Lcom/android/tools/r8/naming/b;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/tools/r8/naming/MappingComposeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    goto :goto_a

    .line 45
    :goto_9
    new-instance p1, Lcom/android/tools/r8/internal/If;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 46
    :cond_e
    :goto_a
    invoke-virtual {p2, v1}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 47
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    .line 48
    sget-boolean p3, Lcom/android/tools/r8/naming/L0;->f:Z

    if-nez p3, :cond_10

    iget-object p3, p1, Lcom/android/tools/r8/internal/nJ;->x0:Lcom/android/tools/r8/dex/W$b;

    if-eqz p3, :cond_f

    goto :goto_b

    :cond_f
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 49
    :cond_10
    :goto_b
    new-instance p3, Lcom/android/tools/r8/naming/L0;

    iget-object p4, p1, Lcom/android/tools/r8/internal/nJ;->x0:Lcom/android/tools/r8/dex/W$b;

    invoke-direct {p3, p0, p4, p1}, Lcom/android/tools/r8/naming/L0;-><init>(Lcom/android/tools/r8/naming/b;Lcom/android/tools/r8/dex/W$b;Lcom/android/tools/r8/internal/nJ;)V

    .line 50
    invoke-virtual {p3}, Lcom/android/tools/r8/naming/L0;->a()Lcom/android/tools/r8/naming/I0;

    move-result-object p0

    .line 51
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/y;)Ljava/util/IdentityHashMap;
    .locals 4

    .line 124
    new-instance v0, Ljava/util/IdentityHashMap;

    .line 125
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->b0()Lcom/android/tools/r8/graph/N4;

    move-result-object v1

    .line 126
    iget-object v1, v1, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    .line 127
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/O4;->h()I

    move-result v1

    .line 128
    invoke-direct {v0, v1}, Ljava/util/IdentityHashMap;-><init>(I)V

    .line 129
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/H2;->L1()Lcom/android/tools/r8/internal/Ux;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ux;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    move-object v1, p0

    check-cast v1, Lcom/android/tools/r8/internal/GK;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/GK;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/GK;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/H5;

    .line 130
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j1;

    .line 131
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    .line 132
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->s()Lcom/android/tools/r8/naming/r0;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/tools/r8/naming/r0;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/L2;

    move-result-object v2

    .line 133
    new-instance v3, Lcom/android/tools/r8/internal/ce1;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/ce1;-><init>()V

    .line 134
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 135
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/L2;)Ljava/util/List;
    .locals 0

    .line 136
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/lj;Lcom/android/tools/r8/internal/XU;Lcom/android/tools/r8/internal/na;Lcom/android/tools/r8/internal/L60;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 52
    invoke-static/range {p0 .. p1}, Lcom/android/tools/r8/internal/iS;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/y;)Ljava/util/IdentityHashMap;

    move-result-object v3

    .line 53
    iget-object v4, v2, Lcom/android/tools/r8/internal/XU;->b:Lcom/android/tools/r8/graph/y;

    .line 54
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v4

    iget-object v5, v0, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v4, v5}, Lcom/android/tools/r8/internal/Hz;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    .line 55
    iget-object v5, v2, Lcom/android/tools/r8/internal/XU;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/y;->s()Lcom/android/tools/r8/naming/r0;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/tools/r8/naming/r0;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/L2;

    move-result-object v5

    .line 56
    new-instance v6, Lcom/android/tools/r8/internal/VU;

    .line 57
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/tools/r8/internal/Bl;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v2, v0, v4, v5}, Lcom/android/tools/r8/internal/VU;-><init>(Lcom/android/tools/r8/internal/XU;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/M2;Ljava/lang/String;)V

    iget-object v0, v2, Lcom/android/tools/r8/internal/XU;->a:Lcom/android/tools/r8/internal/K40;

    .line 58
    invoke-virtual {v6, v0}, Lcom/android/tools/r8/internal/VU;->a(Lcom/android/tools/r8/internal/K40;)Lcom/android/tools/r8/internal/VU;

    move-result-object v0

    iget-object v2, v2, Lcom/android/tools/r8/internal/XU;->b:Lcom/android/tools/r8/graph/y;

    .line 59
    iget-object v2, v2, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 60
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v2

    .line 61
    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/VU;->a(Lcom/android/tools/r8/synthesis/J;)Lcom/android/tools/r8/internal/VU;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/VU;->a()Lcom/android/tools/r8/internal/VU;

    move-result-object v0

    .line 63
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/IdentityHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 64
    new-instance v4, Lcom/android/tools/r8/graph/lh;

    invoke-direct {v4}, Lcom/android/tools/r8/graph/lh;-><init>()V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 65
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v6, 0x0

    :cond_0
    if-ge v6, v4, :cond_a

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lcom/android/tools/r8/graph/L2;

    .line 66
    invoke-virtual {v3, v7}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 67
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_2

    .line 68
    invoke-static {v8}, Lcom/android/tools/r8/internal/iS;->a(Ljava/util/List;)V

    .line 69
    sget-boolean v9, Lcom/android/tools/r8/internal/iS;->a:Z

    if-nez v9, :cond_2

    invoke-static {v1, v8}, Lcom/android/tools/r8/internal/iS;->a(Lcom/android/tools/r8/graph/y;Ljava/util/List;)Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 70
    :cond_2
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v9

    iget-object v9, v9, Lcom/android/tools/r8/internal/nJ;->J1:Lcom/android/tools/r8/internal/nJ$i;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    sget-object v11, Lcom/android/tools/r8/internal/nJ$i;->b:Lcom/android/tools/r8/internal/nJ$i;

    if-ne v9, v11, :cond_3

    .line 72
    new-instance v9, Lcom/android/tools/r8/internal/C60;

    invoke-direct {v9}, Lcom/android/tools/r8/internal/C60;-><init>()V

    goto :goto_1

    .line 73
    :cond_3
    new-instance v9, Lcom/android/tools/r8/internal/E60;

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v11

    invoke-direct {v9, v11}, Lcom/android/tools/r8/internal/E60;-><init>(Lcom/android/tools/r8/internal/nJ;)V

    .line 74
    :goto_1
    new-instance v15, Lcom/android/tools/r8/internal/D60;

    move-object/from16 v14, p4

    invoke-direct {v15, v1, v9, v14}, Lcom/android/tools/r8/internal/D60;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/F60;Lcom/android/tools/r8/internal/na;)V

    .line 75
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object v13, v11

    check-cast v13, Lcom/android/tools/r8/graph/H5;

    .line 76
    invoke-virtual {v13}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v11

    check-cast v11, Lcom/android/tools/r8/graph/j1;

    .line 77
    invoke-virtual {v13}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object v12

    .line 78
    invoke-virtual {v12, v7}, Lcom/android/tools/r8/graph/L2;->g(Lcom/android/tools/r8/graph/L2;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 79
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v12

    invoke-static {v12, v11}, Lcom/android/tools/r8/internal/M60;->a(Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/graph/j1;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 80
    invoke-virtual {v11}, Lcom/android/tools/r8/graph/h1;->F0()Z

    move-result v12

    if-nez v12, :cond_4

    .line 81
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    if-gt v12, v10, :cond_4

    goto :goto_2

    .line 82
    :cond_4
    iput-object v11, v15, Lcom/android/tools/r8/internal/D60;->f:Lcom/android/tools/r8/graph/j1;

    const/4 v12, 0x0

    .line 83
    iput-object v12, v15, Lcom/android/tools/r8/internal/D60;->g:Lcom/android/tools/r8/kotlin/l0$b;

    .line 84
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    if-ne v12, v10, :cond_5

    move-object/from16 v12, p2

    invoke-interface {v12, v13}, Lcom/android/tools/r8/internal/lj;->a(Lcom/android/tools/r8/graph/H5;)I

    move-result v16

    goto :goto_3

    :cond_5
    move-object/from16 v12, p2

    const/16 v16, -0x1

    :goto_3
    if-lez v16, :cond_6

    move/from16 p0, v10

    goto :goto_4

    :cond_6
    const/16 p0, 0x0

    .line 85
    :goto_4
    invoke-virtual {v11}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v17

    if-eqz v17, :cond_7

    .line 86
    invoke-virtual {v11}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/tools/r8/graph/i0;->t0()Z

    move-result v17

    if-nez v17, :cond_8

    invoke-virtual {v11}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/tools/r8/graph/i0;->v0()Z

    move-result v11

    if-eqz v11, :cond_7

    goto :goto_5

    :cond_7
    move-object v5, v13

    move-object v10, v15

    goto :goto_8

    .line 87
    :cond_8
    :goto_5
    invoke-virtual {v13}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v11

    check-cast v11, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v1, v11}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/j1;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 88
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    if-le v11, v10, :cond_9

    move/from16 v17, v10

    goto :goto_6

    :cond_9
    const/16 v17, 0x0

    :goto_6
    move-object/from16 v11, p5

    move-object v12, v13

    move-object v5, v13

    move-object v13, v15

    move/from16 v14, v17

    move-object v10, v15

    move/from16 v15, p0

    .line 89
    invoke-interface/range {v11 .. v16}, Lcom/android/tools/r8/internal/L60;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/D60;ZZI)Ljava/util/ArrayList;

    move-result-object v11

    :goto_7
    move/from16 v12, p0

    goto :goto_9

    .line 90
    :goto_8
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    goto :goto_7

    .line 91
    :goto_9
    invoke-virtual {v0, v5, v11, v10, v12}, Lcom/android/tools/r8/internal/VU;->a(Lcom/android/tools/r8/graph/H5;Ljava/util/List;Lcom/android/tools/r8/internal/D60;Z)V

    move-object/from16 v14, p4

    move-object v15, v10

    const/4 v10, 0x1

    goto/16 :goto_2

    :cond_a
    return-void
.end method

.method public static a(Ljava/util/List;)V
    .locals 1

    .line 119
    new-instance v0, Lcom/android/tools/r8/internal/be1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/be1;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Ljava/util/List;)Z
    .locals 7

    .line 92
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    .line 93
    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->l:Lcom/android/tools/r8/ProgramConsumer;

    .line 94
    instance-of v0, v0, Lcom/android/tools/r8/ClassFileConsumer;

    const/4 v1, 0x1

    if-nez v0, :cond_9

    .line 95
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->h()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->l()Lcom/android/tools/r8/graph/j;

    move-result-object v0

    .line 97
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->r()Lcom/android/tools/r8/shaking/y1;

    move-result-object v2

    .line 98
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v3, v1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/H5;

    .line 99
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/j1;->j1()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 100
    sget-boolean v4, Lcom/android/tools/r8/internal/iS;->a:Z

    if-nez v4, :cond_1

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 101
    :cond_3
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/nJ;->R()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 103
    invoke-virtual {v2, v4}, Lcom/android/tools/r8/shaking/y1;->a(Lcom/android/tools/r8/graph/D5;)Lcom/android/tools/r8/shaking/t1;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/tools/r8/shaking/t1;->b(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 104
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/j1;->k1()Lcom/android/tools/r8/internal/t40;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/f7;->d()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_2

    .line 105
    :cond_4
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-interface {p0, v3}, Lcom/android/tools/r8/graph/d1;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/H2;

    move-result-object v3

    .line 106
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, v3, v5}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H0;

    move-result-object v3

    if-nez v3, :cond_5

    goto :goto_2

    .line 107
    :cond_5
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/A2;->A0()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is not kept but is overloaded"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 108
    sget-boolean v6, Lcom/android/tools/r8/internal/iS;->a:Z

    if-nez v6, :cond_7

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/G0;->getHolder()Lcom/android/tools/r8/graph/E0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_1

    :cond_6
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    .line 109
    :cond_7
    :goto_1
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/A2;

    iget-object v3, v3, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    :cond_8
    :goto_2
    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_9
    :goto_3
    return v1
.end method
