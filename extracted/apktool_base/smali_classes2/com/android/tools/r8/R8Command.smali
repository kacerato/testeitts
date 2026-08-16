.class public final Lcom/android/tools/r8/R8Command;
.super Lcom/android/tools/r8/BaseCompilerCommand;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/R8Command$Builder;
    }
.end annotation


# static fields
.field static final synthetic b0:Z = true


# instance fields
.field private final A:Lcom/android/tools/r8/shaking/o3;

.field private final B:Ljava/util/ArrayList;

.field private final C:Z

.field private final D:Z

.field private final E:Z

.field private final F:Z

.field private final G:Ljava/util/Optional;

.field private final H:Lcom/android/tools/r8/StringConsumer;

.field private final I:Lcom/android/tools/r8/PartitionMapConsumer;

.field private final J:Lcom/android/tools/r8/StringConsumer;

.field private final K:Lcom/android/tools/r8/StringConsumer;

.field private final L:Lcom/android/tools/r8/StringConsumer;

.field private final M:Lcom/android/tools/r8/experimental/graphinfo/GraphConsumer;

.field private final N:Lcom/android/tools/r8/experimental/graphinfo/GraphConsumer;

.field private final O:Ljava/util/function/Consumer;

.field private final P:Lcom/android/tools/r8/StringConsumer;

.field private final Q:Lcom/android/tools/r8/internal/vm;

.field private final R:Lcom/android/tools/r8/internal/Qv;

.field private final S:Ljava/lang/String;

.field private final T:Z

.field private final U:Z

.field private final V:Lcom/android/tools/r8/AndroidResourceProvider;

.field private final W:Lcom/android/tools/r8/AndroidResourceConsumer;

.field private final X:Lcom/android/tools/r8/ResourceShrinkerConfiguration;

.field private final Y:Ljava/util/function/Consumer;

.field private final Z:Lcom/android/tools/r8/internal/hb0;

.field private final a0:J

