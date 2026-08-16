.class public Lcom/android/tools/r8/L8Command$Builder;
.super Lcom/android/tools/r8/BaseCompilerCommand$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/L8Command;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/r8/BaseCompilerCommand$Builder<",
        "Lcom/android/tools/r8/L8Command;",
        "Lcom/android/tools/r8/L8Command$Builder;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic D:Z = true


# instance fields
.field private final B:Ljava/util/ArrayList;

.field private final C:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;-><init>(Lcom/android/tools/r8/DiagnosticsHandler;)V

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/L8Command$Builder;->B:Ljava/util/ArrayList;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/L8Command$Builder;->C:Ljava/util/ArrayList;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/u2;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/tools/r8/L8Command$Builder;-><init>(Lcom/android/tools/r8/DiagnosticsHandler;)V

    return-void
.end method


# virtual methods
.method public addProguardConfiguration(Ljava/util/List;Lcom/android/tools/r8/origin/Origin;)Lcom/android/tools/r8/L8Command$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/tools/r8/origin/Origin;",
            ")",
            "Lcom/android/tools/r8/L8Command$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/L8Command$Builder;->B:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/tools/r8/internal/o50;

    invoke-direct {v1, p1, p2}, Lcom/android/tools/r8/internal/o50;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addProguardConfigurationFiles(Ljava/util/List;)Lcom/android/tools/r8/L8Command$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/nio/file/Path;",
            ">;)",
            "Lcom/android/tools/r8/L8Command$Builder;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/L8Command$Builder;->C:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public varargs addProguardConfigurationFiles([Ljava/nio/file/Path;)Lcom/android/tools/r8/L8Command$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/L8Command$Builder;->C:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final c()Lcom/android/tools/r8/BaseCommand$Builder;
    .locals 0

    return-object p0
.end method

