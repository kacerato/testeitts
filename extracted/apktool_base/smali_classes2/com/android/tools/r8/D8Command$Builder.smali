.class public Lcom/android/tools/r8/D8Command$Builder;
.super Lcom/android/tools/r8/BaseCompilerCommand$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/D8Command;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/r8/BaseCompilerCommand$Builder<",
        "Lcom/android/tools/r8/D8Command;",
        "Lcom/android/tools/r8/D8Command$Builder;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic O:Z = true


# instance fields
.field private B:Z

.field private C:Ljava/nio/file/Path;

.field private D:Lcom/android/tools/r8/GlobalSyntheticsConsumer;

.field private final E:Ljava/util/ArrayList;

.field private F:Lcom/android/tools/r8/DesugarGraphConsumer;

.field private G:Lcom/android/tools/r8/SyntheticInfoConsumer;

.field private H:Lcom/android/tools/r8/StringConsumer;

.field private I:Ljava/lang/String;

.field private final J:Z

.field private final K:Ljava/util/ArrayList;

.field private L:Z

.field private M:Z

.field private N:Ljava/util/function/Consumer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 2

    .line 3
    invoke-direct {p0, p1}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;-><init>(Lcom/android/tools/r8/DiagnosticsHandler;)V

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/android/tools/r8/D8Command$Builder;->B:Z

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/tools/r8/D8Command$Builder;->C:Ljava/nio/file/Path;

    .line 6
    iput-object v0, p0, Lcom/android/tools/r8/D8Command$Builder;->D:Lcom/android/tools/r8/GlobalSyntheticsConsumer;

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/tools/r8/D8Command$Builder;->E:Ljava/util/ArrayList;

    .line 8
    iput-object v0, p0, Lcom/android/tools/r8/D8Command$Builder;->F:Lcom/android/tools/r8/DesugarGraphConsumer;

    .line 9
    iput-object v0, p0, Lcom/android/tools/r8/D8Command$Builder;->G:Lcom/android/tools/r8/SyntheticInfoConsumer;

    .line 10
    iput-object v0, p0, Lcom/android/tools/r8/D8Command$Builder;->H:Lcom/android/tools/r8/StringConsumer;

    .line 11
    const-string v1, ""

    iput-object v1, p0, Lcom/android/tools/r8/D8Command$Builder;->I:Ljava/lang/String;

    const/4 v1, 0x1

    .line 12
    iput-boolean v1, p0, Lcom/android/tools/r8/D8Command$Builder;->J:Z

    .line 13
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/tools/r8/D8Command$Builder;->K:Ljava/util/ArrayList;

    .line 14
    iput-boolean p1, p0, Lcom/android/tools/r8/D8Command$Builder;->L:Z

    .line 15
    iput-boolean p1, p0, Lcom/android/tools/r8/D8Command$Builder;->M:Z

    .line 16
    iput-object v0, p0, Lcom/android/tools/r8/D8Command$Builder;->N:Ljava/util/function/Consumer;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/C1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/tools/r8/D8Command$Builder;-><init>(Lcom/android/tools/r8/DiagnosticsHandler;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/tools/r8/utils/i;)V
    .locals 2

    .line 17
    invoke-direct {p0, p1}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;-><init>(Lcom/android/tools/r8/utils/i;)V

    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lcom/android/tools/r8/D8Command$Builder;->B:Z

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/android/tools/r8/D8Command$Builder;->C:Ljava/nio/file/Path;

    .line 20
    iput-object v0, p0, Lcom/android/tools/r8/D8Command$Builder;->D:Lcom/android/tools/r8/GlobalSyntheticsConsumer;

    .line 21
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/tools/r8/D8Command$Builder;->E:Ljava/util/ArrayList;

    .line 22
    iput-object v0, p0, Lcom/android/tools/r8/D8Command$Builder;->F:Lcom/android/tools/r8/DesugarGraphConsumer;

    .line 23
    iput-object v0, p0, Lcom/android/tools/r8/D8Command$Builder;->G:Lcom/android/tools/r8/SyntheticInfoConsumer;

    .line 24
    iput-object v0, p0, Lcom/android/tools/r8/D8Command$Builder;->H:Lcom/android/tools/r8/StringConsumer;

    .line 25
    const-string v1, ""

    iput-object v1, p0, Lcom/android/tools/r8/D8Command$Builder;->I:Ljava/lang/String;

    const/4 v1, 0x1

    .line 26
    iput-boolean v1, p0, Lcom/android/tools/r8/D8Command$Builder;->J:Z

    .line 27
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/tools/r8/D8Command$Builder;->K:Ljava/util/ArrayList;

    .line 28
    iput-boolean p1, p0, Lcom/android/tools/r8/D8Command$Builder;->L:Z

    .line 29
    iput-boolean p1, p0, Lcom/android/tools/r8/D8Command$Builder;->M:Z

    .line 30
    iput-object v0, p0, Lcom/android/tools/r8/D8Command$Builder;->N:Ljava/util/function/Consumer;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/C1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/tools/r8/D8Command$Builder;-><init>(Lcom/android/tools/r8/utils/i;)V

    return-void
