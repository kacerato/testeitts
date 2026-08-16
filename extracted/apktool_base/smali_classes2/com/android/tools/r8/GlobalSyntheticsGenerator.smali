.class public Lcom/android/tools/r8/GlobalSyntheticsGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/H2;
    .locals 23

    move-object/from16 v0, p0

    .line 79
    new-instance v22, Lcom/android/tools/r8/graph/H2;

    move-object/from16 v1, v22

    .line 80
    const-string v2, "Lcom/android/tools/r8/GlobalSynthetics$$SynthesizingContext;"

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    sget-object v3, Lcom/android/tools/r8/ProgramResource$Kind;->CF:Lcom/android/tools/r8/ProgramResource$Kind;

    .line 81
    invoke-static {}, Lcom/android/tools/r8/origin/Origin;->unknown()Lcom/android/tools/r8/origin/Origin;

    move-result-object v4

    const/16 v5, 0x421

    .line 82
    invoke-static {v5}, Lcom/android/tools/r8/graph/Q;->e(I)Lcom/android/tools/r8/graph/Q;

    move-result-object v5

    iget-object v6, v0, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    .line 83
    invoke-static {}, Lcom/android/tools/r8/graph/O2;->k0()Lcom/android/tools/r8/graph/O2;

    move-result-object v7

    .line 84
    const-string v8, "GlobalSynthetics$$SynthesizingContext.java"

    invoke-virtual {v0, v8}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v8

    .line 85
    sget-boolean v9, Lcom/android/tools/r8/graph/o5;->c:Z

    .line 86
    sget-object v14, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    move-object v10, v14

    move-object v11, v14

    move-object v12, v14

    .line 87
    sget-boolean v9, Lcom/android/tools/r8/graph/i3;->c:Z

    .line 88
    invoke-static {}, Lcom/android/tools/r8/graph/H3$b;->f()Lcom/android/tools/r8/graph/H3$b;

    move-result-object v15

    .line 89
    invoke-static {}, Lcom/android/tools/r8/graph/u0;->l0()Lcom/android/tools/r8/graph/u0;

    move-result-object v16

    .line 90
    invoke-static {}, Lcom/android/tools/r8/graph/q3;->empty()Lcom/android/tools/r8/graph/q3;

    move-result-object v17

    .line 91
    invoke-static {}, Lcom/android/tools/r8/graph/N4$a;->empty()Lcom/android/tools/r8/graph/N4$a;

    move-result-object v18

    .line 92
    iget-boolean v0, v0, Lcom/android/tools/r8/graph/u1;->D6:Z

    move/from16 v19, v0

    .line 93
    new-instance v0, Lcom/android/tools/r8/l2;

    move-object/from16 v20, v0

    invoke-direct {v0}, Lcom/android/tools/r8/l2;-><init>()V

    sget-object v21, Lcom/android/tools/r8/internal/Jb0;->b:Lcom/android/tools/r8/internal/Jb0;

    const/4 v9, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v1 .. v21}, Lcom/android/tools/r8/graph/H2;-><init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/ProgramResource$Kind;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/graph/Q;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/O2;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/o5;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/android/tools/r8/graph/i3;Ljava/util/List;Lcom/android/tools/r8/graph/H3$b;Lcom/android/tools/r8/graph/u0;Lcom/android/tools/r8/graph/q3;Lcom/android/tools/r8/graph/N4$a;ZLcom/android/tools/r8/graph/H2$a;Lcom/android/tools/r8/internal/Jb0;)V

    return-object v22
.end method

