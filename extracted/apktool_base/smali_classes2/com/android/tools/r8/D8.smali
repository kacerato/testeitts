.class public final Lcom/android/tools/r8/D8;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private static a(Lcom/android/tools/r8/graph/w4;Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/dex/c;)Lcom/android/tools/r8/graph/h;
    .locals 3

    .line 127
    iget-object v0, p1, Lcom/android/tools/r8/internal/nJ;->l:Lcom/android/tools/r8/ProgramConsumer;

    .line 128
    instance-of v0, v0, Lcom/android/tools/r8/DexIndexedConsumer;

    if-eqz v0, :cond_0

    .line 129
    invoke-static {}, Lcom/android/tools/r8/synthesis/E;->e()Lcom/android/tools/r8/synthesis/E;

    move-result-object v0

    goto :goto_0

    .line 130
    :cond_0
    invoke-static {}, Lcom/android/tools/r8/synthesis/E;->b()Lcom/android/tools/r8/synthesis/E;

    move-result-object v0

    .line 131
    :goto_0
    sget-boolean v1, Lcom/android/tools/r8/internal/Zd;->c:Z

    .line 132
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->m()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    .line 133
    iget-object v2, p1, Lcom/android/tools/r8/internal/nJ;->s:Lcom/android/tools/r8/internal/Qv;

    .line 134
    iget-object p1, p1, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    .line 135
    invoke-static {v1, v2, p1}, Lcom/android/tools/r8/internal/Zd;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Qv;Lcom/android/tools/r8/internal/Ef0;)Lcom/android/tools/r8/internal/Zd;

    move-result-object p1

    .line 136
    iget-object v1, p2, Lcom/android/tools/r8/dex/c;->e:Lcom/android/tools/r8/graph/z0;

    .line 137
    iget-boolean v1, v1, Lcom/android/tools/r8/graph/z0;->b:Z

    .line 138
    invoke-virtual {p2, p0, v1}, Lcom/android/tools/r8/dex/c;->a(Lcom/android/tools/r8/graph/x0;Z)Lcom/android/tools/r8/shaking/o2;

    move-result-object p2

    .line 139
    new-instance v1, Lcom/android/tools/r8/graph/h;

    .line 140
    invoke-static {p0, v0}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/graph/x0;Lcom/android/tools/r8/synthesis/E;)Lcom/android/tools/r8/synthesis/b;

    move-result-object p0

    invoke-direct {v1, p1, p0, p2}, Lcom/android/tools/r8/graph/h;-><init>(Lcom/android/tools/r8/internal/Zd;Lcom/android/tools/r8/synthesis/b;Lcom/android/tools/r8/shaking/o2;)V

    return-object v1
.end method

