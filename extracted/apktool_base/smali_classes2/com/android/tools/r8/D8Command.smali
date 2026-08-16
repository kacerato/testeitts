.class public final Lcom/android/tools/r8/D8Command;
.super Lcom/android/tools/r8/BaseCompilerCommand;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/D8Command$Builder;
    }
.end annotation


# static fields
.field static final synthetic O:Z = true


# instance fields
.field private final A:Lcom/android/tools/r8/GlobalSyntheticsConsumer;

.field private final B:Lcom/android/tools/r8/SyntheticInfoConsumer;

.field private final C:Lcom/android/tools/r8/DesugarGraphConsumer;

.field private final D:Lcom/android/tools/r8/StringConsumer;

.field private final E:Lcom/android/tools/r8/internal/vm;

.field private final F:Ljava/lang/String;

.field private final G:Z

.field private final H:Lcom/android/tools/r8/internal/hC;

.field private final I:Lcom/android/tools/r8/StringConsumer;

.field private final J:Lcom/android/tools/r8/PartitionMapConsumer;

.field private final K:Z

.field private final L:Z

.field private final M:Lcom/android/tools/r8/graph/u1;

.field private final N:Ljava/util/function/Consumer;

.field private final z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/CompilationMode;Lcom/android/tools/r8/ProgramConsumer;Lcom/android/tools/r8/StringConsumer;ILcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/internal/nJ$f;ZLcom/android/tools/r8/GlobalSyntheticsConsumer;ZZLjava/util/function/BiPredicate;Lcom/android/tools/r8/DesugarGraphConsumer;Lcom/android/tools/r8/SyntheticInfoConsumer;Lcom/android/tools/r8/StringConsumer;Lcom/android/tools/r8/internal/vm;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZLcom/android/tools/r8/internal/hC;ILcom/android/tools/r8/internal/qt;Lcom/android/tools/r8/MapIdProvider;Lcom/android/tools/r8/StringConsumer;Lcom/android/tools/r8/PartitionMapConsumer;ZZLjava/util/function/Consumer;ZLjava/util/List;Ljava/util/List;Lcom/android/tools/r8/ClassConflictResolver;Lcom/android/tools/r8/CancelCompilationChecker;Lcom/android/tools/r8/graph/u1;)V
    .locals 22

    move-object/from16 v15, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p10

    move/from16 v9, p11

    move-object/from16 v10, p12

    move-object/from16 v11, p17

    move-object/from16 v12, p18

    move/from16 v13, p22

    move-object/from16 v14, p23

    move-object/from16 v15, p24

    move/from16 v17, p30

    move-object/from16 v18, p31

    move-object/from16 v19, p32

    move-object/from16 v20, p33

    move-object/from16 v21, p34

    const/16 v16, 0x0

    .line 3
    invoke-direct/range {v0 .. v21}, Lcom/android/tools/r8/BaseCompilerCommand;-><init>(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/CompilationMode;Lcom/android/tools/r8/ProgramConsumer;Lcom/android/tools/r8/StringConsumer;ILcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/internal/nJ$f;ZZLjava/util/function/BiPredicate;Ljava/util/List;Ljava/util/List;ILcom/android/tools/r8/internal/qt;Lcom/android/tools/r8/MapIdProvider;Lcom/android/tools/r8/SourceFileProvider;ZLjava/util/List;Ljava/util/List;Lcom/android/tools/r8/ClassConflictResolver;Lcom/android/tools/r8/CancelCompilationChecker;)V

    move/from16 v1, p8

    .line 4
    iput-boolean v1, v0, Lcom/android/tools/r8/D8Command;->z:Z

    move-object/from16 v1, p9

    .line 5
    iput-object v1, v0, Lcom/android/tools/r8/D8Command;->A:Lcom/android/tools/r8/GlobalSyntheticsConsumer;

    move-object/from16 v1, p14

    .line 6
    iput-object v1, v0, Lcom/android/tools/r8/D8Command;->B:Lcom/android/tools/r8/SyntheticInfoConsumer;

    move-object/from16 v1, p13

    .line 7
    iput-object v1, v0, Lcom/android/tools/r8/D8Command;->C:Lcom/android/tools/r8/DesugarGraphConsumer;

    move-object/from16 v1, p15

    .line 8
    iput-object v1, v0, Lcom/android/tools/r8/D8Command;->D:Lcom/android/tools/r8/StringConsumer;

    move-object/from16 v1, p16

    .line 9
    iput-object v1, v0, Lcom/android/tools/r8/D8Command;->E:Lcom/android/tools/r8/internal/vm;

    move-object/from16 v1, p19

    .line 10
    iput-object v1, v0, Lcom/android/tools/r8/D8Command;->F:Ljava/lang/String;

    move/from16 v1, p20

    .line 11
    iput-boolean v1, v0, Lcom/android/tools/r8/D8Command;->G:Z

    move-object/from16 v1, p21

    .line 12
    iput-object v1, v0, Lcom/android/tools/r8/D8Command;->H:Lcom/android/tools/r8/internal/hC;

    move-object/from16 v1, p25

    .line 13
    iput-object v1, v0, Lcom/android/tools/r8/D8Command;->I:Lcom/android/tools/r8/StringConsumer;

    move-object/from16 v1, p26

    .line 14
    iput-object v1, v0, Lcom/android/tools/r8/D8Command;->J:Lcom/android/tools/r8/PartitionMapConsumer;

    move/from16 v1, p27

    .line 15
    iput-boolean v1, v0, Lcom/android/tools/r8/D8Command;->K:Z

    move/from16 v1, p28

    .line 16
    iput-boolean v1, v0, Lcom/android/tools/r8/D8Command;->L:Z

    move-object/from16 v1, p35

    .line 17
    iput-object v1, v0, Lcom/android/tools/r8/D8Command;->M:Lcom/android/tools/r8/graph/u1;

    move-object/from16 v1, p29

    .line 18
    iput-object v1, v0, Lcom/android/tools/r8/D8Command;->N:Ljava/util/function/Consumer;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/CompilationMode;Lcom/android/tools/r8/ProgramConsumer;Lcom/android/tools/r8/StringConsumer;ILcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/internal/nJ$f;ZLcom/android/tools/r8/GlobalSyntheticsConsumer;ZZLjava/util/function/BiPredicate;Lcom/android/tools/r8/DesugarGraphConsumer;Lcom/android/tools/r8/SyntheticInfoConsumer;Lcom/android/tools/r8/StringConsumer;Lcom/android/tools/r8/internal/vm;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZLcom/android/tools/r8/internal/hC;ILcom/android/tools/r8/internal/qt;Lcom/android/tools/r8/MapIdProvider;Lcom/android/tools/r8/StringConsumer;Lcom/android/tools/r8/PartitionMapConsumer;ZZLjava/util/function/Consumer;ZLjava/util/List;Ljava/util/List;Lcom/android/tools/r8/ClassConflictResolver;Lcom/android/tools/r8/CancelCompilationChecker;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/D1;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p35}, Lcom/android/tools/r8/D8Command;-><init>(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/CompilationMode;Lcom/android/tools/r8/ProgramConsumer;Lcom/android/tools/r8/StringConsumer;ILcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/internal/nJ$f;ZLcom/android/tools/r8/GlobalSyntheticsConsumer;ZZLjava/util/function/BiPredicate;Lcom/android/tools/r8/DesugarGraphConsumer;Lcom/android/tools/r8/SyntheticInfoConsumer;Lcom/android/tools/r8/StringConsumer;Lcom/android/tools/r8/internal/vm;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZLcom/android/tools/r8/internal/hC;ILcom/android/tools/r8/internal/qt;Lcom/android/tools/r8/MapIdProvider;Lcom/android/tools/r8/StringConsumer;Lcom/android/tools/r8/PartitionMapConsumer;ZZLjava/util/function/Consumer;ZLjava/util/List;Ljava/util/List;Lcom/android/tools/r8/ClassConflictResolver;Lcom/android/tools/r8/CancelCompilationChecker;Lcom/android/tools/r8/graph/u1;)V

    return-void