.method private static synthetic a(Lcom/android/tools/r8/graph/g3;)Lcom/android/tools/r8/graph/h;
    .locals 1

    .line 42
    invoke-static {}, Lcom/android/tools/r8/synthesis/E;->e()Lcom/android/tools/r8/synthesis/E;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/tools/r8/graph/h;->a(Lcom/android/tools/r8/graph/x0;Lcom/android/tools/r8/synthesis/E;)Lcom/android/tools/r8/graph/h;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic a(Lcom/android/tools/r8/graph/h;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/graph/y;
    .locals 0

    .line 43
    invoke-static {p0, p1}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/h;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/graph/y;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/internal/nJ;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/graph/y;
    .locals 1

    .line 32
    const-string v0, "Application read"

    invoke-virtual {p3, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 33
    new-instance v0, Lcom/android/tools/r8/dex/c;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/tools/r8/dex/c;-><init>(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/internal/ns0;)V

    .line 34
    invoke-virtual {v0, p2}, Lcom/android/tools/r8/dex/c;->a(Ljava/util/concurrent/ExecutorService;)Lcom/android/tools/r8/graph/w4;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/w4;->i()Lcom/android/tools/r8/graph/g3;

    move-result-object p1

    .line 35
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 36
    new-instance p2, Lcom/android/tools/r8/h2;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/h2;-><init>(Lcom/android/tools/r8/graph/g3;)V

    .line 37
    const-string p1, "Create app-info"

    invoke-virtual {p3, p1, p2}, Lcom/android/tools/r8/internal/ns0;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/es0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/h;

    .line 38
    iget-object p0, p0, Lcom/android/tools/r8/utils/i;->e:Lcom/android/tools/r8/internal/hC;

    .line 39
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/hC;->iterator()Lcom/android/tools/r8/internal/Av0;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/ZI;

    .line 40
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ZI;->close()V

    goto :goto_0

    .line 41
    :cond_0
    new-instance p0, Lcom/android/tools/r8/i2;

    invoke-direct {p0, p1, p3}, Lcom/android/tools/r8/i2;-><init>(Lcom/android/tools/r8/graph/h;Lcom/android/tools/r8/internal/ns0;)V

    const-string p1, "Create app-view"

    invoke-virtual {p3, p1, p0}, Lcom/android/tools/r8/internal/ns0;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/es0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/y;

    return-object p0
.end method

.method private static synthetic a(Ljava/util/Set;Lcom/android/tools/r8/graph/x4;)Ljava/util/Set;
    .locals 0

    .line 1
    return-object p0
.end method

.method private static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Tm0;Ljava/util/concurrent/ExecutorService;)V
    .locals 10

    .line 111
    iget-object v3, p0, Lcom/android/tools/r8/graph/y;->S:Lcom/android/tools/r8/androidapi/a;

    .line 112
    invoke-static {}, Lcom/android/tools/r8/internal/E2;->c()Ljava/util/Set;

    move-result-object v1

    .line 113
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v2

    .line 114
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->C3:Lcom/android/tools/r8/graph/M2;

    .line 115
    new-instance v6, Lcom/android/tools/r8/graph/a6;

    invoke-direct {v6, v0}, Lcom/android/tools/r8/graph/a6;-><init>(Lcom/android/tools/r8/graph/M2;)V

    .line 116
    sget-object v7, Lcom/android/tools/r8/internal/Z2;->a:Lcom/android/tools/r8/internal/Z2;

    .line 117
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->e()Lcom/android/tools/r8/graph/x0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/x0;->a()Lcom/android/tools/r8/graph/g3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g3;->k()Ljava/util/Collection;

    move-result-object v8

    new-instance v9, Lcom/android/tools/r8/m2;

    move-object v0, v9

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/tools/r8/m2;-><init>(Ljava/util/Set;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/androidapi/a;Lcom/android/tools/r8/graph/y;Ljava/util/Set;Lcom/android/tools/r8/graph/a6;Lcom/android/tools/r8/internal/a3;)V

    .line 118
    invoke-static {p0, v8, v9, p2}, Lcom/android/tools/r8/J;->a(Lcom/android/tools/r8/graph/y;Ljava/util/Collection;Ljava/util/function/Consumer;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method private static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ns0;Ljava/util/concurrent/ExecutorService;)V
    .locals 4

    .line 44
    sget-boolean v0, Lcom/android/tools/r8/GlobalSyntheticsGenerator;->a:Z

    if-nez v0, :cond_2

    .line 45
    iget-object v0, p0, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 46
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v0

    .line 47
    iget-object v0, v0, Lcom/android/tools/r8/synthesis/J;->b:Lcom/android/tools/r8/synthesis/S;

    .line 48
    invoke-virtual {v0}, Lcom/android/tools/r8/synthesis/S;->b()Ljava/util/Collection;

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

    check-cast v2, Lcom/android/tools/r8/synthesis/S$b;

    .line 49
    sget-boolean v3, Lcom/android/tools/r8/GlobalSyntheticsGenerator;->a:Z

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/android/tools/r8/synthesis/S$b;->d()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 50
    invoke-virtual {v2}, Lcom/android/tools/r8/synthesis/S$b;->e()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/android/tools/r8/synthesis/S;->a:Lcom/android/tools/r8/synthesis/S$b;

    .line 51
    invoke-static {v2, v3}, Lcom/android/tools/r8/internal/ev;->a(Lcom/android/tools/r8/internal/ev;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 52
    iget-object v3, v0, Lcom/android/tools/r8/synthesis/S;->b:Lcom/android/tools/r8/synthesis/S$b;

    .line 53
    invoke-static {v2, v3}, Lcom/android/tools/r8/internal/ev;->a(Lcom/android/tools/r8/internal/ev;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 54
    iget-object v3, v0, Lcom/android/tools/r8/synthesis/S;->c:Lcom/android/tools/r8/synthesis/S$b;

    .line 55
    invoke-static {v2, v3}, Lcom/android/tools/r8/internal/ev;->a(Lcom/android/tools/r8/internal/ev;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 56
    iget-object v3, v0, Lcom/android/tools/r8/synthesis/S;->d:Lcom/android/tools/r8/synthesis/S$b;

    .line 57
    invoke-static {v2, v3}, Lcom/android/tools/r8/internal/ev;->a(Lcom/android/tools/r8/internal/ev;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 58
    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 59
    :cond_2
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/GlobalSyntheticsGenerator;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    sget v1, Lcom/android/tools/r8/internal/QC;->c:I

    .line 60
    new-instance v1, Lcom/android/tools/r8/internal/Tm0;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/Tm0;-><init>(Ljava/lang/Object;)V

    .line 61
    sget-object v0, Lcom/android/tools/r8/internal/mc0;->a:Lcom/android/tools/r8/internal/jc0;

    const/4 v2, 0x0

    .line 62
    invoke-static {p0, v1, v0, v2, v2}, Lcom/android/tools/r8/internal/yc0;->a(Lcom/android/tools/r8/graph/y;Ljava/util/AbstractCollection;Lcom/android/tools/r8/internal/mc0;Lcom/android/tools/r8/internal/o9;Lcom/android/tools/r8/internal/ea;)V

    .line 63
    sget-object v0, Lcom/android/tools/r8/internal/Rw0;->b:Lcom/android/tools/r8/internal/Qw0;

    .line 64
    invoke-static {p0, v0, v1}, Lcom/android/tools/r8/internal/Pw0;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Rw0;Ljava/util/Collection;)V

    .line 65
    invoke-static {p0, v0, v1}, Lcom/android/tools/r8/internal/Pw0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Rw0;Ljava/util/Collection;)V

    .line 66
    sget-boolean v0, Lcom/android/tools/r8/GlobalSyntheticsGenerator;->a:Z

    if-nez v0, :cond_4

    .line 67
    iget-object v0, p0, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lcom/android/tools/r8/synthesis/J;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 69
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->e()Lcom/android/tools/r8/graph/x0;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/y;->b(Lcom/android/tools/r8/graph/x0;)V

    .line 70
    new-instance v0, Lcom/android/tools/r8/internal/t70;

    invoke-static {}, Lcom/android/tools/r8/internal/ns0;->c()Lcom/android/tools/r8/internal/ns0;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/android/tools/r8/internal/t70;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ns0;)V

    invoke-virtual {v0, p0, p2}, Lcom/android/tools/r8/internal/t70;->a(Lcom/android/tools/r8/graph/y;Ljava/util/concurrent/ExecutorService;)V

    .line 71
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->e()Lcom/android/tools/r8/graph/x0;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/y;->b(Lcom/android/tools/r8/graph/x0;)V

    .line 72
    new-instance v0, Lcom/android/tools/r8/n2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/tools/r8/n2;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ns0;Ljava/util/concurrent/ExecutorService;)V

    const-string v2, "Finalize synthetics"

    invoke-virtual {p1, v2, v0}, Lcom/android/tools/r8/internal/ns0;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/Sr0;)V

    .line 73
    invoke-static {p0}, Lcom/android/tools/r8/naming/O0;->a(Lcom/android/tools/r8/graph/y;)V

    .line 74
    invoke-static {p0}, Lcom/android/tools/r8/naming/V0;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/naming/r0;

    move-result-object p1

    .line 75
    iput-object p1, p0, Lcom/android/tools/r8/graph/y;->l:Lcom/android/tools/r8/naming/r0;

    .line 76
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->P()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 77
    invoke-static {p0, v1, p2}, Lcom/android/tools/r8/GlobalSyntheticsGenerator;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Tm0;Ljava/util/concurrent/ExecutorService;)V

    .line 78
    :cond_5
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->e()Lcom/android/tools/r8/graph/x0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/y;->b(Lcom/android/tools/r8/graph/x0;)V

    return-void