.method private static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/utils/i;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/dex/W;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/graph/w4;
    .locals 6

    .line 93
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    new-instance v1, Lcom/android/tools/r8/utils/StringDiagnostic;

    const-string v2, "The compilation is slowed down due to a mix of class file and dex file inputs in the context of desugared library. This can be fixed by pre-compiling to dex the class file inputs and dex merging only dex files."

    invoke-direct {v1, v2}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Ef0;->warning(Lcom/android/tools/r8/Diagnostic;)V

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 96
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 97
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/H2;

    .line 98
    iget-object v4, v3, Lcom/android/tools/r8/graph/H2;->u:Lcom/android/tools/r8/ProgramResource$Kind;

    sget-object v5, Lcom/android/tools/r8/ProgramResource$Kind;->DEX:Lcom/android/tools/r8/ProgramResource$Kind;

    if-ne v4, v5, :cond_0

    .line 99
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 101
    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->e()Lcom/android/tools/r8/graph/x0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/x0;->c()Lcom/android/tools/r8/graph/w0;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/graph/w0;->a(Ljava/util/AbstractCollection;)Lcom/android/tools/r8/graph/w0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/w0;->b()Lcom/android/tools/r8/graph/x0;

    move-result-object v1

    .line 102
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/graph/y;->b(Lcom/android/tools/r8/graph/x0;)V

    .line 103
    new-instance v1, Lcom/android/tools/r8/n;

    invoke-direct {v1}, Lcom/android/tools/r8/n;-><init>()V

    .line 104
    new-instance v2, Lcom/android/tools/r8/internal/zz;

    invoke-direct {v2, p0}, Lcom/android/tools/r8/internal/zz;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Lcom/android/tools/r8/internal/zz;->a(Ljava/util/Collection;Ljava/util/concurrent/ExecutorService;)V

    .line 105
    new-instance v2, Lcom/android/tools/r8/kotlin/Z;

    invoke-direct {v2, p0}, Lcom/android/tools/r8/kotlin/Z;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {v2, p2}, Lcom/android/tools/r8/kotlin/Z;->a(Ljava/util/concurrent/ExecutorService;)V

    .line 106
    sget-boolean v2, Lcom/android/tools/r8/dex/k;->k:Z

    .line 107
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    iget-object v2, v2, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget-boolean v2, v2, Lcom/android/tools/r8/internal/nJ$p;->m:Z

    if-eqz v2, :cond_2

    .line 108
    new-instance v2, Lcom/android/tools/r8/dex/l;

    invoke-direct {v2, p0, p3, v1}, Lcom/android/tools/r8/dex/l;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/W;Lcom/android/tools/r8/n;)V

    goto :goto_1

    .line 109
    :cond_2
    new-instance v2, Lcom/android/tools/r8/dex/k;

    invoke-direct {v2, p0, p3, v1}, Lcom/android/tools/r8/dex/k;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/W;Lcom/android/tools/r8/n;)V

    .line 110
    :goto_1
    invoke-virtual {v2, p2}, Lcom/android/tools/r8/dex/k;->c(Ljava/util/concurrent/ExecutorService;)V

    .line 111
    invoke-static {p1}, Lcom/android/tools/r8/utils/i;->a(Lcom/android/tools/r8/utils/i;)Lcom/android/tools/r8/utils/i$a;

    move-result-object p1

    .line 112
    invoke-virtual {p1}, Lcom/android/tools/r8/utils/i$a;->b()V

    .line 113
    iget-object p3, p1, Lcom/android/tools/r8/utils/i$a;->a:Ljava/util/ArrayList;

    .line 114
    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 115
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/utils/i$a;->a(Lcom/android/tools/r8/ProgramResourceProvider;)Lcom/android/tools/r8/utils/i$a;

    .line 116
    invoke-virtual {p1}, Lcom/android/tools/r8/utils/i$a;->a()Lcom/android/tools/r8/utils/i;

    move-result-object p1

    .line 117
    new-instance p3, Lcom/android/tools/r8/dex/c;

    .line 118
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p0

    invoke-direct {p3, p1, p0, p4}, Lcom/android/tools/r8/dex/c;-><init>(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/internal/ns0;)V

    invoke-virtual {p3, p2}, Lcom/android/tools/r8/dex/c;->a(Ljava/util/concurrent/ExecutorService;)Lcom/android/tools/r8/graph/w4;

    move-result-object p0

    .line 119
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    new-instance p1, Lcom/android/tools/r8/graph/w4$a;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/graph/w4$a;-><init>(Lcom/android/tools/r8/graph/w4;)V

    .line 121
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 p2, 0x0

    :goto_2
    if-ge p2, p0, :cond_3

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    add-int/lit8 p2, p2, 0x1

    check-cast p3, Lcom/android/tools/r8/graph/H2;

    .line 122
    monitor-enter p1

    .line 123
    :try_start_0
    iget-object p4, p1, Lcom/android/tools/r8/graph/w0;->a:Ljava/util/ArrayList;

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 125
    monitor-exit p1

    throw p0

    .line 126
    :cond_3
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/w4$a;->d()Lcom/android/tools/r8/graph/w4;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic a(Lcom/android/tools/r8/graph/h;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/graph/y;
    .locals 0

    .line 37
    invoke-static {p0, p1}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/h;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/graph/y;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/internal/nJ;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/graph/y;
    .locals 1

    .line 27
    const-string v0, "Application read"

    invoke-virtual {p3, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 28
    new-instance v0, Lcom/android/tools/r8/dex/c;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/tools/r8/dex/c;-><init>(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/internal/ns0;)V

    .line 29
    invoke-virtual {v0, p2}, Lcom/android/tools/r8/dex/c;->a(Ljava/util/concurrent/ExecutorService;)Lcom/android/tools/r8/graph/w4;

    move-result-object p0

    .line 30
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 31
    const-string p2, "Load desugared lib"

    invoke-virtual {p3, p2}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 32
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object p2

    invoke-virtual {p2, p3, p0}, Lcom/android/tools/r8/internal/WR;->a(Lcom/android/tools/r8/internal/ns0;Lcom/android/tools/r8/graph/x0;)V

    .line 33
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 34
    new-instance p2, Lcom/android/tools/r8/t1;

    invoke-direct {p2, p0, p1, v0}, Lcom/android/tools/r8/t1;-><init>(Lcom/android/tools/r8/graph/w4;Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/dex/c;)V

    .line 35
    const-string p0, "Create app-info"

    invoke-virtual {p3, p0, p2}, Lcom/android/tools/r8/internal/ns0;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/es0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/h;

    .line 36
    new-instance p1, Lcom/android/tools/r8/c1;

    invoke-direct {p1, p0, p3}, Lcom/android/tools/r8/c1;-><init>(Lcom/android/tools/r8/graph/h;Lcom/android/tools/r8/internal/ns0;)V

    const-string p0, "Create app-view"

    invoke-virtual {p3, p0, p1}, Lcom/android/tools/r8/internal/ns0;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/es0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/y;

    return-object p0
.end method

.method private static synthetic a(Lcom/android/tools/r8/internal/nJ;)Ljava/lang/Boolean;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget-boolean p0, p0, Lcom/android/tools/r8/internal/nJ$p;->O0:Z

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/android/tools/r8/graph/y;)V
    .locals 9

    .line 1
    new-instance v0, Lcom/android/tools/r8/shaking/k;

    invoke-direct {v0}, Lcom/android/tools/r8/shaking/k;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/android/tools/r8/graph/y;->t:Lcom/android/tools/r8/internal/G1;

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v2

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v3

    .line 5
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/nJ;->P()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6
    iget-object v4, v2, Lcom/android/tools/r8/graph/u1;->d5:Lcom/android/tools/r8/graph/u1$a;

    iget-object v4, v4, Lcom/android/tools/r8/graph/u1$a;->d:Lcom/android/tools/r8/graph/l1;

    .line 7
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/nJ;->z()Lcom/android/tools/r8/internal/C2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/C2;->d()I

    move-result v3

    int-to-long v5, v3

    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    new-instance v1, Lcom/android/tools/r8/internal/x10;

    const-wide/32 v7, 0x7fffffff

    invoke-direct {v1, v5, v6, v7, v8}, Lcom/android/tools/r8/internal/x10;-><init>(JJ)V

    .line 10
    invoke-virtual {v0, v4}, Lcom/android/tools/r8/shaking/k;->a(Lcom/android/tools/r8/graph/v2;)Lcom/android/tools/r8/internal/E4;

    move-result-object v3

    .line 11
    iget-object v4, v3, Lcom/android/tools/r8/internal/E4;->b:Lcom/android/tools/r8/internal/F1;

    .line 12
    invoke-static {v4, v1}, Lcom/android/tools/r8/internal/F4;->a(Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/internal/F1;)Lcom/android/tools/r8/internal/F1;

    move-result-object v1

    iput-object v1, v3, Lcom/android/tools/r8/internal/E4;->b:Lcom/android/tools/r8/internal/F1;

    .line 13
    iget-object v1, v2, Lcom/android/tools/r8/graph/u1;->d5:Lcom/android/tools/r8/graph/u1$a;

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1$a;->d:Lcom/android/tools/r8/graph/l1;

    .line 14
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/k;->a(Lcom/android/tools/r8/graph/v2;)Lcom/android/tools/r8/internal/E4;

    move-result-object v1

    const/4 v2, 0x1

    .line 15
    iput-boolean v2, v1, Lcom/android/tools/r8/internal/E4;->c:Z

    .line 16
    :cond_0
    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/k;->a()Lcom/android/tools/r8/shaking/l;

    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/android/tools/r8/graph/y;->e:Lcom/android/tools/r8/shaking/l;

    return-void
.end method

.method private static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ns0;Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    .line 82
    new-instance v0, Lcom/android/tools/r8/n1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/tools/r8/n1;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ns0;Ljava/util/concurrent/ExecutorService;)V

    const-string v1, "Finalize synthetics"

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/ns0;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/Sr0;)V

    .line 83
    new-instance v0, Lcom/android/tools/r8/o1;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/tools/r8/o1;-><init>(Lcom/android/tools/r8/graph/y;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V

    const-string v1, "Horizontal merger"

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/ns0;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/Sr0;)V

    .line 84
    new-instance v0, Lcom/android/tools/r8/p1;

    invoke-direct {v0, p0, p2}, Lcom/android/tools/r8/p1;-><init>(Lcom/android/tools/r8/graph/y;Ljava/util/concurrent/ExecutorService;)V

    const-string v1, "Signature rewriter"

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/ns0;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/Sr0;)V

    .line 85
    new-instance v0, Lcom/android/tools/r8/q1;

    invoke-direct {v0, p0, p2}, Lcom/android/tools/r8/q1;-><init>(Lcom/android/tools/r8/graph/y;Ljava/util/concurrent/ExecutorService;)V

    const-string v1, "Kotlin metadata rewriter"

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/ns0;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/Sr0;)V

    .line 86
    new-instance v0, Lcom/android/tools/r8/r1;

    invoke-direct {v0, p0, p2}, Lcom/android/tools/r8/r1;-><init>(Lcom/android/tools/r8/graph/y;Ljava/util/concurrent/ExecutorService;)V

    const-string v1, "Startup instrumentation"

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/ns0;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/Sr0;)V

    .line 87
    new-instance v0, Lcom/android/tools/r8/s1;

    invoke-direct {v0, p0, p2}, Lcom/android/tools/r8/s1;-><init>(Lcom/android/tools/r8/graph/y;Ljava/util/concurrent/ExecutorService;)V

    const-string p0, "Api reference stubber"

    invoke-virtual {p1, p0, v0}, Lcom/android/tools/r8/internal/ns0;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/Sr0;)V

    return-void