.method public final d()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->isPrintHelp()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->b()Lcom/android/tools/r8/internal/Ef0;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->getProgramConsumer()Lcom/android/tools/r8/ProgramConsumer;

    move-result-object v1

    instance-of v1, v1, Lcom/android/tools/r8/ClassFileConsumer;

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->m()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "L8 requires a desugared library configuration"

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/Ef0;->a(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->getProgramConsumer()Lcom/android/tools/r8/ProgramConsumer;

    move-result-object v2

    instance-of v2, v2, Lcom/android/tools/r8/DexFilePerClassFileConsumer;

    if-eqz v2, :cond_2

    const-string v2, "L8 does not support compiling to dex per class"

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/Ef0;->a(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->a()Lcom/android/tools/r8/utils/i$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/utils/i$a;->c()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "L8 does not support a main dex list"

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/Ef0;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->getMainDexListConsumer()Lcom/android/tools/r8/StringConsumer;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v2, "L8 does not support generating a main dex list"

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/Ef0;->a(Ljava/lang/String;)V

    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/L8Command$Builder;->isShrinking()Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz v1, :cond_9

    const-string v1, "L8 does not support shrinking when generating class files"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Ef0;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->proguardMapConsumer:Lcom/android/tools/r8/StringConsumer;

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->partitionMapConsumer:Lcom/android/tools/r8/PartitionMapConsumer;

    if-eqz v2, :cond_7

    :cond_6
    const-string v2, "L8 does not support defining a map consumer when not shrinking"

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/Ef0;->a(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->f()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    if-eqz v1, :cond_8

    const-string v1, "L8 does not support rewriting of ART profiles when generating class files"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Ef0;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    const-string v1, "L8 does not impact ART profiles when generating DEX and not shrinking"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Ef0;->a(Ljava/lang/String;)V

    :cond_9
    :goto_1
    invoke-super {p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->d()V

    return-void
.end method

.method public final e()Lcom/android/tools/r8/CompilationMode;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/CompilationMode;->DEBUG:Lcom/android/tools/r8/CompilationMode;

    return-object v0
.end method

.method public isShrinking()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/L8Command$Builder;->B:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/L8Command$Builder;->C:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final makeCommand()Lcom/android/tools/r8/BaseCommand;
    .locals 24

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/BaseCommand$Builder;->isPrintHelp()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/BaseCommand$Builder;->isPrintVersion()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->getMode()Lcom/android/tools/r8/CompilationMode;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/android/tools/r8/CompilationMode;->DEBUG:Lcom/android/tools/r8/CompilationMode;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->setMode(Lcom/android/tools/r8/CompilationMode;)Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    :cond_1
    new-instance v1, Lcom/android/tools/r8/graph/u1;

    invoke-direct {v1}, Lcom/android/tools/r8/graph/u1;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->a(Lcom/android/tools/r8/graph/u1;Z)Lcom/android/tools/r8/internal/vm;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/BaseCommand$Builder;->a()Lcom/android/tools/r8/utils/i$a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/utils/i$a;->a()Lcom/android/tools/r8/utils/i;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/L8Command$Builder;->isShrinking()Z

    move-result v4

    if-eqz v4, :cond_7

    new-instance v4, Lcom/android/tools/r8/U;

    invoke-direct {v4}, Lcom/android/tools/r8/U;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/BaseCommand$Builder;->b()Lcom/android/tools/r8/internal/Ef0;

    move-result-object v5

    invoke-static {v5}, Lcom/android/tools/r8/R8Command;->builder(Lcom/android/tools/r8/DiagnosticsHandler;)Lcom/android/tools/r8/R8Command$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/tools/r8/R8Command$Builder;->addProgramResourceProvider(Lcom/android/tools/r8/ProgramResourceProvider;)Lcom/android/tools/r8/R8Command$Builder;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/android/tools/r8/R8Command$Builder;->enableLegacyFullModeForKeepRules(Z)Lcom/android/tools/r8/R8Command$Builder;

    move-result-object v5

    invoke-interface {v14}, Lcom/android/tools/r8/internal/vm;->f()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/android/tools/r8/R8Command$Builder;->a(Ljava/lang/String;)Lcom/android/tools/r8/R8Command$Builder;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->getMinApiLevel()I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->setMinApiLevel(I)Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/R8Command$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->getMode()Lcom/android/tools/r8/CompilationMode;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->setMode(Lcom/android/tools/r8/CompilationMode;)Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/R8Command$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->getIncludeClassesChecksum()Z

    move-result v8

    invoke-virtual {v5, v8}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->setIncludeClassesChecksum(Z)Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/R8Command$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->getDexClassChecksumFilter()Ljava/util/function/BiPredicate;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->setDexClassChecksumFilter(Ljava/util/function/BiPredicate;)Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/R8Command$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->getProgramConsumer()Lcom/android/tools/r8/ProgramConsumer;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->setProgramConsumer(Lcom/android/tools/r8/ProgramConsumer;)Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/R8Command$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->f()Ljava/util/List;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v10, v7

    :goto_0
    if-ge v10, v9, :cond_2

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v10, v10, 0x1

    check-cast v11, Lcom/android/tools/r8/internal/p4;

    invoke-virtual {v5, v11}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->a(Lcom/android/tools/r8/internal/p4;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v6}, Lcom/android/tools/r8/utils/i;->g()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/ClassFileResourceProvider;

    invoke-virtual {v5, v9}, Lcom/android/tools/r8/BaseCommand$Builder;->addLibraryResourceProvider(Lcom/android/tools/r8/ClassFileResourceProvider;)Lcom/android/tools/r8/BaseCommand$Builder;

    goto :goto_1

    :cond_3
    iget-object v8, v0, Lcom/android/tools/r8/L8Command$Builder;->B:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    :goto_2
    if-ge v7, v9, :cond_4

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v7, v7, 0x1

    check-cast v10, Lcom/android/tools/r8/internal/o50;

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/o50;->a()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/o50;->b()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/origin/Origin;

    invoke-virtual {v5, v11, v10}, Lcom/android/tools/r8/R8Command$Builder;->addProguardConfiguration(Ljava/util/List;Lcom/android/tools/r8/origin/Origin;)Lcom/android/tools/r8/R8Command$Builder;

    goto :goto_2

    :cond_4
    iget-object v7, v0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->proguardMapConsumer:Lcom/android/tools/r8/StringConsumer;

    if-eqz v7, :cond_5

    invoke-virtual {v5, v7}, Lcom/android/tools/r8/R8Command$Builder;->setProguardMapConsumer(Lcom/android/tools/r8/StringConsumer;)Lcom/android/tools/r8/R8Command$Builder;

    :cond_5
    iget-object v7, v0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->partitionMapConsumer:Lcom/android/tools/r8/PartitionMapConsumer;

    if-eqz v7, :cond_6

    invoke-virtual {v5, v7}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->setPartitionMapConsumer(Lcom/android/tools/r8/PartitionMapConsumer;)Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    :cond_6
    invoke-interface {v14}, Lcom/android/tools/r8/internal/vm;->e()Ljava/util/List;

    move-result-object v7

    invoke-static {}, Lcom/android/tools/r8/origin/Origin;->unknown()Lcom/android/tools/r8/origin/Origin;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/android/tools/r8/R8Command$Builder;->addProguardConfiguration(Ljava/util/List;Lcom/android/tools/r8/origin/Origin;)Lcom/android/tools/r8/R8Command$Builder;

    new-instance v7, Lcom/android/tools/r8/internal/Sm0;

    const-string v8, "-dontwarn sun.misc.Unsafe"

    invoke-direct {v7, v8}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/tools/r8/origin/Origin;->unknown()Lcom/android/tools/r8/origin/Origin;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/android/tools/r8/R8Command$Builder;->addProguardConfiguration(Ljava/util/List;Lcom/android/tools/r8/origin/Origin;)Lcom/android/tools/r8/R8Command$Builder;

    iget-object v7, v0, Lcom/android/tools/r8/L8Command$Builder;->C:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Lcom/android/tools/r8/R8Command$Builder;->addProguardConfigurationFiles(Ljava/util/List;)Lcom/android/tools/r8/R8Command$Builder;

    invoke-virtual {v5, v3}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->setDisableDesugaring(Z)Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    invoke-virtual {v5}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->o()V

    invoke-virtual {v5}, Lcom/android/tools/r8/R8Command$Builder;->p()Lcom/android/tools/r8/R8Command;

    move-result-object v3

    move-object v5, v2

    move-object v8, v4

    move-object v4, v3

    goto/16 :goto_5

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->getProgramConsumer()Lcom/android/tools/r8/ProgramConsumer;

    move-result-object v4

    instance-of v4, v4, Lcom/android/tools/r8/ClassFileConsumer;

    if-nez v4, :cond_9

    new-instance v4, Lcom/android/tools/r8/U;

    invoke-direct {v4}, Lcom/android/tools/r8/U;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/BaseCommand$Builder;->b()Lcom/android/tools/r8/internal/Ef0;

    move-result-object v5

    invoke-static {v5}, Lcom/android/tools/r8/D8Command;->builder(Lcom/android/tools/r8/DiagnosticsHandler;)Lcom/android/tools/r8/D8Command$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/tools/r8/BaseCommand$Builder;->addProgramResourceProvider(Lcom/android/tools/r8/ProgramResourceProvider;)Lcom/android/tools/r8/BaseCommand$Builder;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/D8Command$Builder;

    invoke-interface {v14}, Lcom/android/tools/r8/internal/vm;->f()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/tools/r8/D8Command$Builder;->a(Ljava/lang/String;)Lcom/android/tools/r8/D8Command$Builder;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->getMinApiLevel()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->setMinApiLevel(I)Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/D8Command$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->getMode()Lcom/android/tools/r8/CompilationMode;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->setMode(Lcom/android/tools/r8/CompilationMode;)Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/D8Command$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->getIncludeClassesChecksum()Z

    move-result v7

    invoke-virtual {v5, v7}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->setIncludeClassesChecksum(Z)Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/D8Command$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->getDexClassChecksumFilter()Ljava/util/function/BiPredicate;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->setDexClassChecksumFilter(Ljava/util/function/BiPredicate;)Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/D8Command$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->getProgramConsumer()Lcom/android/tools/r8/ProgramConsumer;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->setProgramConsumer(Lcom/android/tools/r8/ProgramConsumer;)Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/D8Command$Builder;

    invoke-virtual {v5}, Lcom/android/tools/r8/D8Command$Builder;->q()Lcom/android/tools/r8/D8Command$Builder;

    move-result-object v5

    invoke-virtual {v6}, Lcom/android/tools/r8/utils/i;->g()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/ClassFileResourceProvider;

    invoke-virtual {v5, v8}, Lcom/android/tools/r8/BaseCommand$Builder;->addLibraryResourceProvider(Lcom/android/tools/r8/ClassFileResourceProvider;)Lcom/android/tools/r8/BaseCommand$Builder;

    goto :goto_3

    :cond_8
    invoke-virtual {v5, v3}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->setDisableDesugaring(Z)Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    invoke-virtual {v5}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->o()V

    invoke-virtual {v5}, Lcom/android/tools/r8/D8Command$Builder;->p()Lcom/android/tools/r8/D8Command;

    move-result-object v3

    move-object v5, v3

    move-object v8, v4

    move-object v4, v2

    goto :goto_5

    :cond_9
    sget-boolean v3, Lcom/android/tools/r8/L8Command$Builder;->D:Z

    if-nez v3, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->getProgramConsumer()Lcom/android/tools/r8/ProgramConsumer;

    move-result-object v3

    instance-of v3, v3, Lcom/android/tools/r8/ClassFileConsumer;

    if-eqz v3, :cond_a

    goto :goto_4

    :cond_a
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_b
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->getProgramConsumer()Lcom/android/tools/r8/ProgramConsumer;

    move-result-object v3

    move-object v4, v2

    move-object v5, v4

    move-object v8, v3

    :goto_5
    new-instance v2, Lcom/android/tools/r8/L8Command;

    move-object v3, v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->getMode()Lcom/android/tools/r8/CompilationMode;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->getMainDexListConsumer()Lcom/android/tools/r8/StringConsumer;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->getMinApiLevel()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/BaseCommand$Builder;->b()Lcom/android/tools/r8/internal/Ef0;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->getIncludeClassesChecksum()Z

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->getDexClassChecksumFilter()Ljava/util/function/BiPredicate;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->g()Ljava/util/List;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->j()Ljava/util/List;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->l()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->i()Lcom/android/tools/r8/internal/qt;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->getMapIdProvider()Lcom/android/tools/r8/MapIdProvider;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->h()Lcom/android/tools/r8/ClassConflictResolver;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->getCancelCompilationChecker()Lcom/android/tools/r8/CancelCompilationChecker;

    move-result-object v21

    const/16 v23, 0x0

    move-object/from16 v22, v1

    invoke-direct/range {v3 .. v23}, Lcom/android/tools/r8/L8Command;-><init>(Lcom/android/tools/r8/R8Command;Lcom/android/tools/r8/D8Command;Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/CompilationMode;Lcom/android/tools/r8/ProgramConsumer;Lcom/android/tools/r8/StringConsumer;ILcom/android/tools/r8/internal/Ef0;ZLjava/util/function/BiPredicate;Lcom/android/tools/r8/internal/vm;Ljava/util/List;Ljava/util/List;ILcom/android/tools/r8/internal/qt;Lcom/android/tools/r8/MapIdProvider;Lcom/android/tools/r8/ClassConflictResolver;Lcom/android/tools/r8/CancelCompilationChecker;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/v2;)V

    return-object v2

    :cond_c
    :goto_6
    new-instance v1, Lcom/android/tools/r8/L8Command;

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/BaseCommand$Builder;->isPrintHelp()Z

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/BaseCommand$Builder;->isPrintVersion()Z

    move-result v4

    invoke-direct {v1, v3, v4, v2}, Lcom/android/tools/r8/L8Command;-><init>(ZZLcom/android/tools/r8/v2;)V

    return-object v1
.end method

.method public bridge synthetic setAndroidPlatformBuild(Z)Lcom/android/tools/r8/BaseCompilerCommand$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/L8Command$Builder;->setAndroidPlatformBuild(Z)Lcom/android/tools/r8/L8Command$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setAndroidPlatformBuild(Z)Lcom/android/tools/r8/L8Command$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->b()Lcom/android/tools/r8/internal/Ef0;

    move-result-object p1

    const-string v0, "L8 does not support configuring Android platform builds."

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/Ef0;->b(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public bridge synthetic setProguardMapConsumer(Lcom/android/tools/r8/StringConsumer;)Lcom/android/tools/r8/BaseCompilerCommand$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/L8Command$Builder;->setProguardMapConsumer(Lcom/android/tools/r8/StringConsumer;)Lcom/android/tools/r8/L8Command$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setProguardMapConsumer(Lcom/android/tools/r8/StringConsumer;)Lcom/android/tools/r8/L8Command$Builder;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->proguardMapConsumer:Lcom/android/tools/r8/StringConsumer;

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/L8Command$Builder;->c()Lcom/android/tools/r8/BaseCommand$Builder;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    .line 4
    check-cast p1, Lcom/android/tools/r8/L8Command$Builder;

    return-object p1
.end method

.method public bridge synthetic setProguardMapOutputPath(Ljava/nio/file/Path;)Lcom/android/tools/r8/BaseCompilerCommand$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/L8Command$Builder;->setProguardMapOutputPath(Ljava/nio/file/Path;)Lcom/android/tools/r8/L8Command$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setProguardMapOutputPath(Ljava/nio/file/Path;)Lcom/android/tools/r8/L8Command$Builder;
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

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/L8Command$Builder;->setProguardMapConsumer(Lcom/android/tools/r8/StringConsumer;)Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    move-result-object p1

    .line 4
    check-cast p1, Lcom/android/tools/r8/L8Command$Builder;

    return-object p1
.end method