.end method

.method private constructor <init>(ZZ)V
    .locals 1

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/BaseCompilerCommand;-><init>(ZZ)V

    const/4 p1, 0x0

    .line 20
    iput-boolean p1, p0, Lcom/android/tools/r8/D8Command;->z:Z

    const/4 p2, 0x0

    .line 21
    iput-object p2, p0, Lcom/android/tools/r8/D8Command;->A:Lcom/android/tools/r8/GlobalSyntheticsConsumer;

    .line 22
    iput-object p2, p0, Lcom/android/tools/r8/D8Command;->B:Lcom/android/tools/r8/SyntheticInfoConsumer;

    .line 23
    iput-object p2, p0, Lcom/android/tools/r8/D8Command;->C:Lcom/android/tools/r8/DesugarGraphConsumer;

    .line 24
    iput-object p2, p0, Lcom/android/tools/r8/D8Command;->D:Lcom/android/tools/r8/StringConsumer;

    .line 25
    iput-object p2, p0, Lcom/android/tools/r8/D8Command;->E:Lcom/android/tools/r8/internal/vm;

    .line 26
    iput-object p2, p0, Lcom/android/tools/r8/D8Command;->F:Ljava/lang/String;

    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Lcom/android/tools/r8/D8Command;->G:Z

    .line 28
    iput-object p2, p0, Lcom/android/tools/r8/D8Command;->H:Lcom/android/tools/r8/internal/hC;

    .line 29
    iput-object p2, p0, Lcom/android/tools/r8/D8Command;->I:Lcom/android/tools/r8/StringConsumer;

    .line 30
    iput-object p2, p0, Lcom/android/tools/r8/D8Command;->J:Lcom/android/tools/r8/PartitionMapConsumer;

    .line 31
    iput-boolean p1, p0, Lcom/android/tools/r8/D8Command;->K:Z

    .line 32
    iput-boolean p1, p0, Lcom/android/tools/r8/D8Command;->L:Z

    .line 33
    iput-object p2, p0, Lcom/android/tools/r8/D8Command;->M:Lcom/android/tools/r8/graph/u1;

    .line 34
    iput-object p2, p0, Lcom/android/tools/r8/D8Command;->N:Ljava/util/function/Consumer;

    return-void