.end method

.method private synthetic a(Lcom/android/tools/r8/origin/PathOrigin;Ljava/util/zip/ZipEntry;Ljava/io/InputStream;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/synthesis/e;

    new-instance v1, Lcom/android/tools/r8/origin/ArchiveEntryOrigin;

    .line 2
    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2, p1}, Lcom/android/tools/r8/origin/ArchiveEntryOrigin;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    .line 3
    invoke-static {p3}, Lcom/android/tools/r8/internal/c8;->a(Ljava/io/InputStream;)[B

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/android/tools/r8/synthesis/e;-><init>(Lcom/android/tools/r8/origin/ArchiveEntryOrigin;[B)V

    const/4 p1, 0x1

    new-array p1, p1, [Lcom/android/tools/r8/GlobalSyntheticsResourceProvider;

    const/4 p2, 0x0

    aput-object v0, p1, p2

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/D8Command$Builder;->addGlobalSyntheticsResourceProviders([Lcom/android/tools/r8/GlobalSyntheticsResourceProvider;)Lcom/android/tools/r8/D8Command$Builder;

    return-void
.end method

.method private synthetic a(Ljava/util/List;Lcom/android/tools/r8/origin/Origin;)V
    .locals 4

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/D8Command$Builder;->K:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/tools/r8/shaking/z3;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    .line 7
    const-string v3, "."

    invoke-static {v3, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    invoke-direct {v1, p1, v2, p2}, Lcom/android/tools/r8/shaking/z3;-><init>(Ljava/util/List;Ljava/nio/file/Path;Lcom/android/tools/r8/origin/Origin;)V

    .line 8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic c([BLcom/android/tools/r8/origin/Origin;)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->a()Lcom/android/tools/r8/utils/i$a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/utils/i$a;->b([BLcom/android/tools/r8/origin/Origin;)Lcom/android/tools/r8/utils/i$a;

    return-void
.end method

.method private e(Ljava/nio/file/Path;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/android/tools/r8/internal/Ww;->g(Ljava/nio/file/Path;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/android/tools/r8/synthesis/f;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/synthesis/f;-><init>(Ljava/nio/file/Path;)V

    const/4 p1, 0x1

    new-array p1, p1, [Lcom/android/tools/r8/GlobalSyntheticsResourceProvider;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/D8Command$Builder;->addGlobalSyntheticsResourceProviders([Lcom/android/tools/r8/GlobalSyntheticsResourceProvider;)Lcom/android/tools/r8/D8Command$Builder;

    return-void

    .line 3
    :cond_0
    new-instance v0, Lcom/android/tools/r8/origin/PathOrigin;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/origin/PathOrigin;-><init>(Ljava/nio/file/Path;)V

    .line 4
    :try_start_0
    new-instance v1, Lcom/android/tools/r8/A1;

    invoke-direct {v1, p0, v0}, Lcom/android/tools/r8/A1;-><init>(Lcom/android/tools/r8/D8Command$Builder;Lcom/android/tools/r8/origin/PathOrigin;)V

    invoke-static {p1, v1}, Lcom/android/tools/r8/utils/u;->a(Ljava/nio/file/Path;Lcom/android/tools/r8/utils/u$a;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/BaseCommand$Builder;->a(Lcom/android/tools/r8/origin/PathOrigin;Ljava/io/IOException;)V

    return-void
.end method

.method private synthetic f(Ljava/nio/file/Path;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/D8Command$Builder;->K:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/tools/r8/shaking/y3;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/shaking/y3;-><init>(Ljava/nio/file/Path;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic f(Ljava/util/Collection;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/z1;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/z1;-><init>(Lcom/android/tools/r8/D8Command$Builder;)V

    invoke-interface {p1, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic r(Lcom/android/tools/r8/D8Command$Builder;[BLcom/android/tools/r8/origin/Origin;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/D8Command$Builder;->c([BLcom/android/tools/r8/origin/Origin;)V

    return-void
.end method

.method public static synthetic s(Lcom/android/tools/r8/D8Command$Builder;Lcom/android/tools/r8/origin/PathOrigin;Ljava/util/zip/ZipEntry;Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/tools/r8/D8Command$Builder;->a(Lcom/android/tools/r8/origin/PathOrigin;Ljava/util/zip/ZipEntry;Ljava/io/InputStream;)V

    return-void
.end method

.method public static synthetic t(Lcom/android/tools/r8/D8Command$Builder;Ljava/nio/file/Path;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/D8Command$Builder;->f(Ljava/nio/file/Path;)V

    return-void
.end method

.method public static synthetic u(Lcom/android/tools/r8/D8Command$Builder;Ljava/util/Collection;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/D8Command$Builder;->f(Ljava/util/Collection;)V

    return-void
.end method

.method public static synthetic v(Lcom/android/tools/r8/D8Command$Builder;Ljava/util/List;Lcom/android/tools/r8/origin/Origin;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/D8Command$Builder;->a(Ljava/util/List;Lcom/android/tools/r8/origin/Origin;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/android/tools/r8/D8Command$Builder;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/android/tools/r8/D8Command$Builder;->I:Ljava/lang/String;

    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/D8Command;
    .locals 39

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->getProgramConsumer()Lcom/android/tools/r8/ProgramConsumer;

    move-result-object v4

    .line 10
    iget-boolean v1, v0, Lcom/android/tools/r8/D8Command$Builder;->B:Z

    instance-of v2, v4, Lcom/android/tools/r8/DexFilePerClassFileConsumer;

    or-int/2addr v1, v2

    iput-boolean v1, v0, Lcom/android/tools/r8/D8Command$Builder;->B:Z

    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v6, v1}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->a(Lcom/android/tools/r8/graph/u1;Z)Lcom/android/tools/r8/internal/vm;

    move-result-object v17

    .line 12
    iget-object v1, v0, Lcom/android/tools/r8/D8Command$Builder;->K:Ljava/util/ArrayList;

    .line 13
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/BaseCommand$Builder;->b()Lcom/android/tools/r8/internal/Ef0;

    move-result-object v2

    sget-object v3, Lcom/android/tools/r8/shaking/q3;->f:Lcom/android/tools/r8/internal/hC;

    .line 14
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 15
    sget v1, Lcom/android/tools/r8/internal/hC;->c:I

    .line 16
    sget-object v1, Lcom/android/tools/r8/internal/Xe0;->e:Lcom/android/tools/r8/internal/Xe0;

    :goto_0
    move-object/from16 v22, v1

    goto :goto_1

    .line 17
    :cond_0
    new-instance v3, Lcom/android/tools/r8/shaking/q3;

    invoke-direct {v3, v6, v2}, Lcom/android/tools/r8/shaking/q3;-><init>(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;)V

    .line 18
    invoke-virtual {v3, v1}, Lcom/android/tools/r8/shaking/q3;->a(Ljava/util/List;)V

    .line 19
    invoke-virtual {v3}, Lcom/android/tools/r8/shaking/q3;->a()Lcom/android/tools/r8/shaking/o3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/o3;->p()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/tools/r8/internal/hC;->a(Ljava/util/Collection;)Lcom/android/tools/r8/internal/hC;

    move-result-object v1

    goto :goto_0

    .line 20
    :goto_1
    iget-object v1, v0, Lcom/android/tools/r8/D8Command$Builder;->E:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 21
    new-instance v1, Lcom/android/tools/r8/internal/kJ;

    iget-object v2, v0, Lcom/android/tools/r8/D8Command$Builder;->E:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/kJ;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/BaseCommand$Builder;->addProgramResourceProvider(Lcom/android/tools/r8/ProgramResourceProvider;)Lcom/android/tools/r8/BaseCommand$Builder;

    .line 22
    :cond_1
    instance-of v1, v4, Lcom/android/tools/r8/ClassFileConsumer;

    if-eqz v1, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->getDisableDesugaring()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 23
    sget-object v1, Lcom/android/tools/r8/internal/C2;->c:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/C2;->d()I

    move-result v1

    :goto_2
    move/from16 v36, v1

    goto :goto_3

    .line 24
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->getMinApiLevel()I

    move-result v1

    goto :goto_2

    .line 25
    :goto_3
    iget-boolean v1, v0, Lcom/android/tools/r8/D8Command$Builder;->B:Z

    iget-object v2, v0, Lcom/android/tools/r8/D8Command$Builder;->C:Ljava/nio/file/Path;

    iget-object v3, v0, Lcom/android/tools/r8/D8Command$Builder;->D:Lcom/android/tools/r8/GlobalSyntheticsConsumer;

    .line 26
    invoke-static {v1, v2, v3, v4}, Lcom/android/tools/r8/synthesis/j;->a(ZLjava/nio/file/Path;Lcom/android/tools/r8/GlobalSyntheticsConsumer;Lcom/android/tools/r8/ProgramConsumer;)Lcom/android/tools/r8/GlobalSyntheticsConsumer;

    move-result-object v10

    .line 27
    new-instance v38, Lcom/android/tools/r8/D8Command;

    move-object/from16 v1, v38

    .line 28
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/BaseCommand$Builder;->a()Lcom/android/tools/r8/utils/i$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/utils/i$a;->a()Lcom/android/tools/r8/utils/i;

    move-result-object v2

    .line 29
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->getMode()Lcom/android/tools/r8/CompilationMode;

    move-result-object v3

    .line 30
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->getMainDexListConsumer()Lcom/android/tools/r8/StringConsumer;

    move-result-object v5

    .line 31
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/BaseCommand$Builder;->b()Lcom/android/tools/r8/internal/Ef0;

    move-result-object v7

    .line 32
    iget-object v8, v0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->desugarState:Lcom/android/tools/r8/internal/nJ$f;

    .line 33
    iget-boolean v9, v0, Lcom/android/tools/r8/D8Command$Builder;->B:Z

    .line 34
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->isOptimizeMultidexForLinearAlloc()Z

    move-result v11

    .line 35
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->getIncludeClassesChecksum()Z

    move-result v12

    .line 36
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->getDexClassChecksumFilter()Ljava/util/function/BiPredicate;

    move-result-object v13

    .line 37
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/D8Command$Builder;->getDesugarGraphConsumer()Lcom/android/tools/r8/DesugarGraphConsumer;

    move-result-object v14

    .line 38
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/D8Command$Builder;->getSyntheticInfoConsumer()Lcom/android/tools/r8/SyntheticInfoConsumer;

    move-result-object v15

    iget-object v6, v0, Lcom/android/tools/r8/D8Command$Builder;->H:Lcom/android/tools/r8/StringConsumer;

    move-object/from16 v16, v6

    .line 39
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->g()Ljava/util/List;

    move-result-object v18

    .line 40
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->j()Ljava/util/List;

    move-result-object v19

    iget-object v6, v0, Lcom/android/tools/r8/D8Command$Builder;->I:Ljava/lang/String;

    move-object/from16 v20, v6

    iget-boolean v6, v0, Lcom/android/tools/r8/D8Command$Builder;->J:Z

    move/from16 v21, v6

    .line 41
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->l()I

    move-result v23

    .line 42
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->i()Lcom/android/tools/r8/internal/qt;

    move-result-object v24

    .line 43
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->getMapIdProvider()Lcom/android/tools/r8/MapIdProvider;

    move-result-object v25

    iget-object v6, v0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->proguardMapConsumer:Lcom/android/tools/r8/StringConsumer;

    move-object/from16 v26, v6

    iget-object v6, v0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->partitionMapConsumer:Lcom/android/tools/r8/PartitionMapConsumer;

    move-object/from16 v27, v6

    iget-boolean v6, v0, Lcom/android/tools/r8/D8Command$Builder;->L:Z

    move/from16 v28, v6

    iget-boolean v6, v0, Lcom/android/tools/r8/D8Command$Builder;->M:Z

    move/from16 v29, v6

    iget-object v6, v0, Lcom/android/tools/r8/D8Command$Builder;->N:Ljava/util/function/Consumer;

    move-object/from16 v30, v6

    .line 44
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->getAndroidPlatformBuild()Z

    move-result v31

    .line 45
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->f()Ljava/util/List;

    move-result-object v32

    .line 46
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->k()Ljava/util/List;

    move-result-object v33

    .line 47
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->h()Lcom/android/tools/r8/ClassConflictResolver;

    move-result-object v34

    .line 48
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->getCancelCompilationChecker()Lcom/android/tools/r8/CancelCompilationChecker;

    move-result-object v35

    const/16 v37, 0x0

    move/from16 v6, v36

    move-object/from16 v36, p1

    invoke-direct/range {v1 .. v37}, Lcom/android/tools/r8/D8Command;-><init>(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/CompilationMode;Lcom/android/tools/r8/ProgramConsumer;Lcom/android/tools/r8/StringConsumer;ILcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/internal/nJ$f;ZLcom/android/tools/r8/GlobalSyntheticsConsumer;ZZLjava/util/function/BiPredicate;Lcom/android/tools/r8/DesugarGraphConsumer;Lcom/android/tools/r8/SyntheticInfoConsumer;Lcom/android/tools/r8/StringConsumer;Lcom/android/tools/r8/internal/vm;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZLcom/android/tools/r8/internal/hC;ILcom/android/tools/r8/internal/qt;Lcom/android/tools/r8/MapIdProvider;Lcom/android/tools/r8/StringConsumer;Lcom/android/tools/r8/PartitionMapConsumer;ZZLjava/util/function/Consumer;ZLjava/util/List;Ljava/util/List;Lcom/android/tools/r8/ClassConflictResolver;Lcom/android/tools/r8/CancelCompilationChecker;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/D1;)V

    return-object v38
.end method

.method public bridge synthetic addClasspathFiles(Ljava/util/Collection;)Lcom/android/tools/r8/BaseCommand$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/D8Command$Builder;->addClasspathFiles(Ljava/util/Collection;)Lcom/android/tools/r8/D8Command$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addClasspathFiles([Ljava/nio/file/Path;)Lcom/android/tools/r8/BaseCommand$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/D8Command$Builder;->addClasspathFiles([Ljava/nio/file/Path;)Lcom/android/tools/r8/D8Command$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addClasspathFiles(Ljava/util/Collection;)Lcom/android/tools/r8/D8Command$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/nio/file/Path;",
            ">;)",
            "Lcom/android/tools/r8/D8Command$Builder;"
        }
    .end annotation

    .line 4
    invoke-super {p0, p1}, Lcom/android/tools/r8/BaseCommand$Builder;->addClasspathFiles(Ljava/util/Collection;)Lcom/android/tools/r8/BaseCommand$Builder;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/D8Command$Builder;

    return-object p1
.end method

.method public varargs addClasspathFiles([Ljava/nio/file/Path;)Lcom/android/tools/r8/D8Command$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/android/tools/r8/BaseCommand$Builder;->addClasspathFiles([Ljava/nio/file/Path;)Lcom/android/tools/r8/BaseCommand$Builder;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/D8Command$Builder;

    return-object p1
.end method

.method public bridge synthetic addClasspathResourceProvider(Lcom/android/tools/r8/ClassFileResourceProvider;)Lcom/android/tools/r8/BaseCommand$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/D8Command$Builder;->addClasspathResourceProvider(Lcom/android/tools/r8/ClassFileResourceProvider;)Lcom/android/tools/r8/D8Command$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addClasspathResourceProvider(Lcom/android/tools/r8/ClassFileResourceProvider;)Lcom/android/tools/r8/D8Command$Builder;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lcom/android/tools/r8/BaseCommand$Builder;->addClasspathResourceProvider(Lcom/android/tools/r8/ClassFileResourceProvider;)Lcom/android/tools/r8/BaseCommand$Builder;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/D8Command$Builder;

    return-object p1
.end method

.method public bridge synthetic addDexProgramData([BLcom/android/tools/r8/origin/Origin;)Lcom/android/tools/r8/BaseCommand$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/D8Command$Builder;->addDexProgramData([BLcom/android/tools/r8/origin/Origin;)Lcom/android/tools/r8/D8Command$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addDexProgramData([BLcom/android/tools/r8/origin/Origin;)Lcom/android/tools/r8/D8Command$Builder;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/x1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/tools/r8/x1;-><init>(Lcom/android/tools/r8/D8Command$Builder;[BLcom/android/tools/r8/origin/Origin;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/BaseCommand$Builder;->a(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method public addGlobalSyntheticsFiles(Ljava/util/Collection;)Lcom/android/tools/r8/D8Command$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/nio/file/Path;",
            ">;)",
            "Lcom/android/tools/r8/D8Command$Builder;"
        }
    .end annotation

    .line 2
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/Path;

    .line 3
    invoke-direct {p0, v0}, Lcom/android/tools/r8/D8Command$Builder;->e(Ljava/nio/file/Path;)V

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public varargs addGlobalSyntheticsFiles([Ljava/nio/file/Path;)Lcom/android/tools/r8/D8Command$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/D8Command$Builder;->addGlobalSyntheticsFiles(Ljava/util/Collection;)Lcom/android/tools/r8/D8Command$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addGlobalSyntheticsResourceProviders(Ljava/util/Collection;)Lcom/android/tools/r8/D8Command$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/tools/r8/GlobalSyntheticsResourceProvider;",
            ">;)",
            "Lcom/android/tools/r8/D8Command$Builder;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/D8Command$Builder;->E:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/tools/r8/w1;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/w1;-><init>(Ljava/util/List;)V

    invoke-interface {p1, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-object p0
.end method

.method public varargs addGlobalSyntheticsResourceProviders([Lcom/android/tools/r8/GlobalSyntheticsResourceProvider;)Lcom/android/tools/r8/D8Command$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/D8Command$Builder;->addGlobalSyntheticsResourceProviders(Ljava/util/Collection;)Lcom/android/tools/r8/D8Command$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addMainDexRules(Ljava/util/List;Lcom/android/tools/r8/origin/Origin;)Lcom/android/tools/r8/D8Command$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/tools/r8/origin/Origin;",
            ")",
            "Lcom/android/tools/r8/D8Command$Builder;"
        }
    .end annotation

    new-instance v0, Lcom/android/tools/r8/y1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/tools/r8/y1;-><init>(Lcom/android/tools/r8/D8Command$Builder;Ljava/util/List;Lcom/android/tools/r8/origin/Origin;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/BaseCommand$Builder;->a(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method public addMainDexRulesFiles(Ljava/util/Collection;)Lcom/android/tools/r8/D8Command$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/nio/file/Path;",
            ">;)",
            "Lcom/android/tools/r8/D8Command$Builder;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/android/tools/r8/B1;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/B1;-><init>(Lcom/android/tools/r8/D8Command$Builder;Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/BaseCommand$Builder;->a(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method public varargs addMainDexRulesFiles([Ljava/nio/file/Path;)Lcom/android/tools/r8/D8Command$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/D8Command$Builder;->addMainDexRulesFiles(Ljava/util/Collection;)Lcom/android/tools/r8/D8Command$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addStartupProfileProviders(Ljava/util/Collection;)Lcom/android/tools/r8/BaseCompilerCommand$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/D8Command$Builder;->addStartupProfileProviders(Ljava/util/Collection;)Lcom/android/tools/r8/D8Command$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addStartupProfileProviders([Lcom/android/tools/r8/startup/StartupProfileProvider;)Lcom/android/tools/r8/BaseCompilerCommand$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/D8Command$Builder;->addStartupProfileProviders([Lcom/android/tools/r8/startup/StartupProfileProvider;)Lcom/android/tools/r8/D8Command$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addStartupProfileProviders(Ljava/util/Collection;)Lcom/android/tools/r8/D8Command$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/tools/r8/startup/StartupProfileProvider;",
            ">;)",
            "Lcom/android/tools/r8/D8Command$Builder;"
        }
    .end annotation

    .line 3
    invoke-super {p0, p1}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->addStartupProfileProviders(Ljava/util/Collection;)Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/D8Command$Builder;

    return-object p1
.end method

.method public varargs addStartupProfileProviders([Lcom/android/tools/r8/startup/StartupProfileProvider;)Lcom/android/tools/r8/D8Command$Builder;
    .locals 0

    .line 4
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/D8Command$Builder;->addStartupProfileProviders(Ljava/util/Collection;)Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    move-result-object p1

    .line 5
    check-cast p1, Lcom/android/tools/r8/D8Command$Builder;

    return-object p1
.end method

.method public final c()Lcom/android/tools/r8/BaseCommand$Builder;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final d()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->isPrintHelp()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->b()Lcom/android/tools/r8/internal/Ef0;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->a()Lcom/android/tools/r8/utils/i$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/utils/i$a;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/tools/r8/D8Command$Builder;->B:Z

    if-eqz v1, :cond_1

    const-string v1, "Option --main-dex-list cannot be used with --intermediate"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Ef0;->a(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->getProgramConsumer()Lcom/android/tools/r8/ProgramConsumer;

    move-result-object v1

    instance-of v1, v1, Lcom/android/tools/r8/DexFilePerClassFileConsumer;

    if-eqz v1, :cond_2

    const-string v1, "Option --main-dex-list cannot be used with --file-per-class"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Ef0;->a(Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/android/tools/r8/D8Command$Builder;->K:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/android/tools/r8/D8Command$Builder;->B:Z

    if-eqz v1, :cond_3

    const-string v1, "Option --main-dex-rules cannot be used with --intermediate"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Ef0;->a(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->getProgramConsumer()Lcom/android/tools/r8/ProgramConsumer;

    move-result-object v1

    instance-of v1, v1, Lcom/android/tools/r8/DexFilePerClassFileConsumer;

    if-eqz v1, :cond_4

    const-string v1, "Option --main-dex-rules cannot be used with --file-per-class"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Ef0;->a(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->getMainDexListConsumer()Lcom/android/tools/r8/StringConsumer;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/tools/r8/D8Command$Builder;->K:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->a()Lcom/android/tools/r8/utils/i$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/utils/i$a;->c()Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "Option --main-dex-list-output requires --main-dex-rules and/or --main-dex-list"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Ef0;->a(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->getMinApiLevel()I

    move-result v1

    sget-object v2, Lcom/android/tools/r8/internal/C2;->x:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/C2;->d()I

    move-result v3

    const-string v4, " was provided)"

    if-lt v1, v3, :cond_7

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->getMainDexListConsumer()Lcom/android/tools/r8/StringConsumer;

    move-result-object v1

    if-nez v1, :cond_6

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->a()Lcom/android/tools/r8/utils/i$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/utils/i$a;->c()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/C2;->d()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->getMinApiLevel()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "D8 does not support main-dex inputs and outputs when compiling to API level "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " and above (min API level "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Ef0;->a(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->m()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->getDisableDesugaring()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "Using desugared library configuration requires desugaring to be enabled"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Ef0;->a(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->getProgramConsumer()Lcom/android/tools/r8/ProgramConsumer;

    move-result-object v1

    instance-of v1, v1, Lcom/android/tools/r8/ClassFileConsumer;

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->getDisableDesugaring()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->n()Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "Compiling to CF with --min-api and --no-desugaring is not supported"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Ef0;->a(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->k()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    iget-boolean v1, p0, Lcom/android/tools/r8/D8Command$Builder;->B:Z

    if-eqz v1, :cond_a

    const-string v1, "D8 startup layout is not supported in intermediate mode"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Ef0;->a(Ljava/lang/String;)V

    :cond_a
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->getMinApiLevel()I

    move-result v1

    sget-object v2, Lcom/android/tools/r8/internal/C2;->w:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/C2;->d()I

    move-result v3

    if-ge v1, v3, :cond_b

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/C2;->d()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->getMinApiLevel()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "D8 startup layout requires native multi dex support (API level "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " and above, min API level "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Ef0;->a(Ljava/lang/String;)V

    :cond_b
    invoke-super {p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->d()V

    return-void
.end method

.method public final e()Lcom/android/tools/r8/CompilationMode;
    .locals 1

    .line 6
    sget-object v0, Lcom/android/tools/r8/CompilationMode;->DEBUG:Lcom/android/tools/r8/CompilationMode;

    return-object v0
.end method

.method public getDesugarGraphConsumer()Lcom/android/tools/r8/DesugarGraphConsumer;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/D8Command$Builder;->F:Lcom/android/tools/r8/DesugarGraphConsumer;

    return-object v0
.end method

.method public getSyntheticInfoConsumer()Lcom/android/tools/r8/SyntheticInfoConsumer;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/D8Command$Builder;->G:Lcom/android/tools/r8/SyntheticInfoConsumer;

    return-object v0
.end method

.method public final bridge synthetic makeCommand()Lcom/android/tools/r8/BaseCommand;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/D8Command$Builder;->p()Lcom/android/tools/r8/D8Command;

    move-result-object v0

    return-object v0
.end method

.method public final p()Lcom/android/tools/r8/D8Command;
    .locals 4

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->isPrintHelp()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->isPrintVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/graph/u1;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/u1;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/D8Command$Builder;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/D8Command;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    new-instance v0, Lcom/android/tools/r8/D8Command;

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->isPrintHelp()Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->isPrintVersion()Z

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/tools/r8/D8Command;-><init>(ZZLcom/android/tools/r8/D1;)V

    return-object v0
.end method

.method public final q()Lcom/android/tools/r8/D8Command$Builder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/tools/r8/D8Command$Builder;->M:Z

    return-object p0
.end method

.method public setBuildMetadataConsumer(Ljava/util/function/Consumer;)Lcom/android/tools/r8/D8Command$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Lcom/android/tools/r8/metadata/D8BuildMetadata;",
            ">;)",
            "Lcom/android/tools/r8/D8Command$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/tools/r8/D8Command$Builder;->N:Ljava/util/function/Consumer;

    return-object p0
.end method

.method public setDesugarGraphConsumer(Lcom/android/tools/r8/DesugarGraphConsumer;)Lcom/android/tools/r8/D8Command$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/D8Command$Builder;->F:Lcom/android/tools/r8/DesugarGraphConsumer;

    return-object p0
.end method

.method public setDesugaredLibraryKeepRuleConsumer(Lcom/android/tools/r8/StringConsumer;)Lcom/android/tools/r8/D8Command$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/D8Command$Builder;->H:Lcom/android/tools/r8/StringConsumer;

    return-object p0
.end method

.method public setEnableExperimentalMissingLibraryApiModeling(Z)Lcom/android/tools/r8/D8Command$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Lcom/android/tools/r8/D8Command$Builder;->L:Z

    return-object p0
.end method

.method public setGlobalSyntheticsConsumer(Lcom/android/tools/r8/GlobalSyntheticsConsumer;)Lcom/android/tools/r8/D8Command$Builder;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/D8Command$Builder;->C:Ljava/nio/file/Path;

    iput-object p1, p0, Lcom/android/tools/r8/D8Command$Builder;->D:Lcom/android/tools/r8/GlobalSyntheticsConsumer;

    return-object p0
.end method

.method public setGlobalSyntheticsOutput(Ljava/nio/file/Path;)Lcom/android/tools/r8/D8Command$Builder;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/D8Command$Builder;->D:Lcom/android/tools/r8/GlobalSyntheticsConsumer;

    iput-object p1, p0, Lcom/android/tools/r8/D8Command$Builder;->C:Ljava/nio/file/Path;

    return-object p0
.end method

.method public setIntermediate(Z)Lcom/android/tools/r8/D8Command$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/android/tools/r8/D8Command$Builder;->B:Z

    return-object p0
.end method

.method public bridge synthetic setPartitionMapConsumer(Lcom/android/tools/r8/PartitionMapConsumer;)Lcom/android/tools/r8/BaseCompilerCommand$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/D8Command$Builder;->setPartitionMapConsumer(Lcom/android/tools/r8/PartitionMapConsumer;)Lcom/android/tools/r8/D8Command$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setPartitionMapConsumer(Lcom/android/tools/r8/PartitionMapConsumer;)Lcom/android/tools/r8/D8Command$Builder;
    .locals 1

    .line 2
    sget-boolean v0, Lcom/android/tools/r8/D8Command$Builder;->O:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 3
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->setPartitionMapConsumer(Lcom/android/tools/r8/PartitionMapConsumer;)Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/D8Command$Builder;

    return-object p1
.end method

.method public bridge synthetic setPartitionMapOutputPath(Ljava/nio/file/Path;)Lcom/android/tools/r8/BaseCompilerCommand$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/D8Command$Builder;->setPartitionMapOutputPath(Ljava/nio/file/Path;)Lcom/android/tools/r8/D8Command$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setPartitionMapOutputPath(Ljava/nio/file/Path;)Lcom/android/tools/r8/D8Command$Builder;
    .locals 1

    .line 2
    sget-boolean v0, Lcom/android/tools/r8/D8Command$Builder;->O:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 3
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->setPartitionMapOutputPath(Ljava/nio/file/Path;)Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/D8Command$Builder;

    return-object p1
.end method

.method public setProguardInputMapFile(Ljava/nio/file/Path;)Lcom/android/tools/r8/D8Command$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->a()Lcom/android/tools/r8/utils/i$a;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/tools/r8/v0;->a(Ljava/nio/file/Path;)Lcom/android/tools/r8/v0$a;

    move-result-object p1

    iput-object p1, v0, Lcom/android/tools/r8/utils/i$a;->l:Lcom/android/tools/r8/v0$a;

    return-object p0
.end method

.method public bridge synthetic setProguardMapConsumer(Lcom/android/tools/r8/StringConsumer;)Lcom/android/tools/r8/BaseCompilerCommand$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/D8Command$Builder;->setProguardMapConsumer(Lcom/android/tools/r8/StringConsumer;)Lcom/android/tools/r8/D8Command$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setProguardMapConsumer(Lcom/android/tools/r8/StringConsumer;)Lcom/android/tools/r8/D8Command$Builder;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->proguardMapConsumer:Lcom/android/tools/r8/StringConsumer;

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/D8Command$Builder;->c()Lcom/android/tools/r8/BaseCommand$Builder;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    .line 4
    check-cast p1, Lcom/android/tools/r8/D8Command$Builder;

    return-object p1
.end method

.method public setProguardMapInputFile(Ljava/nio/file/Path;)Lcom/android/tools/r8/D8Command$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->a()Lcom/android/tools/r8/utils/i$a;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/tools/r8/v0;->a(Ljava/nio/file/Path;)Lcom/android/tools/r8/v0$a;

    move-result-object p1

    iput-object p1, v0, Lcom/android/tools/r8/utils/i$a;->l:Lcom/android/tools/r8/v0$a;

    return-object p0
.end method

.method public bridge synthetic setProguardMapOutputPath(Ljava/nio/file/Path;)Lcom/android/tools/r8/BaseCompilerCommand$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/D8Command$Builder;->setProguardMapOutputPath(Ljava/nio/file/Path;)Lcom/android/tools/r8/D8Command$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setProguardMapOutputPath(Ljava/nio/file/Path;)Lcom/android/tools/r8/D8Command$Builder;
    .locals 1

    .line 2
    sget-boolean v0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->A:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 3
    :cond_1
    :goto_0
    new-instance v0, Lcom/android/tools/r8/StringConsumer$FileConsumer;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/StringConsumer$FileConsumer;-><init>(Ljava/nio/file/Path;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/D8Command$Builder;->setProguardMapConsumer(Lcom/android/tools/r8/StringConsumer;)Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    move-result-object p1

    .line 4
    check-cast p1, Lcom/android/tools/r8/D8Command$Builder;

    return-object p1
.end method

.method public setSyntheticInfoConsumer(Lcom/android/tools/r8/SyntheticInfoConsumer;)Lcom/android/tools/r8/D8Command$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/D8Command$Builder;->G:Lcom/android/tools/r8/SyntheticInfoConsumer;

    return-object p0
.end method
