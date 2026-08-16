.class public final Lcom/android/tools/r8/L8Command;
.super Lcom/android/tools/r8/BaseCompilerCommand;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/L8Command$Builder;
    }
.end annotation


# static fields
.field static final synthetic D:Z = true


# instance fields
.field private final A:Lcom/android/tools/r8/R8Command;

.field private final B:Lcom/android/tools/r8/internal/vm;

.field private final C:Lcom/android/tools/r8/graph/u1;

.field private final z:Lcom/android/tools/r8/D8Command;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/android/tools/r8/R8Command;Lcom/android/tools/r8/D8Command;Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/CompilationMode;Lcom/android/tools/r8/ProgramConsumer;Lcom/android/tools/r8/StringConsumer;ILcom/android/tools/r8/internal/Ef0;ZLjava/util/function/BiPredicate;Lcom/android/tools/r8/internal/vm;Ljava/util/List;Ljava/util/List;ILcom/android/tools/r8/internal/qt;Lcom/android/tools/r8/MapIdProvider;Lcom/android/tools/r8/ClassConflictResolver;Lcom/android/tools/r8/CancelCompilationChecker;Lcom/android/tools/r8/graph/u1;)V
    .locals 23

    move-object/from16 v8, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move/from16 v5, p7

    move-object/from16 v6, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p12

    move-object/from16 v12, p13

    move/from16 v13, p14

    move-object/from16 v14, p15

    move-object/from16 v15, p16

    move-object/from16 v20, p17

    move-object/from16 v21, p18

    .line 3
    sget-object v7, Lcom/android/tools/r8/internal/nJ$f;->c:Lcom/android/tools/r8/internal/nJ$f;

    .line 4
    sget-object v18, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    move-object/from16 v19, v18

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v22, 0x0

    move/from16 v8, v22

    .line 5
    invoke-direct/range {v0 .. v21}, Lcom/android/tools/r8/BaseCompilerCommand;-><init>(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/CompilationMode;Lcom/android/tools/r8/ProgramConsumer;Lcom/android/tools/r8/StringConsumer;ILcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/internal/nJ$f;ZZLjava/util/function/BiPredicate;Ljava/util/List;Ljava/util/List;ILcom/android/tools/r8/internal/qt;Lcom/android/tools/r8/MapIdProvider;Lcom/android/tools/r8/SourceFileProvider;ZLjava/util/List;Ljava/util/List;Lcom/android/tools/r8/ClassConflictResolver;Lcom/android/tools/r8/CancelCompilationChecker;)V

    move-object/from16 v1, p2

    .line 6
    iput-object v1, v0, Lcom/android/tools/r8/L8Command;->z:Lcom/android/tools/r8/D8Command;

    move-object/from16 v1, p1

    .line 7
    iput-object v1, v0, Lcom/android/tools/r8/L8Command;->A:Lcom/android/tools/r8/R8Command;

    move-object/from16 v1, p11

    .line 8
    iput-object v1, v0, Lcom/android/tools/r8/L8Command;->B:Lcom/android/tools/r8/internal/vm;

    move-object/from16 v1, p19

    .line 9
    iput-object v1, v0, Lcom/android/tools/r8/L8Command;->C:Lcom/android/tools/r8/graph/u1;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/tools/r8/R8Command;Lcom/android/tools/r8/D8Command;Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/CompilationMode;Lcom/android/tools/r8/ProgramConsumer;Lcom/android/tools/r8/StringConsumer;ILcom/android/tools/r8/internal/Ef0;ZLjava/util/function/BiPredicate;Lcom/android/tools/r8/internal/vm;Ljava/util/List;Ljava/util/List;ILcom/android/tools/r8/internal/qt;Lcom/android/tools/r8/MapIdProvider;Lcom/android/tools/r8/ClassConflictResolver;Lcom/android/tools/r8/CancelCompilationChecker;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/v2;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p19}, Lcom/android/tools/r8/L8Command;-><init>(Lcom/android/tools/r8/R8Command;Lcom/android/tools/r8/D8Command;Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/CompilationMode;Lcom/android/tools/r8/ProgramConsumer;Lcom/android/tools/r8/StringConsumer;ILcom/android/tools/r8/internal/Ef0;ZLjava/util/function/BiPredicate;Lcom/android/tools/r8/internal/vm;Ljava/util/List;Ljava/util/List;ILcom/android/tools/r8/internal/qt;Lcom/android/tools/r8/MapIdProvider;Lcom/android/tools/r8/ClassConflictResolver;Lcom/android/tools/r8/CancelCompilationChecker;Lcom/android/tools/r8/graph/u1;)V

    return-void