.end method

.method private static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/dex/W;Ljava/util/concurrent/ExecutorService;)V
    .locals 5

    .line 44
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    .line 45
    iget-object v1, v0, Lcom/android/tools/r8/internal/nJ;->E1:Lcom/android/tools/r8/internal/qb0;

    if-eqz v1, :cond_8

    .line 46
    new-instance p1, Lcom/android/tools/r8/internal/gb0;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/internal/gb0;-><init>(Lcom/android/tools/r8/graph/y;)V

    .line 47
    sget-boolean p2, Lcom/android/tools/r8/internal/gb0;->d:Z

    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->s()Lcom/android/tools/r8/naming/r0;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    instance-of p2, p2, Lcom/android/tools/r8/naming/p0;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 49
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 50
    :cond_1
    :goto_0
    invoke-virtual {p1, p3}, Lcom/android/tools/r8/internal/gb0;->a(Ljava/util/concurrent/ExecutorService;)V

    .line 51
    iget-object p1, p1, Lcom/android/tools/r8/internal/gb0;->c:Lcom/android/tools/r8/internal/ob0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    iget-object p2, p0, Lcom/android/tools/r8/graph/y;->d:Lcom/android/tools/r8/internal/l4;

    .line 53
    invoke-virtual {p2, p0}, Lcom/android/tools/r8/internal/l4;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/l4;

    move-result-object p2

    iput-object p2, p1, Lcom/android/tools/r8/internal/ob0;->d:Lcom/android/tools/r8/internal/l4;

    .line 54
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p2

    .line 55
    iget-object p2, p2, Lcom/android/tools/r8/graph/h;->b:Lcom/android/tools/r8/internal/Zd;

    .line 56
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    new-instance p3, Ljava/util/IdentityHashMap;

    iget-object v0, p2, Lcom/android/tools/r8/internal/Zd;->a:Ljava/util/IdentityHashMap;

    invoke-direct {p3, v0}, Ljava/util/IdentityHashMap;-><init>(Ljava/util/Map;)V

    .line 58
    iget-object v0, p0, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 59
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v0

    .line 60
    sget-boolean v1, Lcom/android/tools/r8/internal/Zd;->c:Z

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/android/tools/r8/synthesis/J;->b()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 61
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/H2;

    .line 62
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    iget-object v3, v2, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/synthesis/J;->g(Lcom/android/tools/r8/graph/M2;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 64
    invoke-interface {v2}, Lcom/android/tools/r8/graph/o0;->getReference()Lcom/android/tools/r8/graph/J2;

    move-result-object v3

    invoke-virtual {p2, v3, v0}, Lcom/android/tools/r8/internal/Zd;->a(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/synthesis/J;)Lcom/android/tools/r8/FeatureSplit;

    move-result-object v3

    .line 65
    invoke-virtual {v3}, Lcom/android/tools/r8/FeatureSplit;->isBase()Z

    move-result v4

    if-nez v4, :cond_4

    .line 66
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {p3, v2, v3}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 67
    :cond_5
    new-instance v0, Lcom/android/tools/r8/internal/Zd;

    iget-object p2, p2, Lcom/android/tools/r8/internal/Zd;->b:Ljava/util/IdentityHashMap;

    invoke-direct {v0, p3, p2}, Lcom/android/tools/r8/internal/Zd;-><init>(Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap;)V

    .line 68
    iput-object v0, p1, Lcom/android/tools/r8/internal/ob0;->e:Lcom/android/tools/r8/internal/Zd;

    .line 69
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p1, Lcom/android/tools/r8/internal/ob0;->f:Ljava/util/ArrayList;

    .line 70
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p1, Lcom/android/tools/r8/internal/ob0;->g:Ljava/util/ArrayList;

    .line 71
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/H2;

    .line 72
    invoke-virtual {p1, p0, p3}, Lcom/android/tools/r8/internal/ob0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/D5;)Lcom/android/tools/r8/internal/FW;

    move-result-object v0

    sget-object v1, Lcom/android/tools/r8/internal/FW;->c:Lcom/android/tools/r8/internal/FW;

    if-ne v0, v1, :cond_6

    .line 73
    iget-object v0, p1, Lcom/android/tools/r8/internal/ob0;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 74
    :cond_6
    iget-object v0, p1, Lcom/android/tools/r8/internal/ob0;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 75
    :cond_7
    iget-object p0, p0, Lcom/android/tools/r8/graph/y;->q:Lcom/android/tools/r8/internal/qo0;

    .line 76
    iput-object p0, p1, Lcom/android/tools/r8/internal/ob0;->h:Lcom/android/tools/r8/internal/qo0;

    return-void

    .line 77
    :cond_8
    iget-object v1, v0, Lcom/android/tools/r8/internal/nJ;->l:Lcom/android/tools/r8/ProgramConsumer;

    instance-of v1, v1, Lcom/android/tools/r8/ClassFileConsumer;

    if-eqz v1, :cond_9

    .line 78
    new-instance v1, Lcom/android/tools/r8/internal/T8;

    invoke-direct {v1, p0, p2}, Lcom/android/tools/r8/internal/T8;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/W;)V

    .line 79
    iget-object p0, v0, Lcom/android/tools/r8/internal/nJ;->l:Lcom/android/tools/r8/ProgramConsumer;

    check-cast p0, Lcom/android/tools/r8/ClassFileConsumer;

    .line 80
    invoke-virtual {v1, p0, p1, p3}, Lcom/android/tools/r8/internal/T8;->a(Lcom/android/tools/r8/ClassFileConsumer;Lcom/android/tools/r8/utils/i;Ljava/util/concurrent/ExecutorService;)V

    return-void

    .line 81
    :cond_9
    invoke-static {p0, p2}, Lcom/android/tools/r8/dex/k;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/W;)Lcom/android/tools/r8/dex/k;

    move-result-object p0

    invoke-virtual {p0, p1, p3}, Lcom/android/tools/r8/dex/k;->a(Lcom/android/tools/r8/utils/i;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method private static a(Lcom/android/tools/r8/graph/y;Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    .line 88
    new-instance v0, Lcom/android/tools/r8/internal/zz;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/zz;-><init>(Lcom/android/tools/r8/graph/y;)V

    .line 89
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v1

    .line 90
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->s()Lcom/android/tools/r8/naming/r0;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    instance-of p0, p0, Lcom/android/tools/r8/naming/p0;

    if-eqz p0, :cond_0

    return-void

    .line 92
    :cond_0
    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/zz;->a(Ljava/util/Collection;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method private static a(Lcom/android/tools/r8/graph/y;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V
    .locals 1

    .line 18
    sget-boolean v0, Lcom/android/tools/r8/internal/vA;->c:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->K()Lcom/android/tools/r8/internal/nJ$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ$g;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 19
    :cond_1
    :goto_0
    new-instance v0, Lcom/android/tools/r8/internal/vA;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/vA;-><init>(Lcom/android/tools/r8/graph/y;)V

    const/4 p0, 0x0

    .line 20
    invoke-virtual {v0, p2, p0, p1}, Lcom/android/tools/r8/internal/vA;->b(Lcom/android/tools/r8/internal/ns0;Lcom/android/tools/r8/shaking/L4;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method private static a(Lcom/android/tools/r8/internal/Qc;Lcom/android/tools/r8/graph/H2;)V
    .locals 2

    .line 41
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->L0()Lcom/android/tools/r8/graph/j1;

    move-result-object v0

    .line 42
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/H2;->h(Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/H5;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 43
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/tools/r8/internal/Qc;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/shaking/N;)V

    :cond_0
    return-void
.end method

.method private static synthetic a(Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/graph/y;)V
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/tools/r8/internal/nJ;->t:Ljava/util/List;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/QD;->a(Ljava/util/List;Ljava/util/Collection;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/internal/nJ;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/CompilationFailedException;
        }
    .end annotation

    .line 25
    invoke-static {p1}, Lcom/android/tools/r8/internal/Kr0;->a(Lcom/android/tools/r8/internal/nJ;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 26
    iget-object v1, p1, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    new-instance v2, Lcom/android/tools/r8/d1;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/tools/r8/d1;-><init>(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/internal/nJ;Ljava/util/concurrent/ExecutorService;)V

    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/lv;->b(Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/internal/lv$a;)V

    return-void
.end method

.method private static synthetic a(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/internal/nJ;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 21
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/android/tools/r8/D8;->d(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/internal/nJ;Ljava/util/concurrent/ExecutorService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    invoke-interface {p2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void

    :catchall_0
    move-exception p0

    invoke-interface {p2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 23
    throw p0
.end method

.method private static synthetic a(Ljava/lang/String;)V
    .locals 3

    .line 39
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic a([Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-static {p0}, Lcom/android/tools/r8/D8;->b([Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/internal/nJ;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/android/tools/r8/D8;->a(Lcom/android/tools/r8/internal/nJ;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic b(Lcom/android/tools/r8/graph/y;)V
    .locals 0

    .line 16
    invoke-static {p0}, Lcom/android/tools/r8/internal/e70;->a(Lcom/android/tools/r8/graph/y;)V

    return-void
.end method

.method private static synthetic b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ns0;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 17
    invoke-static {p0, p1, p2}, Lcom/android/tools/r8/synthesis/z;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ns0;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method private static synthetic b(Lcom/android/tools/r8/graph/y;Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    .line 18
    new-instance v0, Lcom/android/tools/r8/kotlin/Z;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/kotlin/Z;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/kotlin/Z;->a(Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method private static synthetic b(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/internal/nJ;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 2
    invoke-static {p0, p1, p2}, Lcom/android/tools/r8/D8;->d(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/internal/nJ;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method private static b([Ljava/lang/String;)V
    .locals 5

    .line 3
    sget-object v0, Lcom/android/tools/r8/origin/a;->f:Lcom/android/tools/r8/origin/a;

    invoke-static {p0, v0}, Lcom/android/tools/r8/D8Command;->parse([Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)Lcom/android/tools/r8/D8Command$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->build()Lcom/android/tools/r8/BaseCommand;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/D8Command;

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand;->isPrintHelp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v0, Lcom/android/tools/r8/q;->b:Lcom/android/tools/r8/internal/QC;

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    const-string v1, " and each <argfile> is a file containing additional arguments (one per line)"

    const-string v2, " and options are:"

    const-string v3, "Usage: d8 [options] [@<argfile>] <input-files>"

    const-string v4, " where <input-files> are any combination of dex, class, zip, jar, or apk files"

    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/zq0;->a(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    .line 8
    new-instance v1, Lcom/android/tools/r8/ParseFlagPrinter;

    invoke-direct {v1}, Lcom/android/tools/r8/ParseFlagPrinter;-><init>()V

    invoke-static {}, Lcom/android/tools/r8/q;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v2

    invoke-static {v2}, Lcom/android/tools/r8/internal/hC;->a(Ljava/util/Collection;)Lcom/android/tools/r8/internal/hC;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/ParseFlagPrinter;->addFlags(Ljava/util/List;)Lcom/android/tools/r8/ParseFlagPrinter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/ParseFlagPrinter;->appendLinesToBuilder(Ljava/lang/StringBuilder;)V

    .line 9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand;->isPrintVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {}, Lcom/android/tools/r8/Version;->getVersionString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "D8 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    .line 13
    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/D8Command;->b()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    .line 14
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand;->a()Lcom/android/tools/r8/utils/i;

    move-result-object p0

    .line 15
    invoke-static {p0, v0}, Lcom/android/tools/r8/D8;->a(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/internal/nJ;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/tools/r8/graph/w4;Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/dex/c;)Lcom/android/tools/r8/graph/h;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/android/tools/r8/D8;->a(Lcom/android/tools/r8/graph/w4;Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/dex/c;)Lcom/android/tools/r8/graph/h;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic c(Lcom/android/tools/r8/graph/y;)V
    .locals 0

    .line 48
    invoke-static {p0}, Lcom/android/tools/r8/naming/O0;->a(Lcom/android/tools/r8/graph/y;)V

    return-void
.end method

.method private static c(Lcom/android/tools/r8/graph/y;Ljava/util/concurrent/ExecutorService;)V
    .locals 6

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->v()Lcom/android/tools/r8/internal/HE;

    move-result-object v0

    .line 3
    iget-boolean v1, v0, Lcom/android/tools/r8/internal/HE;->b:Z

    if-nez v1, :cond_1

    .line 4
    iget-object v0, v0, Lcom/android/tools/r8/internal/HE;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->P()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 6
    new-instance v0, Lcom/android/tools/r8/internal/no0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/no0;-><init>(Lcom/android/tools/r8/graph/y;)V

    .line 7
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/no0;->a(Ljava/util/concurrent/ExecutorService;)V

    .line 8
    iget-object v1, v0, Lcom/android/tools/r8/internal/no0;->e:Lcom/android/tools/r8/internal/oo0;

    iget-object v1, v1, Lcom/android/tools/r8/internal/oo0;->b:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    if-eqz v1, :cond_2

    goto/16 :goto_1

    .line 9
    :cond_2
    iget-object v1, v0, Lcom/android/tools/r8/internal/no0;->f:Lcom/android/tools/r8/internal/HE;

    .line 10
    iget-object v1, v1, Lcom/android/tools/r8/internal/HE;->c:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 11
    iget-object v2, v0, Lcom/android/tools/r8/internal/no0;->c:Lcom/android/tools/r8/graph/u1;

    .line 12
    invoke-static {v1}, Lcom/android/tools/r8/internal/Bl;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-virtual {v2, v1}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 14
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    invoke-static {v1}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    if-nez v1, :cond_3

    goto/16 :goto_1

    .line 15
    :cond_3
    iget-object v1, v0, Lcom/android/tools/r8/internal/no0;->c:Lcom/android/tools/r8/graph/u1;

    .line 16
    invoke-static {v1}, Lcom/android/tools/r8/internal/JE;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    .line 17
    iget-object v2, v0, Lcom/android/tools/r8/internal/no0;->f:Lcom/android/tools/r8/internal/HE;

    .line 18
    iget-object v2, v2, Lcom/android/tools/r8/internal/HE;->d:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 19
    iget-object v2, v0, Lcom/android/tools/r8/internal/no0;->c:Lcom/android/tools/r8/graph/u1;

    .line 20
    const-string v3, "writeToLogcat"

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/E0;->b(Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/g1;

    move-result-object v2

    .line 21
    sget-object v3, Lcom/android/tools/r8/graph/R2$c;->e:Lcom/android/tools/r8/graph/R2$c;

    .line 22
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/graph/g1;->a(Lcom/android/tools/r8/graph/R2;)V

    .line 23
    iget-object v2, v0, Lcom/android/tools/r8/internal/no0;->c:Lcom/android/tools/r8/graph/u1;

    .line 24
    const-string v4, "writeToLogcatIncludeDuplicates"

    invoke-virtual {v2, v4}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v2

    .line 25
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/E0;->b(Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/g1;

    move-result-object v2

    .line 26
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/graph/g1;->a(Lcom/android/tools/r8/graph/R2;)V

    .line 27
    iget-object v2, v0, Lcom/android/tools/r8/internal/no0;->c:Lcom/android/tools/r8/graph/u1;

    .line 28
    const-string v3, "logcatTag"

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/E0;->b(Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/g1;

    move-result-object v2

    new-instance v3, Lcom/android/tools/r8/graph/R2$k;

    iget-object v4, v0, Lcom/android/tools/r8/internal/no0;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v5, v0, Lcom/android/tools/r8/internal/no0;->f:Lcom/android/tools/r8/internal/HE;

    .line 29
    iget-object v5, v5, Lcom/android/tools/r8/internal/HE;->d:Ljava/lang/String;

    .line 30
    invoke-virtual {v4, v5}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/tools/r8/graph/R2$k;-><init>(Lcom/android/tools/r8/graph/L2;)V

    .line 31
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/graph/g1;->a(Lcom/android/tools/r8/graph/R2;)V

    .line 32
    :cond_4
    iget-object v2, v0, Lcom/android/tools/r8/internal/no0;->c:Lcom/android/tools/r8/graph/u1;

    .line 33
    invoke-static {v2}, Lcom/android/tools/r8/internal/IE;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/H2;

    move-result-object v2

    .line 34
    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v1

    .line 35
    sget-object v2, Lcom/android/tools/r8/internal/eX;->c:Lcom/android/tools/r8/internal/eX;

    .line 36
    iget-object v0, v0, Lcom/android/tools/r8/internal/no0;->b:Lcom/android/tools/r8/internal/kB;

    .line 37
    invoke-static {p0}, Lcom/android/tools/r8/internal/EW;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/EW$a;

    move-result-object v3

    .line 38
    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/tools/r8/internal/kB;->a(Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/internal/eX;Lcom/android/tools/r8/internal/EW$a;Ljava/util/concurrent/ExecutorService;)V

    .line 39
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->e()Lcom/android/tools/r8/graph/x0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/x0;->c()Lcom/android/tools/r8/graph/w0;

    move-result-object p1

    monitor-enter p1

    .line 40
    :try_start_0
    iget-object v0, p1, Lcom/android/tools/r8/graph/w0;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 41
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/w0;->c()Lcom/android/tools/r8/graph/w0;

    move-result-object v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/w0;->b()Lcom/android/tools/r8/graph/x0;

    move-result-object p1

    .line 43
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/y;->b(Lcom/android/tools/r8/graph/x0;)V

    return-void

    :catchall_0
    move-exception p0

    .line 44
    monitor-exit p1

    throw p0

    :cond_5
    :goto_1
    return-void
.end method

.method private static synthetic c(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/internal/nJ;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 45
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/android/tools/r8/D8;->d(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/internal/nJ;Ljava/util/concurrent/ExecutorService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    invoke-interface {p2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void

    :catchall_0
    move-exception p0

    invoke-interface {p2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 47
    throw p0
.end method

.method private static d(Lcom/android/tools/r8/graph/y;)V
    .locals 1

    .line 98
    invoke-static {p0}, Lcom/android/tools/r8/naming/V0;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/naming/r0;

    move-result-object v0

    .line 99
    iput-object v0, p0, Lcom/android/tools/r8/graph/y;->l:Lcom/android/tools/r8/naming/r0;

    return-void
.end method

.method private static synthetic d(Lcom/android/tools/r8/graph/y;Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    .line 100
    new-instance v0, Lcom/android/tools/r8/internal/Y2;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Y2;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Y2;->a(Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public static d(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/internal/nJ;Ljava/util/concurrent/ExecutorService;)V
    .locals 7

    .line 1
    iget-boolean v0, p1, Lcom/android/tools/r8/internal/nJ;->w:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 3
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 4
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    .line 5
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "D8 is running with total memory:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "D8 is running with free memory:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "D8 is running with max memory:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 8
    :cond_0
    sget v0, Lcom/android/tools/r8/internal/ns0;->d:I

    .line 9
    iget-object v0, p1, Lcom/android/tools/r8/internal/nJ;->E1:Lcom/android/tools/r8/internal/qb0;

    if-eqz v0, :cond_1

    .line 10
    iget-object v0, v0, Lcom/android/tools/r8/internal/qb0;->a:Lcom/android/tools/r8/internal/ns0;

    goto :goto_0

    .line 11
    :cond_1
    const-string v0, "D8 8.10.21"

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/ns0;->a(Lcom/android/tools/r8/internal/nJ;Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    move-result-object v0

    .line 12
    :goto_0
    :try_start_0
    const-string v1, "Pre conversion"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 13
    sget-boolean v1, Lcom/android/tools/r8/D8;->a:Z

    if-nez v1, :cond_3

    new-instance v1, Lcom/android/tools/r8/e1;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/e1;-><init>(Lcom/android/tools/r8/internal/nJ;)V

    invoke-static {p1, v1}, Lcom/android/tools/r8/internal/B4;->a(Lcom/android/tools/r8/internal/nJ;Ljava/util/function/Supplier;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2}, Ljava/lang/AssertionError;-><init>()V

    throw p2

    :catchall_0
    move-exception p2

    goto/16 :goto_6

    :catch_0
    move-exception p2

    goto/16 :goto_5

    .line 14
    :cond_3
    :goto_1
    const-string v1, "Read input app"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 15
    invoke-static {p0, p1, p2, v0}, Lcom/android/tools/r8/D8;->a(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/internal/nJ;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/graph/y;

    move-result-object v1

    .line 16
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 17
    const-string v2, "Initialize assume info collection"

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 18
    invoke-static {v1}, Lcom/android/tools/r8/D8;->a(Lcom/android/tools/r8/graph/y;)V

    .line 19
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 20
    const-string v2, "Desugared library amend"

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 21
    invoke-static {v1}, Lcom/android/tools/r8/internal/fm;->a(Lcom/android/tools/r8/graph/y;)V

    .line 22
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 23
    const-string v2, "Collect input synthetics"

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 24
    invoke-static {v1}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/graph/y;)V

    .line 25
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 26
    invoke-static {p1}, Lcom/android/tools/r8/ir/optimize/f;->a(Lcom/android/tools/r8/internal/nJ;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 27
    new-instance v2, Lcom/android/tools/r8/internal/Qc;

    .line 28
    sget-object v3, Lcom/android/tools/r8/internal/o40;->b:Lcom/android/tools/r8/internal/o40;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/Qc;-><init>(Lcom/android/tools/r8/graph/y;)V

    .line 29
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v3

    new-instance v4, Lcom/android/tools/r8/f1;

    invoke-direct {v4, v2}, Lcom/android/tools/r8/f1;-><init>(Lcom/android/tools/r8/internal/Qc;)V

    .line 30
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ;->G()Lcom/android/tools/r8/threading/ThreadingModule;

    move-result-object v2

    .line 31
    invoke-static {v3, v4, v2, p2}, Lcom/android/tools/r8/internal/Kr0;->a(Ljava/util/Collection;Ljava/util/function/Consumer;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;)V

    .line 32
    :cond_4
    iget-object v2, p1, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget-boolean v2, v2, Lcom/android/tools/r8/internal/nJ$p;->Q0:Z

    if-eqz v2, :cond_5

    .line 33
    invoke-static {v1}, Lcom/android/tools/r8/graph/l;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/l$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/l$a;->a()Lcom/android/tools/r8/graph/l;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/l;)V

    .line 34
    :cond_5
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 35
    new-instance v2, Lcom/android/tools/r8/internal/t70;

    invoke-direct {v2, v1, v0}, Lcom/android/tools/r8/internal/t70;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ns0;)V

    invoke-virtual {v2, v1, p2}, Lcom/android/tools/r8/internal/t70;->a(Lcom/android/tools/r8/graph/y;Ljava/util/concurrent/ExecutorService;)V

    .line 36
    const-string v2, "Post conversion"

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 37
    iget-object v2, p0, Lcom/android/tools/r8/utils/i;->e:Lcom/android/tools/r8/internal/hC;

    .line 38
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/hC;->iterator()Lcom/android/tools/r8/internal/Av0;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/ZI;

    .line 39
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/ZI;->close()V

    goto :goto_2

    .line 40
    :cond_6
    iget-object v2, p1, Lcom/android/tools/r8/internal/nJ;->C0:Lcom/android/tools/r8/internal/Xe0;

    .line 41
    iget-object v2, v2, Lcom/android/tools/r8/internal/Xe0;->d:[Ljava/lang/Object;

    .line 42
    array-length v2, v2

    if-lez v2, :cond_7

    .line 43
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Finished compilation with method filter: "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 44
    iget-object v2, p1, Lcom/android/tools/r8/internal/nJ;->C0:Lcom/android/tools/r8/internal/Xe0;

    new-instance v3, Lcom/android/tools/r8/g1;

    invoke-direct {v3}, Lcom/android/tools/r8/g1;-><init>()V

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/hC;->forEach(Ljava/util/function/Consumer;)V

    .line 45
    :cond_7
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h;->a()Lcom/android/tools/r8/graph/x0;

    move-result-object v2

    .line 46
    iget-object v2, v2, Lcom/android/tools/r8/graph/x0;->f:Lcom/android/tools/r8/graph/z0;

    .line 47
    iget-boolean v2, v2, Lcom/android/tools/r8/graph/z0;->b:Z

    .line 48
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/h;->a()Lcom/android/tools/r8/graph/x0;

    move-result-object v3

    .line 49
    iget-object v3, v3, Lcom/android/tools/r8/graph/x0;->f:Lcom/android/tools/r8/graph/z0;

    .line 50
    iget-boolean v3, v3, Lcom/android/tools/r8/graph/z0;->a:Z

    if-eqz v2, :cond_8

    .line 51
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->y()Lcom/android/tools/r8/dex/W;

    move-result-object v4

    goto :goto_3

    :cond_8
    const/4 v4, 0x0

    .line 52
    :goto_3
    const-string v5, "Run inspections"

    new-instance v6, Lcom/android/tools/r8/h1;

    invoke-direct {v6, p1, v1}, Lcom/android/tools/r8/h1;-><init>(Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {v0, v5, v6}, Lcom/android/tools/r8/internal/ns0;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/Sr0;)V

    .line 53
    const-string v5, "Create prefix rewriting lens"

    new-instance v6, Lcom/android/tools/r8/i1;

    invoke-direct {v6, v1}, Lcom/android/tools/r8/i1;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {v0, v5, v6}, Lcom/android/tools/r8/internal/ns0;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/Sr0;)V

    .line 54
    const-string v5, "Create record rewriting lens"

    new-instance v6, Lcom/android/tools/r8/j1;

    invoke-direct {v6, v1}, Lcom/android/tools/r8/j1;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {v0, v5, v6}, Lcom/android/tools/r8/internal/ns0;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/Sr0;)V

    .line 55
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->P()Z

    move-result v5

    if-eqz v5, :cond_9

    if-eqz v3, :cond_9

    if-eqz v2, :cond_9

    .line 56
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object v2

    .line 57
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/WR;->b()Lcom/android/tools/r8/internal/zm;

    move-result-object v2

    .line 58
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zm;->a()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 59
    const-string v2, "Rewrite non-dex inputs"

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 60
    invoke-static {v1, p0, p2, v4, v0}, Lcom/android/tools/r8/D8;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/utils/i;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/dex/W;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/graph/w4;

    move-result-object v2

    .line 61
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 62
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/y;->b(Lcom/android/tools/r8/graph/x0;)V

    .line 63
    invoke-static {}, Lcom/android/tools/r8/naming/r0;->a()Lcom/android/tools/r8/naming/r0;

    move-result-object v2

    .line 64
    iput-object v2, v1, Lcom/android/tools/r8/graph/y;->l:Lcom/android/tools/r8/naming/r0;

    goto :goto_4

    .line 65
    :cond_9
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->P()Z

    move-result v2

    if-eqz v2, :cond_a

    if-eqz v3, :cond_a

    .line 66
    invoke-static {}, Lcom/android/tools/r8/naming/r0;->a()Lcom/android/tools/r8/naming/r0;

    move-result-object v2

    .line 67
    iput-object v2, v1, Lcom/android/tools/r8/graph/y;->l:Lcom/android/tools/r8/naming/r0;

    .line 68
    :cond_a
    :goto_4
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->P()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p1, Lcom/android/tools/r8/internal/nJ;->G1:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b

    .line 69
    const-string v2, "Generate main-dex list"

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 70
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/u1;->b()V

    .line 71
    new-instance v2, Lcom/android/tools/r8/GenerateMainDexList;

    invoke-direct {v2, p1}, Lcom/android/tools/r8/GenerateMainDexList;-><init>(Lcom/android/tools/r8/internal/nJ;)V

    .line 72
    invoke-virtual {v2, v1, p2}, Lcom/android/tools/r8/GenerateMainDexList;->traceMainDexForD8(Lcom/android/tools/r8/graph/y;Ljava/util/concurrent/ExecutorService;)Lcom/android/tools/r8/shaking/o2;

    move-result-object v2

    .line 73
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/tools/r8/graph/h;->a(Lcom/android/tools/r8/shaking/o2;)Lcom/android/tools/r8/graph/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/y;->b(Lcom/android/tools/r8/graph/h;)Lcom/android/tools/r8/graph/y;

    .line 74
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 75
    :cond_b
    iget-object v2, v1, Lcom/android/tools/r8/graph/y;->d:Lcom/android/tools/r8/internal/l4;

    .line 76
    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/l4;->c(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/l4;

    move-result-object v2

    .line 77
    iput-object v2, v1, Lcom/android/tools/r8/graph/y;->d:Lcom/android/tools/r8/internal/l4;

    .line 78
    iget-object v2, v1, Lcom/android/tools/r8/graph/y;->q:Lcom/android/tools/r8/internal/qo0;

    .line 79
    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/qo0;->c(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/qo0;

    move-result-object v2

    .line 80
    iput-object v2, v1, Lcom/android/tools/r8/graph/y;->q:Lcom/android/tools/r8/internal/qo0;

    .line 81
    invoke-static {v1, v0, p2}, Lcom/android/tools/r8/D8;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ns0;Ljava/util/concurrent/ExecutorService;)V

    .line 82
    const-string v2, "Create MethodHandle.Lookup rewriting lens"

    new-instance v3, Lcom/android/tools/r8/k1;

    invoke-direct {v3, v1}, Lcom/android/tools/r8/k1;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {v0, v2, v3}, Lcom/android/tools/r8/internal/ns0;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/Sr0;)V

    .line 83
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 84
    invoke-static {v1}, Lcom/android/tools/r8/D8;->e(Lcom/android/tools/r8/graph/y;)V

    .line 85
    invoke-static {v1, p0, v4, p2}, Lcom/android/tools/r8/D8;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/dex/W;Ljava/util/concurrent/ExecutorService;)V

    .line 86
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->Z()V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    iget-object p2, p1, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/utils/i;->b(Lcom/android/tools/r8/internal/Ef0;)V

    .line 88
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->f0()V

    .line 89
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->U()Z

    move-result p0

    if-eqz p0, :cond_c

    .line 90
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ns0;->e()V

    :cond_c
    return-void

    .line 91
    :goto_5
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 92
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    :goto_6
    iget-object v1, p1, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/utils/i;->b(Lcom/android/tools/r8/internal/Ef0;)V

    .line 94
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->f0()V

    .line 95
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->U()Z

    move-result p0

    if-eqz p0, :cond_d

    .line 96
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ns0;->e()V

    .line 97
    :cond_d
    throw p2
.end method

.method private static e(Lcom/android/tools/r8/graph/y;)V
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->o:Lcom/android/tools/r8/SyntheticInfoConsumer;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/tools/r8/internal/nJ;->E0:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object p0

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/SyntheticInfoConsumer;)V

    .line 7
    invoke-interface {v0}, Lcom/android/tools/r8/SyntheticInfoConsumer;->finished()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic e(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/internal/nJ;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/android/tools/r8/D8;->c(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/internal/nJ;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public static synthetic f(Lcom/android/tools/r8/internal/Qc;Lcom/android/tools/r8/graph/H2;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/tools/r8/D8;->a(Lcom/android/tools/r8/internal/Qc;Lcom/android/tools/r8/graph/H2;)V

    return-void
.end method

.method public static synthetic g(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/internal/nJ;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/tools/r8/D8;->a(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/internal/nJ;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public static synthetic h(Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/tools/r8/D8;->a(Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/graph/y;)V

    return-void
.end method

.method public static synthetic i(Lcom/android/tools/r8/graph/y;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/tools/r8/D8;->a(Lcom/android/tools/r8/graph/y;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public static synthetic j(Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-static {p0}, Lcom/android/tools/r8/D8;->c(Lcom/android/tools/r8/graph/y;)V

    return-void
.end method

.method public static synthetic k(Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-static {p0}, Lcom/android/tools/r8/D8;->d(Lcom/android/tools/r8/graph/y;)V

    return-void
.end method

.method public static synthetic l(Lcom/android/tools/r8/graph/y;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/tools/r8/D8;->a(Lcom/android/tools/r8/graph/y;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V

    return-void
.end method

.method public static synthetic m(Lcom/android/tools/r8/graph/y;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/tools/r8/D8;->c(Lcom/android/tools/r8/graph/y;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5

    array-length v0, p0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/m1;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/m1;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/tools/r8/internal/lv;->a(Lcom/android/tools/r8/internal/mv;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    sget-object v0, Lcom/android/tools/r8/q;->b:Lcom/android/tools/r8/internal/QC;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " and each <argfile> is a file containing additional arguments (one per line)"

    const-string v2, " and options are:"

    const-string v3, "Usage: d8 [options] [@<argfile>] <input-files>"

    const-string v4, " where <input-files> are any combination of dex, class, zip, jar, or apk files"

    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/zq0;->a(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    new-instance v1, Lcom/android/tools/r8/ParseFlagPrinter;

    invoke-direct {v1}, Lcom/android/tools/r8/ParseFlagPrinter;-><init>()V

    invoke-static {}, Lcom/android/tools/r8/q;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v2

    invoke-static {v2}, Lcom/android/tools/r8/internal/hC;->a(Ljava/util/Collection;)Lcom/android/tools/r8/internal/hC;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/ParseFlagPrinter;->addFlags(Ljava/util/List;)Lcom/android/tools/r8/ParseFlagPrinter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/ParseFlagPrinter;->appendLinesToBuilder(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Invalid invocation."

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/zq0;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic n(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ns0;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/tools/r8/D8;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ns0;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public static synthetic o(Lcom/android/tools/r8/graph/y;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/tools/r8/D8;->d(Lcom/android/tools/r8/graph/y;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public static synthetic p(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/tools/r8/D8;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic q([Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/tools/r8/D8;->a([Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic r(Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-static {p0}, Lcom/android/tools/r8/D8;->b(Lcom/android/tools/r8/graph/y;)V

    return-void
.end method

.method public static run(Lcom/android/tools/r8/D8Command;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/CompilationFailedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand;->a()Lcom/android/tools/r8/utils/i;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/D8Command;->b()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    .line 3
    invoke-static {v1}, Lcom/android/tools/r8/internal/Kr0;->a(Lcom/android/tools/r8/internal/nJ;)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand;->g()Lcom/android/tools/r8/internal/Ef0;

    move-result-object p0

    new-instance v3, Lcom/android/tools/r8/l1;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/tools/r8/l1;-><init>(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/internal/nJ;Ljava/util/concurrent/ExecutorService;)V

    .line 5
    invoke-static {p0, v3}, Lcom/android/tools/r8/internal/lv;->b(Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/internal/lv$a;)V

    return-void
.end method

.method public static run(Lcom/android/tools/r8/D8Command;Ljava/util/concurrent/ExecutorService;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/CompilationFailedException;
        }
    .end annotation

    .line 6
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand;->a()Lcom/android/tools/r8/utils/i;

    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lcom/android/tools/r8/D8Command;->b()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    .line 8
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand;->g()Lcom/android/tools/r8/internal/Ef0;

    move-result-object p0

    new-instance v2, Lcom/android/tools/r8/b1;

    invoke-direct {v2, v0, v1, p1}, Lcom/android/tools/r8/b1;-><init>(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/internal/nJ;Ljava/util/concurrent/ExecutorService;)V

    .line 9
    invoke-static {p0, v2}, Lcom/android/tools/r8/internal/lv;->b(Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/internal/lv$a;)V

    return-void
.end method

.method public static synthetic s(Lcom/android/tools/r8/graph/y;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/tools/r8/D8;->b(Lcom/android/tools/r8/graph/y;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public static synthetic t(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/internal/nJ;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/tools/r8/D8;->b(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/internal/nJ;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public static synthetic u(Lcom/android/tools/r8/graph/h;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/graph/y;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/tools/r8/D8;->a(Lcom/android/tools/r8/graph/h;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/graph/y;

    move-result-object p0

    return-object p0
.end method
