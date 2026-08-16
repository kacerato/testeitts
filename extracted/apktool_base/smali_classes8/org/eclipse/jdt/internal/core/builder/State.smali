.class public Lorg/eclipse/jdt/internal/core/builder/State;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final BINARY_FOLDER:B = 0x2t

.field static final EXTERNAL_JAR:B = 0x3t

.field static final INTERNAL_JAR:B = 0x4t

.field public static MaxStructurallyChangedTypes:I = 0x64

.field static final SOURCE_FOLDER:B = 0x1t

.field public static final VERSION:B = 0x22t


# instance fields
.field binaryLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

.field buildNumber:I

.field javaProjectName:Ljava/lang/String;

.field private knownPackageNames:[Ljava/lang/String;

.field lastStructuralBuildTime:J

.field private previousStructuralBuildTime:J

.field references:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

.field public sourceLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;

.field structuralBuildTimes:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

.field private structurallyChangedTypes:Lorg/eclipse/jdt/internal/core/builder/StringSet;

.field testBinaryLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

.field public testSourceLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;

.field public typeLocators:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/State;->knownPackageNames:[Ljava/lang/String;

    const-wide/16 v1, -0x1

    .line 4
    iput-wide v1, p0, Lorg/eclipse/jdt/internal/core/builder/State;->previousStructuralBuildTime:J

    .line 5
    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/State;->structurallyChangedTypes:Lorg/eclipse/jdt/internal/core/builder/StringSet;

    .line 6
    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->currentProject:Lorg/eclipse/core/resources/IProject;

    invoke-interface {v0}, Lorg/eclipse/core/resources/IProject;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/State;->javaProjectName:Ljava/lang/String;

    .line 7
    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->nameEnvironment:Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->sourceLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/State;->sourceLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;

    .line 8
    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->binaryLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/State;->binaryLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    .line 9
    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->testNameEnvironment:Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->sourceLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/State;->testSourceLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;

    .line 10
    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->binaryLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/State;->testBinaryLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    .line 11
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/State;->references:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    .line 12
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/State;->typeLocators:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lorg/eclipse/jdt/internal/core/builder/State;->buildNumber:I

    .line 14
    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->lastState:Lorg/eclipse/jdt/internal/core/builder/State;

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p1, Lorg/eclipse/jdt/internal/core/builder/State;->lastStructuralBuildTime:J

    :goto_0
    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/internal/core/builder/State;->computeStructuralBuildTime(J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/core/builder/State;->lastStructuralBuildTime:J

    .line 15
    new-instance p1, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;-><init>(I)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/State;->structuralBuildTimes:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    return-void
.end method

.method public static synthetic a(Ljava/util/function/Consumer;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/builder/State;->lambda$0(Ljava/util/function/Consumer;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/util/function/Consumer;)[[C
    .locals 0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/builder/State;->lambda$2(Ljava/util/function/Consumer;)[[C

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c([[C)Z
    .locals 0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/builder/State;->lambda$3([[C)Z

    move-result p0

    return p0
.end method

.method public static synthetic d([[C[[C)[[C
    .locals 0

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/core/builder/State;->lambda$4([[C[[C)[[C

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lorg/eclipse/jdt/internal/core/builder/State;Ljava/io/DataOutputStream;Ljava/util/Map$Entry;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/builder/State;->lambda$1(Ljava/io/DataOutputStream;Ljava/util/Map$Entry;)V

    return-void
.end method

.method private static synthetic lambda$0(Ljava/util/function/Consumer;)Ljava/lang/String;
    .locals 0

    check-cast p0, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$AddExports;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$AddExports;->getName()[C

    move-result-object p0

    invoke-static {p0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->charToString([C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$1(Ljava/io/DataOutputStream;Ljava/util/Map$Entry;)V
    .locals 1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/builder/State;->writeName([CLjava/io/DataOutputStream;)V

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lorg/eclipse/jdt/internal/core/builder/m;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/builder/m;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lorg/eclipse/jdt/internal/core/builder/n;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/builder/n;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lorg/eclipse/jdt/internal/core/builder/o;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/builder/o;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->reduce(Ljava/util/function/BinaryOperator;)Ljava/util/Optional;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [[C

    invoke-direct {p0, p2, p1}, Lorg/eclipse/jdt/internal/core/builder/State;->writeNames([[CLjava/io/DataOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static synthetic lambda$2(Ljava/util/function/Consumer;)[[C
    .locals 0

    check-cast p0, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$AddExports;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$AddExports;->getTargetModules()[[C

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$3([[C)Z
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$4([[C[[C)[[C
    .locals 0

    invoke-static {p0, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->arrayConcat([[C[[C)[[C

    move-result-object p0

    return-object p0
.end method

.method public static read(Lorg/eclipse/core/resources/IProject;Ljava/io/DataInputStream;)Lorg/eclipse/jdt/internal/core/builder/State;
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    move-object/from16 v0, p0

    sget-boolean v1, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "About to read state "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p0 .. p0}, Lorg/eclipse/core/resources/IProject;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x22

    if-eq v3, v1, :cond_2

    sget-boolean v1, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->DEBUG:Z

    if-eqz v1, :cond_1

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Found non-compatible state version... answered null for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p0 .. p0}, Lorg/eclipse/core/resources/IProject;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    return-object v2

    :cond_2
    new-instance v1, Lorg/eclipse/jdt/internal/core/builder/State;

    invoke-direct {v1}, Lorg/eclipse/jdt/internal/core/builder/State;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lorg/eclipse/jdt/internal/core/builder/State;->javaProjectName:Ljava/lang/String;

    invoke-interface/range {p0 .. p0}, Lorg/eclipse/core/resources/IProject;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lorg/eclipse/jdt/internal/core/builder/State;->javaProjectName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    sget-boolean v0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->DEBUG:Z

    if-eqz v0, :cond_3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Project\'s name does not match... answered null"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3
    return-object v2

    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    iput v3, v1, Lorg/eclipse/jdt/internal/core/builder/State;->buildNumber:I

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v3

    iput-wide v3, v1, Lorg/eclipse/jdt/internal/core/builder/State;->lastStructuralBuildTime:J

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    new-array v4, v3, [Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;

    iput-object v4, v1, Lorg/eclipse/jdt/internal/core/builder/State;->sourceLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const/4 v6, 0x1

    if-lt v5, v3, :cond_2e

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    new-array v3, v7, [Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    iput-object v3, v1, Lorg/eclipse/jdt/internal/core/builder/State;->binaryLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    invoke-interface/range {p0 .. p0}, Lorg/eclipse/core/resources/IProject;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object v3

    invoke-interface {v3}, Lorg/eclipse/core/resources/IWorkspace;->getRoot()Lorg/eclipse/core/resources/IWorkspaceRoot;

    move-result-object v8

    move v3, v4

    :goto_1
    const/4 v5, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    if-lt v3, v7, :cond_1f

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v11

    new-array v3, v11, [Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;

    iput-object v3, v1, Lorg/eclipse/jdt/internal/core/builder/State;->testSourceLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;

    move v3, v4

    :goto_2
    if-lt v3, v11, :cond_1b

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    new-array v0, v7, [Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    iput-object v0, v1, Lorg/eclipse/jdt/internal/core/builder/State;->testBinaryLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    move v0, v4

    :goto_3
    if-lt v0, v7, :cond_14

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    invoke-direct {v0, v3}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;-><init>(I)V

    iput-object v0, v1, Lorg/eclipse/jdt/internal/core/builder/State;->structuralBuildTimes:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    move v0, v4

    :goto_4
    if-lt v0, v3, :cond_13

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    new-array v7, v5, [Ljava/lang/String;

    move v0, v4

    :goto_5
    if-lt v0, v5, :cond_12

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    invoke-direct {v0, v3}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;-><init>(I)V

    iput-object v0, v1, Lorg/eclipse/jdt/internal/core/builder/State;->typeLocators:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    move v0, v4

    :goto_6
    if-lt v0, v3, :cond_11

    invoke-static/range {p1 .. p1}, Lorg/eclipse/jdt/internal/core/builder/State;->readNames(Ljava/io/DataInputStream;)[[C

    move-result-object v0

    invoke-static {v0, v4, v4}, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->internSimpleNames([[CZZ)[[C

    move-result-object v5

    invoke-static/range {p1 .. p1}, Lorg/eclipse/jdt/internal/core/builder/State;->readNames(Ljava/io/DataInputStream;)[[C

    move-result-object v0

    invoke-static {v0, v4, v4}, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->internSimpleNames([[CZZ)[[C

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    new-array v11, v9, [[[C

    move v12, v4

    :goto_7
    if-lt v12, v9, :cond_f

    invoke-static {v11, v4, v4}, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->internQualifiedNames([[[CZZ)[[[C

    move-result-object v0

    new-instance v3, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v13

    invoke-direct {v3, v13}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;-><init>(I)V

    iput-object v3, v1, Lorg/eclipse/jdt/internal/core/builder/State;->references:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    move v3, v4

    :goto_8
    if-lt v3, v13, :cond_6

    sget-boolean v0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->DEBUG:Z

    if-eqz v0, :cond_5

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Successfully read state for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lorg/eclipse/jdt/internal/core/builder/State;->javaProjectName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_5
    return-object v1

    :cond_6
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    aget-object v14, v7, v9

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v9

    if-eq v9, v6, :cond_b

    if-eq v9, v10, :cond_7

    :goto_9
    move-object v4, v2

    goto :goto_10

    :cond_7
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    new-array v11, v9, [[[C

    move v12, v4

    :goto_a
    if-lt v12, v9, :cond_a

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v15

    new-array v9, v15, [[C

    move v12, v4

    :goto_b
    if-lt v12, v15, :cond_9

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v12

    new-array v15, v12, [[C

    :goto_c
    if-lt v4, v12, :cond_8

    new-instance v4, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;

    invoke-direct {v4, v11, v9, v15}, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;-><init>([[[C[[C[[C)V

    goto :goto_10

    :cond_8
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v16

    aget-object v16, v5, v16

    aput-object v16, v15, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_9
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    aget-object v4, v8, v4

    aput-object v4, v9, v12

    add-int/lit8 v12, v12, 0x1

    const/4 v4, 0x0

    goto :goto_b

    :cond_a
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    aget-object v4, v0, v4

    aput-object v4, v11, v12

    add-int/lit8 v12, v12, 0x1

    const/4 v4, 0x0

    goto :goto_a

    :cond_b
    invoke-static/range {p1 .. p1}, Lorg/eclipse/jdt/internal/core/builder/State;->readNames(Ljava/io/DataInputStream;)[[C

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v15

    new-array v9, v15, [[[C

    const/4 v11, 0x0

    :goto_d
    if-lt v11, v15, :cond_e

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v12

    new-array v11, v12, [[C

    const/4 v15, 0x0

    :goto_e
    if-lt v15, v12, :cond_d

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v12

    new-array v15, v12, [[C

    const/4 v2, 0x0

    :goto_f
    if-lt v2, v12, :cond_c

    new-instance v2, Lorg/eclipse/jdt/internal/core/builder/AdditionalTypeCollection;

    invoke-direct {v2, v4, v9, v11, v15}, Lorg/eclipse/jdt/internal/core/builder/AdditionalTypeCollection;-><init>([[C[[[C[[C[[C)V

    goto :goto_9

    :goto_10
    iget-object v2, v1, Lorg/eclipse/jdt/internal/core/builder/State;->references:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {v2, v14, v4}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    goto/16 :goto_8

    :cond_c
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v17

    aget-object v17, v5, v17

    aput-object v17, v15, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_d
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    aget-object v2, v8, v2

    aput-object v2, v11, v15

    add-int/lit8 v15, v15, 0x1

    const/4 v2, 0x0

    goto :goto_e

    :cond_e
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    aget-object v2, v0, v2

    aput-object v2, v9, v11

    add-int/lit8 v11, v11, 0x1

    const/4 v2, 0x0

    goto :goto_d

    :cond_f
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    new-array v4, v2, [[C

    const/4 v0, 0x0

    :goto_11
    if-lt v0, v2, :cond_10

    aput-object v4, v11, v12

    add-int/lit8 v12, v12, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    goto/16 :goto_7

    :cond_10
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    aget-object v3, v8, v3

    aput-object v3, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_11
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    aget-object v4, v7, v4

    invoke-virtual {v1, v2, v4}, Lorg/eclipse/jdt/internal/core/builder/State;->recordLocatorForType(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    goto/16 :goto_6

    :cond_12
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v0

    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    goto/16 :goto_5

    :cond_13
    iget-object v2, v1, Lorg/eclipse/jdt/internal/core/builder/State;->structuralBuildTimes:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    goto/16 :goto_4

    :cond_14
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    if-eq v2, v6, :cond_1a

    if-eq v2, v10, :cond_18

    if-eq v2, v9, :cond_16

    if-eq v2, v5, :cond_15

    goto/16 :goto_13

    :cond_15
    iget-object v2, v1, Lorg/eclipse/jdt/internal/core/builder/State;->testBinaryLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    new-instance v3, Lorg/eclipse/core/runtime/Path;

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    invoke-interface {v8, v3}, Lorg/eclipse/core/resources/IWorkspaceRoot;->getFile(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IFile;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Lorg/eclipse/jdt/internal/core/builder/State;->readRestriction(Ljava/io/DataInputStream;)Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;

    move-result-object v4

    new-instance v11, Lorg/eclipse/core/runtime/Path;

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v12

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v13

    invoke-static {v3, v4, v11, v12, v13}, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->forLibrary(Lorg/eclipse/core/resources/IFile;Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;Lorg/eclipse/core/runtime/IPath;ZLjava/lang/String;)Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    move-result-object v3

    aput-object v3, v2, v0

    goto/16 :goto_13

    :cond_16
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jdt/internal/compiler/util/Util;->isJrt(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    iget-object v3, v1, Lorg/eclipse/jdt/internal/core/builder/State;->testBinaryLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    invoke-static/range {p1 .. p1}, Lorg/eclipse/jdt/internal/core/builder/State;->readRestriction(Ljava/io/DataInputStream;)Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;

    move-result-object v4

    new-instance v11, Lorg/eclipse/core/runtime/Path;

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v4, v11, v12}, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->forJrtSystem(Ljava/lang/String;Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;Lorg/eclipse/core/runtime/IPath;Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;

    move-result-object v2

    aput-object v2, v3, v0

    goto :goto_13

    :cond_17
    iget-object v3, v1, Lorg/eclipse/jdt/internal/core/builder/State;->testBinaryLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v18

    invoke-static/range {p1 .. p1}, Lorg/eclipse/jdt/internal/core/builder/State;->readRestriction(Ljava/io/DataInputStream;)Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;

    move-result-object v20

    new-instance v4, Lorg/eclipse/core/runtime/Path;

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v4, v11}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v22

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v17, v2

    move-object/from16 v21, v4

    invoke-static/range {v17 .. v23}, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->forLibrary(Ljava/lang/String;JLorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;Lorg/eclipse/core/runtime/IPath;ZLjava/lang/String;)Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    move-result-object v2

    aput-object v2, v3, v0

    goto :goto_13

    :cond_18
    new-instance v2, Lorg/eclipse/core/runtime/Path;

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Lorg/eclipse/core/runtime/IPath;->segmentCount()I

    move-result v3

    if-ne v3, v6, :cond_19

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v2}, Lorg/eclipse/core/resources/IWorkspaceRoot;->getProject(Ljava/lang/String;)Lorg/eclipse/core/resources/IProject;

    move-result-object v2

    goto :goto_12

    :cond_19
    invoke-interface {v8, v2}, Lorg/eclipse/core/resources/IWorkspaceRoot;->getFolder(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IFolder;

    move-result-object v2

    :goto_12
    iget-object v3, v1, Lorg/eclipse/jdt/internal/core/builder/State;->testBinaryLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v4

    invoke-static/range {p1 .. p1}, Lorg/eclipse/jdt/internal/core/builder/State;->readRestriction(Ljava/io/DataInputStream;)Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;

    move-result-object v11

    new-instance v12, Lorg/eclipse/core/runtime/Path;

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v13

    invoke-static {v2, v4, v11, v12, v13}, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->forBinaryFolder(Lorg/eclipse/core/resources/IContainer;ZLorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;Lorg/eclipse/core/runtime/IPath;Z)Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    move-result-object v2

    aput-object v2, v3, v0

    goto :goto_13

    :cond_1a
    iget-object v2, v1, Lorg/eclipse/jdt/internal/core/builder/State;->testBinaryLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    iget-object v3, v1, Lorg/eclipse/jdt/internal/core/builder/State;->testSourceLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    aget-object v3, v3, v4

    aput-object v3, v2, v0

    :goto_13
    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    goto/16 :goto_3

    :cond_1b
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1c

    invoke-interface {v0, v2}, Lorg/eclipse/core/resources/IProject;->getFolder(Ljava/lang/String;)Lorg/eclipse/core/resources/IFolder;

    move-result-object v2

    goto :goto_14

    :cond_1c
    move-object v2, v0

    :goto_14
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1d

    invoke-interface {v0, v4}, Lorg/eclipse/core/resources/IProject;->getFolder(Ljava/lang/String;)Lorg/eclipse/core/resources/IFolder;

    move-result-object v4

    goto :goto_15

    :cond_1d
    move-object v4, v0

    :goto_15
    invoke-static/range {p1 .. p1}, Lorg/eclipse/jdt/internal/core/builder/State;->readNames(Ljava/io/DataInputStream;)[[C

    move-result-object v7

    invoke-static/range {p1 .. p1}, Lorg/eclipse/jdt/internal/core/builder/State;->readNames(Ljava/io/DataInputStream;)[[C

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v13

    invoke-static {v2, v4, v7, v12, v13}, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->forSourceFolder(Lorg/eclipse/core/resources/IContainer;Lorg/eclipse/core/resources/IContainer;[[C[[CZ)Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v4

    if-eqz v4, :cond_1e

    iput-boolean v6, v2, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;->hasIndependentOutputFolder:Z

    :cond_1e
    iget-object v4, v1, Lorg/eclipse/jdt/internal/core/builder/State;->testSourceLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;

    aput-object v2, v4, v3

    add-int/lit8 v3, v3, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    goto/16 :goto_2

    :cond_1f
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    if-eq v2, v6, :cond_25

    if-eq v2, v10, :cond_23

    if-eq v2, v9, :cond_21

    if-eq v2, v5, :cond_20

    goto/16 :goto_17

    :cond_20
    iget-object v2, v1, Lorg/eclipse/jdt/internal/core/builder/State;->binaryLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    new-instance v4, Lorg/eclipse/core/runtime/Path;

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    invoke-interface {v8, v4}, Lorg/eclipse/core/resources/IWorkspaceRoot;->getFile(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IFile;

    move-result-object v4

    invoke-static/range {p1 .. p1}, Lorg/eclipse/jdt/internal/core/builder/State;->readRestriction(Ljava/io/DataInputStream;)Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;

    move-result-object v5

    new-instance v9, Lorg/eclipse/core/runtime/Path;

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v10

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v5, v9, v10, v11}, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->forLibrary(Lorg/eclipse/core/resources/IFile;Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;Lorg/eclipse/core/runtime/IPath;ZLjava/lang/String;)Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    move-result-object v4

    aput-object v4, v2, v3

    goto/16 :goto_17

    :cond_21
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/eclipse/jdt/internal/compiler/util/Util;->isJrt(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    iget-object v2, v1, Lorg/eclipse/jdt/internal/core/builder/State;->binaryLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    invoke-static/range {p1 .. p1}, Lorg/eclipse/jdt/internal/core/builder/State;->readRestriction(Ljava/io/DataInputStream;)Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;

    move-result-object v4

    new-instance v5, Lorg/eclipse/core/runtime/Path;

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v10}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v4, v5, v10}, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->forJrtSystem(Ljava/lang/String;Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;Lorg/eclipse/core/runtime/IPath;Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;

    move-result-object v4

    aput-object v4, v2, v3

    goto :goto_17

    :cond_22
    iget-object v2, v1, Lorg/eclipse/jdt/internal/core/builder/State;->binaryLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v10

    invoke-static/range {p1 .. p1}, Lorg/eclipse/jdt/internal/core/builder/State;->readRestriction(Ljava/io/DataInputStream;)Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;

    move-result-object v12

    new-instance v13, Lorg/eclipse/core/runtime/Path;

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v13, v4}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v14

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v15

    invoke-static/range {v9 .. v15}, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->forLibrary(Ljava/lang/String;JLorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;Lorg/eclipse/core/runtime/IPath;ZLjava/lang/String;)Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    move-result-object v4

    aput-object v4, v2, v3

    goto :goto_17

    :cond_23
    new-instance v2, Lorg/eclipse/core/runtime/Path;

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Lorg/eclipse/core/runtime/IPath;->segmentCount()I

    move-result v4

    if-ne v4, v6, :cond_24

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v2}, Lorg/eclipse/core/resources/IWorkspaceRoot;->getProject(Ljava/lang/String;)Lorg/eclipse/core/resources/IProject;

    move-result-object v2

    goto :goto_16

    :cond_24
    invoke-interface {v8, v2}, Lorg/eclipse/core/resources/IWorkspaceRoot;->getFolder(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IFolder;

    move-result-object v2

    :goto_16
    iget-object v4, v1, Lorg/eclipse/jdt/internal/core/builder/State;->binaryLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v5

    invoke-static/range {p1 .. p1}, Lorg/eclipse/jdt/internal/core/builder/State;->readRestriction(Ljava/io/DataInputStream;)Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;

    move-result-object v9

    new-instance v10, Lorg/eclipse/core/runtime/Path;

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v11

    invoke-static {v2, v5, v9, v10, v11}, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->forBinaryFolder(Lorg/eclipse/core/resources/IContainer;ZLorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;Lorg/eclipse/core/runtime/IPath;Z)Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    move-result-object v2

    aput-object v2, v4, v3

    goto :goto_17

    :cond_25
    iget-object v2, v1, Lorg/eclipse/jdt/internal/core/builder/State;->binaryLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    iget-object v4, v1, Lorg/eclipse/jdt/internal/core/builder/State;->sourceLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    aget-object v4, v4, v5

    aput-object v4, v2, v3

    :goto_17
    iget-object v2, v1, Lorg/eclipse/jdt/internal/core/builder/State;->binaryLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    aget-object v2, v2, v3

    invoke-static/range {p1 .. p1}, Lorg/eclipse/jdt/internal/core/builder/State;->readName(Ljava/io/DataInputStream;)[C

    move-result-object v4

    array-length v5, v4

    if-lez v5, :cond_26

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([C)V

    goto :goto_18

    :cond_26
    const/4 v5, 0x0

    :goto_18
    iput-object v5, v2, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->patchModuleName:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    if-eqz v4, :cond_28

    new-instance v5, Ljava/util/LinkedHashSet;

    invoke-direct {v5, v4}, Ljava/util/LinkedHashSet;-><init>(I)V

    iput-object v5, v2, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->limitModuleNames:Ljava/util/Set;

    const/4 v5, 0x0

    :goto_19
    if-lt v5, v4, :cond_27

    const/4 v9, 0x0

    goto :goto_1a

    :cond_27
    iget-object v9, v2, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->limitModuleNames:Ljava/util/Set;

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_19

    :cond_28
    const/4 v9, 0x0

    iput-object v9, v2, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->limitModuleNames:Ljava/util/Set;

    :goto_1a
    new-instance v4, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdatesByKind;

    invoke-direct {v4}, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdatesByKind;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    if-eqz v5, :cond_2a

    sget-object v10, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;->PACKAGE:Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;

    invoke-virtual {v4, v10, v6}, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdatesByKind;->getList(Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;Z)Ljava/util/List;

    move-result-object v10

    const/4 v11, 0x0

    :goto_1b
    if-lt v11, v5, :cond_29

    goto :goto_1c

    :cond_29
    invoke-static/range {p1 .. p1}, Lorg/eclipse/jdt/internal/core/builder/State;->readName(Ljava/io/DataInputStream;)[C

    move-result-object v12

    invoke-static/range {p1 .. p1}, Lorg/eclipse/jdt/internal/core/builder/State;->readNames(Ljava/io/DataInputStream;)[[C

    move-result-object v13

    new-instance v14, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$AddExports;

    invoke-direct {v14, v12, v13}, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$AddExports;-><init>([C[[C)V

    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_1b

    :cond_2a
    move-object v10, v9

    :goto_1c
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    if-eqz v5, :cond_2b

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;->MODULE:Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;

    invoke-virtual {v4, v5, v6}, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdatesByKind;->getList(Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;Z)Ljava/util/List;

    move-result-object v5

    invoke-static/range {p1 .. p1}, Lorg/eclipse/jdt/internal/core/builder/State;->readName(Ljava/io/DataInputStream;)[C

    move-result-object v11

    new-instance v12, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$AddReads;

    invoke-direct {v12, v11}, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$AddReads;-><init>([C)V

    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    :cond_2b
    move-object v5, v9

    :goto_1d
    if-nez v10, :cond_2c

    if-eqz v5, :cond_2d

    :cond_2c
    iput-object v4, v2, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->updates:Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdatesByKind;

    :cond_2d
    add-int/lit8 v3, v3, 0x1

    move-object v2, v9

    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_2e
    move-object v9, v2

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2f

    invoke-interface {v0, v2}, Lorg/eclipse/core/resources/IProject;->getFolder(Ljava/lang/String;)Lorg/eclipse/core/resources/IFolder;

    move-result-object v2

    goto :goto_1e

    :cond_2f
    move-object v2, v0

    :goto_1e
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_30

    invoke-interface {v0, v4}, Lorg/eclipse/core/resources/IProject;->getFolder(Ljava/lang/String;)Lorg/eclipse/core/resources/IFolder;

    move-result-object v4

    goto :goto_1f

    :cond_30
    move-object v4, v0

    :goto_1f
    invoke-static/range {p1 .. p1}, Lorg/eclipse/jdt/internal/core/builder/State;->readNames(Ljava/io/DataInputStream;)[[C

    move-result-object v7

    invoke-static/range {p1 .. p1}, Lorg/eclipse/jdt/internal/core/builder/State;->readNames(Ljava/io/DataInputStream;)[[C

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v10

    invoke-static {v2, v4, v7, v8, v10}, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->forSourceFolder(Lorg/eclipse/core/resources/IContainer;Lorg/eclipse/core/resources/IContainer;[[C[[CZ)Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v4

    if-eqz v4, :cond_31

    iput-boolean v6, v2, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;->hasIndependentOutputFolder:Z

    :cond_31
    iget-object v4, v1, Lorg/eclipse/jdt/internal/core/builder/State;->sourceLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;

    aput-object v2, v4, v5

    add-int/lit8 v5, v5, 0x1

    move-object v2, v9

    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method private static readName(Ljava/io/DataInputStream;)[C
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    new-array v1, v0, [C

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readChar()C

    move-result v3

    aput-char v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static readNames(Ljava/io/DataInputStream;)[[C
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    new-array v1, v0, [[C

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/builder/State;->readName(Ljava/io/DataInputStream;)[C

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static readRestriction(Ljava/io/DataInputStream;)Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-array v1, v0, [Lorg/eclipse/jdt/internal/compiler/env/AccessRule;

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v0, :cond_1

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, v3, p0}, Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;-><init>([Lorg/eclipse/jdt/internal/compiler/env/AccessRule;BLjava/lang/String;)V

    return-object v0

    :cond_1
    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/builder/State;->readName(Ljava/io/DataInputStream;)[C

    move-result-object v4

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getAccessRuleForProblemId([CI)Lorg/eclipse/jdt/internal/core/ClasspathAccessRule;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private writeName([CLjava/io/DataOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    invoke-virtual {p2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    aget-char v2, p1, v1

    invoke-virtual {p2, v2}, Ljava/io/DataOutputStream;->writeChar(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private writeNames([[CLjava/io/DataOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    invoke-virtual {p2, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    :goto_1
    if-lt v0, v1, :cond_1

    return-void

    :cond_1
    aget-object v2, p1, v0

    invoke-direct {p0, v2, p2}, Lorg/eclipse/jdt/internal/core/builder/State;->writeName([CLjava/io/DataOutputStream;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private writeRestriction(Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;Ljava/io/DataOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;->getAccessRules()[Lorg/eclipse/jdt/internal/compiler/env/AccessRule;

    move-result-object v1

    array-length v2, v1

    invoke-virtual {p2, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    if-eqz v2, :cond_2

    :goto_0
    if-lt v0, v2, :cond_1

    iget-byte v0, p1, Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;->classpathEntryType:B

    invoke-virtual {p2, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;->classpathEntryName:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    aget-object v3, v1, v0

    iget-object v4, v3, Lorg/eclipse/jdt/internal/compiler/env/AccessRule;->pattern:[C

    invoke-direct {p0, v4, p2}, Lorg/eclipse/jdt/internal/core/builder/State;->writeName([CLjava/io/DataOutputStream;)V

    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/env/AccessRule;->problemId:I

    invoke-virtual {p2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public computeStructuralBuildTime(J)J
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-gtz v2, :cond_0

    const-wide/16 v0, 0x1

    add-long/2addr v0, p1

    :cond_0
    return-wide v0
.end method

.method public copyFrom(Lorg/eclipse/jdt/internal/core/builder/State;)V
    .locals 8

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/State;->knownPackageNames:[Ljava/lang/String;

    iget-wide v0, p1, Lorg/eclipse/jdt/internal/core/builder/State;->previousStructuralBuildTime:J

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/core/builder/State;->previousStructuralBuildTime:J

    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/builder/State;->structurallyChangedTypes:Lorg/eclipse/jdt/internal/core/builder/StringSet;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/State;->structurallyChangedTypes:Lorg/eclipse/jdt/internal/core/builder/StringSet;

    iget v0, p1, Lorg/eclipse/jdt/internal/core/builder/State;->buildNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/core/builder/State;->buildNumber:I

    iget-wide v0, p1, Lorg/eclipse/jdt/internal/core/builder/State;->lastStructuralBuildTime:J

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/core/builder/State;->lastStructuralBuildTime:J

    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/builder/State;->structuralBuildTimes:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/State;->structuralBuildTimes:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    :try_start_0
    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/builder/State;->references:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/State;->references:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/builder/State;->typeLocators:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/State;->typeLocators:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    iget-object v1, p1, Lorg/eclipse/jdt/internal/core/builder/State;->references:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->elementSize:I

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/State;->references:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/builder/State;->references:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->keyTable:[Ljava/lang/Object;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->valueTable:[Ljava/lang/Object;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-lt v4, v2, :cond_2

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    iget-object v1, p1, Lorg/eclipse/jdt/internal/core/builder/State;->typeLocators:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->elementSize:I

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/State;->typeLocators:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/builder/State;->typeLocators:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    iget-object v5, p1, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->keyTable:[Ljava/lang/Object;

    iget-object v6, p1, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->valueTable:[Ljava/lang/Object;

    array-length v7, v5

    :goto_1
    if-lt v3, v7, :cond_0

    :goto_2
    return-void

    :cond_0
    aget-object p1, v5, v3

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/State;->typeLocators:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    aget-object v1, v6, v3

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    aget-object v5, v1, v4

    if-eqz v5, :cond_3

    iget-object v6, p0, Lorg/eclipse/jdt/internal/core/builder/State;->references:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    aget-object v7, v0, v4

    invoke-virtual {v6, v5, v7}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public getDefinedTypeNamesFor(Ljava/lang/String;)[[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/State;->references:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lorg/eclipse/jdt/internal/core/builder/AdditionalTypeCollection;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/eclipse/jdt/internal/core/builder/AdditionalTypeCollection;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/builder/AdditionalTypeCollection;->definedTypeNames:[[C

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getReferences()Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/State;->references:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    return-object v0
.end method

.method public getStructurallyChangedTypes(Lorg/eclipse/jdt/internal/core/builder/State;)Lorg/eclipse/jdt/internal/core/builder/StringSet;
    .locals 4

    if-eqz p1, :cond_1

    iget-wide v0, p1, Lorg/eclipse/jdt/internal/core/builder/State;->previousStructuralBuildTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/State;->structuralBuildTimes:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    iget-object v1, p1, Lorg/eclipse/jdt/internal/core/builder/State;->javaProjectName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_0
    iget-wide v0, p1, Lorg/eclipse/jdt/internal/core/builder/State;->previousStructuralBuildTime:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/builder/State;->structurallyChangedTypes:Lorg/eclipse/jdt/internal/core/builder/StringSet;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public isDuplicateLocator(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/State;->typeLocators:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isKnownPackage(Ljava/lang/String;)Z
    .locals 10

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/State;->knownPackageNames:[Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_5

    new-instance v0, Ljava/util/LinkedHashSet;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/builder/State;->typeLocators:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    iget v2, v2, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->elementSize:I

    invoke-direct {v0, v2}, Ljava/util/LinkedHashSet;-><init>(I)V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/builder/State;->typeLocators:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->keyTable:[Ljava/lang/Object;

    array-length v3, v2

    move v4, v1

    :goto_0
    if-lt v4, v3, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/builder/State;->knownPackageNames:[Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_4

    :cond_0
    aget-object v5, v2, v4

    if-eqz v5, :cond_4

    check-cast v5, Ljava/lang/String;

    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, -0x1

    if-ne v7, v9, :cond_1

    :goto_1
    move-object v5, v8

    goto :goto_2

    :cond_1
    invoke-virtual {v5, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    :goto_2
    if-eqz v5, :cond_4

    invoke-virtual {v0, v5}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {v0, v5}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    if-ne v7, v9, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v5, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_4
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    :goto_4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/State;->knownPackageNames:[Ljava/lang/String;

    array-length v0, v0

    move v2, v1

    :goto_5
    if-lt v2, v0, :cond_6

    return v1

    :cond_6
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/builder/State;->knownPackageNames:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 p1, 0x1

    return p1

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_5
.end method

.method public isKnownType(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/State;->typeLocators:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isSourceFolderEmpty(Lorg/eclipse/core/resources/IContainer;)Z
    .locals 5

    invoke-interface {p1}, Lorg/eclipse/core/resources/IContainer;->getProjectRelativePath()Lorg/eclipse/core/runtime/IPath;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/core/runtime/IPath;->addTrailingSeparator()Lorg/eclipse/core/runtime/IPath;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/State;->typeLocators:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->valueTable:[Ljava/lang/Object;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v3, v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    aget-object v4, v0, v3

    if-eqz v4, :cond_1

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public record(Ljava/lang/String;[[[C[[C[[C[CLjava/util/ArrayList;)V
    .locals 2

    invoke-virtual {p6}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    invoke-static {p5, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result p5

    if-eqz p5, :cond_0

    iget-object p5, p0, Lorg/eclipse/jdt/internal/core/builder/State;->references:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    new-instance p6, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;

    invoke-direct {p6, p2, p3, p4}, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;-><init>([[[C[[C[[C)V

    invoke-virtual {p5, p1, p6}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {p6}, Ljava/util/ArrayList;->size()I

    move-result p5

    new-array p5, p5, [[C

    invoke-virtual {p6, p5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object p6, p0, Lorg/eclipse/jdt/internal/core/builder/State;->references:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    new-instance v0, Lorg/eclipse/jdt/internal/core/builder/AdditionalTypeCollection;

    invoke-direct {v0, p5, p2, p3, p4}, Lorg/eclipse/jdt/internal/core/builder/AdditionalTypeCollection;-><init>([[C[[[C[[C[[C)V

    invoke-virtual {p6, p1, v0}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public recordLocatorForType(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/State;->knownPackageNames:[Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v0

    invoke-virtual {p2, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/State;->typeLocators:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public recordStructuralDependency(Lorg/eclipse/core/resources/IProject;Lorg/eclipse/jdt/internal/core/builder/State;)V
    .locals 4

    if-eqz p2, :cond_0

    iget-wide v0, p2, Lorg/eclipse/jdt/internal/core/builder/State;->lastStructuralBuildTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/State;->structuralBuildTimes:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-interface {p1}, Lorg/eclipse/core/resources/IProject;->getName()Ljava/lang/String;

    move-result-object p1

    iget-wide v1, p2, Lorg/eclipse/jdt/internal/core/builder/State;->lastStructuralBuildTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public removeLocator(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/State;->knownPackageNames:[Ljava/lang/String;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/State;->references:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->removeKey(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/State;->typeLocators:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->removeValue(Ljava/lang/Object;)V

    return-void
.end method

.method public removePackage(Lorg/eclipse/core/resources/IResourceDelta;)V
    .locals 3

    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceDelta;->getResource()Lorg/eclipse/core/resources/IResource;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/core/resources/IResource;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v0, 0x2

    if-eq v1, v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceDelta;->getAffectedChildren()[Lorg/eclipse/core/resources/IResourceDelta;

    move-result-object p1

    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_1

    return-void

    :cond_1
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/core/builder/State;->removePackage(Lorg/eclipse/core/resources/IResourceDelta;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Lorg/eclipse/core/resources/IResource;->getProjectRelativePath()Lorg/eclipse/core/runtime/IPath;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/core/runtime/IPath;->lastSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/util/Util;->isJavaLikeFileName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/builder/State;->removeLocator(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public removeQualifiedTypeName(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/State;->knownPackageNames:[Ljava/lang/String;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/State;->typeLocators:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->removeKey(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public tagAsNoopBuild()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/core/builder/State;->buildNumber:I

    return-void
.end method

.method public tagAsStructurallyChanged()V
    .locals 2

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/core/builder/State;->lastStructuralBuildTime:J

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/core/builder/State;->previousStructuralBuildTime:J

    new-instance v0, Lorg/eclipse/jdt/internal/core/builder/StringSet;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/core/builder/StringSet;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/State;->structurallyChangedTypes:Lorg/eclipse/jdt/internal/core/builder/StringSet;

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/core/builder/State;->previousStructuralBuildTime:J

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/internal/core/builder/State;->computeStructuralBuildTime(J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/core/builder/State;->lastStructuralBuildTime:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "State for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/State;->javaProjectName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/eclipse/jdt/internal/core/builder/State;->buildNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " @ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/builder/State;->lastStructuralBuildTime:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public wasNoopBuild()Z
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/core/builder/State;->buildNumber:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public wasStructurallyChanged(Ljava/lang/String;)V
    .locals 3

    .line 4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/State;->structurallyChangedTypes:Lorg/eclipse/jdt/internal/core/builder/StringSet;

    if-eqz v0, :cond_1

    .line 5
    iget v1, v0, Lorg/eclipse/jdt/internal/core/builder/StringSet;->elementSize:I

    sget v2, Lorg/eclipse/jdt/internal/core/builder/State;->MaxStructurallyChangedTypes:I

    if-le v1, v2, :cond_0

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/State;->structurallyChangedTypes:Lorg/eclipse/jdt/internal/core/builder/StringSet;

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/builder/StringSet;->add(Ljava/lang/String;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public wasStructurallyChanged(Lorg/eclipse/core/resources/IProject;Lorg/eclipse/jdt/internal/core/builder/State;)Z
    .locals 2

    if-eqz p2, :cond_1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/State;->structuralBuildTimes:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-interface {p1}, Lorg/eclipse/core/resources/IProject;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 3
    :goto_0
    iget-wide p1, p2, Lorg/eclipse/jdt/internal/core/builder/State;->lastStructuralBuildTime:J

    cmp-long p1, v0, p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public write(Ljava/io/DataOutputStream;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v2, v0, Lorg/eclipse/jdt/internal/core/builder/State;->javaProjectName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget v2, v0, Lorg/eclipse/jdt/internal/core/builder/State;->buildNumber:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-wide v2, v0, Lorg/eclipse/jdt/internal/core/builder/State;->lastStructuralBuildTime:J

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget-object v2, v0, Lorg/eclipse/jdt/internal/core/builder/State;->sourceLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v2, :cond_44

    iget-object v2, v0, Lorg/eclipse/jdt/internal/core/builder/State;->binaryLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    array-length v5, v2

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v2, 0x0

    :goto_1
    const/4 v4, 0x4

    const/4 v6, 0x2

    const/4 v7, 0x3

    const-string v8, ""

    const/4 v9, 0x1

    if-lt v2, v5, :cond_30

    iget-object v2, v0, Lorg/eclipse/jdt/internal/core/builder/State;->testSourceLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;

    array-length v10, v2

    invoke-virtual {v1, v10}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v2, 0x0

    :goto_2
    if-lt v2, v10, :cond_2f

    iget-object v2, v0, Lorg/eclipse/jdt/internal/core/builder/State;->testBinaryLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    array-length v5, v2

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v2, 0x0

    :goto_3
    if-lt v2, v5, :cond_22

    iget-object v2, v0, Lorg/eclipse/jdt/internal/core/builder/State;->structuralBuildTimes:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    iget v2, v2, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->elementSize:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    if-lez v2, :cond_2

    iget-object v4, v0, Lorg/eclipse/jdt/internal/core/builder/State;->structuralBuildTimes:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    iget-object v5, v4, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->keyTable:[Ljava/lang/Object;

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->valueTable:[Ljava/lang/Object;

    array-length v8, v5

    const/4 v10, 0x0

    :goto_4
    if-lt v10, v8, :cond_0

    sget-boolean v4, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->DEBUG:Z

    if-eqz v4, :cond_2

    if-eqz v2, :cond_2

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "structuralBuildNumbers table is inconsistent"

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_5

    :cond_0
    aget-object v11, v5, v10

    if-eqz v11, :cond_1

    add-int/lit8 v2, v2, -0x1

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    aget-object v11, v4, v10

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-virtual {v1, v11, v12}, Ljava/io/DataOutputStream;->writeLong(J)V

    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_2
    :goto_5
    iget-object v2, v0, Lorg/eclipse/jdt/internal/core/builder/State;->references:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    iget v2, v2, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->elementSize:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    new-instance v10, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-direct {v10, v2}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;-><init>(I)V

    const-string v11, "references table is inconsistent"

    if-lez v2, :cond_5

    iget-object v4, v0, Lorg/eclipse/jdt/internal/core/builder/State;->references:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->keyTable:[Ljava/lang/Object;

    array-length v5, v4

    const/4 v8, 0x0

    :goto_6
    if-lt v8, v5, :cond_3

    sget-boolean v4, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->DEBUG:Z

    if-eqz v4, :cond_5

    if-eqz v2, :cond_5

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_7

    :cond_3
    aget-object v12, v4, v8

    if-eqz v12, :cond_4

    add-int/lit8 v2, v2, -0x1

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v1, v12}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget v13, v10, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->elementSize:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_5
    :goto_7
    iget-object v2, v0, Lorg/eclipse/jdt/internal/core/builder/State;->typeLocators:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    iget v2, v2, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->elementSize:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    if-lez v2, :cond_8

    iget-object v4, v0, Lorg/eclipse/jdt/internal/core/builder/State;->typeLocators:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    iget-object v5, v4, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->keyTable:[Ljava/lang/Object;

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->valueTable:[Ljava/lang/Object;

    array-length v8, v5

    const/4 v12, 0x0

    :goto_8
    if-lt v12, v8, :cond_6

    sget-boolean v4, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->DEBUG:Z

    if-eqz v4, :cond_8

    if-eqz v2, :cond_8

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "typeLocators table is inconsistent"

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_9

    :cond_6
    aget-object v13, v5, v12

    if-eqz v13, :cond_7

    add-int/lit8 v2, v2, -0x1

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v1, v13}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    aget-object v13, v4, v12

    invoke-virtual {v10, v13}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v1, v13}, Ljava/io/DataOutputStream;->writeInt(I)V

    :cond_7
    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    :cond_8
    :goto_9
    new-instance v12, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-direct {v12, v7}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;-><init>(I)V

    new-instance v13, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    const/16 v2, 0x1f

    invoke-direct {v13, v2}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;-><init>(I)V

    new-instance v14, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-direct {v14, v2}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;-><init>(I)V

    iget-object v2, v0, Lorg/eclipse/jdt/internal/core/builder/State;->references:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    iget-object v15, v2, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->valueTable:[Ljava/lang/Object;

    array-length v2, v15

    const/4 v4, 0x0

    :goto_a
    if-lt v4, v2, :cond_18

    iget v2, v12, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->elementSize:I

    new-array v5, v2, [[C

    iget-object v7, v12, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->keyTable:[Ljava/lang/Object;

    iget-object v8, v12, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->valueTable:[Ljava/lang/Object;

    array-length v2, v8

    :goto_b
    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_16

    invoke-direct {v0, v5, v1}, Lorg/eclipse/jdt/internal/core/builder/State;->writeNames([[CLjava/io/DataOutputStream;)V

    iget v2, v14, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->elementSize:I

    new-array v4, v2, [[C

    iget-object v2, v14, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->keyTable:[Ljava/lang/Object;

    iget-object v5, v14, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->valueTable:[Ljava/lang/Object;

    array-length v7, v5

    :goto_c
    add-int/lit8 v7, v7, -0x1

    if-gez v7, :cond_14

    invoke-direct {v0, v4, v1}, Lorg/eclipse/jdt/internal/core/builder/State;->writeNames([[CLjava/io/DataOutputStream;)V

    iget v8, v13, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->elementSize:I

    new-array v2, v8, [[[C

    iget-object v4, v13, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->keyTable:[Ljava/lang/Object;

    iget-object v5, v13, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->valueTable:[Ljava/lang/Object;

    array-length v7, v5

    :goto_d
    add-int/lit8 v7, v7, -0x1

    if-gez v7, :cond_12

    invoke-virtual {v1, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v4, 0x0

    :goto_e
    if-lt v4, v8, :cond_10

    iget-object v2, v0, Lorg/eclipse/jdt/internal/core/builder/State;->references:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    iget v2, v2, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->elementSize:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    if-lez v2, :cond_f

    iget-object v4, v0, Lorg/eclipse/jdt/internal/core/builder/State;->references:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->keyTable:[Ljava/lang/Object;

    array-length v5, v4

    const/4 v7, 0x0

    :goto_f
    if-lt v7, v5, :cond_9

    sget-boolean v1, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->DEBUG:Z

    if-eqz v1, :cond_f

    if-eqz v2, :cond_f

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_15

    :cond_9
    aget-object v8, v4, v7

    if-eqz v8, :cond_e

    add-int/lit8 v16, v2, -0x1

    invoke-virtual {v10, v8}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    aget-object v2, v15, v7

    move-object v8, v2

    check-cast v8, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;

    instance-of v2, v8, Lorg/eclipse/jdt/internal/core/builder/AdditionalTypeCollection;

    if-eqz v2, :cond_a

    invoke-virtual {v1, v9}, Ljava/io/DataOutputStream;->writeByte(I)V

    move-object v2, v8

    check-cast v2, Lorg/eclipse/jdt/internal/core/builder/AdditionalTypeCollection;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/core/builder/AdditionalTypeCollection;->definedTypeNames:[[C

    invoke-direct {v0, v2, v1}, Lorg/eclipse/jdt/internal/core/builder/State;->writeNames([[CLjava/io/DataOutputStream;)V

    goto :goto_10

    :cond_a
    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    :goto_10
    iget-object v2, v8, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->qualifiedNameReferences:[[[C

    array-length v3, v2

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v6, 0x0

    :goto_11
    if-lt v6, v3, :cond_d

    iget-object v2, v8, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->simpleNameReferences:[[C

    array-length v3, v2

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v6, 0x0

    :goto_12
    if-lt v6, v3, :cond_c

    iget-object v2, v8, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->rootReferences:[[C

    array-length v3, v2

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v6, 0x0

    :goto_13
    if-lt v6, v3, :cond_b

    move/from16 v2, v16

    goto :goto_14

    :cond_b
    aget-object v8, v2, v6

    invoke-virtual {v12, v8}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v1, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    :cond_c
    aget-object v9, v2, v6

    invoke-virtual {v14, v9}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v1, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    add-int/lit8 v6, v6, 0x1

    const/4 v9, 0x1

    goto :goto_12

    :cond_d
    aget-object v9, v2, v6

    invoke-virtual {v13, v9}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v1, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    add-int/lit8 v6, v6, 0x1

    const/4 v9, 0x1

    goto :goto_11

    :cond_e
    :goto_14
    add-int/lit8 v7, v7, 0x1

    const/4 v6, 0x2

    const/4 v9, 0x1

    goto/16 :goto_f

    :cond_f
    :goto_15
    return-void

    :cond_10
    aget-object v3, v2, v4

    array-length v6, v3

    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v5, 0x0

    :goto_16
    if-lt v5, v6, :cond_11

    add-int/lit8 v4, v4, 0x1

    const/4 v6, 0x2

    const/4 v9, 0x1

    goto/16 :goto_e

    :cond_11
    aget-object v7, v3, v5

    invoke-virtual {v14, v7}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v1, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    :cond_12
    aget-object v3, v5, v7

    if-eqz v3, :cond_13

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v6, v4, v7

    check-cast v6, [[C

    aput-object v6, v2, v3

    :cond_13
    const/4 v6, 0x2

    const/4 v9, 0x1

    goto/16 :goto_d

    :cond_14
    aget-object v3, v5, v7

    if-eqz v3, :cond_15

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v6, v2, v7

    check-cast v6, [C

    aput-object v6, v4, v3

    :cond_15
    const/4 v6, 0x2

    const/4 v9, 0x1

    goto/16 :goto_c

    :cond_16
    aget-object v3, v8, v2

    if-eqz v3, :cond_17

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v4, v7, v2

    check-cast v4, [C

    aput-object v4, v5, v3

    :cond_17
    const/4 v6, 0x2

    const/4 v9, 0x1

    goto/16 :goto_b

    :cond_18
    aget-object v3, v15, v4

    if-eqz v3, :cond_19

    check-cast v3, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;

    iget-object v5, v3, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->rootReferences:[[C

    array-length v6, v5

    const/4 v7, 0x0

    :goto_17
    if-lt v7, v6, :cond_20

    iget-object v8, v3, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->qualifiedNameReferences:[[[C

    array-length v9, v8

    const/4 v5, 0x0

    :goto_18
    if-lt v5, v9, :cond_1c

    iget-object v6, v3, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->simpleNameReferences:[[C

    array-length v7, v6

    const/4 v3, 0x0

    :goto_19
    if-lt v3, v7, :cond_1a

    :cond_19
    move/from16 v16, v2

    goto/16 :goto_1e

    :cond_1a
    aget-object v5, v6, v3

    invoke-virtual {v14, v5}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1b

    iget v8, v14, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->elementSize:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v14, v5, v8}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_1c
    aget-object v6, v8, v5

    invoke-virtual {v13, v6}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1f

    iget v7, v13, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->elementSize:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v13, v6, v7}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    array-length v7, v6

    move/from16 v16, v2

    const/4 v2, 0x0

    :goto_1a
    if-lt v2, v7, :cond_1d

    :goto_1b
    move-object/from16 v17, v3

    goto :goto_1d

    :cond_1d
    move-object/from16 v17, v3

    aget-object v3, v6, v2

    invoke-virtual {v14, v3}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_1e

    move-object/from16 v18, v6

    iget v6, v14, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->elementSize:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v14, v3, v6}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c

    :cond_1e
    move-object/from16 v18, v6

    :goto_1c
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v3, v17

    move-object/from16 v6, v18

    goto :goto_1a

    :cond_1f
    move/from16 v16, v2

    goto :goto_1b

    :goto_1d
    add-int/lit8 v5, v5, 0x1

    move/from16 v2, v16

    move-object/from16 v3, v17

    goto :goto_18

    :cond_20
    move/from16 v16, v2

    move-object/from16 v17, v3

    aget-object v2, v5, v7

    invoke-virtual {v12, v2}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_21

    iget v3, v12, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->elementSize:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_21
    add-int/lit8 v7, v7, 0x1

    move/from16 v2, v16

    move-object/from16 v3, v17

    goto/16 :goto_17

    :goto_1e
    add-int/lit8 v4, v4, 0x1

    move/from16 v2, v16

    const/4 v6, 0x2

    const/4 v9, 0x1

    goto/16 :goto_a

    :cond_22
    iget-object v3, v0, Lorg/eclipse/jdt/internal/core/builder/State;->testBinaryLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    aget-object v3, v3, v2

    instance-of v6, v3, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;

    if-eqz v6, :cond_25

    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v6, v0, Lorg/eclipse/jdt/internal/core/builder/State;->testSourceLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;

    array-length v6, v6

    const/4 v9, 0x0

    :goto_1f
    if-lt v9, v6, :cond_23

    goto/16 :goto_26

    :cond_23
    iget-object v10, v0, Lorg/eclipse/jdt/internal/core/builder/State;->testSourceLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;

    aget-object v10, v10, v9

    if-ne v10, v3, :cond_24

    invoke-virtual {v1, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto/16 :goto_26

    :cond_24
    add-int/lit8 v9, v9, 0x1

    goto :goto_1f

    :cond_25
    instance-of v6, v3, Lorg/eclipse/jdt/internal/core/builder/ClasspathDirectory;

    if-eqz v6, :cond_27

    const/4 v6, 0x2

    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    check-cast v3, Lorg/eclipse/jdt/internal/core/builder/ClasspathDirectory;

    iget-object v6, v3, Lorg/eclipse/jdt/internal/core/builder/ClasspathDirectory;->binaryFolder:Lorg/eclipse/core/resources/IContainer;

    invoke-interface {v6}, Lorg/eclipse/core/resources/IContainer;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-boolean v6, v3, Lorg/eclipse/jdt/internal/core/builder/ClasspathDirectory;->isOutputFolder:Z

    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    iget-object v6, v3, Lorg/eclipse/jdt/internal/core/builder/ClasspathDirectory;->accessRuleSet:Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;

    invoke-direct {v0, v6, v1}, Lorg/eclipse/jdt/internal/core/builder/State;->writeRestriction(Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;Ljava/io/DataOutputStream;)V

    iget-object v6, v3, Lorg/eclipse/jdt/internal/core/builder/ClasspathDirectory;->externalAnnotationPath:Ljava/lang/String;

    if-eqz v6, :cond_26

    goto :goto_20

    :cond_26
    move-object v6, v8

    :goto_20
    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-boolean v3, v3, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->isOnModulePath:Z

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    goto/16 :goto_26

    :cond_27
    instance-of v6, v3, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;

    if-eqz v6, :cond_2b

    check-cast v3, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;

    iget-object v6, v3, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->resource:Lorg/eclipse/core/resources/IFile;

    if-nez v6, :cond_28

    invoke-virtual {v1, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v6, v3, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->zipFilename:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->lastModified()J

    move-result-wide v9

    invoke-virtual {v1, v9, v10}, Ljava/io/DataOutputStream;->writeLong(J)V

    goto :goto_21

    :cond_28
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v6, v3, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->resource:Lorg/eclipse/core/resources/IFile;

    invoke-interface {v6}, Lorg/eclipse/core/resources/IFile;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    :goto_21
    iget-object v6, v3, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->accessRuleSet:Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;

    invoke-direct {v0, v6, v1}, Lorg/eclipse/jdt/internal/core/builder/State;->writeRestriction(Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;Ljava/io/DataOutputStream;)V

    iget-object v6, v3, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->externalAnnotationPath:Ljava/lang/String;

    if-eqz v6, :cond_29

    goto :goto_22

    :cond_29
    move-object v6, v8

    :goto_22
    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-boolean v6, v3, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->isOnModulePath:Z

    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    iget-object v3, v3, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->compliance:Ljava/lang/String;

    if-eqz v3, :cond_2a

    goto :goto_23

    :cond_2a
    move-object v3, v8

    :goto_23
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_26

    :cond_2b
    instance-of v6, v3, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;

    if-eqz v6, :cond_2d

    check-cast v3, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;

    invoke-virtual {v1, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v6, v3, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;->zipFilename:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v6, v3, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;->accessRuleSet:Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;

    invoke-direct {v0, v6, v1}, Lorg/eclipse/jdt/internal/core/builder/State;->writeRestriction(Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;Ljava/io/DataOutputStream;)V

    iget-object v3, v3, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;->externalAnnotationPath:Ljava/lang/String;

    if-eqz v3, :cond_2c

    goto :goto_24

    :cond_2c
    move-object v3, v8

    :goto_24
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_26

    :cond_2d
    check-cast v3, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrtWithReleaseOption;

    invoke-virtual {v1, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v6, v3, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;->zipFilename:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v6, v3, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;->accessRuleSet:Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;

    invoke-direct {v0, v6, v1}, Lorg/eclipse/jdt/internal/core/builder/State;->writeRestriction(Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;Ljava/io/DataOutputStream;)V

    iget-object v6, v3, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;->externalAnnotationPath:Ljava/lang/String;

    if-eqz v6, :cond_2e

    goto :goto_25

    :cond_2e
    move-object v6, v8

    :goto_25
    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v3, v3, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrtWithReleaseOption;->release:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    :goto_26
    add-int/lit8 v2, v2, 0x1

    const/4 v6, 0x2

    const/4 v9, 0x1

    goto/16 :goto_3

    :cond_2f
    iget-object v3, v0, Lorg/eclipse/jdt/internal/core/builder/State;->testSourceLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;

    aget-object v3, v3, v2

    iget-object v5, v3, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;->sourceFolder:Lorg/eclipse/core/resources/IContainer;

    invoke-interface {v5}, Lorg/eclipse/core/resources/IContainer;->getProjectRelativePath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v5, v3, Lorg/eclipse/jdt/internal/core/builder/ClasspathDirectory;->binaryFolder:Lorg/eclipse/core/resources/IContainer;

    invoke-interface {v5}, Lorg/eclipse/core/resources/IContainer;->getProjectRelativePath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v5, v3, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;->inclusionPatterns:[[C

    invoke-direct {v0, v5, v1}, Lorg/eclipse/jdt/internal/core/builder/State;->writeNames([[CLjava/io/DataOutputStream;)V

    iget-object v5, v3, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;->exclusionPatterns:[[C

    invoke-direct {v0, v5, v1}, Lorg/eclipse/jdt/internal/core/builder/State;->writeNames([[CLjava/io/DataOutputStream;)V

    iget-boolean v5, v3, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;->ignoreOptionalProblems:Z

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    iget-boolean v3, v3, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;->hasIndependentOutputFolder:Z

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    add-int/lit8 v2, v2, 0x1

    const/4 v6, 0x2

    const/4 v9, 0x1

    goto/16 :goto_2

    :cond_30
    iget-object v3, v0, Lorg/eclipse/jdt/internal/core/builder/State;->binaryLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    aget-object v3, v3, v2

    instance-of v6, v3, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;

    if-eqz v6, :cond_33

    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v4, v0, Lorg/eclipse/jdt/internal/core/builder/State;->sourceLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;

    array-length v6, v4

    const/4 v4, 0x0

    :goto_27
    if-lt v4, v6, :cond_31

    goto/16 :goto_2c

    :cond_31
    iget-object v7, v0, Lorg/eclipse/jdt/internal/core/builder/State;->sourceLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;

    aget-object v7, v7, v4

    if-ne v7, v3, :cond_32

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    :cond_32
    add-int/lit8 v4, v4, 0x1

    goto :goto_27

    :cond_33
    instance-of v6, v3, Lorg/eclipse/jdt/internal/core/builder/ClasspathDirectory;

    if-eqz v6, :cond_35

    const/4 v6, 0x2

    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    move-object v4, v3

    check-cast v4, Lorg/eclipse/jdt/internal/core/builder/ClasspathDirectory;

    iget-object v6, v4, Lorg/eclipse/jdt/internal/core/builder/ClasspathDirectory;->binaryFolder:Lorg/eclipse/core/resources/IContainer;

    invoke-interface {v6}, Lorg/eclipse/core/resources/IContainer;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-boolean v6, v4, Lorg/eclipse/jdt/internal/core/builder/ClasspathDirectory;->isOutputFolder:Z

    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    iget-object v6, v4, Lorg/eclipse/jdt/internal/core/builder/ClasspathDirectory;->accessRuleSet:Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;

    invoke-direct {v0, v6, v1}, Lorg/eclipse/jdt/internal/core/builder/State;->writeRestriction(Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;Ljava/io/DataOutputStream;)V

    iget-object v6, v4, Lorg/eclipse/jdt/internal/core/builder/ClasspathDirectory;->externalAnnotationPath:Ljava/lang/String;

    if-eqz v6, :cond_34

    move-object v8, v6

    :cond_34
    invoke-virtual {v1, v8}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-boolean v4, v4, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->isOnModulePath:Z

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    goto/16 :goto_2c

    :cond_35
    instance-of v6, v3, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;

    if-eqz v6, :cond_39

    move-object v6, v3

    check-cast v6, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;

    iget-object v9, v6, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->resource:Lorg/eclipse/core/resources/IFile;

    if-nez v9, :cond_36

    invoke-virtual {v1, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v4, v6, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->zipFilename:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->lastModified()J

    move-result-wide v9

    invoke-virtual {v1, v9, v10}, Ljava/io/DataOutputStream;->writeLong(J)V

    goto :goto_28

    :cond_36
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v4, v6, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->resource:Lorg/eclipse/core/resources/IFile;

    invoke-interface {v4}, Lorg/eclipse/core/resources/IFile;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    :goto_28
    iget-object v4, v6, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->accessRuleSet:Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;

    invoke-direct {v0, v4, v1}, Lorg/eclipse/jdt/internal/core/builder/State;->writeRestriction(Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;Ljava/io/DataOutputStream;)V

    iget-object v4, v6, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->externalAnnotationPath:Ljava/lang/String;

    if-eqz v4, :cond_37

    goto :goto_29

    :cond_37
    move-object v4, v8

    :goto_29
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-boolean v4, v6, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->isOnModulePath:Z

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    iget-object v4, v6, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->compliance:Ljava/lang/String;

    if-nez v4, :cond_38

    goto :goto_2a

    :cond_38
    move-object v8, v4

    :goto_2a
    invoke-virtual {v1, v8}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_2c

    :cond_39
    instance-of v4, v3, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;

    if-eqz v4, :cond_3b

    move-object v4, v3

    check-cast v4, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;

    invoke-virtual {v1, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v6, v4, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;->zipFilename:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v6, v4, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;->accessRuleSet:Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;

    invoke-direct {v0, v6, v1}, Lorg/eclipse/jdt/internal/core/builder/State;->writeRestriction(Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;Ljava/io/DataOutputStream;)V

    iget-object v4, v4, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;->externalAnnotationPath:Ljava/lang/String;

    if-eqz v4, :cond_3a

    goto :goto_2b

    :cond_3a
    move-object v4, v8

    :goto_2b
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_2c

    :cond_3b
    move-object v4, v3

    check-cast v4, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrtWithReleaseOption;

    invoke-virtual {v1, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v6, v4, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;->zipFilename:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v6, v4, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;->accessRuleSet:Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;

    invoke-direct {v0, v6, v1}, Lorg/eclipse/jdt/internal/core/builder/State;->writeRestriction(Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;Ljava/io/DataOutputStream;)V

    iget-object v6, v4, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;->externalAnnotationPath:Ljava/lang/String;

    if-eqz v6, :cond_3c

    move-object v8, v6

    :cond_3c
    invoke-virtual {v1, v8}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v4, v4, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrtWithReleaseOption;->release:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    :goto_2c
    iget-object v4, v3, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->patchModuleName:Ljava/lang/String;

    if-nez v4, :cond_3d

    sget-object v4, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    goto :goto_2d

    :cond_3d
    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    :goto_2d
    invoke-direct {v0, v4, v1}, Lorg/eclipse/jdt/internal/core/builder/State;->writeName([CLjava/io/DataOutputStream;)V

    iget-object v4, v3, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->limitModuleNames:Ljava/util/Set;

    if-eqz v4, :cond_3f

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v4, v3, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->limitModuleNames:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3e

    const/4 v6, 0x0

    goto :goto_2f

    :cond_3e
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_2e

    :cond_3f
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    :goto_2f
    iget-object v4, v3, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->updates:Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdatesByKind;

    if-eqz v4, :cond_43

    sget-object v7, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;->PACKAGE:Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;

    invoke-virtual {v4, v7, v6}, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdatesByKind;->getList(Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;Z)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_40

    invoke-interface {v4}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v6, Lorg/eclipse/jdt/internal/core/builder/p;

    invoke-direct {v6}, Lorg/eclipse/jdt/internal/core/builder/p;-><init>()V

    invoke-static {v6}, Ljava/util/stream/Collectors;->groupingBy(Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v6, Lorg/eclipse/jdt/internal/core/builder/q;

    invoke-direct {v6, v0, v1}, Lorg/eclipse/jdt/internal/core/builder/q;-><init>(Lorg/eclipse/jdt/internal/core/builder/State;Ljava/io/DataOutputStream;)V

    invoke-interface {v4, v6}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    const/4 v4, 0x0

    goto :goto_30

    :cond_40
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    :goto_30
    iget-object v3, v3, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->updates:Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdatesByKind;

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;->MODULE:Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;

    invoke-virtual {v3, v6, v4}, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdatesByKind;->getList(Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;Z)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_42

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_31
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_41

    const/4 v6, 0x0

    goto :goto_32

    :cond_41
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/function/Consumer;

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$AddReads;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$AddReads;->getTarget()[C

    move-result-object v4

    invoke-direct {v0, v4, v1}, Lorg/eclipse/jdt/internal/core/builder/State;->writeName([CLjava/io/DataOutputStream;)V

    goto :goto_31

    :cond_42
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_32

    :cond_43
    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    :goto_32
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_44
    const/4 v6, 0x0

    iget-object v3, v0, Lorg/eclipse/jdt/internal/core/builder/State;->sourceLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;

    aget-object v3, v3, v4

    iget-object v5, v3, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;->sourceFolder:Lorg/eclipse/core/resources/IContainer;

    invoke-interface {v5}, Lorg/eclipse/core/resources/IContainer;->getProjectRelativePath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v5, v3, Lorg/eclipse/jdt/internal/core/builder/ClasspathDirectory;->binaryFolder:Lorg/eclipse/core/resources/IContainer;

    invoke-interface {v5}, Lorg/eclipse/core/resources/IContainer;->getProjectRelativePath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v5, v3, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;->inclusionPatterns:[[C

    invoke-direct {v0, v5, v1}, Lorg/eclipse/jdt/internal/core/builder/State;->writeNames([[CLjava/io/DataOutputStream;)V

    iget-object v5, v3, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;->exclusionPatterns:[[C

    invoke-direct {v0, v5, v1}, Lorg/eclipse/jdt/internal/core/builder/State;->writeNames([[CLjava/io/DataOutputStream;)V

    iget-boolean v5, v3, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;->ignoreOptionalProblems:Z

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    iget-boolean v3, v3, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;->hasIndependentOutputFolder:Z

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0
.end method