.end method

.method private constructor <init>(ZZ)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/BaseCompilerCommand;-><init>(ZZ)V

    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lcom/android/tools/r8/L8Command;->A:Lcom/android/tools/r8/R8Command;

    .line 12
    iput-object p1, p0, Lcom/android/tools/r8/L8Command;->z:Lcom/android/tools/r8/D8Command;

    .line 13
    iput-object p1, p0, Lcom/android/tools/r8/L8Command;->B:Lcom/android/tools/r8/internal/vm;

    .line 14
    iput-object p1, p0, Lcom/android/tools/r8/L8Command;->C:Lcom/android/tools/r8/graph/u1;

    return-void
.end method

.method public synthetic constructor <init>(ZZLcom/android/tools/r8/v2;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/L8Command;-><init>(ZZ)V

    return-void
.end method

.method public static builder()Lcom/android/tools/r8/L8Command$Builder;
    .locals 3

    .line 1
    new-instance v0, Lcom/android/tools/r8/L8Command$Builder;

    .line 2
    new-instance v1, Lcom/android/tools/r8/T;

    invoke-direct {v1}, Lcom/android/tools/r8/T;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/L8Command$Builder;-><init>(Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/u2;)V

    return-object v0
.end method

.method public static builder(Lcom/android/tools/r8/DiagnosticsHandler;)Lcom/android/tools/r8/L8Command$Builder;
    .locals 2

    .line 3
    new-instance v0, Lcom/android/tools/r8/L8Command$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/tools/r8/L8Command$Builder;-><init>(Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/u2;)V

    return-object v0
.end method

.method public static parse([Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)Lcom/android/tools/r8/L8Command$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/V;

    invoke-direct {v0}, Lcom/android/tools/r8/V;-><init>()V

    invoke-static {}, Lcom/android/tools/r8/L8Command;->builder()Lcom/android/tools/r8/L8Command$Builder;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lcom/android/tools/r8/V;->a([Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/L8Command$Builder;)Lcom/android/tools/r8/L8Command$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parse([Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/DiagnosticsHandler;)Lcom/android/tools/r8/L8Command$Builder;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/V;

    invoke-direct {v0}, Lcom/android/tools/r8/V;-><init>()V

    invoke-static {p2}, Lcom/android/tools/r8/L8Command;->builder(Lcom/android/tools/r8/DiagnosticsHandler;)Lcom/android/tools/r8/L8Command$Builder;

    move-result-object p2

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/tools/r8/V;->a([Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/L8Command$Builder;)Lcom/android/tools/r8/L8Command$Builder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Lcom/android/tools/r8/internal/nJ;
    .locals 5

    new-instance v0, Lcom/android/tools/r8/internal/nJ;

    iget-object v1, p0, Lcom/android/tools/r8/L8Command;->C:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand;->g()Lcom/android/tools/r8/internal/Ef0;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/nJ;-><init>(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;)V

    sget-boolean v1, Lcom/android/tools/r8/L8Command;->D:Z

    if-nez v1, :cond_1

    iget-boolean v2, v0, Lcom/android/tools/r8/internal/nJ;->i1:Z

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand;->getMode()Lcom/android/tools/r8/CompilationMode;

    move-result-object v2

    sget-object v3, Lcom/android/tools/r8/CompilationMode;->DEBUG:Lcom/android/tools/r8/CompilationMode;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    move v2, v4

    :goto_1
    iput-boolean v2, v0, Lcom/android/tools/r8/internal/nJ;->i1:Z

    if-nez v1, :cond_4

    iget-object v2, v0, Lcom/android/tools/r8/internal/nJ;->P1:Lcom/android/tools/r8/StringConsumer;

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_4
    :goto_2
    if-nez v1, :cond_6

    iget-boolean v2, v0, Lcom/android/tools/r8/internal/nJ;->H1:Z

    if-nez v2, :cond_5

    goto :goto_3

    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_6
    :goto_3
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand;->getMinApiLevel()I

    move-result v2

    invoke-static {v2}, Lcom/android/tools/r8/internal/C2;->a(I)Lcom/android/tools/r8/internal/C2;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/nJ;->d(Lcom/android/tools/r8/internal/C2;)V

    if-nez v1, :cond_8

    iget-boolean v2, v0, Lcom/android/tools/r8/internal/nJ;->E0:Z

    if-nez v2, :cond_7

    goto :goto_4

    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_8
    :goto_4
    if-nez v1, :cond_a

    iget-boolean v2, v0, Lcom/android/tools/r8/internal/nJ;->G0:Z

    if-eqz v2, :cond_9

    goto :goto_5

    :cond_9
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_a
    :goto_5
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand;->getProgramConsumer()Lcom/android/tools/r8/ProgramConsumer;

    move-result-object v2

    iput-object v2, v0, Lcom/android/tools/r8/internal/nJ;->l:Lcom/android/tools/r8/ProgramConsumer;

    if-nez v1, :cond_c

    instance-of v2, v2, Lcom/android/tools/r8/ClassFileConsumer;

    if-eqz v2, :cond_b

    goto :goto_6

    :cond_b
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_c
    :goto_6
    if-nez v1, :cond_e

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->W()Z

    move-result v2

    if-nez v2, :cond_d

    goto :goto_7

    :cond_d
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_e
    :goto_7
    if-nez v1, :cond_10

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->R()Z

    move-result v2

    if-nez v2, :cond_f

    goto :goto_8

    :cond_f
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_10
    :goto_8
    if-nez v1, :cond_12

    iget-boolean v2, v0, Lcom/android/tools/r8/internal/nJ;->y:Z

    if-nez v2, :cond_11

    goto :goto_9

    :cond_11
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_12
    :goto_9
    if-nez v1, :cond_14

    iget-boolean v2, v0, Lcom/android/tools/r8/internal/nJ;->J:Z

    if-nez v2, :cond_13

    goto :goto_a

    :cond_13
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_14
    :goto_a
    if-nez v1, :cond_16

    iget-boolean v2, v0, Lcom/android/tools/r8/internal/nJ;->c0:Z

    if-nez v2, :cond_15

    goto :goto_b

    :cond_15
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_16
    :goto_b
    if-nez v1, :cond_18

    iget-object v2, v0, Lcom/android/tools/r8/internal/nJ;->e0:Lcom/android/tools/r8/internal/nJ$l;

    iget-boolean v2, v2, Lcom/android/tools/r8/internal/nJ$l;->a:Z

    if-nez v2, :cond_17

    goto :goto_c

    :cond_17
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_18
    :goto_c
    if-nez v1, :cond_1a

    iget-boolean v2, v0, Lcom/android/tools/r8/internal/nJ;->S:Z

    if-nez v2, :cond_19

    goto :goto_d

    :cond_19
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1a
    :goto_d
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->K()Lcom/android/tools/r8/internal/nJ$g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ$g;->a()V

    if-nez v1, :cond_1c

    iget-object v2, v0, Lcom/android/tools/r8/internal/nJ;->L0:Lcom/android/tools/r8/internal/nJ$f;

    sget-object v3, Lcom/android/tools/r8/internal/nJ$f;->c:Lcom/android/tools/r8/internal/nJ$f;

    if-ne v2, v3, :cond_1b

    goto :goto_e

    :cond_1b
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1c
    :goto_e
    if-nez v1, :cond_1e

    iget-boolean v2, v0, Lcom/android/tools/r8/internal/nJ;->I1:Z

    if-eqz v2, :cond_1d

    goto :goto_f

    :cond_1d
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1e
    :goto_f
    iput-boolean v4, v0, Lcom/android/tools/r8/internal/nJ;->I1:Z

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object v2

    iget-object v3, p0, Lcom/android/tools/r8/L8Command;->B:Lcom/android/tools/r8/internal/vm;

    invoke-interface {v3}, Lcom/android/tools/r8/internal/vm;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/tools/r8/internal/WR;->a(Lcom/android/tools/r8/internal/vm;Ljava/lang/String;)V

    if-nez v1, :cond_20

    iget-object v2, v0, Lcom/android/tools/r8/internal/nJ;->f1:Lcom/android/tools/r8/internal/A4;

    if-nez v2, :cond_1f

    goto :goto_10

    :cond_1f
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_20
    :goto_10
    new-instance v2, Lcom/android/tools/r8/internal/A4;

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand;->g()Lcom/android/tools/r8/internal/Ef0;

    move-result-object v3

    invoke-static {v3}, Lcom/android/tools/r8/AssertionsConfiguration;->a(Lcom/android/tools/r8/internal/Ef0;)Lcom/android/tools/r8/AssertionsConfiguration$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/AssertionsConfiguration$Builder;->setCompileTimeDisable()Lcom/android/tools/r8/AssertionsConfiguration$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/AssertionsConfiguration$Builder;->setScopeAll()Lcom/android/tools/r8/AssertionsConfiguration$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/AssertionsConfiguration$Builder;->build()Lcom/android/tools/r8/AssertionsConfiguration;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand;->getAssertionsConfiguration()Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v4, v3}, Lcom/android/tools/r8/internal/A4;-><init>(Ljava/util/List;Lcom/android/tools/r8/AssertionsConfiguration;)V

    iput-object v2, v0, Lcom/android/tools/r8/internal/nJ;->f1:Lcom/android/tools/r8/internal/A4;

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand;->d()Lcom/android/tools/r8/ClassConflictResolver;

    move-result-object v2

    iget-object v3, v0, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    invoke-static {v2, v3}, Lcom/android/tools/r8/internal/a80;->a(Lcom/android/tools/r8/ClassConflictResolver;Lcom/android/tools/r8/internal/Ef0;)Lcom/android/tools/r8/dex/b;

    move-result-object v2

    iput-object v2, v0, Lcom/android/tools/r8/internal/nJ;->m:Lcom/android/tools/r8/dex/b;

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand;->getCancelCompilationChecker()Lcom/android/tools/r8/CancelCompilationChecker;

    move-result-object v2

    iput-object v2, v0, Lcom/android/tools/r8/internal/nJ;->c:Lcom/android/tools/r8/CancelCompilationChecker;

    sget-boolean v2, Lcom/android/tools/r8/internal/nJ;->e2:Z

    if-nez v2, :cond_23

    if-nez v1, :cond_22

    iget v1, v0, Lcom/android/tools/r8/internal/nJ;->k0:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_21

    goto :goto_11

    :cond_21
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_22
    :goto_11
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand;->getThreadCount()I

    move-result v1

    iput v1, v0, Lcom/android/tools/r8/internal/nJ;->k0:I

    :cond_23
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->n()V

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->a()Lcom/android/tools/r8/internal/H2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/H2;->a()Lcom/android/tools/r8/internal/H2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/H2;->c()Lcom/android/tools/r8/internal/H2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/H2;->d()Lcom/android/tools/r8/internal/H2;

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand;->f()Lcom/android/tools/r8/internal/qt;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/nJ;->a(Lcom/android/tools/r8/internal/qt;)V

    sget-object v1, Lcom/android/tools/r8/dex/W$b;->d:Lcom/android/tools/r8/dex/W$b;

    invoke-static {v1}, Lcom/android/tools/r8/internal/rt;->a(Lcom/android/tools/r8/dex/W$b;)Lcom/android/tools/r8/internal/rt$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/rt$a;->c()Lcom/android/tools/r8/internal/rt$a;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/BaseCompilerCommand;->a(Lcom/android/tools/r8/internal/rt$a;)V

    iget-object v2, p0, Lcom/android/tools/r8/L8Command;->A:Lcom/android/tools/r8/R8Command;

    if-eqz v2, :cond_24

    invoke-virtual {v2}, Lcom/android/tools/r8/R8Command;->b()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ;->B()Lcom/android/tools/r8/shaking/o3;

    move-result-object v2

    iput-object v2, v1, Lcom/android/tools/r8/internal/rt$a;->p:Lcom/android/tools/r8/shaking/o3;

    :cond_24
    iget-object v2, p0, Lcom/android/tools/r8/L8Command;->B:Lcom/android/tools/r8/internal/vm;

    iput-object v2, v1, Lcom/android/tools/r8/internal/rt$a;->n:Lcom/android/tools/r8/internal/vm;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/rt$a;->a()Lcom/android/tools/r8/internal/rt;

    move-result-object v1

    iput-object v1, v0, Lcom/android/tools/r8/internal/nJ;->w0:Lcom/android/tools/r8/internal/rt;

    return-object v0
.end method

.method public final c()Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/L8Command;->i()Lcom/android/tools/r8/D8Command;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/L8Command;->i()Lcom/android/tools/r8/D8Command;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/BaseCompilerCommand;->c()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/L8Command;->j()Lcom/android/tools/r8/R8Command;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/L8Command;->j()Lcom/android/tools/r8/R8Command;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/BaseCompilerCommand;->c()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_1
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method public i()Lcom/android/tools/r8/D8Command;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/L8Command;->z:Lcom/android/tools/r8/D8Command;

    return-object v0
.end method

.method public j()Lcom/android/tools/r8/R8Command;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/L8Command;->A:Lcom/android/tools/r8/R8Command;

    return-object v0
.end method

.method public k()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/L8Command;->A:Lcom/android/tools/r8/R8Command;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
