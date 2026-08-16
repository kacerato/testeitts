.class public Lorg/eclipse/jdt/internal/compiler/batch/ClasspathDirectory;
.super Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;
.source "SourceFile"


# instance fields
.field private directoryCache:Ljava/util/Hashtable;

.field private encoding:Ljava/lang/String;

.field private missingPackageHolder:[Ljava/lang/String;

.field private mode:I

.field options:Ljava/util/Map;

.field private packageSecondaryTypes:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;ILorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p4, p5}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;-><init>(Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;Ljava/lang/String;)V

    const/4 p4, 0x1

    new-array p4, p4, [Ljava/lang/String;

    iput-object p4, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathDirectory;->missingPackageHolder:[Ljava/lang/String;

    const/4 p4, 0x0

    iput-object p4, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathDirectory;->packageSecondaryTypes:Ljava/util/Hashtable;

    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathDirectory;->mode:I

    iput-object p6, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathDirectory;->options:Ljava/util/Map;

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->path:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->path:Ljava/lang/String;

    :goto_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->path:Ljava/lang/String;

    sget-object p3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->path:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p4, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->path:Ljava/lang/String;

    :cond_0
    new-instance p1, Ljava/util/Hashtable;

    const/16 p3, 0xb

    invoke-direct {p1, p3}, Ljava/util/Hashtable;-><init>(I)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathDirectory;->directoryCache:Ljava/util/Hashtable;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathDirectory;->encoding:Ljava/lang/String;

    return-void
.end method

.method public static synthetic d(Lorg/eclipse/jdt/internal/compiler/batch/ClasspathDirectory;Ljava/lang/String;Ljava/util/function/Function;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathDirectory;->lambda$0(Ljava/lang/String;Ljava/util/function/Function;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private findClassInternal([CLjava/lang/String;Ljava/lang/String;Z)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;
    .locals 7

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->isPackage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([C)V

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathDirectory;->mode:I

    and-int/lit8 p1, p1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".class"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathDirectory;->doesFileExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v3

    goto :goto_0

    :cond_1
    move p1, v2

    :goto_0
    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathDirectory;->mode:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".java"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathDirectory;->doesFileExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-nez p4, :cond_4

    new-instance p4, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->path:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x6

    invoke-virtual {p3, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    new-instance v2, Lorg/eclipse/jdt/internal/compiler/batch/CompilationUnit;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathDirectory;->encoding:Ljava/lang/String;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->destinationPath:Ljava/lang/String;

    invoke-direct {v2, v0, p4, v3, v4}, Lorg/eclipse/jdt/internal/compiler/batch/CompilationUnit;-><init>([CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->module:Lorg/eclipse/jdt/internal/compiler/env/IModule;

    if-nez v3, :cond_2

    move-object v3, v0

    goto :goto_1

    :cond_2
    invoke-interface {v3}, Lorg/eclipse/jdt/internal/compiler/env/IModule;->name()[C

    move-result-object v3

    :goto_1
    iput-object v3, v2, Lorg/eclipse/jdt/internal/compiler/batch/CompilationUnit;->module:[C

    if-nez p1, :cond_3

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    invoke-virtual {p0, p3}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->fetchAccessRestriction(Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;

    move-result-object p2

    invoke-direct {p1, v2, p2}, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;-><init>(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V

    return-object p1

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->path:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    cmp-long p4, v5, v3

    if-lez p4, :cond_4

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    invoke-virtual {p0, p3}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->fetchAccessRestriction(Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;

    move-result-object p2

    invoke-direct {p1, v2, p2}, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;-><init>(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V

    return-object p1

    :cond_4
    if-eqz p1, :cond_9

    :try_start_0
    new-instance p1, Ljava/lang/StringBuilder;

    iget-object p4, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->path:Ljava/lang/String;

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-direct {p1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->read(Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p4

    if-lez p4, :cond_5

    new-instance p4, Ljava/lang/StringBuilder;

    sget-char v2, Ljava/io/File;->separatorChar:C

    const/16 v3, 0x2f

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p4, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, "/"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_5
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->getName()[C

    move-result-object p2

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p4

    invoke-static {p2, p4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result p2

    if-nez p2, :cond_6

    move-object p1, v0

    :cond_6
    if-eqz p1, :cond_9

    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->moduleName:[C

    if-eqz p2, :cond_7

    goto :goto_2

    :cond_7
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->module:Lorg/eclipse/jdt/internal/compiler/env/IModule;

    if-eqz p2, :cond_8

    invoke-interface {p2}, Lorg/eclipse/jdt/internal/compiler/env/IModule;->name()[C

    move-result-object p2

    goto :goto_2

    :cond_8
    move-object p2, v0

    :goto_2
    new-instance p4, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    invoke-virtual {p0, p3}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->fetchAccessRestriction(Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;

    move-result-object p3

    invoke-direct {p4, p1, p3, p2}, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;-><init>(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;[C)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p4

    :catch_0
    :cond_9
    return-object v0
.end method

.method private findSourceSecondaryType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathDirectory;->packageSecondaryTypes:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathDirectory;->packageSecondaryTypes:Ljava/util/Hashtable;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathDirectory;->packageSecondaryTypes:Ljava/util/Hashtable;

    invoke-virtual {v0, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    if-nez v0, :cond_1

    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathDirectory;->getSecondaryTypes(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathDirectory;->packageSecondaryTypes:Ljava/util/Hashtable;

    invoke-virtual {v1, p2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/batch/CompilationUnit;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathDirectory;->encoding:Ljava/lang/String;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->destinationPath:Ljava/lang/String;

    invoke-direct {v1, p2, p1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/batch/CompilationUnit;-><init>([CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->fetchAccessRestriction(Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;-><init>(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V

    move-object p2, v0

    :cond_2
    return-object p2
.end method

.method private getSecondaryTypes(Ljava/lang/String;)Ljava/util/Hashtable;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathDirectory;->directoryCache:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathDirectory;->missingPackageHolder:[Ljava/lang/String;

    if-eq v1, v2, :cond_c

    if-nez v1, :cond_0

    goto/16 :goto_6

    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->path:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v2

    :goto_0
    if-nez p1, :cond_2

    return-object v0

    :cond_2
    array-length v1, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-lt v4, v1, :cond_3

    return-object v0

    :cond_3
    aget-object v5, p1, v4

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_5

    goto :goto_4

    :cond_5
    const-string v6, ".java"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, ".JAVA"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_4

    :cond_6
    new-instance v6, Lorg/eclipse/jdt/internal/compiler/batch/CompilationUnit;

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathDirectory;->encoding:Ljava/lang/String;

    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->destinationPath:Ljava/lang/String;

    invoke-direct {v6, v2, v5, v7, v8}, Lorg/eclipse/jdt/internal/compiler/batch/CompilationUnit;-><init>([CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    const/16 v9, 0xa

    const/4 v10, 0x1

    invoke-direct {v7, v8, v10, v10, v9}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;-><init>([CIII)V

    new-instance v8, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/DefaultErrorHandlingPolicies;->proceedWithAllProblems()Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;

    move-result-object v9

    new-instance v10, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-object v11, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathDirectory;->options:Ljava/util/Map;

    invoke-direct {v10, v11}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;-><init>(Ljava/util/Map;)V

    new-instance v11, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblemFactory;

    invoke-direct {v11}, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblemFactory;-><init>()V

    invoke-direct {v8, v9, v10, v11}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;-><init>(Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;Lorg/eclipse/jdt/internal/compiler/IProblemFactory;)V

    new-instance v9, Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    invoke-direct {v9, v8, v3}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;-><init>(Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;Z)V

    iput-boolean v3, v9, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->reportSyntaxErrorIsRequired:Z

    invoke-virtual {v9, v6, v7}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->parse(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object v6

    if-eqz v6, :cond_7

    iget-object v6, v6, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->types:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    goto :goto_2

    :cond_7
    move-object v6, v2

    :goto_2
    if-nez v6, :cond_8

    goto :goto_4

    :cond_8
    array-length v7, v6

    move v8, v3

    :goto_3
    if-lt v8, v7, :cond_9

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_9
    aget-object v9, v6, v8

    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->isSecondary()Z

    move-result v10

    if-eqz v10, :cond_a

    iget-object v9, v9, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->name:[C

    goto :goto_5

    :cond_a
    move-object v9, v2

    :goto_5
    if-eqz v9, :cond_b

    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v9}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v10, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_c
    :goto_6
    return-object v0
.end method

.method private synthetic lambda$0(Ljava/lang/String;Ljava/util/function/Function;Ljava/lang/String;)Z
    .locals 4

    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->path:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v1, ".class"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const-string v1, ".java"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/batch/CompilationUnit;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathDirectory;->encoding:Ljava/lang/String;

    invoke-direct {v0, v1, p3, v3}, Lorg/eclipse/jdt/internal/compiler/batch/CompilationUnit;-><init>([CLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    :cond_1
    if-eqz v1, :cond_2

    sget-char p2, Ljava/io/File;->separatorChar:C

    const/16 p3, 0x2e

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    return v2
.end method


# virtual methods
.method public directoryList(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathDirectory;->directoryCache:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathDirectory;->missingPackageHolder:[Ljava/lang/String;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return-object v2

    :cond_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->path:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    :cond_2
    const/4 v4, -0x1

    add-int/2addr v1, v4

    if-le v1, v3, :cond_3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isUpperCase(C)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_3
    if-le v1, v3, :cond_5

    if-ne v3, v4, :cond_4

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathDirectory;->doesFileExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_4
    add-int/lit8 v1, v3, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathDirectory;->doesFileExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    sget-object v0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_STRINGS:[Ljava/lang/String;

    :cond_6
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathDirectory;->directoryCache:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_7
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathDirectory;->directoryCache:Ljava/util/Hashtable;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathDirectory;->missingPackageHolder:[Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2
.end method

.method public doesFileExist(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathDirectory;->directoryList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    array-length v1, p2

    :cond_1
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_2

    return v0

    :cond_2
    aget-object v2, p2, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    return p1
.end method

.method public fetchLinkedJars(Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$ClasspathSectionProblemReporter;)Ljava/util/List;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public findClass([CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathDirectory;->findClass([CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    move-result-object p1

    return-object p1
.end method

.method public findClass([CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;
    .locals 1

    .line 2
    sget-char p3, Ljava/io/File;->separatorChar:C

    const/16 v0, 0x2f

    if-ne p3, v0, :cond_0

    .line 3
    invoke-direct {p0, p1, p2, p4, p5}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathDirectory;->findClassInternal([CLjava/lang/String;Ljava/lang/String;Z)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    invoke-virtual {p2, v0, p3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-virtual {p4, v0, p3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p3

    .line 6
    invoke-direct {p0, p1, p2, p3, p5}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathDirectory;->findClassInternal([CLjava/lang/String;Ljava/lang/String;Z)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    move-result-object p1

    return-object p1
.end method

.method public findSecondaryInClass([CLjava/lang/String;Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;
    .locals 3

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->PACKAGE_INFO_NAME:[C

    invoke-static {v0, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->module:Lorg/eclipse/jdt/internal/compiler/env/IModule;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IModule;->name()[C

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathDirectory;->options:Ljava/util/Map;

    if-eqz v2, :cond_2

    invoke-virtual {p0, p2, p1}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->isPackage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathDirectory;->mode:I

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".java"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathDirectory;->doesFileExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-direct {p0, v0, p2, p3}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathDirectory;->findSourceSecondaryType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    move-result-object v1

    :goto_1
    return-object v1
.end method

.method public findTypeNames(Ljava/lang/String;Ljava/lang/String;)[[[C
    .locals 7

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->isPackage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    new-instance p2, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->path:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_3

    :cond_1
    new-instance v1, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathDirectory$1;

    invoke-direct {v1, p0}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathDirectory$1;-><init>(Lorg/eclipse/jdt/internal/compiler/batch/ClasspathDirectory;)V

    invoke-virtual {p2, v1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_7

    array-length v1, p2

    if-nez v1, :cond_2

    goto :goto_3

    :cond_2
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathDirectory;->getSecondaryTypes(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v0

    add-int/2addr v0, v1

    new-array v3, v0, [[[C

    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-static {v0, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->splitOn(C[C)[[C

    move-result-object p1

    const/4 v4, 0x0

    move v0, v4

    :goto_0
    if-lt v0, v1, :cond_5

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result p2

    if-lez p2, :cond_4

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {p1, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->arrayConcat([[C[C)[[C

    move-result-object v0

    aput-object v0, v3, v1

    move v1, v2

    goto :goto_1

    :cond_4
    :goto_2
    return-object v3

    :cond_5
    aget-object v5, p2, v0

    const/16 v6, 0x2e

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-lez v6, :cond_6

    invoke-virtual {v5, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    :cond_6
    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    invoke-static {p1, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->arrayConcat([[C[C)[[C

    move-result-object v5

    aput-object v5, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    :goto_3
    return-object v0
.end method

.method public getMode()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathDirectory;->mode:I

    return v0
.end method

.method public getModule()Lorg/eclipse/jdt/internal/compiler/env/IModule;
    .locals 3

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->isAutoModule:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->module:Lorg/eclipse/jdt/internal/compiler/env/IModule;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->path:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/env/IModule;->createAutomatic(Ljava/lang/String;ZLjava/util/jar/Manifest;)Lorg/eclipse/jdt/internal/compiler/env/IModule;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->module:Lorg/eclipse/jdt/internal/compiler/env/IModule;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->module:Lorg/eclipse/jdt/internal/compiler/env/IModule;

    return-object v0
.end method

.method public getModulesDeclaringPackage(Ljava/lang/String;Ljava/lang/String;)[[C
    .locals 1

    sget-char p2, Ljava/io/File;->separatorChar:C

    const/16 v0, 0x2f

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathDirectory;->directoryList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->singletonModuleNameIf(Z)[[C

    move-result-object p1

    return-object p1
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->path:Ljava/lang/String;

    return-object v0
.end method

.method public hasAnnotationFileFor(Ljava/lang/String;)Z
    .locals 4

    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".eea"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathDirectory;->doesFileExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    return v2
.end method

.method public hasCUDeclaringPackage(Ljava/lang/String;Ljava/util/function/Function;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Function<",
            "Lorg/eclipse/jdt/internal/compiler/batch/CompilationUnit;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    sget-char v0, Ljava/io/File;->separatorChar:C

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathDirectory;->directoryList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/batch/a;

    invoke-direct {v1, p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/batch/a;-><init>(Lorg/eclipse/jdt/internal/compiler/batch/ClasspathDirectory;Ljava/lang/String;Ljava/util/function/Function;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    return p1
.end method

.method public hasCompilationUnit(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    sget-char p2, Ljava/io/File;->separatorChar:C

    const/16 v0, 0x2f

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathDirectory;->directoryList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_4

    array-length v0, p1

    move v1, p2

    :goto_1
    if-lt v1, v0, :cond_1

    goto :goto_3

    :cond_1
    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".java"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, ".class"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_3
    return p2
.end method

.method public initialize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public normalizedPath()[C
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->normalizedPath:[C

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->path:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->normalizedPath:[C

    sget-char v1, Ljava/io/File;->separatorChar:C

    const/16 v2, 0x5c

    if-ne v1, v2, :cond_0

    const/16 v1, 0x2f

    invoke-static {v0, v2, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replace([CCC)V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->normalizedPath:[C

    return-object v0
.end method

.method public reset()V
    .locals 2

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->reset()V

    new-instance v0, Ljava/util/Hashtable;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathDirectory;->directoryCache:Ljava/util/Hashtable;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ClasspathDirectory "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