.end method

.method public synthetic constructor <init>(ZZLcom/android/tools/r8/D1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/D8Command;-><init>(ZZ)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/utils/i;)Lcom/android/tools/r8/D8Command$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/D8Command$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/tools/r8/D8Command$Builder;-><init>(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/C1;)V

    return-object v0
.end method

.method private a(Lcom/android/tools/r8/StringConsumer;)Lcom/android/tools/r8/naming/Q;
    .locals 1

    .line 2
    sget-boolean p1, Lcom/android/tools/r8/naming/H0;->c:Z

    .line 3
    iget-object p1, p0, Lcom/android/tools/r8/D8Command;->I:Lcom/android/tools/r8/StringConsumer;

    .line 4
    new-instance v0, Lcom/android/tools/r8/naming/H0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/naming/H0;-><init>(Lcom/android/tools/r8/StringConsumer;)V

    return-object v0
.end method

.method public static builder()Lcom/android/tools/r8/D8Command$Builder;
    .locals 3

    .line 1
    new-instance v0, Lcom/android/tools/r8/D8Command$Builder;

    .line 2
    new-instance v1, Lcom/android/tools/r8/o;

    invoke-direct {v1}, Lcom/android/tools/r8/o;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/D8Command$Builder;-><init>(Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/C1;)V

    return-object v0
.end method

.method public static builder(Lcom/android/tools/r8/DiagnosticsHandler;)Lcom/android/tools/r8/D8Command$Builder;
    .locals 2

    .line 3
    new-instance v0, Lcom/android/tools/r8/D8Command$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/tools/r8/D8Command$Builder;-><init>(Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/C1;)V

    return-object v0
.end method

.method public static getParseFlagsInformation()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/tools/r8/ParseFlagInfo;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/android/tools/r8/q;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic i(Lcom/android/tools/r8/D8Command;Lcom/android/tools/r8/StringConsumer;)Lcom/android/tools/r8/naming/Q;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/D8Command;->a(Lcom/android/tools/r8/StringConsumer;)Lcom/android/tools/r8/naming/Q;

    move-result-object p0

    return-object p0
.end method

