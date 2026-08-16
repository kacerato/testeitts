.class public Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJrt;
.super Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/env/IMultiModuleEntry;


# static fields
.field protected static ModulesCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jdt/internal/compiler/env/IModule;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field protected annotationPaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected annotationZipFile:Ljava/util/zip/ZipFile;

.field protected closeZipFileAtEnd:Z

.field public file:Ljava/io/File;

.field public final moduleNamesCache:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJrt;->ModulesCache:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;ZLorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p3, p4}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;-><init>(Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJrt;->file:Ljava/io/File;

    iput-boolean p2, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJrt;->closeZipFileAtEnd:Z

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJrt;->moduleNamesCache:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public acceptModule(Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jdt/internal/compiler/env/IModule;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->getModuleDeclaration()Lorg/eclipse/jdt/internal/compiler/env/IBinaryModule;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IModule;->name()[C

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public acceptModule([BLjava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jdt/internal/compiler/env/IModule;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    :try_start_0
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;

    const-string v1, "module-info.class"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;-><init>([B[C)V
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0, v0, p2}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJrt;->acceptModule(Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method public addTypeName(Ljava/util/ArrayList;Ljava/lang/String;I[C)V
    .locals 2

    const/16 v0, 0x2e

    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {p2, p3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    const/16 p3, 0x2f

    invoke-static {p3, p4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->splitOn(C[C)[[C

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    invoke-static {p3, p2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->arrayConcat([[C[C)[[C

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public allModules(Ljava/lang/Iterable;Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Ljava/util/function/Function<",
            "TT;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/function/Function<",
            "TT;",
            "Lorg/eclipse/jdt/internal/compiler/env/IModule;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, "java.se"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_3

    return-object v0

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v5, "java."

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    xor-int/lit8 v6, v5, 0x1

    if-nez v2, :cond_4

    or-int/2addr v6, v5

    :cond_4
    if-eqz v6, :cond_2

    invoke-interface {p3, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/env/IModule;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IModule;->exports()[Lorg/eclipse/jdt/internal/compiler/env/IModule$IPackageExport;

    move-result-object p1

    array-length v5, p1

    move v6, v3

    :goto_2
    if-lt v6, v5, :cond_5

    goto :goto_1

    :cond_5
    aget-object v7, p1, v6

    invoke-interface {v7}, Lorg/eclipse/jdt/internal/compiler/env/IModule$IPackageExport;->isQualified()Z

    move-result v7

    if-nez v7, :cond_6

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_2
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
    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJrt;->findClass([CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    move-result-object p1

    return-object p1
.end method

.method public findClass([CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;
    .locals 3

    .line 2
    invoke-virtual {p0, p2, p3}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->isPackage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return-object p2

    .line 3
    :cond_0
    :try_start_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJrt;->file:Ljava/io/File;

    iget-object p5, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJrt;->moduleNamesCache:Ljava/util/Set;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/tools/r8/internal/Yi1;

    invoke-direct {v0, p5}, Lcom/android/tools/r8/internal/Yi1;-><init>(Ljava/util/Set;)V

    invoke-static {p1, p3, p4, v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->readFromModule(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Predicate;)Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 4
    iget-object p5, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJrt;->annotationPaths:Ljava/util/List;

    if-eqz p5, :cond_4

    .line 5
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p5

    add-int/lit8 p5, p5, -0x6

    const/4 v0, 0x0

    invoke-virtual {p4, v0, p5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p5

    .line 6
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJrt;->annotationPaths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 7
    new-instance p5, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationDecorator;

    invoke-direct {p5, p1, p2}, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationDecorator;-><init>(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;)V

    move-object p1, p5

    goto :goto_0

    .line 8
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 9
    :try_start_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJrt;->annotationZipFile:Ljava/util/zip/ZipFile;

    if-nez v2, :cond_3

    .line 10
    invoke-static {v1, p2}, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationDecorator;->getAnnotationZipFile(Ljava/lang/String;Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationDecorator$ZipFileProducer;)Ljava/util/zip/ZipFile;

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJrt;->annotationZipFile:Ljava/util/zip/ZipFile;

    .line 11
    :cond_3
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJrt;->annotationZipFile:Ljava/util/zip/ZipFile;

    invoke-static {p1, v1, p5, v2}, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationDecorator;->create(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;Ljava/lang/String;Ljava/lang/String;Ljava/util/zip/ZipFile;)Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    move-result-object p1

    .line 12
    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getExternalAnnotationStatus()Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding$ExternalAnnotationStatus;

    move-result-object v1

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding$ExternalAnnotationStatus;->TYPE_IS_ANNOTATED:Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding$ExternalAnnotationStatus;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException; {:try_start_1 .. :try_end_1} :catch_1

    if-ne v1, v2, :cond_1

    .line 13
    :cond_4
    :goto_0
    :try_start_2
    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getModule()[C

    move-result-object p5

    if-nez p5, :cond_5

    if-eqz p3, :cond_5

    .line 14
    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object p5

    .line 15
    :cond_5
    new-instance p3, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    invoke-virtual {p0, p4}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->fetchAccessRestriction(Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;

    move-result-object p4

    invoke-direct {p3, p1, p4, p5}, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;-><init>(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;[C)V
    :try_end_2
    .catch Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    return-object p3

    :catch_1
    :cond_6
    return-object p2
.end method

.method public findTypeNames(Ljava/lang/String;Ljava/lang/String;)[[[C
    .locals 10

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->isPackage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJrt;->file:Ljava/io/File;

    new-instance v9, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJrt$1;

    move-object v2, v9

    move-object v3, p0

    move-object v4, p1

    move-object v5, v0

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJrt$1;-><init>(Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJrt;Ljava/lang/String;Ljava/util/ArrayList;[CLjava/lang/String;)V

    sget p1, Lorg/eclipse/jdt/internal/compiler/util/JRTUtil;->NOTIFY_ALL:I

    invoke-static {v8, v9, p1}, Lorg/eclipse/jdt/internal/compiler/util/JRTUtil;->walkModuleImage(Ljava/io/File;Lorg/eclipse/jdt/internal/compiler/util/JRTUtil$JrtFileVisitor;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eqz p1, :cond_1

    new-array p1, p1, [[[C

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object p1

    :cond_1
    return-object v1
.end method

.method public getMode()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getModule([C)Lorg/eclipse/jdt/internal/compiler/env/IModule;
    .locals 2

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJrt;->ModulesCache:Ljava/util/HashMap;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJrt;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/env/IModule;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getModuleNames(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jdt/internal/compiler/env/IModule;",
            ">;)",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJrt;->ModulesCache:Ljava/util/HashMap;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJrt;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->selectModules(Ljava/util/Set;Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public getModulesDeclaringPackage(Ljava/lang/String;Ljava/lang/String;)[[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJrt;->file:Ljava/io/File;

    invoke-static {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/util/JRTUtil;->getModulesDeclaringPackage(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->toCharArrays(Ljava/util/List;)[[C

    move-result-object p1

    return-object p1
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->path:Ljava/lang/String;

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJrt;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->path:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJrt;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->path:Ljava/lang/String;

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->path:Ljava/lang/String;

    return-object v0
.end method

.method public hasAnnotationFileFor(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public hasCompilationUnit(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJrt;->file:Ljava/io/File;

    invoke-static {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/util/JRTUtil;->hasCompilationUnit(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public hasModule()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public initialize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJrt;->loadModules()V

    return-void
.end method

.method public loadModules()V
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJrt;->ModulesCache:Ljava/util/HashMap;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJrt;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_1

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJrt;->file:Ljava/io/File;

    new-instance v2, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJrt$2;

    invoke-direct {v2, p0, v0}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJrt$2;-><init>(Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJrt;Ljava/util/HashMap;)V

    sget v3, Lorg/eclipse/jdt/internal/compiler/util/JRTUtil;->NOTIFY_MODULES:I

    invoke-static {v1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/util/JRTUtil;->walkModuleImage(Ljava/io/File;Lorg/eclipse/jdt/internal/compiler/util/JRTUtil$JrtFileVisitor;I)V

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJrt;->ModulesCache:Ljava/util/HashMap;

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJrt;->ModulesCache:Ljava/util/HashMap;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJrt;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJrt;->ModulesCache:Ljava/util/HashMap;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJrt;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJrt;->moduleNamesCache:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :catch_0
    :goto_2
    return-void
.end method

.method public normalizedPath()[C
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->normalizedPath:[C

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJrt;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    const/16 v2, 0x5c

    if-ne v1, v2, :cond_0

    const/16 v1, 0x2f

    invoke-static {v0, v2, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replace([CCC)V

    :cond_0
    const/16 v1, 0x2e

    invoke-static {v1, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->lastIndexOf(C[C)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->normalizedPath:[C

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->normalizedPath:[C

    return-object v0
.end method

.method public reset()V
    .locals 2

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJrt;->closeZipFileAtEnd:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJrt;->annotationZipFile:Ljava/util/zip/ZipFile;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJrt;->annotationZipFile:Ljava/util/zip/ZipFile;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJrt;->annotationPaths:Ljava/util/List;

    if-eqz v0, :cond_1

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJrt;->annotationPaths:Ljava/util/List;

    :cond_1
    return-void
.end method

.method public servesModule([C)Z
    .locals 0

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJrt;->getModule([C)Lorg/eclipse/jdt/internal/compiler/env/IModule;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Classpath for JRT System "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJrt;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