.field private final z:Lcom/android/tools/r8/internal/hC;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/ProgramConsumer;Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/StringConsumer;Lcom/android/tools/r8/shaking/o3;Lcom/android/tools/r8/CompilationMode;ILcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/internal/nJ$f;ZZZZLjava/util/Optional;Lcom/android/tools/r8/StringConsumer;Lcom/android/tools/r8/PartitionMapConsumer;Lcom/android/tools/r8/StringConsumer;Lcom/android/tools/r8/StringConsumer;Lcom/android/tools/r8/StringConsumer;Lcom/android/tools/r8/experimental/graphinfo/GraphConsumer;Lcom/android/tools/r8/experimental/graphinfo/GraphConsumer;Ljava/util/function/Consumer;ZZLjava/util/function/BiPredicate;Lcom/android/tools/r8/StringConsumer;Lcom/android/tools/r8/internal/vm;Lcom/android/tools/r8/internal/Qv;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILcom/android/tools/r8/internal/qt;Lcom/android/tools/r8/MapIdProvider;Lcom/android/tools/r8/SourceFileProvider;ZZZLjava/util/List;Ljava/util/List;Lcom/android/tools/r8/ClassConflictResolver;Lcom/android/tools/r8/CancelCompilationChecker;Lcom/android/tools/r8/AndroidResourceProvider;Lcom/android/tools/r8/AndroidResourceConsumer;Lcom/android/tools/r8/ResourceShrinkerConfiguration;Ljava/util/ArrayList;Ljava/util/function/Consumer;Lcom/android/tools/r8/internal/hb0;J)V
    .locals 22

    move-object/from16 v15, p0

    move-object/from16 v14, p3

    move-object/from16 v13, p5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move-object/from16 v2, p6

    move/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move/from16 v8, p23

    move/from16 v9, p24

    move-object/from16 v10, p25

    move-object/from16 v11, p29

    move-object/from16 v12, p30

    move/from16 v13, p32

    move-object/from16 v14, p33

    move-object/from16 v15, p34

    move-object/from16 v16, p35

    move/from16 v17, p38

    move-object/from16 v18, p39

    move-object/from16 v19, p40

    move-object/from16 v20, p41

    move-object/from16 v21, p42

    .line 3
    invoke-direct/range {v0 .. v21}, Lcom/android/tools/r8/BaseCompilerCommand;-><init>(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/CompilationMode;Lcom/android/tools/r8/ProgramConsumer;Lcom/android/tools/r8/StringConsumer;ILcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/internal/nJ$f;ZZLjava/util/function/BiPredicate;Ljava/util/List;Ljava/util/List;ILcom/android/tools/r8/internal/qt;Lcom/android/tools/r8/MapIdProvider;Lcom/android/tools/r8/SourceFileProvider;ZLjava/util/List;Ljava/util/List;Lcom/android/tools/r8/ClassConflictResolver;Lcom/android/tools/r8/CancelCompilationChecker;)V

    .line 4
    sget-boolean v0, Lcom/android/tools/r8/R8Command;->b0:Z

    move-object/from16 v1, p5

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    move-object/from16 v0, p3

    if-eqz v0, :cond_2

    :goto_1
    move-object/from16 v2, p0

    goto :goto_2

    .line 5
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    move-object/from16 v0, p3

    goto :goto_1

    .line 6
    :goto_2
    iput-object v0, v2, Lcom/android/tools/r8/R8Command;->z:Lcom/android/tools/r8/internal/hC;

    .line 7
    iput-object v1, v2, Lcom/android/tools/r8/R8Command;->A:Lcom/android/tools/r8/shaking/o3;

    move-object/from16 v0, p46

    .line 8
    iput-object v0, v2, Lcom/android/tools/r8/R8Command;->B:Ljava/util/ArrayList;

    move/from16 v0, p10

    .line 9
    iput-boolean v0, v2, Lcom/android/tools/r8/R8Command;->C:Z

    move/from16 v0, p11

    .line 10
    iput-boolean v0, v2, Lcom/android/tools/r8/R8Command;->D:Z

    move/from16 v0, p12

    .line 11
    iput-boolean v0, v2, Lcom/android/tools/r8/R8Command;->E:Z

    move/from16 v0, p13

    .line 12
    iput-boolean v0, v2, Lcom/android/tools/r8/R8Command;->F:Z

    move-object/from16 v0, p14

    .line 13
    iput-object v0, v2, Lcom/android/tools/r8/R8Command;->G:Ljava/util/Optional;

    move-object/from16 v0, p15

    .line 14
    iput-object v0, v2, Lcom/android/tools/r8/R8Command;->H:Lcom/android/tools/r8/StringConsumer;

    move-object/from16 v0, p16

    .line 15
    iput-object v0, v2, Lcom/android/tools/r8/R8Command;->I:Lcom/android/tools/r8/PartitionMapConsumer;

    move-object/from16 v0, p17

    .line 16
    iput-object v0, v2, Lcom/android/tools/r8/R8Command;->J:Lcom/android/tools/r8/StringConsumer;

    move-object/from16 v0, p18

    .line 17
    iput-object v0, v2, Lcom/android/tools/r8/R8Command;->K:Lcom/android/tools/r8/StringConsumer;

    move-object/from16 v0, p19

    .line 18
    iput-object v0, v2, Lcom/android/tools/r8/R8Command;->L:Lcom/android/tools/r8/StringConsumer;

    move-object/from16 v0, p20

    .line 19
    iput-object v0, v2, Lcom/android/tools/r8/R8Command;->M:Lcom/android/tools/r8/experimental/graphinfo/GraphConsumer;

    move-object/from16 v0, p21

    .line 20
    iput-object v0, v2, Lcom/android/tools/r8/R8Command;->N:Lcom/android/tools/r8/experimental/graphinfo/GraphConsumer;

    move-object/from16 v0, p22

    .line 21
    iput-object v0, v2, Lcom/android/tools/r8/R8Command;->O:Ljava/util/function/Consumer;

    move-object/from16 v0, p26

    .line 22
    iput-object v0, v2, Lcom/android/tools/r8/R8Command;->P:Lcom/android/tools/r8/StringConsumer;

    move-object/from16 v0, p27

    .line 23
    iput-object v0, v2, Lcom/android/tools/r8/R8Command;->Q:Lcom/android/tools/r8/internal/vm;

    move-object/from16 v0, p28

    .line 24
    iput-object v0, v2, Lcom/android/tools/r8/R8Command;->R:Lcom/android/tools/r8/internal/Qv;

    move-object/from16 v0, p31

    .line 25
    iput-object v0, v2, Lcom/android/tools/r8/R8Command;->S:Ljava/lang/String;

    move/from16 v0, p36

    .line 26
    iput-boolean v0, v2, Lcom/android/tools/r8/R8Command;->T:Z

    move/from16 v0, p37

    .line 27
    iput-boolean v0, v2, Lcom/android/tools/r8/R8Command;->U:Z

    move-object/from16 v0, p43

    .line 28
    iput-object v0, v2, Lcom/android/tools/r8/R8Command;->V:Lcom/android/tools/r8/AndroidResourceProvider;

    move-object/from16 v0, p44

    .line 29
    iput-object v0, v2, Lcom/android/tools/r8/R8Command;->W:Lcom/android/tools/r8/AndroidResourceConsumer;

    move-object/from16 v0, p45

    .line 30
    iput-object v0, v2, Lcom/android/tools/r8/R8Command;->X:Lcom/android/tools/r8/ResourceShrinkerConfiguration;

    move-object/from16 v0, p47

    .line 31
    iput-object v0, v2, Lcom/android/tools/r8/R8Command;->Y:Ljava/util/function/Consumer;

    move-object/from16 v0, p48

    .line 32
    iput-object v0, v2, Lcom/android/tools/r8/R8Command;->Z:Lcom/android/tools/r8/internal/hb0;

    move-wide/from16 v0, p49

    .line 33
    iput-wide v0, v2, Lcom/android/tools/r8/R8Command;->a0:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/ProgramConsumer;Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/StringConsumer;Lcom/android/tools/r8/shaking/o3;Lcom/android/tools/r8/CompilationMode;ILcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/internal/nJ$f;ZZZZLjava/util/Optional;Lcom/android/tools/r8/StringConsumer;Lcom/android/tools/r8/PartitionMapConsumer;Lcom/android/tools/r8/StringConsumer;Lcom/android/tools/r8/StringConsumer;Lcom/android/tools/r8/StringConsumer;Lcom/android/tools/r8/experimental/graphinfo/GraphConsumer;Lcom/android/tools/r8/experimental/graphinfo/GraphConsumer;Ljava/util/function/Consumer;ZZLjava/util/function/BiPredicate;Lcom/android/tools/r8/StringConsumer;Lcom/android/tools/r8/internal/vm;Lcom/android/tools/r8/internal/Qv;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILcom/android/tools/r8/internal/qt;Lcom/android/tools/r8/MapIdProvider;Lcom/android/tools/r8/SourceFileProvider;ZZZLjava/util/List;Ljava/util/List;Lcom/android/tools/r8/ClassConflictResolver;Lcom/android/tools/r8/CancelCompilationChecker;Lcom/android/tools/r8/AndroidResourceProvider;Lcom/android/tools/r8/AndroidResourceConsumer;Lcom/android/tools/r8/ResourceShrinkerConfiguration;Ljava/util/ArrayList;Ljava/util/function/Consumer;Lcom/android/tools/r8/internal/hb0;JLcom/android/tools/r8/G3;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p50}, Lcom/android/tools/r8/R8Command;-><init>(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/ProgramConsumer;Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/StringConsumer;Lcom/android/tools/r8/shaking/o3;Lcom/android/tools/r8/CompilationMode;ILcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/internal/nJ$f;ZZZZLjava/util/Optional;Lcom/android/tools/r8/StringConsumer;Lcom/android/tools/r8/PartitionMapConsumer;Lcom/android/tools/r8/StringConsumer;Lcom/android/tools/r8/StringConsumer;Lcom/android/tools/r8/StringConsumer;Lcom/android/tools/r8/experimental/graphinfo/GraphConsumer;Lcom/android/tools/r8/experimental/graphinfo/GraphConsumer;Ljava/util/function/Consumer;ZZLjava/util/function/BiPredicate;Lcom/android/tools/r8/StringConsumer;Lcom/android/tools/r8/internal/vm;Lcom/android/tools/r8/internal/Qv;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILcom/android/tools/r8/internal/qt;Lcom/android/tools/r8/MapIdProvider;Lcom/android/tools/r8/SourceFileProvider;ZZZLjava/util/List;Ljava/util/List;Lcom/android/tools/r8/ClassConflictResolver;Lcom/android/tools/r8/CancelCompilationChecker;Lcom/android/tools/r8/AndroidResourceProvider;Lcom/android/tools/r8/AndroidResourceConsumer;Lcom/android/tools/r8/ResourceShrinkerConfiguration;Ljava/util/ArrayList;Ljava/util/function/Consumer;Lcom/android/tools/r8/internal/hb0;J)V

    return-void
.end method