.method public static parse([Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)Lcom/android/tools/r8/D8Command$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/q;

    invoke-direct {v0}, Lcom/android/tools/r8/q;-><init>()V

    invoke-static {}, Lcom/android/tools/r8/D8Command;->builder()Lcom/android/tools/r8/D8Command$Builder;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lcom/android/tools/r8/q;->a([Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/D8Command$Builder;)Lcom/android/tools/r8/D8Command$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parse([Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/DiagnosticsHandler;)Lcom/android/tools/r8/D8Command$Builder;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/q;

    invoke-direct {v0}, Lcom/android/tools/r8/q;-><init>()V

    invoke-static {p2}, Lcom/android/tools/r8/D8Command;->builder(Lcom/android/tools/r8/DiagnosticsHandler;)Lcom/android/tools/r8/D8Command$Builder;

    move-result-object p2

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/tools/r8/q;->a([Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/D8Command$Builder;)Lcom/android/tools/r8/D8Command$Builder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Lcom/android/tools/r8/internal/nJ;
    .locals 6

    new-instance v0, Lcom/android/tools/r8/internal/nJ;

    iget-object v1, p0, Lcom/android/tools/r8/D8Command;->M:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand;->g()Lcom/android/tools/r8/internal/Ef0;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/nJ;-><init>(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;)V

    sget-boolean v1, Lcom/android/tools/r8/D8Command;->O:Z

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
    iget-object v2, p0, Lcom/android/tools/r8/D8Command;->N:Ljava/util/function/Consumer;

    iput-object v2, v0, Lcom/android/tools/r8/internal/nJ;->p:Ljava/util/function/Consumer;

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand;->getMode()Lcom/android/tools/r8/CompilationMode;

    move-result-object v2

    sget-object v3, Lcom/android/tools/r8/CompilationMode;->DEBUG:Lcom/android/tools/r8/CompilationMode;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_2

    move v2, v5

    goto :goto_1

    :cond_2
    move v2, v4

    :goto_1
    iput-boolean v2, v0, Lcom/android/tools/r8/internal/nJ;->i1:Z

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand;->getProgramConsumer()Lcom/android/tools/r8/ProgramConsumer;

    move-result-object v2

    iput-object v2, v0, Lcom/android/tools/r8/internal/nJ;->l:Lcom/android/tools/r8/ProgramConsumer;

    instance-of v2, v2, Lcom/android/tools/r8/ClassFileConsumer;

    if-eqz v2, :cond_7

    if-nez v1, :cond_4

    iget-boolean v2, v0, Lcom/android/tools/r8/internal/nJ;->Z:Z

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_4
    :goto_2
    iput-boolean v4, v0, Lcom/android/tools/r8/internal/nJ;->Z:Z

    if-nez v1, :cond_6

    iget-boolean v2, v0, Lcom/android/tools/r8/internal/nJ;->a0:Z

    if-eqz v2, :cond_5

    goto :goto_3

    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_6
    :goto_3
    iput-boolean v4, v0, Lcom/android/tools/r8/internal/nJ;->a0:Z

    goto :goto_4

    :cond_7
    if-nez v1, :cond_9

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->l()Lcom/android/tools/r8/internal/nJ$e;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/tools/r8/internal/nJ$e;->b:Z

    if-eqz v2, :cond_9

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand;->e()Lcom/android/tools/r8/internal/nJ$f;

    move-result-object v2

    sget-object v3, Lcom/android/tools/r8/internal/nJ$f;->b:Lcom/android/tools/r8/internal/nJ$f;

    if-ne v2, v3, :cond_8

    goto :goto_4

    :cond_8
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_9
    :goto_4
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand;->getMainDexListConsumer()Lcom/android/tools/r8/StringConsumer;

    move-result-object v2

    iput-object v2, v0, Lcom/android/tools/r8/internal/nJ;->P1:Lcom/android/tools/r8/StringConsumer;

    iget-boolean v2, v0, Lcom/android/tools/r8/internal/nJ;->i1:Z

    iput-boolean v2, v0, Lcom/android/tools/r8/internal/nJ;->H1:Z

    iget-boolean v2, p0, Lcom/android/tools/r8/D8Command;->G:Z

    iput-boolean v2, v0, Lcom/android/tools/r8/internal/nJ;->U0:Z

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand;->getMinApiLevel()I

    move-result v2

    invoke-static {v2}, Lcom/android/tools/r8/internal/C2;->a(I)Lcom/android/tools/r8/internal/C2;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/nJ;->d(Lcom/android/tools/r8/internal/C2;)V

    iget-boolean v2, p0, Lcom/android/tools/r8/D8Command;->z:Z

    iput-boolean v2, v0, Lcom/android/tools/r8/internal/nJ;->E0:Z

    iput-boolean v2, v0, Lcom/android/tools/r8/internal/nJ;->G0:Z

    iget-object v2, p0, Lcom/android/tools/r8/D8Command;->A:Lcom/android/tools/r8/GlobalSyntheticsConsumer;

    iput-object v2, v0, Lcom/android/tools/r8/internal/nJ;->n:Lcom/android/tools/r8/GlobalSyntheticsConsumer;

    iget-object v2, p0, Lcom/android/tools/r8/D8Command;->B:Lcom/android/tools/r8/SyntheticInfoConsumer;

    iput-object v2, v0, Lcom/android/tools/r8/internal/nJ;->o:Lcom/android/tools/r8/SyntheticInfoConsumer;

    iget-object v2, p0, Lcom/android/tools/r8/D8Command;->C:Lcom/android/tools/r8/DesugarGraphConsumer;

    iput-object v2, v0, Lcom/android/tools/r8/internal/nJ;->Y1:Lcom/android/tools/r8/DesugarGraphConsumer;

    iget-object v2, p0, Lcom/android/tools/r8/D8Command;->H:Lcom/android/tools/r8/internal/hC;

    iput-object v2, v0, Lcom/android/tools/r8/internal/nJ;->G1:Ljava/util/List;

    iget-object v2, v0, Lcom/android/tools/r8/internal/nJ;->Q1:Lcom/android/tools/r8/naming/Q;

    iget-object v3, p0, Lcom/android/tools/r8/D8Command;->J:Lcom/android/tools/r8/PartitionMapConsumer;

    new-instance v4, Lcom/android/tools/r8/u1;

    invoke-direct {v4}, Lcom/android/tools/r8/u1;-><init>()V

    invoke-static {v2, v3, v4}, Lcom/android/tools/r8/internal/LU;->a(Lcom/android/tools/r8/naming/Q;Ljava/lang/Object;Ljava/util/function/Function;)Lcom/android/tools/r8/naming/Q;

    move-result-object v2

    iget-object v3, p0, Lcom/android/tools/r8/D8Command;->I:Lcom/android/tools/r8/StringConsumer;

    new-instance v4, Lcom/android/tools/r8/v1;

    invoke-direct {v4, p0}, Lcom/android/tools/r8/v1;-><init>(Lcom/android/tools/r8/D8Command;)V

    invoke-static {v2, v3, v4}, Lcom/android/tools/r8/internal/LU;->a(Lcom/android/tools/r8/naming/Q;Ljava/lang/Object;Ljava/util/function/Function;)Lcom/android/tools/r8/naming/Q;

    move-result-object v2

    iput-object v2, v0, Lcom/android/tools/r8/internal/nJ;->Q1:Lcom/android/tools/r8/naming/Q;

    iget-boolean v2, v0, Lcom/android/tools/r8/internal/nJ;->i1:Z

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/android/tools/r8/D8Command;->I:Lcom/android/tools/r8/StringConsumer;

    if-eqz v2, :cond_a

    sget-object v2, Lcom/android/tools/r8/internal/nJ$i;->c:Lcom/android/tools/r8/internal/nJ$i;

    goto :goto_5

    :cond_a
    sget-object v2, Lcom/android/tools/r8/internal/nJ$i;->b:Lcom/android/tools/r8/internal/nJ$i;

    :goto_5
    iput-object v2, v0, Lcom/android/tools/r8/internal/nJ;->J1:Lcom/android/tools/r8/internal/nJ$i;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->X()Lcom/android/tools/r8/internal/nJ$j;

    move-result-object v2

    iput-boolean v5, v2, Lcom/android/tools/r8/internal/nJ$j;->a:Z

    if-nez v1, :cond_c

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->W()Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_6

    :cond_b
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_c
    :goto_6
    if-nez v1, :cond_e

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->R()Z

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

    iget-boolean v2, v0, Lcom/android/tools/r8/internal/nJ;->y:Z

    if-nez v2, :cond_f

    goto :goto_8

    :cond_f
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_10
    :goto_8
    iput-boolean v5, v0, Lcom/android/tools/r8/internal/nJ;->y:Z

    if-nez v1, :cond_12

    iget-boolean v2, v0, Lcom/android/tools/r8/internal/nJ;->J:Z

    if-nez v2, :cond_11

    goto :goto_9

    :cond_11
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_12
    :goto_9
    if-nez v1, :cond_14

    iget-boolean v2, v0, Lcom/android/tools/r8/internal/nJ;->c0:Z

    if-nez v2, :cond_13

    goto :goto_a

    :cond_13
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_14
    :goto_a
    if-nez v1, :cond_16

    iget-object v2, v0, Lcom/android/tools/r8/internal/nJ;->e0:Lcom/android/tools/r8/internal/nJ$l;

    iget-boolean v2, v2, Lcom/android/tools/r8/internal/nJ$l;->a:Z

    if-nez v2, :cond_15

    goto :goto_b

    :cond_15
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_16
    :goto_b
    if-nez v1, :cond_18

    iget-boolean v2, v0, Lcom/android/tools/r8/internal/nJ;->S:Z

    if-nez v2, :cond_17

    goto :goto_c

    :cond_17
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_18
    :goto_c
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand;->e()Lcom/android/tools/r8/internal/nJ$f;

    move-result-object v2

    iput-object v2, v0, Lcom/android/tools/r8/internal/nJ;->L0:Lcom/android/tools/r8/internal/nJ$f;

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand;->getIncludeClassesChecksum()Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/tools/r8/internal/nJ;->T:Z

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand;->getDexClassChecksumFilter()Ljava/util/function/BiPredicate;

    move-result-object v2

    iput-object v2, v0, Lcom/android/tools/r8/internal/nJ;->U:Ljava/util/function/BiPredicate;

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand;->isOptimizeMultidexForLinearAlloc()Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/tools/r8/internal/nJ;->I1:Z

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object v2

    iget-object v3, p0, Lcom/android/tools/r8/D8Command;->E:Lcom/android/tools/r8/internal/vm;

    iget-object v4, p0, Lcom/android/tools/r8/D8Command;->F:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/android/tools/r8/internal/WR;->a(Lcom/android/tools/r8/internal/vm;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/tools/r8/D8Command;->D:Lcom/android/tools/r8/StringConsumer;

    iput-object v2, v0, Lcom/android/tools/r8/internal/nJ;->V1:Lcom/android/tools/r8/StringConsumer;

    iget-object v2, v0, Lcom/android/tools/r8/internal/nJ;->l:Lcom/android/tools/r8/ProgramConsumer;

    instance-of v2, v2, Lcom/android/tools/r8/ClassFileConsumer;

    if-nez v2, :cond_19

    const-string v2, "com.android.tools.r8.enableApiOutliningAndStubbing"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1a

    iget-boolean v2, p0, Lcom/android/tools/r8/D8Command;->K:Z

    if-nez v2, :cond_1a

    :cond_19
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->a()Lcom/android/tools/r8/internal/H2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/H2;->a()Lcom/android/tools/r8/internal/H2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/H2;->c()Lcom/android/tools/r8/internal/H2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/H2;->d()Lcom/android/tools/r8/internal/H2;

    :cond_1a
    iget-boolean v2, p0, Lcom/android/tools/r8/D8Command;->L:Z

    if-eqz v2, :cond_1b

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->q()Lcom/android/tools/r8/internal/s4;

    move-result-object v2

    iput-boolean v5, v2, Lcom/android/tools/r8/internal/s4;->c:Z

    :cond_1b
    if-nez v1, :cond_1d

    iget-object v2, v0, Lcom/android/tools/r8/internal/nJ;->f1:Lcom/android/tools/r8/internal/A4;

    if-nez v2, :cond_1c

    goto :goto_d

    :cond_1c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1d
    :goto_d
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

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand;->getOutputInspections()Ljava/util/Collection;

    move-result-object v2

    invoke-static {v2}, Lcom/android/tools/r8/internal/QD;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/android/tools/r8/internal/nJ;->t:Ljava/util/List;

    sget-boolean v2, Lcom/android/tools/r8/internal/nJ;->e2:Z

    if-nez v2, :cond_20

    if-nez v1, :cond_1f

    iget v2, v0, Lcom/android/tools/r8/internal/nJ;->k0:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1e

    goto :goto_e

    :cond_1e
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1f
    :goto_e
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand;->getThreadCount()I

    move-result v2

    iput v2, v0, Lcom/android/tools/r8/internal/nJ;->k0:I

    :cond_20
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->n()V

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->K()Lcom/android/tools/r8/internal/nJ$g;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->P()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ$g;->h()V

    goto :goto_10

    :cond_21
    if-nez v1, :cond_23

    iget-object v1, v0, Lcom/android/tools/r8/internal/nJ;->l:Lcom/android/tools/r8/ProgramConsumer;

    instance-of v1, v1, Lcom/android/tools/r8/ClassFileConsumer;

    if-eqz v1, :cond_22

    goto :goto_f

    :cond_22
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_23
    :goto_f
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ$g;->a()V

    :goto_10
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand;->getAndroidPlatformBuild()Z

    move-result v1

    sget-boolean v2, Lcom/android/tools/r8/internal/nJ;->h2:Z

    if-nez v2, :cond_25

    iget-boolean v2, v0, Lcom/android/tools/r8/internal/nJ;->F0:Z

    if-nez v2, :cond_24

    goto :goto_11

    :cond_24
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_25
    :goto_11
    if-eqz v1, :cond_26

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->a()Lcom/android/tools/r8/internal/H2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/H2;->b()Lcom/android/tools/r8/internal/H2;

    iput-boolean v5, v0, Lcom/android/tools/r8/internal/nJ;->O0:Z

    iput-boolean v5, v0, Lcom/android/tools/r8/internal/nJ;->F0:Z

    iput-boolean v5, v0, Lcom/android/tools/r8/internal/nJ;->S0:Z

    :cond_26
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->q()Lcom/android/tools/r8/internal/s4;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand;->c()Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcom/android/tools/r8/internal/s4;->a:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand;->h()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->E()Lcom/android/tools/r8/internal/po0;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand;->h()Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcom/android/tools/r8/internal/po0;->h:Ljava/util/Collection;

    :cond_27
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand;->d()Lcom/android/tools/r8/ClassConflictResolver;

    move-result-object v1

    iget-object v2, v0, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/a80;->a(Lcom/android/tools/r8/ClassConflictResolver;Lcom/android/tools/r8/internal/Ef0;)Lcom/android/tools/r8/dex/b;

    move-result-object v1

    iput-object v1, v0, Lcom/android/tools/r8/internal/nJ;->m:Lcom/android/tools/r8/dex/b;

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand;->getCancelCompilationChecker()Lcom/android/tools/r8/CancelCompilationChecker;

    move-result-object v1

    iput-object v1, v0, Lcom/android/tools/r8/internal/nJ;->c:Lcom/android/tools/r8/CancelCompilationChecker;

    sget-object v1, Lcom/android/tools/r8/dex/W$b;->b:Lcom/android/tools/r8/dex/W$b;

    iput-object v1, v0, Lcom/android/tools/r8/internal/nJ;->x0:Lcom/android/tools/r8/dex/W$b;

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand;->f()Lcom/android/tools/r8/internal/qt;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/nJ;->a(Lcom/android/tools/r8/internal/qt;)V

    invoke-static {v1}, Lcom/android/tools/r8/internal/rt;->a(Lcom/android/tools/r8/dex/W$b;)Lcom/android/tools/r8/internal/rt$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/rt$a;->c()Lcom/android/tools/r8/internal/rt$a;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/BaseCompilerCommand;->a(Lcom/android/tools/r8/internal/rt$a;)V

    iget-boolean v2, p0, Lcom/android/tools/r8/D8Command;->z:Z

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/rt$a;->b(Z)Lcom/android/tools/r8/internal/rt$a;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/D8Command;->E:Lcom/android/tools/r8/internal/vm;

    iput-object v2, v1, Lcom/android/tools/r8/internal/rt$a;->n:Lcom/android/tools/r8/internal/vm;

    iget-object v2, p0, Lcom/android/tools/r8/D8Command;->H:Lcom/android/tools/r8/internal/hC;

    iput-object v2, v1, Lcom/android/tools/r8/internal/rt$a;->q:Ljava/util/List;

    iget-boolean v2, p0, Lcom/android/tools/r8/D8Command;->K:Z

    iput-boolean v2, v1, Lcom/android/tools/r8/internal/rt$a;->w:Z

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/rt$a;->a()Lcom/android/tools/r8/internal/rt;

    move-result-object v1

    iput-object v1, v0, Lcom/android/tools/r8/internal/nJ;->w0:Lcom/android/tools/r8/internal/rt;

    return-object v0
.end method