.end method

.method private static a(Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/utils/i;Ljava/util/concurrent/ExecutorService;)V
    .locals 4

    .line 7
    const-string v0, "GlobalSyntheticsGenerator 8.10.21"

    invoke-static {p0, v0}, Lcom/android/tools/r8/internal/ns0;->a(Lcom/android/tools/r8/internal/nJ;Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    move-result-object v0

    .line 8
    :try_start_0
    const-string v1, "Read input app"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 9
    invoke-static {p1, p0, p2, v0}, Lcom/android/tools/r8/GlobalSyntheticsGenerator;->a(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/internal/nJ;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/graph/y;

    move-result-object v1

    .line 10
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 11
    const-string v2, "Create global synthetics"

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 12
    invoke-static {v1, v0, p2}, Lcom/android/tools/r8/GlobalSyntheticsGenerator;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ns0;Ljava/util/concurrent/ExecutorService;)V

    .line 13
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 14
    sget-boolean v2, Lcom/android/tools/r8/GlobalSyntheticsGenerator;->a:Z

    if-nez v2, :cond_0

    invoke-static {v1}, Lcom/android/tools/r8/P;->a(Lcom/android/tools/r8/graph/y;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    goto :goto_4

    .line 15
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/nJ;->P()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 16
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/nJ;->y()Lcom/android/tools/r8/dex/W;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/tools/r8/dex/k;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/W;)Lcom/android/tools/r8/dex/k;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/tools/r8/dex/k;->a(Lcom/android/tools/r8/utils/i;Ljava/util/concurrent/ExecutorService;)V

    goto :goto_2

    :cond_1
    if-nez v2, :cond_3

    .line 17
    iget-object v2, p0, Lcom/android/tools/r8/internal/nJ;->l:Lcom/android/tools/r8/ProgramConsumer;

    instance-of v2, v2, Lcom/android/tools/r8/ClassFileConsumer;

    if-eqz v2, :cond_2

    goto :goto_1

    .line 18
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 19
    :cond_3
    :goto_1
    new-instance v2, Lcom/android/tools/r8/internal/T8;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/nJ;->y()Lcom/android/tools/r8/dex/W;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/android/tools/r8/internal/T8;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/W;)V

    .line 20
    iget-object v1, p0, Lcom/android/tools/r8/internal/nJ;->l:Lcom/android/tools/r8/ProgramConsumer;

    check-cast v1, Lcom/android/tools/r8/ClassFileConsumer;

    .line 21
    invoke-virtual {v2, v1, p1, p2}, Lcom/android/tools/r8/internal/T8;->a(Lcom/android/tools/r8/ClassFileConsumer;Lcom/android/tools/r8/utils/i;Ljava/util/concurrent/ExecutorService;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :goto_2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/nJ;->f0()V

    .line 23
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/nJ;->U()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 24
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ns0;->e()V

    :cond_4
    return-void

    .line 25
    :goto_3
    :try_start_1
    new-instance p2, Lcom/android/tools/r8/internal/If;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1, p1}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 26
    :goto_4
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 27
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    :goto_5
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/nJ;->f0()V

    .line 29
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/nJ;->U()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 30
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ns0;->e()V

    .line 31
    :cond_5
    throw p1