.method private constructor <init>(ZZ)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/BaseCompilerCommand;-><init>(ZZ)V

    .line 35
    sget p1, Lcom/android/tools/r8/internal/hC;->c:I

    .line 36
    sget-object p1, Lcom/android/tools/r8/internal/Xe0;->e:Lcom/android/tools/r8/internal/Xe0;

    .line 37
    iput-object p1, p0, Lcom/android/tools/r8/R8Command;->z:Lcom/android/tools/r8/internal/hC;

    const/4 p1, 0x0

    .line 38
    iput-object p1, p0, Lcom/android/tools/r8/R8Command;->A:Lcom/android/tools/r8/shaking/o3;

    .line 39
    iput-object p1, p0, Lcom/android/tools/r8/R8Command;->B:Ljava/util/ArrayList;

    const/4 p2, 0x0

    .line 40
    iput-boolean p2, p0, Lcom/android/tools/r8/R8Command;->C:Z

    .line 41
    iput-boolean p2, p0, Lcom/android/tools/r8/R8Command;->D:Z

    .line 42
    iput-boolean p2, p0, Lcom/android/tools/r8/R8Command;->E:Z

    .line 43
    iput-boolean p2, p0, Lcom/android/tools/r8/R8Command;->F:Z

    .line 44
    iput-object p1, p0, Lcom/android/tools/r8/R8Command;->G:Ljava/util/Optional;

    .line 45
    iput-object p1, p0, Lcom/android/tools/r8/R8Command;->H:Lcom/android/tools/r8/StringConsumer;

    .line 46
    iput-object p1, p0, Lcom/android/tools/r8/R8Command;->I:Lcom/android/tools/r8/PartitionMapConsumer;

    .line 47
    iput-object p1, p0, Lcom/android/tools/r8/R8Command;->J:Lcom/android/tools/r8/StringConsumer;

    .line 48
    iput-object p1, p0, Lcom/android/tools/r8/R8Command;->K:Lcom/android/tools/r8/StringConsumer;

    .line 49
    iput-object p1, p0, Lcom/android/tools/r8/R8Command;->L:Lcom/android/tools/r8/StringConsumer;

    .line 50
    iput-object p1, p0, Lcom/android/tools/r8/R8Command;->M:Lcom/android/tools/r8/experimental/graphinfo/GraphConsumer;

    .line 51
    iput-object p1, p0, Lcom/android/tools/r8/R8Command;->N:Lcom/android/tools/r8/experimental/graphinfo/GraphConsumer;

    .line 52
    iput-object p1, p0, Lcom/android/tools/r8/R8Command;->O:Ljava/util/function/Consumer;

    .line 53
    iput-object p1, p0, Lcom/android/tools/r8/R8Command;->P:Lcom/android/tools/r8/StringConsumer;

    .line 54
    iput-object p1, p0, Lcom/android/tools/r8/R8Command;->Q:Lcom/android/tools/r8/internal/vm;

    .line 55
    iput-object p1, p0, Lcom/android/tools/r8/R8Command;->R:Lcom/android/tools/r8/internal/Qv;

    .line 56
    iput-object p1, p0, Lcom/android/tools/r8/R8Command;->S:Ljava/lang/String;

    .line 57
    iput-boolean p2, p0, Lcom/android/tools/r8/R8Command;->T:Z

    const/4 p2, 0x1

    .line 58
    iput-boolean p2, p0, Lcom/android/tools/r8/R8Command;->U:Z

    .line 59
    iput-object p1, p0, Lcom/android/tools/r8/R8Command;->V:Lcom/android/tools/r8/AndroidResourceProvider;

    .line 60
    iput-object p1, p0, Lcom/android/tools/r8/R8Command;->W:Lcom/android/tools/r8/AndroidResourceConsumer;

    .line 61
    iput-object p1, p0, Lcom/android/tools/r8/R8Command;->X:Lcom/android/tools/r8/ResourceShrinkerConfiguration;

    .line 62
    iput-object p1, p0, Lcom/android/tools/r8/R8Command;->Y:Ljava/util/function/Consumer;

    .line 63
    iput-object p1, p0, Lcom/android/tools/r8/R8Command;->Z:Lcom/android/tools/r8/internal/hb0;

    const-wide/16 p1, -0x1

    .line 64
    iput-wide p1, p0, Lcom/android/tools/r8/R8Command;->a0:J

    return-void
.end method

.method public synthetic constructor <init>(ZZLcom/android/tools/r8/G3;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/R8Command;-><init>(ZZ)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/utils/i;)Lcom/android/tools/r8/R8Command$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/R8Command$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/tools/r8/R8Command$Builder;-><init>(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/F3;)V

    return-object v0
.end method

.method public static a(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/DiagnosticsHandler;)Lcom/android/tools/r8/R8Command$Builder;
    .locals 2

    .line 2
    new-instance v0, Lcom/android/tools/r8/R8Command$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/tools/r8/R8Command$Builder;-><init>(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/F3;)V

    return-object v0
.end method

.method private static a(Lcom/android/tools/r8/StringConsumer;Lcom/android/tools/r8/StringConsumer;)Lcom/android/tools/r8/naming/Q;
    .locals 0

    .line 3
    sget-boolean p1, Lcom/android/tools/r8/naming/H0;->c:Z

    .line 4
    new-instance p1, Lcom/android/tools/r8/naming/H0;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/naming/H0;-><init>(Lcom/android/tools/r8/StringConsumer;)V

    return-object p1
.end method

.method private static a(Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/AndroidResourceConsumer;)Lcom/android/tools/r8/naming/Q;
    .locals 0

    .line 5
    sget-boolean p1, Lcom/android/tools/r8/naming/H0;->c:Z

    new-instance p1, Lcom/android/tools/r8/i0;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/i0;-><init>(Lcom/android/tools/r8/internal/nJ;)V

    .line 6
    new-instance p0, Lcom/android/tools/r8/naming/H0;

    invoke-direct {p0, p1}, Lcom/android/tools/r8/naming/H0;-><init>(Lcom/android/tools/r8/StringConsumer;)V

    return-object p0
.end method

.method private b(Lcom/android/tools/r8/internal/rt$a;)V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/android/tools/r8/R8Command;->R:Lcom/android/tools/r8/internal/Qv;

    .line 140
    iget-boolean v0, v0, Lcom/android/tools/r8/internal/Qv;->b:Z

    .line 141
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/rt$a;->c(Z)V

    return-void
.end method

.method public static builder()Lcom/android/tools/r8/R8Command$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/R8Command$Builder;

    .line 2
    new-instance v1, Lcom/android/tools/r8/g0;

    invoke-direct {v1}, Lcom/android/tools/r8/g0;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/tools/r8/R8Command$Builder;-><init>(Lcom/android/tools/r8/DiagnosticsHandler;)V

    return-object v0
.end method

.method public static builder(Lcom/android/tools/r8/DiagnosticsHandler;)Lcom/android/tools/r8/R8Command$Builder;
    .locals 1

    .line 3
    new-instance v0, Lcom/android/tools/r8/R8Command$Builder;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/R8Command$Builder;-><init>(Lcom/android/tools/r8/DiagnosticsHandler;)V

    return-object v0
.end method

