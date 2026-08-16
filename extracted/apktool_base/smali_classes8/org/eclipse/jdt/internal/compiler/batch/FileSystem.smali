.class public Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment;
.implements Lorg/eclipse/jdt/internal/compiler/util/SuffixConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;,
        Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$ClasspathNormalizer;,
        Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$ClasspathSectionProblemReporter;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$org$eclipse$jdt$internal$compiler$env$IModuleAwareNameEnvironment$LookupStrategy:[I

.field public static EMPTY_CLASSPATH:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;",
            ">;"
        }
    .end annotation
.end field

.field private static JRT_CLASSPATH_CACHE:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/io/File;",
            "Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;",
            ">;"
        }
    .end annotation
.end field

.field static final isJRE12Plus:Z


# instance fields
.field protected annotationsFromClasspath:Z

.field protected classpaths:[Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;

.field knownFileNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected module:Lorg/eclipse/jdt/internal/compiler/env/IModule;

.field protected moduleLocations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;",
            ">;"
        }
    .end annotation
.end field

.field moduleUpdates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdatesByKind;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $SWITCH_TABLE$org$eclipse$jdt$internal$compiler$env$IModuleAwareNameEnvironment$LookupStrategy()[I
    .locals 3

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->$SWITCH_TABLE$org$eclipse$jdt$internal$compiler$env$IModuleAwareNameEnvironment$LookupStrategy:[I

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;->values()[Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;->Any:Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;->AnyNamed:Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;->Named:Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;->Unnamed:Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    sput-object v0, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->$SWITCH_TABLE$org$eclipse$jdt$internal$compiler$env$IModuleAwareNameEnvironment$LookupStrategy:[I

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->EMPTY_CLASSPATH:Ljava/util/ArrayList;

    const/4 v0, 0x0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->JRT_CLASSPATH_CACHE:Ljava/util/HashMap;

    const-string v0, "java.specification.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "12"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->isJRE12Plus:Z

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;-><init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->moduleLocations:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->moduleUpdates:Ljava/util/Map;

    .line 5
    array-length v0, p1

    .line 6
    new-array v1, v0, [Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->classpaths:[Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-lt v2, v0, :cond_1

    if-eq v3, v0, :cond_0

    .line 7
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->classpaths:[Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;

    new-array p3, v3, [Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;

    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->classpaths:[Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;

    invoke-static {p1, v1, p3, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    :cond_0
    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->initializeKnownFileNames([Ljava/lang/String;)V

    return-void

    .line 9
    :cond_1
    aget-object v4, p1, v2

    const/4 v5, 0x0

    invoke-static {v4, p3, v5, v5, v5}, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->getClasspath(Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;Ljava/util/Map;Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;

    move-result-object v4

    .line 10
    :try_start_0
    invoke-interface {v4}, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;->initialize()V

    .line 11
    invoke-interface {v4, p4}, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;->getModuleNames(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 12
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->classpaths:[Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v6, v3, 0x1

    :try_start_1
    aput-object v4, v5, v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move v3, v6

    goto :goto_2

    .line 13
    :cond_2
    :try_start_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 14
    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->moduleLocations:Ljava/util/Map;

    invoke-interface {v7, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public constructor <init>([Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;[Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;-><init>([Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;[Ljava/lang/String;ZLjava/util/Set;)V

    return-void
.end method

.method public constructor <init>([Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;[Ljava/lang/String;ZLjava/util/Set;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;",
            "[",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->moduleLocations:Ljava/util/Map;

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->moduleUpdates:Ljava/util/Map;

    .line 18
    array-length v0, p1

    .line 19
    new-array v1, v0, [Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->classpaths:[Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-lt v2, v0, :cond_1

    if-eq v3, v0, :cond_0

    .line 20
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->classpaths:[Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;

    new-array v0, v3, [Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->classpaths:[Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;

    invoke-static {p1, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 21
    :cond_0
    invoke-direct {p0, p4}, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->initializeModuleLocations(Ljava/util/Set;)V

    .line 22
    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->initializeKnownFileNames([Ljava/lang/String;)V

    .line 23
    iput-boolean p3, p0, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->annotationsFromClasspath:Z

    return-void

    .line 24
    :cond_1
    aget-object v4, p1, v2

    .line 25
    :try_start_0
    invoke-interface {v4}, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;->initialize()V

    .line 26
    invoke-interface {v4, p4}, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;->getModuleNames(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 27
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->classpaths:[Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/file/InvalidPathException; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v6, v3, 0x1

    :try_start_1
    aput-object v4, v5, v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/nio/file/InvalidPathException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move v3, v6

    goto :goto_2

    .line 28
    :cond_2
    :try_start_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 29
    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->moduleLocations:Ljava/util/Map;

    invoke-interface {v7, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/nio/file/InvalidPathException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static synthetic a(Lorg/eclipse/jdt/internal/compiler/parser/Parser;Lorg/eclipse/jdt/internal/compiler/batch/CompilationUnit;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->lambda$4(Lorg/eclipse/jdt/internal/compiler/parser/Parser;Lorg/eclipse/jdt/internal/compiler/batch/CompilationUnit;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/env/IModule;
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->lambda$0(Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/env/IModule;

    move-result-object p0

    return-object p0
.end method

.method private static convertPathSeparators(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    sget-char v0, Ljava/io/File;->separatorChar:C

    const/16 v1, 0x5c

    const/16 v2, 0x2f

    if-ne v0, v2, :cond_0

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private findClass(Ljava/lang/String;[CZ[C)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;
    .locals 5

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->internalFindClass(Ljava/lang/String;[CZ[C)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    move-result-object p2

    iget-boolean p3, p0, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->annotationsFromClasspath:Z

    if-eqz p3, :cond_6

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->getBinaryType()Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    move-result-object p3

    instance-of p3, p3, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;

    if-eqz p3, :cond_6

    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->classpaths:[Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;

    array-length p3, p3

    const/4 p4, 0x0

    move v0, p4

    :goto_0
    const/4 v1, 0x0

    if-lt v0, p3, :cond_0

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationDecorator;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->getBinaryType()Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    move-result-object p3

    invoke-direct {p1, p3, v1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationDecorator;-><init>(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;)V

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->setBinaryType(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;)V

    goto :goto_5

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->classpaths:[Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;

    aget-object v2, v2, v0

    invoke-interface {v2, p1}, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;->hasAnnotationFileFor(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    instance-of v3, v2, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJar;

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJar;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJar;->zipFile:Ljava/util/zip/ZipFile;

    goto :goto_1

    :cond_1
    move-object v3, v1

    :goto_1
    if-nez v3, :cond_2

    :try_start_0
    invoke-interface {v2}, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationDecorator;->getAnnotationZipFile(Ljava/lang/String;Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationDecorator$ZipFileProducer;)Ljava/util/zip/ZipFile;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move v1, p4

    goto :goto_4

    :cond_2
    move v1, p4

    :goto_2
    :try_start_1
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->getBinaryType()Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    move-result-object v4

    invoke-interface {v2}, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, p1, v3}, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationDecorator;->create(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;Ljava/lang/String;Ljava/lang/String;Ljava/util/zip/ZipFile;)Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    move-result-object v2

    invoke-virtual {p2, v2}, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->setBinaryType(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_3

    if-eqz v3, :cond_3

    :try_start_2
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_3
    return-object p2

    :catchall_1
    move-exception p1

    move p4, v1

    :goto_3
    if-eqz p4, :cond_4

    if-eqz v3, :cond_4

    :try_start_3
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    :cond_4
    throw p1

    :catch_3
    :goto_4
    if-eqz v1, :cond_5

    if-eqz v3, :cond_5

    :try_start_4
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    :goto_5
    return-object p2
.end method

.method public static getClasspath(Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;)Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    .line 1
    invoke-static/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->getClasspath(Ljava/lang/String;Ljava/lang/String;ZLorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;

    move-result-object p0

    return-object p0
.end method

.method public static getClasspath(Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;Ljava/util/Map;Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    .line 2
    invoke-static/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->getClasspath(Ljava/lang/String;Ljava/lang/String;ZLorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;

    move-result-object p0

    return-object p0
.end method

.method public static getClasspath(Ljava/lang/String;Ljava/lang/String;ZLorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;"
        }
    .end annotation

    .line 3
    new-instance v1, Ljava/io/File;

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->convertPathSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const-string v2, "none"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_4

    .line 5
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_c

    .line 6
    new-instance p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathDirectory;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x3

    move v3, p2

    :goto_0
    if-eqz p4, :cond_2

    if-ne p4, v2, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    invoke-static {p4}, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->convertPathSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    :cond_2
    :goto_1
    move-object v5, p4

    move-object v0, p0

    move-object v2, p1

    move-object v4, p3

    move-object v6, p5

    .line 8
    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathDirectory;-><init>(Ljava/io/File;Ljava/lang/String;ILorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;Ljava/lang/String;Ljava/util/Map;)V

    :cond_3
    :goto_2
    move-object v4, p0

    goto/16 :goto_5

    .line 9
    :cond_4
    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/util/Util;->archiveFormat(Ljava/lang/String;)I

    move-result p5

    if-nez p5, :cond_b

    if-eqz p2, :cond_7

    .line 10
    new-instance p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathSourceJar;

    if-eqz p4, :cond_6

    if-ne p4, v2, :cond_5

    goto :goto_3

    .line 11
    :cond_5
    invoke-static {p4}, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->convertPathSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    :cond_6
    :goto_3
    move-object v5, p4

    const/4 v2, 0x1

    move-object v0, p0

    move-object v3, p3

    move-object v4, p1

    .line 12
    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathSourceJar;-><init>(Ljava/io/File;ZLorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    if-nez p4, :cond_c

    .line 13
    const-string p1, "jrt-fs.jar"

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 14
    sget-object p0, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->JRT_CLASSPATH_CACHE:Ljava/util/HashMap;

    if-nez p0, :cond_8

    .line 15
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    sput-object p0, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->JRT_CLASSPATH_CACHE:Ljava/util/HashMap;

    move-object p0, v4

    goto :goto_4

    .line 16
    :cond_8
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;

    :goto_4
    if-nez p0, :cond_3

    .line 17
    new-instance p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJrt;

    invoke-direct {p0, v1, v3, p3, v4}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJrt;-><init>(Ljava/io/File;ZLorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;Ljava/lang/String;)V

    .line 18
    :try_start_0
    invoke-interface {p0}, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;->initialize()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    :catch_0
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->JRT_CLASSPATH_CACHE:Ljava/util/HashMap;

    invoke-virtual {p1, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_9
    if-nez p6, :cond_a

    .line 20
    new-instance p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJar;

    invoke-direct {p0, v1, v3, p3, v4}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJar;-><init>(Ljava/io/File;ZLorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;Ljava/lang/String;)V

    goto :goto_2

    .line 21
    :cond_a
    new-instance p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathMultiReleaseJar;

    const/4 v2, 0x1

    move-object v0, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathMultiReleaseJar;-><init>(Ljava/io/File;ZLorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_b
    if-ne p5, v3, :cond_c

    .line 22
    new-instance p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJmod;

    invoke-direct {p0, v1, v3, p3, v4}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJmod;-><init>(Ljava/io/File;ZLorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;Ljava/lang/String;)V

    return-object p0

    :cond_c
    :goto_5
    return-object v4
.end method

.method public static getJrtClasspath(Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;Ljava/util/Map;)Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;"
        }
    .end annotation

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJrt;

    new-instance p3, Ljava/io/File;

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->convertPathSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x1

    const/4 v0, 0x0

    invoke-direct {p1, p3, p0, p2, v0}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJrt;-><init>(Ljava/io/File;ZLorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;Ljava/lang/String;)V

    return-object p1
.end method

.method public static getOlderSystemRelease(Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;)Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;
    .locals 2

    sget-boolean v0, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->isJRE12Plus:Z

    if-eqz v0, :cond_0

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJep247Jdk12;

    new-instance v1, Ljava/io/File;

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->convertPathSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, p1, p2}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJep247Jdk12;-><init>(Ljava/io/File;Ljava/lang/String;Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJep247;

    new-instance v1, Ljava/io/File;

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->convertPathSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, p1, p2}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJep247;-><init>(Ljava/io/File;Ljava/lang/String;Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;)V

    :goto_0
    return-object v0
.end method

.method private getParser()Lorg/eclipse/jdt/internal/compiler/parser/Parser;
    .locals 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "org.eclipse.jdt.core.compiler.source"

    const-string v2, "9"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    new-instance v2, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/DefaultErrorHandlingPolicies;->exitOnFirstError()Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;

    move-result-object v3

    new-instance v4, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    invoke-direct {v4, v0}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;-><init>(Ljava/util/Map;)V

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblemFactory;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v0, v5}, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblemFactory;-><init>(Ljava/util/Locale;)V

    invoke-direct {v2, v3, v4, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;-><init>(Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;Lorg/eclipse/jdt/internal/compiler/IProblemFactory;)V

    const/4 v0, 0x0

    invoke-direct {v1, v2, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;-><init>(Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;Z)V

    return-object v1
.end method

.method private initializeKnownFileNames([Ljava/lang/String;)V
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1, v0}, Ljava/util/HashSet;-><init>(I)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->knownFileNames:Ljava/util/Set;

    return-void

    :cond_0
    new-instance v1, Ljava/util/HashSet;

    array-length v2, p1

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->knownFileNames:Ljava/util/Set;

    array-length v1, p1

    :catch_0
    :goto_0
    const/4 v2, -0x1

    add-int/2addr v1, v2

    if-gez v1, :cond_1

    return-void

    :cond_1
    new-instance v3, Ljava/io/File;

    aget-object v4, p1, v1

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v4, 0x2e

    invoke-static {v4, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->lastIndexOf(C[C)I

    move-result v4

    if-eq v4, v2, :cond_2

    invoke-static {v3, v0, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v3

    :cond_2
    const/16 v2, 0x5c

    const/16 v4, 0x2f

    invoke-static {v3, v2, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replace([CCC)V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->classpaths:[Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;

    array-length v2, v2

    const/4 v4, 0x0

    move v5, v0

    :goto_1
    if-lt v5, v2, :cond_4

    if-nez v4, :cond_3

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->knownFileNames:Ljava/util/Set;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([C)V

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->knownFileNames:Ljava/util/Set;

    new-instance v5, Ljava/lang/String;

    array-length v4, v4

    array-length v6, v3

    invoke-static {v3, v4, v6}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>([C)V

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->classpaths:[Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;

    aget-object v6, v6, v5

    invoke-interface {v6}, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;->normalizedPath()[C

    move-result-object v6

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->classpaths:[Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;

    aget-object v7, v7, v5

    instance-of v7, v7, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathDirectory;

    if-eqz v7, :cond_6

    invoke-static {v6, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->prefixEquals([C[C)Z

    move-result v7

    if-eqz v7, :cond_6

    if-nez v4, :cond_5

    goto :goto_2

    :cond_5
    array-length v7, v6

    array-length v8, v4

    if-le v7, v8, :cond_6

    :goto_2
    move-object v4, v6

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method private initializeModuleLocations(Ljava/util/Set;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_2

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->classpaths:[Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;

    array-length v3, v2

    move v4, v1

    :goto_0
    if-lt v4, v3, :cond_0

    goto :goto_4

    :cond_0
    aget-object v5, v2, v4

    invoke-interface {v5, v0}, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;->getModuleNames(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->moduleLocations:Ljava/util/Map;

    invoke-interface {v1, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->classpaths:[Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;

    array-length v4, v3

    move v5, v1

    :goto_2
    if-lt v5, v4, :cond_5

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->classpaths:[Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;

    array-length v7, v6

    move v8, v1

    :goto_3
    if-lt v8, v7, :cond_3

    :goto_4
    return-void

    :cond_3
    aget-object v0, v6, v8

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/batch/g;

    invoke-direct {v1, p0}, Lorg/eclipse/jdt/internal/compiler/batch/g;-><init>(Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;)V

    invoke-interface {v0, p1, v1}, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;->getModuleNames(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_4
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->moduleLocations:Ljava/util/Map;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_5
    aget-object v6, v3, v5

    invoke-interface {v6, v0}, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;->getModuleNames(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_6

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_6
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v2, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6
.end method

.method private internalFindClass(Ljava/lang/String;[CZ[C)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v7, p2

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->knownFileNames:Ljava/util/Set;

    move-object/from16 v2, p1

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    return-object v3

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".class"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    array-length v4, v7

    const/4 v5, 0x0

    if-ne v1, v4, :cond_1

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    :goto_0
    move-object v9, v1

    goto :goto_1

    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    array-length v2, v7

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v8, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :goto_1
    invoke-static/range {p4 .. p4}, Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;->get([C)Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;

    move-result-object v10

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;->Named:Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;

    if-ne v10, v1, :cond_3

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->moduleLocations:Ljava/util/Map;

    if-eqz v1, :cond_2

    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->moduleLocations:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;

    if-eqz v2, :cond_2

    invoke-interface {v2, v7, v9, v1, v8}, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;->findClass([CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    move-result-object v1

    return-object v1

    :cond_2
    return-object v3

    :cond_3
    sget-char v1, Ljava/io/File;->separatorChar:C

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_4

    move-object v11, v9

    goto :goto_2

    :cond_4
    invoke-virtual {v9, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    move-object v11, v4

    :goto_2
    if-ne v9, v11, :cond_a

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->classpaths:[Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;

    array-length v12, v1

    move-object v11, v3

    move v13, v5

    :goto_3
    if-lt v13, v12, :cond_5

    goto :goto_6

    :cond_5
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->classpaths:[Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;

    aget-object v1, v1, v13

    new-instance v2, Lorg/eclipse/jdt/internal/compiler/batch/e;

    invoke-direct {v2}, Lorg/eclipse/jdt/internal/compiler/batch/e;-><init>()V

    invoke-virtual {v10, v1, v2}, Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;->matches(Ljava/lang/Object;Ljava/util/function/Predicate;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_4

    :cond_6
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->classpaths:[Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;

    aget-object v1, v1, v13

    const/4 v4, 0x0

    move-object/from16 v2, p2

    move-object v3, v9

    move-object v5, v8

    move/from16 v6, p3

    invoke-interface/range {v1 .. v6}, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;->findClass([CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->moduleName()[C

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->moduleLocations:Ljava/util/Map;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->moduleName()[C

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->ignoreIfBetter()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v1, v11}, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->isBetter(Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;)Z

    move-result v2

    if-eqz v2, :cond_9

    return-object v1

    :cond_8
    invoke-virtual {v1, v11}, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->isBetter(Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;)Z

    move-result v2

    if-eqz v2, :cond_9

    move-object v11, v1

    :cond_9
    :goto_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_a
    invoke-virtual {v8, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v12

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->classpaths:[Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;

    array-length v13, v1

    move-object v14, v3

    move v15, v5

    :goto_5
    if-lt v15, v13, :cond_b

    move-object v11, v14

    :goto_6
    return-object v11

    :cond_b
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->classpaths:[Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;

    aget-object v1, v1, v15

    new-instance v2, Lorg/eclipse/jdt/internal/compiler/batch/e;

    invoke-direct {v2}, Lorg/eclipse/jdt/internal/compiler/batch/e;-><init>()V

    invoke-virtual {v10, v1, v2}, Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;->matches(Ljava/lang/Object;Ljava/util/function/Predicate;)Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_8

    :cond_c
    instance-of v2, v1, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathDirectory;

    if-nez v2, :cond_d

    const/4 v4, 0x0

    move-object/from16 v2, p2

    move-object v3, v9

    move-object v5, v8

    move/from16 v6, p3

    invoke-interface/range {v1 .. v6}, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;->findClass([CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    move-result-object v1

    goto :goto_7

    :cond_d
    const/4 v4, 0x0

    move-object/from16 v2, p2

    move-object v3, v11

    move-object v5, v12

    move/from16 v6, p3

    invoke-interface/range {v1 .. v6}, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;->findClass([CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    move-result-object v1

    :goto_7
    if-eqz v1, :cond_10

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->moduleName()[C

    move-result-object v2

    if-eqz v2, :cond_e

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->moduleLocations:Ljava/util/Map;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->moduleName()[C

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    goto :goto_8

    :cond_e
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->ignoreIfBetter()Z

    move-result v2

    if-nez v2, :cond_f

    invoke-virtual {v1, v14}, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->isBetter(Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;)Z

    move-result v2

    if-eqz v2, :cond_10

    return-object v1

    :cond_f
    invoke-virtual {v1, v14}, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->isBetter(Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;)Z

    move-result v2

    if-eqz v2, :cond_10

    move-object v14, v1

    :cond_10
    :goto_8
    add-int/lit8 v15, v15, 0x1

    goto :goto_5
.end method

.method private synthetic lambda$0(Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/env/IModule;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->getModuleFromEnvironment([C)Lorg/eclipse/jdt/internal/compiler/env/IModule;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic lambda$4(Lorg/eclipse/jdt/internal/compiler/parser/Parser;Lorg/eclipse/jdt/internal/compiler/batch/CompilationUnit;)Ljava/lang/String;
    .locals 3

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v1, v2}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;-><init>(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;III)V

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/batch/CompilationUnit;->getContents()[C

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->parsePackageDeclaration([CLorg/eclipse/jdt/internal/compiler/CompilationResult;)[[C

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->toString([[C)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public addModuleUpdate(Ljava/lang/String;Ljava/util/function/Consumer;Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Consumer<",
            "Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule;",
            ">;",
            "Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->moduleUpdates:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdatesByKind;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->moduleUpdates:Ljava/util/Map;

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdatesByKind;

    invoke-direct {v1}, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdatesByKind;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {v0, p3, p1}, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdatesByKind;->getList(Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;Z)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public applyModuleUpdates(Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule;Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;)V
    .locals 2

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule;->name()[C

    move-result-object v0

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->UNNAMED:[C

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->moduleUpdates:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdatesByKind;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdatesByKind;->getList(Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;Z)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/Consumer;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public cleanup()V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->classpaths:[Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->classpaths:[Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;

    aget-object v2, v2, v1

    invoke-interface {v2}, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;->reset()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public findType([C[[C[C)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;
    .locals 2

    if-eqz p1, :cond_0

    .line 4
    new-instance v0, Ljava/lang/String;

    const/16 v1, 0x2f

    invoke-static {p2, p1, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[C[CC)[C

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>([C)V

    const/4 p2, 0x0

    .line 5
    invoke-direct {p0, v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->findClass(Ljava/lang/String;[CZ[C)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public findType([[C[C)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Ljava/lang/String;

    const/16 v1, 0x2f

    invoke-static {p1, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    .line 2
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aget-object p1, p1, v1

    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, v0, p1, v1, p2}, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->findClass(Ljava/lang/String;[CZ[C)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public findTypeNames([[C)[[[C
    .locals 10

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2f

    invoke-static {p1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([C)V

    sget-char p1, Ljava/io/File;->separatorChar:C

    if-ne p1, v2, :cond_0

    move-object p1, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v2, p1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    :goto_0
    const/4 v2, 0x0

    if-ne v1, p1, :cond_4

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->classpaths:[Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;

    array-length v3, p1

    move-object v4, v0

    move p1, v2

    :goto_1
    if-lt p1, v3, :cond_1

    move-object v0, v4

    goto :goto_6

    :cond_1
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->classpaths:[Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;

    aget-object v5, v5, p1

    invoke-interface {v5, v1, v0}, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;->findTypeNames(Ljava/lang/String;Ljava/lang/String;)[[[C

    move-result-object v5

    if-eqz v5, :cond_3

    if-nez v4, :cond_2

    move-object v4, v5

    goto :goto_2

    :cond_2
    array-length v6, v4

    array-length v7, v5

    add-int v8, v7, v6

    new-array v8, v8, [[[C

    invoke-static {v4, v2, v8, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v5, v2, v8, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v4, v8

    :cond_3
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->classpaths:[Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;

    array-length v3, v3

    move-object v5, v0

    move v4, v2

    :goto_3
    if-lt v4, v3, :cond_5

    move-object v0, v5

    goto :goto_6

    :cond_5
    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->classpaths:[Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;

    aget-object v6, v6, v4

    instance-of v7, v6, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathDirectory;

    if-nez v7, :cond_6

    invoke-interface {v6, v1, v0}, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;->findTypeNames(Ljava/lang/String;Ljava/lang/String;)[[[C

    move-result-object v6

    goto :goto_4

    :cond_6
    invoke-interface {v6, p1, v0}, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;->findTypeNames(Ljava/lang/String;Ljava/lang/String;)[[[C

    move-result-object v6

    :goto_4
    if-eqz v6, :cond_8

    if-nez v5, :cond_7

    move-object v5, v6

    goto :goto_5

    :cond_7
    array-length v7, v5

    array-length v8, v6

    add-int v9, v8, v7

    new-array v9, v9, [[[C

    invoke-static {v5, v2, v9, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v6, v2, v9, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v5, v9

    :cond_8
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_9
    :goto_6
    return-object v0
.end method

.method public getAllAutomaticModules()[[C
    .locals 4

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->classpaths:[Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;

    array-length v1, v1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [[C

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[C

    return-object v0

    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->classpaths:[Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;

    aget-object v3, v3, v2

    invoke-interface {v3}, Lorg/eclipse/jdt/internal/compiler/env/IModulePathEntry;->isAutomaticModule()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->classpaths:[Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;

    aget-object v3, v3, v2

    invoke-interface {v3}, Lorg/eclipse/jdt/internal/compiler/env/IModulePathEntry;->getModule()Lorg/eclipse/jdt/internal/compiler/env/IModule;

    move-result-object v3

    invoke-interface {v3}, Lorg/eclipse/jdt/internal/compiler/env/IModule;->name()[C

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getModule([C)Lorg/eclipse/jdt/internal/compiler/env/IModule;
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->module:Lorg/eclipse/jdt/internal/compiler/env/IModule;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/IModule;->name()[C

    move-result-object v0

    invoke-static {p1, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->module:Lorg/eclipse/jdt/internal/compiler/env/IModule;

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->moduleLocations:Ljava/util/Map;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([C)V

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->classpaths:[Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_1

    goto :goto_1

    :cond_1
    aget-object v3, v0, v2

    invoke-interface {v3, p1}, Lorg/eclipse/jdt/internal/compiler/env/IModulePathEntry;->getModule([C)Lorg/eclipse/jdt/internal/compiler/env/IModule;

    move-result-object v3

    if-eqz v3, :cond_2

    return-object v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getModuleFromEnvironment([C)Lorg/eclipse/jdt/internal/compiler/env/IModule;
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->module:Lorg/eclipse/jdt/internal/compiler/env/IModule;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/IModule;->name()[C

    move-result-object v0

    invoke-static {p1, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->module:Lorg/eclipse/jdt/internal/compiler/env/IModule;

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->classpaths:[Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    aget-object v3, v0, v2

    invoke-interface {v3, p1}, Lorg/eclipse/jdt/internal/compiler/env/IModulePathEntry;->getModule([C)Lorg/eclipse/jdt/internal/compiler/env/IModule;

    move-result-object v3

    if-eqz v3, :cond_2

    return-object v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getModulesDeclaringPackage([[C[C[C)[[C
    .locals 7

    new-instance v0, Ljava/lang/String;

    const/16 v1, 0x2f

    invoke-static {p1, p2, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[C[CC)[C

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    invoke-static {p3}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3}, Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;->get([C)Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;

    move-result-object p2

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;->Named:Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;

    const/4 v2, 0x0

    if-ne p2, v1, :cond_1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->moduleLocations:Ljava/util/Map;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;

    if-eqz p2, :cond_0

    invoke-interface {p2, v0, p1}, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;->isPackage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    filled-new-array {p3}, [[C

    move-result-object p1

    return-object p1

    :cond_0
    return-object v2

    :cond_1
    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->classpaths:[Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;

    array-length v1, p3

    const/4 v3, 0x0

    move-object v4, v2

    :goto_0
    if-lt v3, v1, :cond_2

    return-object v4

    :cond_2
    aget-object v5, p3, v3

    new-instance v6, Lorg/eclipse/jdt/internal/compiler/batch/e;

    invoke-direct {v6}, Lorg/eclipse/jdt/internal/compiler/batch/e;-><init>()V

    invoke-virtual {p2, v5, v6}, Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;->matches(Ljava/lang/Object;Ljava/util/function/Predicate;)Z

    move-result v6

    if-eqz v6, :cond_5

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;->Unnamed:Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;

    if-ne p2, v6, :cond_3

    invoke-interface {v5, v0, p1}, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;->isPackage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->UNNAMED:[C

    filled-new-array {p1}, [[C

    move-result-object p1

    return-object p1

    :cond_3
    invoke-interface {v5, v0, v2}, Lorg/eclipse/jdt/internal/compiler/env/IModulePathEntry;->getModulesDeclaringPackage(Ljava/lang/String;Ljava/lang/String;)[[C

    move-result-object v5

    if-eqz v5, :cond_5

    if-nez v4, :cond_4

    move-object v4, v5

    goto :goto_1

    :cond_4
    invoke-static {v4, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->arrayConcat([[C[[C)[[C

    move-result-object v4

    :cond_5
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public hasCompilationUnit([[C[CZ)Z
    .locals 5

    const/16 v0, 0x2f

    invoke-static {p1, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;->get([C)Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;

    move-result-object p2

    if-eqz p3, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->getParser()Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Lorg/eclipse/jdt/internal/compiler/batch/f;

    invoke-direct {v2, v1}, Lorg/eclipse/jdt/internal/compiler/batch/f;-><init>(Lorg/eclipse/jdt/internal/compiler/parser/Parser;)V

    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->$SWITCH_TABLE$org$eclipse$jdt$internal$compiler$env$IModuleAwareNameEnvironment$LookupStrategy()[I

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v1, v1, v3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v4, :cond_3

    move p3, v3

    :goto_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->classpaths:[Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;

    array-length v2, v1

    if-lt p3, v2, :cond_1

    return v3

    :cond_1
    aget-object v1, v1, p3

    new-instance v2, Lorg/eclipse/jdt/internal/compiler/batch/e;

    invoke-direct {v2}, Lorg/eclipse/jdt/internal/compiler/batch/e;-><init>()V

    invoke-virtual {p2, v1, v2}, Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;->matches(Ljava/lang/Object;Ljava/util/function/Predicate;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1, p1, v0}, Lorg/eclipse/jdt/internal/compiler/env/IModulePathEntry;->hasCompilationUnit(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v4

    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_3
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->moduleLocations:Ljava/util/Map;

    if-eqz p2, :cond_5

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;

    if-eqz p2, :cond_5

    if-eqz p3, :cond_4

    invoke-interface {p2, p1, v2}, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;->hasCUDeclaringPackage(Ljava/lang/String;Ljava/util/function/Function;)Z

    move-result p1

    goto :goto_2

    :cond_4
    invoke-interface {p2, p1, v0}, Lorg/eclipse/jdt/internal/compiler/env/IModulePathEntry;->hasCompilationUnit(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    :goto_2
    return p1

    :cond_5
    return v3
.end method

.method public scanForModules(Lorg/eclipse/jdt/internal/compiler/parser/Parser;)V
    .locals 6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->classpaths:[Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_0

    return-void

    :cond_0
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->classpaths:[Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;

    aget-object v4, v4, v2

    invoke-interface {v4}, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->classpaths:[Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;

    aget-object v4, v4, v2

    const/4 v5, 0x0

    invoke-static {v4, v3, p1, v1, v5}, Lorg/eclipse/jdt/internal/compiler/batch/ModuleFinder;->scanForModule(Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;Ljava/io/File;Lorg/eclipse/jdt/internal/compiler/parser/Parser;ZLjava/lang/String;)Lorg/eclipse/jdt/internal/compiler/env/IModule;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->moduleLocations:Ljava/util/Map;

    invoke-interface {v3}, Lorg/eclipse/jdt/internal/compiler/env/IModule;->name()[C

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->classpaths:[Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;

    aget-object v5, v5, v2

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