.end method

.method public static a(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/internal/nJ;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/CompilationFailedException;
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lcom/android/tools/r8/internal/Kr0;->a(Lcom/android/tools/r8/internal/nJ;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 3
    invoke-static {p0, p1, v0}, Lcom/android/tools/r8/GlobalSyntheticsGenerator;->a(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/internal/nJ;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method private static a(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/internal/nJ;Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    .line 4
    :try_start_0
    iget-object v0, p1, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    new-instance v1, Lcom/android/tools/r8/j2;

    invoke-direct {v1, p1, p0, p2}, Lcom/android/tools/r8/j2;-><init>(Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/utils/i;Ljava/util/concurrent/ExecutorService;)V

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/lv;->a(Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/internal/lv$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-interface {p2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void

    :catchall_0
    move-exception p0

    invoke-interface {p2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 6
    throw p0
.end method

.method private static a(Ljava/util/Set;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/androidapi/a;Lcom/android/tools/r8/graph/y;Ljava/util/Set;Lcom/android/tools/r8/graph/a6;Lcom/android/tools/r8/internal/a3;Lcom/android/tools/r8/graph/u2;)V
    .locals 1

    .line 94
    invoke-virtual {p7}, Lcom/android/tools/r8/graph/E0;->M0()Lcom/android/tools/r8/references/ClassReference;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/tools/r8/references/TypeReference;->getTypeName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_1

    .line 95
    :cond_0
    invoke-virtual {p7}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/tools/r8/internal/Y2;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    .line 96
    :cond_1
    invoke-virtual {p7}, Lcom/android/tools/r8/graph/E0;->getReference()Lcom/android/tools/r8/graph/J2;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/tools/r8/androidapi/a;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/androidapi/f;

    move-result-object p0

    .line 97
    invoke-interface {p0}, Lcom/android/tools/r8/androidapi/f;->F()Lcom/android/tools/r8/androidapi/f$a;

    move-result-object p0

    if-nez p0, :cond_2

    .line 98
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p0

    .line 99
    iget-object p0, p0, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    .line 100
    invoke-virtual {p7}, Lcom/android/tools/r8/graph/E0;->getReference()Lcom/android/tools/r8/graph/J2;

    move-result-object p1

    .line 101
    invoke-static {p1}, Lcom/android/tools/r8/androidapi/d;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/androidapi/AndroidApiUnknownReferenceDiagnostic;

    move-result-object p1

    .line 102
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Ef0;->warning(Lcom/android/tools/r8/Diagnostic;)V

    return-void

    .line 103
    :cond_2
    invoke-virtual {p0}, Lcom/android/tools/r8/androidapi/f$a;->a()Lcom/android/tools/r8/internal/C2;

    move-result-object p0

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->z()Lcom/android/tools/r8/internal/C2;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/tools/r8/internal/C40;->e(Lcom/android/tools/r8/internal/C40;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    .line 104
    :cond_3
    invoke-virtual {p7}, Lcom/android/tools/r8/graph/E0;->p1()Z

    move-result p0

    if-eqz p0, :cond_7

    .line 105
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p0

    iget-object p0, p0, Lcom/android/tools/r8/graph/u1;->v3:Lcom/android/tools/r8/graph/M2;

    .line 106
    invoke-virtual {p7}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_6

    if-ne p1, p0, :cond_4

    goto :goto_2

    .line 107
    :cond_4
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/graph/h;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    if-nez p1, :cond_5

    const/4 p1, 0x0

    goto :goto_0

    .line 108
    :cond_5
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->a1()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    goto :goto_0

    :cond_6
    :goto_1
    return-void

    .line 109
    :cond_7
    :goto_2
    new-instance p0, Lcom/android/tools/r8/k2;

    invoke-direct {p0, p4}, Lcom/android/tools/r8/k2;-><init>(Ljava/util/Set;)V

    invoke-static {p3, p0, p7, p5, p6}, Lcom/android/tools/r8/internal/Y2;->a(Lcom/android/tools/r8/graph/y;Ljava/util/function/Function;Lcom/android/tools/r8/graph/u2;Lcom/android/tools/r8/graph/a6;Lcom/android/tools/r8/internal/a3;)V

    return-void
.end method

.method private static synthetic a([Ljava/lang/String;)V
    .locals 0

    .line 110
    invoke-static {p0}, Lcom/android/tools/r8/GlobalSyntheticsGenerator;->b([Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ns0;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 2
    invoke-static {p0, p1, p2}, Lcom/android/tools/r8/synthesis/z;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ns0;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/utils/i;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/android/tools/r8/GlobalSyntheticsGenerator;->a(Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/utils/i;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method private static b([Ljava/lang/String;)V
    .locals 3

    .line 3
    sget-object v0, Lcom/android/tools/r8/origin/a;->f:Lcom/android/tools/r8/origin/a;

    .line 4
    invoke-static {p0, v0}, Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand;->parse([Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand$Builder;->build()Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand;->isPrintHelp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    const-string p0, "R8_THROW_EXCEPTION_FOR_TESTING_RETRACE"

    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    .line 7
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {}, Lcom/android/tools/r8/O;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    .line 8
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Intentional exception for testing retrace."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand;->isPrintVersion()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {}, Lcom/android/tools/r8/Version;->getVersionString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GlobalSyntheticsGenerator "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    .line 11
    :cond_2
    invoke-static {p0}, Lcom/android/tools/r8/GlobalSyntheticsGenerator;->run(Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand;)V

    return-void
.end method

.method public static synthetic c(Ljava/util/Set;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/androidapi/a;Lcom/android/tools/r8/graph/y;Ljava/util/Set;Lcom/android/tools/r8/graph/a6;Lcom/android/tools/r8/internal/a3;Lcom/android/tools/r8/graph/u2;)V
    .locals 0

    invoke-static/range {p0 .. p7}, Lcom/android/tools/r8/GlobalSyntheticsGenerator;->a(Ljava/util/Set;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/androidapi/a;Lcom/android/tools/r8/graph/y;Ljava/util/Set;Lcom/android/tools/r8/graph/a6;Lcom/android/tools/r8/internal/a3;Lcom/android/tools/r8/graph/u2;)V

    return-void
.end method

.method public static synthetic d(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ns0;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/tools/r8/GlobalSyntheticsGenerator;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ns0;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public static synthetic e([Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/tools/r8/GlobalSyntheticsGenerator;->a([Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic f(Lcom/android/tools/r8/graph/h;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/graph/y;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/tools/r8/GlobalSyntheticsGenerator;->a(Lcom/android/tools/r8/graph/h;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/graph/y;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lcom/android/tools/r8/graph/g3;)Lcom/android/tools/r8/graph/h;
    .locals 0

    invoke-static {p0}, Lcom/android/tools/r8/GlobalSyntheticsGenerator;->a(Lcom/android/tools/r8/graph/g3;)Lcom/android/tools/r8/graph/h;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Ljava/util/Set;Lcom/android/tools/r8/graph/x4;)Ljava/util/Set;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/tools/r8/GlobalSyntheticsGenerator;->a(Ljava/util/Set;Lcom/android/tools/r8/graph/x4;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2

    array-length v0, p0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/g2;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/g2;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/tools/r8/internal/lv;->a(Lcom/android/tools/r8/internal/mv;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-static {}, Lcom/android/tools/r8/O;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Invalid invocation."

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/zq0;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static run(Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/CompilationFailedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand;->getInputApp()Lcom/android/tools/r8/utils/i;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand;->a()Lcom/android/tools/r8/internal/nJ;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/tools/r8/GlobalSyntheticsGenerator;->a(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/internal/nJ;)V

    return-void
.end method

.method public static run(Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand;Ljava/util/concurrent/ExecutorService;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/CompilationFailedException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand;->getInputApp()Lcom/android/tools/r8/utils/i;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand;->a()Lcom/android/tools/r8/internal/nJ;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lcom/android/tools/r8/GlobalSyntheticsGenerator;->a(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/internal/nJ;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method