.method private synthetic c(Lcom/android/tools/r8/internal/rt$a;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/R8Command;->X:Lcom/android/tools/r8/ResourceShrinkerConfiguration;

    invoke-virtual {v0}, Lcom/android/tools/r8/ResourceShrinkerConfiguration;->isOptimizedShrinking()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/rt$a;->e(Z)V

    return-void
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

    invoke-static {}, Lcom/android/tools/r8/o0;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/hC;->a(Ljava/util/Collection;)Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    return-object v0
.end method

.method private i()Lcom/android/tools/r8/internal/rt;
    .locals 5

    .line 2
    sget-object v0, Lcom/android/tools/r8/dex/W$b;->e:Lcom/android/tools/r8/dex/W$b;

    invoke-static {v0}, Lcom/android/tools/r8/internal/rt;->a(Lcom/android/tools/r8/dex/W$b;)Lcom/android/tools/r8/internal/rt$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/rt$a;->c()Lcom/android/tools/r8/internal/rt$a;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/BaseCompilerCommand;->a(Lcom/android/tools/r8/internal/rt$a;)V

    .line 4
    iget-object v1, p0, Lcom/android/tools/r8/R8Command;->G:Ljava/util/Optional;

    .line 5
    iput-object v1, v0, Lcom/android/tools/r8/internal/rt$a;->i:Ljava/util/Optional;

    .line 6
    invoke-virtual {p0}, Lcom/android/tools/r8/R8Command;->getEnableTreeShaking()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/rt$a;->f(Z)Lcom/android/tools/r8/internal/rt$a;

    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lcom/android/tools/r8/R8Command;->getEnableMinification()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/rt$a;->d(Z)Lcom/android/tools/r8/internal/rt$a;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/tools/r8/R8Command;->E:Z

    .line 8
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/rt$a;->a(Z)Lcom/android/tools/r8/internal/rt$a;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/R8Command;->R:Lcom/android/tools/r8/internal/Qv;

    .line 9
    iput-object v1, v0, Lcom/android/tools/r8/internal/rt$a;->o:Lcom/android/tools/r8/internal/Qv;

    .line 10
    iget-object v2, p0, Lcom/android/tools/r8/R8Command;->V:Lcom/android/tools/r8/AndroidResourceProvider;

    .line 11
    iput-object v2, v0, Lcom/android/tools/r8/internal/rt$a;->t:Lcom/android/tools/r8/AndroidResourceProvider;

    .line 12
    iget-object v2, p0, Lcom/android/tools/r8/R8Command;->Z:Lcom/android/tools/r8/internal/hb0;

    .line 13
    iput-object v2, v0, Lcom/android/tools/r8/internal/rt$a;->u:Lcom/android/tools/r8/internal/hb0;

    .line 14
    iget-object v2, p0, Lcom/android/tools/r8/R8Command;->A:Lcom/android/tools/r8/shaking/o3;

    .line 15
    iput-object v2, v0, Lcom/android/tools/r8/internal/rt$a;->p:Lcom/android/tools/r8/shaking/o3;

    .line 16
    iget-object v2, p0, Lcom/android/tools/r8/R8Command;->z:Lcom/android/tools/r8/internal/hC;

    .line 17
    iput-object v2, v0, Lcom/android/tools/r8/internal/rt$a;->q:Ljava/util/List;

    .line 18
    iget-object v2, p0, Lcom/android/tools/r8/R8Command;->Q:Lcom/android/tools/r8/internal/vm;

    .line 19
    iput-object v2, v0, Lcom/android/tools/r8/internal/rt$a;->n:Lcom/android/tools/r8/internal/vm;

    .line 20
    iget-boolean v2, p0, Lcom/android/tools/r8/R8Command;->T:Z

    .line 21
    iput-boolean v2, v0, Lcom/android/tools/r8/internal/rt$a;->w:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 22
    :goto_0
    new-instance v4, Lcom/android/tools/r8/n3;

    invoke-direct {v4, p0}, Lcom/android/tools/r8/n3;-><init>(Lcom/android/tools/r8/R8Command;)V

    .line 23
    invoke-virtual {v0, v1, v4}, Lcom/android/tools/r8/internal/rt$a;->a(ZLjava/util/function/Consumer;)Lcom/android/tools/r8/internal/rt$a;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/R8Command;->X:Lcom/android/tools/r8/ResourceShrinkerConfiguration;

    if-eqz v1, :cond_1

    move v2, v3

    :cond_1
    new-instance v1, Lcom/android/tools/r8/o3;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/o3;-><init>(Lcom/android/tools/r8/R8Command;)V

    .line 24
    invoke-virtual {v0, v2, v1}, Lcom/android/tools/r8/internal/rt$a;->a(ZLjava/util/function/Consumer;)Lcom/android/tools/r8/internal/rt$a;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/rt$a;->a()Lcom/android/tools/r8/internal/rt;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic i(Lcom/android/tools/r8/R8Command;Lcom/android/tools/r8/internal/rt$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/tools/r8/R8Command;->b(Lcom/android/tools/r8/internal/rt$a;)V

    return-void
.end method

.method public static synthetic j(Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/AndroidResourceConsumer;)Lcom/android/tools/r8/naming/Q;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/tools/r8/R8Command;->a(Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/AndroidResourceConsumer;)Lcom/android/tools/r8/naming/Q;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Lcom/android/tools/r8/StringConsumer;Lcom/android/tools/r8/StringConsumer;)Lcom/android/tools/r8/naming/Q;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/tools/r8/R8Command;->a(Lcom/android/tools/r8/StringConsumer;Lcom/android/tools/r8/StringConsumer;)Lcom/android/tools/r8/naming/Q;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/android/tools/r8/R8Command;Lcom/android/tools/r8/internal/rt$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/R8Command;->c(Lcom/android/tools/r8/internal/rt$a;)V

    return-void
.end method

.method public static parse([Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)Lcom/android/tools/r8/R8Command$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/o0;

    invoke-direct {v0}, Lcom/android/tools/r8/o0;-><init>()V

    invoke-static {}, Lcom/android/tools/r8/R8Command;->builder()Lcom/android/tools/r8/R8Command$Builder;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lcom/android/tools/r8/o0;->a([Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/R8Command$Builder;)Lcom/android/tools/r8/R8Command$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parse([Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/DiagnosticsHandler;)Lcom/android/tools/r8/R8Command$Builder;
    .locals 0

    .line 2
    invoke-static {p0, p1, p2}, Lcom/android/tools/r8/o0;->a([Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/DiagnosticsHandler;)Lcom/android/tools/r8/R8Command$Builder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Lcom/android/tools/r8/internal/nJ;
    .locals 8

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand;->getMode()Lcom/android/tools/r8/CompilationMode;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/R8Command;->A:Lcom/android/tools/r8/shaking/o3;

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand;->g()Lcom/android/tools/r8/internal/Ef0;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/tools/r8/internal/nJ;-><init>(Lcom/android/tools/r8/CompilationMode;Lcom/android/tools/r8/shaking/o3;Lcom/android/tools/r8/internal/Ef0;)V

    .line 2
    iget-wide v1, p0, Lcom/android/tools/r8/R8Command;->a0:J

    iput-wide v1, v0, Lcom/android/tools/r8/internal/nJ;->h:J

    .line 3
    sget-boolean v1, Lcom/android/tools/r8/R8Command;->b0:Z

    if-nez v1, :cond_1

    iget-object v2, v0, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget-boolean v2, v2, Lcom/android/tools/r8/internal/nJ$p;->X0:Z

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 4
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand;->getProgramConsumer()Lcom/android/tools/r8/ProgramConsumer;

    move-result-object v2

    iput-object v2, v0, Lcom/android/tools/r8/internal/nJ;->l:Lcom/android/tools/r8/ProgramConsumer;

    .line 5
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand;->getMinApiLevel()I

    move-result v2

    invoke-static {v2}, Lcom/android/tools/r8/internal/C2;->a(I)Lcom/android/tools/r8/internal/C2;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/nJ;->d(Lcom/android/tools/r8/internal/C2;)V

    .line 6
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand;->e()Lcom/android/tools/r8/internal/nJ$f;

    move-result-object v2

    iput-object v2, v0, Lcom/android/tools/r8/internal/nJ;->L0:Lcom/android/tools/r8/internal/nJ$f;

    if-nez v1, :cond_3

    .line 7
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->W()Z

    move-result v2

    invoke-virtual {p0}, Lcom/android/tools/r8/R8Command;->getEnableTreeShaking()Z

    move-result v3

    if-ne v2, v3, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    :goto_1
    if-nez v1, :cond_5

    .line 8
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->R()Z

    move-result v2

    invoke-virtual {p0}, Lcom/android/tools/r8/R8Command;->getEnableMinification()Z

    move-result v3

    if-ne v2, v3, :cond_4

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_5
    :goto_2
    if-nez v1, :cond_7

    .line 9
    iget-boolean v2, v0, Lcom/android/tools/r8/internal/nJ;->Y0:Z

    if-nez v2, :cond_6

    goto :goto_3

    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 10
    :cond_7
    :goto_3
    iget-object v2, p0, Lcom/android/tools/r8/R8Command;->A:Lcom/android/tools/r8/shaking/o3;

    .line 11
    iget-boolean v2, v2, Lcom/android/tools/r8/shaking/o3;->g:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_9

    .line 12
    iget-boolean v2, p0, Lcom/android/tools/r8/R8Command;->E:Z

    if-eqz v2, :cond_8

    .line 13
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->T()Z

    move-result v2

    if-nez v2, :cond_8

    .line 14
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->W()Z

    move-result v2

    if-nez v2, :cond_8

    .line 15
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->R()Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_4

    :cond_8
    move v2, v3

    goto :goto_5

    :cond_9
    :goto_4
    move v2, v4

    :goto_5
    iput-boolean v2, v0, Lcom/android/tools/r8/internal/nJ;->Y0:Z

    .line 16
    iget-object v2, p0, Lcom/android/tools/r8/R8Command;->B:Ljava/util/ArrayList;

    .line 17
    iput-object v2, v0, Lcom/android/tools/r8/internal/nJ;->k:Ljava/util/List;

    .line 18
    iget-object v2, p0, Lcom/android/tools/r8/R8Command;->z:Lcom/android/tools/r8/internal/hC;

    iput-object v2, v0, Lcom/android/tools/r8/internal/nJ;->G1:Ljava/util/List;

    .line 19
    iget-boolean v2, v0, Lcom/android/tools/r8/internal/nJ;->i1:Z

    iput-boolean v2, v0, Lcom/android/tools/r8/internal/nJ;->H1:Z

    .line 20
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand;->getMainDexListConsumer()Lcom/android/tools/r8/StringConsumer;

    move-result-object v2

    iput-object v2, v0, Lcom/android/tools/r8/internal/nJ;->P1:Lcom/android/tools/r8/StringConsumer;

    .line 21
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->T()Z

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->R()Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_6

    .line 22
    :cond_a
    sget-object v2, Lcom/android/tools/r8/internal/nJ$i;->b:Lcom/android/tools/r8/internal/nJ$i;

    goto :goto_7

    .line 23
    :cond_b
    :goto_6
    sget-object v2, Lcom/android/tools/r8/internal/nJ$i;->c:Lcom/android/tools/r8/internal/nJ$i;

    .line 24
    :goto_7
    iput-object v2, v0, Lcom/android/tools/r8/internal/nJ;->J1:Lcom/android/tools/r8/internal/nJ$i;

    .line 25
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->X()Lcom/android/tools/r8/internal/nJ$j;

    move-result-object v2

    .line 26
    iput-boolean v4, v2, Lcom/android/tools/r8/internal/nJ$j;->a:Z

    .line 27
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->K()Lcom/android/tools/r8/internal/nJ$g;

    move-result-object v2

    if-nez v1, :cond_d

    .line 28
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->T()Z

    move-result v5

    if-nez v5, :cond_d

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ$g;->e()Z

    move-result v5

    if-eqz v5, :cond_c

    goto :goto_8

    :cond_c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_d
    :goto_8
    if-nez v1, :cond_f

    .line 29
    iget-boolean v5, v0, Lcom/android/tools/r8/internal/nJ;->S:Z

    if-nez v5, :cond_e

    goto :goto_9

    :cond_e
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 30
    :cond_f
    :goto_9
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->W()Z

    move-result v5

    if-nez v5, :cond_10

    .line 31
    iput-boolean v3, v0, Lcom/android/tools/r8/internal/nJ;->H:Z

    .line 32
    :cond_10
    iget-object v3, p0, Lcom/android/tools/r8/R8Command;->H:Lcom/android/tools/r8/StringConsumer;

    iget-object v5, p0, Lcom/android/tools/r8/R8Command;->A:Lcom/android/tools/r8/shaking/o3;

    .line 33
    iget-boolean v6, v5, Lcom/android/tools/r8/shaking/o3;->o:Z

    .line 34
    invoke-virtual {v5}, Lcom/android/tools/r8/shaking/o3;->m()Ljava/nio/file/Path;

    move-result-object v5

    if-eqz v6, :cond_12

    if-eqz v5, :cond_11

    .line 35
    new-instance v6, Lcom/android/tools/r8/StringConsumer$FileConsumer;

    invoke-direct {v6, v5, v3}, Lcom/android/tools/r8/StringConsumer$FileConsumer;-><init>(Ljava/nio/file/Path;Lcom/android/tools/r8/StringConsumer;)V

    move-object v3, v6

    goto :goto_a

    .line 36
    :cond_11
    new-instance v5, Lcom/android/tools/r8/j0;

    invoke-direct {v5, v3}, Lcom/android/tools/r8/j0;-><init>(Lcom/android/tools/r8/StringConsumer;)V

    move-object v3, v5

    .line 37
    :cond_12
    :goto_a
    iget-object v5, v0, Lcom/android/tools/r8/internal/nJ;->Q1:Lcom/android/tools/r8/naming/Q;

    iget-object v6, p0, Lcom/android/tools/r8/R8Command;->I:Lcom/android/tools/r8/PartitionMapConsumer;

    new-instance v7, Lcom/android/tools/r8/u1;

    invoke-direct {v7}, Lcom/android/tools/r8/u1;-><init>()V

    .line 38
    invoke-static {v5, v6, v7}, Lcom/android/tools/r8/internal/LU;->a(Lcom/android/tools/r8/naming/Q;Ljava/lang/Object;Ljava/util/function/Function;)Lcom/android/tools/r8/naming/Q;

    move-result-object v5

    .line 39
    new-instance v6, Lcom/android/tools/r8/p3;

    invoke-direct {v6, v3}, Lcom/android/tools/r8/p3;-><init>(Lcom/android/tools/r8/StringConsumer;)V

    .line 40
    invoke-static {v5, v3, v6}, Lcom/android/tools/r8/internal/LU;->a(Lcom/android/tools/r8/naming/Q;Ljava/lang/Object;Ljava/util/function/Function;)Lcom/android/tools/r8/naming/Q;

    move-result-object v3

    .line 41
    iget-object v5, p0, Lcom/android/tools/r8/R8Command;->W:Lcom/android/tools/r8/AndroidResourceConsumer;

    new-instance v6, Lcom/android/tools/r8/q3;

    invoke-direct {v6, v0}, Lcom/android/tools/r8/q3;-><init>(Lcom/android/tools/r8/internal/nJ;)V

    .line 42
    invoke-static {v3, v5, v6}, Lcom/android/tools/r8/internal/LU;->a(Lcom/android/tools/r8/naming/Q;Ljava/lang/Object;Ljava/util/function/Function;)Lcom/android/tools/r8/naming/Q;

    move-result-object v3

    iput-object v3, v0, Lcom/android/tools/r8/internal/nJ;->Q1:Lcom/android/tools/r8/naming/Q;

    .line 43
    iget-object v3, p0, Lcom/android/tools/r8/R8Command;->J:Lcom/android/tools/r8/StringConsumer;

    iget-object v5, p0, Lcom/android/tools/r8/R8Command;->A:Lcom/android/tools/r8/shaking/o3;

    .line 44
    invoke-virtual {v5}, Lcom/android/tools/r8/shaking/o3;->z()Z

    move-result v5

    iget-object v6, p0, Lcom/android/tools/r8/R8Command;->A:Lcom/android/tools/r8/shaking/o3;

    .line 45
    invoke-virtual {v6}, Lcom/android/tools/r8/shaking/o3;->n()Ljava/nio/file/Path;

    move-result-object v6

    if-eqz v5, :cond_14

    if-eqz v6, :cond_13

    .line 46
    new-instance v5, Lcom/android/tools/r8/StringConsumer$FileConsumer;

    invoke-direct {v5, v6, v3}, Lcom/android/tools/r8/StringConsumer$FileConsumer;-><init>(Ljava/nio/file/Path;Lcom/android/tools/r8/StringConsumer;)V

    :goto_b
    move-object v3, v5

    goto :goto_c

    .line 47
    :cond_13
    new-instance v5, Lcom/android/tools/r8/j0;

    invoke-direct {v5, v3}, Lcom/android/tools/r8/j0;-><init>(Lcom/android/tools/r8/StringConsumer;)V

    goto :goto_b

    .line 48
    :cond_14
    :goto_c
    iput-object v3, v0, Lcom/android/tools/r8/internal/nJ;->R1:Lcom/android/tools/r8/StringConsumer;

    .line 49
    iget-object v3, p0, Lcom/android/tools/r8/R8Command;->K:Lcom/android/tools/r8/StringConsumer;

    iget-object v5, p0, Lcom/android/tools/r8/R8Command;->A:Lcom/android/tools/r8/shaking/o3;

    .line 50
    invoke-virtual {v5}, Lcom/android/tools/r8/shaking/o3;->y()Z

    move-result v5

    iget-object v6, p0, Lcom/android/tools/r8/R8Command;->A:Lcom/android/tools/r8/shaking/o3;

    .line 51
    invoke-virtual {v6}, Lcom/android/tools/r8/shaking/o3;->q()Ljava/nio/file/Path;

    move-result-object v6

    if-eqz v5, :cond_16

    if-eqz v6, :cond_15

    .line 52
    new-instance v5, Lcom/android/tools/r8/StringConsumer$FileConsumer;

    invoke-direct {v5, v6, v3}, Lcom/android/tools/r8/StringConsumer$FileConsumer;-><init>(Ljava/nio/file/Path;Lcom/android/tools/r8/StringConsumer;)V

    :goto_d
    move-object v3, v5

    goto :goto_e

    .line 53
    :cond_15
    new-instance v5, Lcom/android/tools/r8/j0;

    invoke-direct {v5, v3}, Lcom/android/tools/r8/j0;-><init>(Lcom/android/tools/r8/StringConsumer;)V

    goto :goto_d

    .line 54
    :cond_16
    :goto_e
    iput-object v3, v0, Lcom/android/tools/r8/internal/nJ;->S1:Lcom/android/tools/r8/StringConsumer;

    .line 55
    iget-object v3, p0, Lcom/android/tools/r8/R8Command;->L:Lcom/android/tools/r8/StringConsumer;

    iget-object v5, p0, Lcom/android/tools/r8/R8Command;->A:Lcom/android/tools/r8/shaking/o3;

    .line 56
    invoke-virtual {v5}, Lcom/android/tools/r8/shaking/o3;->x()Z

    move-result v5

    iget-object v6, p0, Lcom/android/tools/r8/R8Command;->A:Lcom/android/tools/r8/shaking/o3;

    .line 57
    invoke-virtual {v6}, Lcom/android/tools/r8/shaking/o3;->l()Ljava/nio/file/Path;

    move-result-object v6

    if-eqz v5, :cond_18

    if-eqz v6, :cond_17

    .line 58
    new-instance v5, Lcom/android/tools/r8/StringConsumer$FileConsumer;

    invoke-direct {v5, v6, v3}, Lcom/android/tools/r8/StringConsumer$FileConsumer;-><init>(Ljava/nio/file/Path;Lcom/android/tools/r8/StringConsumer;)V

    :goto_f
    move-object v3, v5

    goto :goto_10

    .line 59
    :cond_17
    new-instance v5, Lcom/android/tools/r8/j0;

    invoke-direct {v5, v3}, Lcom/android/tools/r8/j0;-><init>(Lcom/android/tools/r8/StringConsumer;)V

    goto :goto_f

    .line 60
    :cond_18
    :goto_10
    iput-object v3, v0, Lcom/android/tools/r8/internal/nJ;->T1:Lcom/android/tools/r8/StringConsumer;

    .line 61
    iget-object v3, p0, Lcom/android/tools/r8/R8Command;->M:Lcom/android/tools/r8/experimental/graphinfo/GraphConsumer;

    iput-object v3, v0, Lcom/android/tools/r8/internal/nJ;->W1:Lcom/android/tools/r8/experimental/graphinfo/GraphConsumer;

    .line 62
    iget-object v3, p0, Lcom/android/tools/r8/R8Command;->N:Lcom/android/tools/r8/experimental/graphinfo/GraphConsumer;

    iput-object v3, v0, Lcom/android/tools/r8/internal/nJ;->X1:Lcom/android/tools/r8/experimental/graphinfo/GraphConsumer;

    .line 63
    iget-object v3, p0, Lcom/android/tools/r8/R8Command;->Y:Ljava/util/function/Consumer;

    iput-object v3, v0, Lcom/android/tools/r8/internal/nJ;->q:Ljava/util/function/Consumer;

    .line 64
    iget-object v3, v0, Lcom/android/tools/r8/internal/nJ;->l:Lcom/android/tools/r8/ProgramConsumer;

    invoke-interface {v3}, Lcom/android/tools/r8/ProgramConsumer;->getDataResourceConsumer()Lcom/android/tools/r8/DataResourceConsumer;

    move-result-object v3

    iput-object v3, v0, Lcom/android/tools/r8/internal/nJ;->r:Lcom/android/tools/r8/DataResourceConsumer;

    .line 65
    iget-object v3, p0, Lcom/android/tools/r8/R8Command;->R:Lcom/android/tools/r8/internal/Qv;

    .line 66
    iput-object v3, v0, Lcom/android/tools/r8/internal/nJ;->s:Lcom/android/tools/r8/internal/Qv;

    .line 67
    iget-object v3, p0, Lcom/android/tools/r8/R8Command;->O:Ljava/util/function/Consumer;

    iput-object v3, v0, Lcom/android/tools/r8/internal/nJ;->Z1:Ljava/util/function/Consumer;

    .line 68
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand;->getOutputInspections()Ljava/util/Collection;

    move-result-object v3

    invoke-static {v3}, Lcom/android/tools/r8/internal/QD;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v0, Lcom/android/tools/r8/internal/nJ;->t:Ljava/util/List;

    .line 69
    iget-boolean v3, p0, Lcom/android/tools/r8/R8Command;->T:Z

    if-nez v3, :cond_19

    .line 70
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->a()Lcom/android/tools/r8/internal/H2;

    move-result-object v3

    .line 71
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/H2;->a()Lcom/android/tools/r8/internal/H2;

    move-result-object v3

    .line 72
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/H2;->c()Lcom/android/tools/r8/internal/H2;

    move-result-object v3

    .line 73
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/H2;->d()Lcom/android/tools/r8/internal/H2;

    :cond_19
    if-nez v1, :cond_1b

    .line 74
    iget-object v3, v0, Lcom/android/tools/r8/internal/nJ;->f1:Lcom/android/tools/r8/internal/A4;

    if-nez v3, :cond_1a

    goto :goto_11

    :cond_1a
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 75
    :cond_1b
    :goto_11
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand;->g()Lcom/android/tools/r8/internal/Ef0;

    move-result-object v3

    invoke-static {v3}, Lcom/android/tools/r8/AssertionsConfiguration;->a(Lcom/android/tools/r8/internal/Ef0;)Lcom/android/tools/r8/AssertionsConfiguration$Builder;

    move-result-object v3

    .line 76
    new-instance v5, Lcom/android/tools/r8/internal/A4;

    .line 77
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand;->getProgramConsumer()Lcom/android/tools/r8/ProgramConsumer;

    move-result-object v6

    instance-of v6, v6, Lcom/android/tools/r8/ClassFileConsumer;

    if-eqz v6, :cond_1c

    .line 78
    invoke-static {v3}, Lcom/android/tools/r8/AssertionsConfiguration$Builder;->passthroughAllAssertions(Lcom/android/tools/r8/AssertionsConfiguration$Builder;)Lcom/android/tools/r8/AssertionsConfiguration;

    move-result-object v3

    goto :goto_12

    .line 79
    :cond_1c
    invoke-static {v3}, Lcom/android/tools/r8/AssertionsConfiguration$Builder;->compileTimeDisableAllAssertions(Lcom/android/tools/r8/AssertionsConfiguration$Builder;)Lcom/android/tools/r8/AssertionsConfiguration;

    move-result-object v3

    .line 80
    :goto_12
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand;->getAssertionsConfiguration()Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Lcom/android/tools/r8/internal/A4;-><init>(Ljava/util/List;Lcom/android/tools/r8/AssertionsConfiguration;)V

    iput-object v5, v0, Lcom/android/tools/r8/internal/nJ;->f1:Lcom/android/tools/r8/internal/A4;

    .line 81
    iget-object v3, v0, Lcom/android/tools/r8/internal/nJ;->l:Lcom/android/tools/r8/ProgramConsumer;

    instance-of v3, v3, Lcom/android/tools/r8/ClassFileConsumer;

    if-eqz v3, :cond_1d

    .line 82
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ$g;->a()V

    .line 83
    sget-object v2, Lcom/android/tools/r8/internal/nJ$f;->b:Lcom/android/tools/r8/internal/nJ$f;

    iput-object v2, v0, Lcom/android/tools/r8/internal/nJ;->L0:Lcom/android/tools/r8/internal/nJ$f;

    .line 84
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->a()Lcom/android/tools/r8/internal/H2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/H2;->c()Lcom/android/tools/r8/internal/H2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/H2;->d()Lcom/android/tools/r8/internal/H2;

    :cond_1d
    if-nez v1, :cond_1f

    .line 85
    iget-object v2, p0, Lcom/android/tools/r8/R8Command;->Z:Lcom/android/tools/r8/internal/hb0;

    if-eqz v2, :cond_1e

    goto :goto_13

    :cond_1e
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 86
    :cond_1f
    :goto_13
    iget-object v2, p0, Lcom/android/tools/r8/R8Command;->Z:Lcom/android/tools/r8/internal/hb0;

    iput-object v2, v0, Lcom/android/tools/r8/internal/nJ;->D1:Lcom/android/tools/r8/internal/hb0;

    if-nez v1, :cond_21

    .line 87
    iget-boolean v2, v0, Lcom/android/tools/r8/internal/nJ;->d1:Z

    if-nez v2, :cond_20

    goto :goto_14

    :cond_20
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 88
    :cond_21
    :goto_14
    iget-boolean v2, p0, Lcom/android/tools/r8/R8Command;->E:Z

    iput-boolean v2, v0, Lcom/android/tools/r8/internal/nJ;->d1:Z

    .line 89
    iget-boolean v2, p0, Lcom/android/tools/r8/R8Command;->F:Z

    iput-boolean v2, v0, Lcom/android/tools/r8/internal/nJ;->e1:Z

    .line 90
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand;->isOptimizeMultidexForLinearAlloc()Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/tools/r8/internal/nJ;->I1:Z

    .line 91
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object v2

    .line 92
    iget-object v3, p0, Lcom/android/tools/r8/R8Command;->Q:Lcom/android/tools/r8/internal/vm;

    iget-object v5, p0, Lcom/android/tools/r8/R8Command;->S:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Lcom/android/tools/r8/internal/WR;->a(Lcom/android/tools/r8/internal/vm;Ljava/lang/String;)V

    .line 93
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/WR;->c()Z

    move-result v2

    .line 94
    iput-boolean v2, v0, Lcom/android/tools/r8/internal/nJ;->T0:Z

    if-eqz v2, :cond_22

    .line 95
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->a()Lcom/android/tools/r8/internal/H2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/H2;->d()Lcom/android/tools/r8/internal/H2;

    .line 96
    iput-boolean v4, v0, Lcom/android/tools/r8/internal/nJ;->X0:Z

    .line 97
    :cond_22
    iget-object v2, p0, Lcom/android/tools/r8/R8Command;->P:Lcom/android/tools/r8/StringConsumer;

    iput-object v2, v0, Lcom/android/tools/r8/internal/nJ;->V1:Lcom/android/tools/r8/StringConsumer;

    .line 98
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand;->getMapIdProvider()Lcom/android/tools/r8/MapIdProvider;

    move-result-object v2

    iput-object v2, v0, Lcom/android/tools/r8/internal/nJ;->a2:Lcom/android/tools/r8/MapIdProvider;

    .line 99
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand;->getSourceFileProvider()Lcom/android/tools/r8/SourceFileProvider;

    move-result-object v2

    iget-object v3, p0, Lcom/android/tools/r8/R8Command;->A:Lcom/android/tools/r8/shaking/o3;

    if-eqz v2, :cond_23

    goto :goto_17

    .line 100
    :cond_23
    invoke-virtual {v3}, Lcom/android/tools/r8/shaking/o3;->f()Lcom/android/tools/r8/shaking/I3;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/tools/r8/shaking/I3;->a:Z

    if-nez v2, :cond_24

    .line 101
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->m()Lcom/android/tools/r8/graph/u1;

    move-result-object v2

    invoke-static {v2}, Lcom/android/tools/r8/naming/U0;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/naming/T0;

    move-result-object v2

    goto :goto_17

    .line 102
    :cond_24
    iget-boolean v2, v0, Lcom/android/tools/r8/internal/nJ;->d1:Z

    if-eqz v2, :cond_25

    .line 103
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->R()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 104
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->B()Lcom/android/tools/r8/shaking/o3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/shaking/o3;->o()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_27

    .line 105
    invoke-static {v0, v2}, Lcom/android/tools/r8/naming/U0;->a(Lcom/android/tools/r8/internal/nJ;Ljava/lang/String;)Z

    move-result v3

    .line 106
    new-instance v5, Lcom/android/tools/r8/naming/T0;

    invoke-direct {v5, v2, v3}, Lcom/android/tools/r8/naming/T0;-><init>(Ljava/lang/String;Z)V

    :goto_15
    move-object v2, v5

    goto :goto_17

    .line 107
    :cond_25
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->B()Lcom/android/tools/r8/shaking/o3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/shaking/o3;->o()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_26

    .line 108
    invoke-static {v0, v2}, Lcom/android/tools/r8/naming/U0;->a(Lcom/android/tools/r8/internal/nJ;Ljava/lang/String;)Z

    move-result v3

    .line 109
    new-instance v5, Lcom/android/tools/r8/naming/T0;

    invoke-direct {v5, v2, v3}, Lcom/android/tools/r8/naming/T0;-><init>(Ljava/lang/String;Z)V

    goto :goto_15

    .line 110
    :cond_26
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->R()Z

    move-result v2

    if-nez v2, :cond_28

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->T()Z

    move-result v2

    if-eqz v2, :cond_27

    goto :goto_16

    :cond_27
    const/4 v2, 0x0

    goto :goto_17

    .line 111
    :cond_28
    :goto_16
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->m()Lcom/android/tools/r8/graph/u1;

    move-result-object v2

    invoke-static {v2}, Lcom/android/tools/r8/naming/U0;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/naming/T0;

    move-result-object v2

    .line 112
    :goto_17
    iput-object v2, v0, Lcom/android/tools/r8/internal/nJ;->b2:Lcom/android/tools/r8/SourceFileProvider;

    .line 113
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand;->getAndroidPlatformBuild()Z

    move-result v2

    .line 114
    sget-boolean v3, Lcom/android/tools/r8/internal/nJ;->h2:Z

    if-nez v3, :cond_2a

    iget-boolean v3, v0, Lcom/android/tools/r8/internal/nJ;->F0:Z

    if-nez v3, :cond_29

    goto :goto_18

    :cond_29
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2a
    :goto_18
    if-eqz v2, :cond_2b

    .line 115
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->a()Lcom/android/tools/r8/internal/H2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/H2;->b()Lcom/android/tools/r8/internal/H2;

    .line 116
    iput-boolean v4, v0, Lcom/android/tools/r8/internal/nJ;->O0:Z

    .line 117
    iput-boolean v4, v0, Lcom/android/tools/r8/internal/nJ;->F0:Z

    .line 118
    iput-boolean v4, v0, Lcom/android/tools/r8/internal/nJ;->S0:Z

    .line 119
    :cond_2b
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->q()Lcom/android/tools/r8/internal/s4;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand;->c()Ljava/util/List;

    move-result-object v3

    .line 120
    iput-object v3, v2, Lcom/android/tools/r8/internal/s4;->a:Ljava/util/List;

    .line 121
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand;->h()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2c

    .line 122
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->E()Lcom/android/tools/r8/internal/po0;

    move-result-object v2

    .line 123
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand;->h()Ljava/util/List;

    move-result-object v3

    .line 124
    iput-object v3, v2, Lcom/android/tools/r8/internal/po0;->h:Ljava/util/Collection;

    .line 125
    iget-boolean v3, p0, Lcom/android/tools/r8/R8Command;->U:Z

    .line 126
    iput-boolean v3, v2, Lcom/android/tools/r8/internal/po0;->e:Z

    .line 127
    :cond_2c
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand;->d()Lcom/android/tools/r8/ClassConflictResolver;

    move-result-object v2

    iget-object v3, v0, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    .line 128
    invoke-static {v2, v3}, Lcom/android/tools/r8/internal/a80;->a(Lcom/android/tools/r8/ClassConflictResolver;Lcom/android/tools/r8/internal/Ef0;)Lcom/android/tools/r8/dex/b;

    move-result-object v2

    iput-object v2, v0, Lcom/android/tools/r8/internal/nJ;->m:Lcom/android/tools/r8/dex/b;

    .line 129
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand;->getCancelCompilationChecker()Lcom/android/tools/r8/CancelCompilationChecker;

    move-result-object v2

    iput-object v2, v0, Lcom/android/tools/r8/internal/nJ;->c:Lcom/android/tools/r8/CancelCompilationChecker;

    .line 130
    iget-object v2, p0, Lcom/android/tools/r8/R8Command;->V:Lcom/android/tools/r8/AndroidResourceProvider;

    iput-object v2, v0, Lcom/android/tools/r8/internal/nJ;->d:Lcom/android/tools/r8/AndroidResourceProvider;

    .line 131
    iget-object v2, p0, Lcom/android/tools/r8/R8Command;->W:Lcom/android/tools/r8/AndroidResourceConsumer;

    iput-object v2, v0, Lcom/android/tools/r8/internal/nJ;->e:Lcom/android/tools/r8/AndroidResourceConsumer;

    .line 132
    iget-object v2, p0, Lcom/android/tools/r8/R8Command;->X:Lcom/android/tools/r8/ResourceShrinkerConfiguration;

    iput-object v2, v0, Lcom/android/tools/r8/internal/nJ;->g:Lcom/android/tools/r8/ResourceShrinkerConfiguration;

    .line 133
    sget-boolean v2, Lcom/android/tools/r8/internal/nJ;->e2:Z

    if-nez v2, :cond_2f

    if-nez v1, :cond_2e

    .line 134
    iget v1, v0, Lcom/android/tools/r8/internal/nJ;->k0:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2d

    goto :goto_19

    :cond_2d
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 135
    :cond_2e
    :goto_19
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand;->getThreadCount()I

    move-result v1

    iput v1, v0, Lcom/android/tools/r8/internal/nJ;->k0:I

    .line 136
    :cond_2f
    sget-object v1, Lcom/android/tools/r8/dex/W$b;->e:Lcom/android/tools/r8/dex/W$b;

    iput-object v1, v0, Lcom/android/tools/r8/internal/nJ;->x0:Lcom/android/tools/r8/dex/W$b;

    .line 137
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand;->f()Lcom/android/tools/r8/internal/qt;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/nJ;->a(Lcom/android/tools/r8/internal/qt;)V

    .line 138
    invoke-direct {p0}, Lcom/android/tools/r8/R8Command;->i()Lcom/android/tools/r8/internal/rt;

    move-result-object v1

    iput-object v1, v0, Lcom/android/tools/r8/internal/nJ;->w0:Lcom/android/tools/r8/internal/rt;

    return-object v0
.end method

.method public getDexItemFactory()Lcom/android/tools/r8/graph/u1;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/R8Command;->A:Lcom/android/tools/r8/shaking/o3;

    iget-object v0, v0, Lcom/android/tools/r8/shaking/o3;->b:Lcom/android/tools/r8/graph/u1;

    return-object v0
.end method

.method public getEnableMinification()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/R8Command;->D:Z

    return v0
.end method

.method public getEnableTreeShaking()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/R8Command;->C:Z

    return v0
.end method

.method public getProguardCompatibility()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/R8Command;->E:Z

    return v0
.end method
