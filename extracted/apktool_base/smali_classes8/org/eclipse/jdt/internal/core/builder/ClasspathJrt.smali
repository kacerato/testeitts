.class public Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;
.super Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/env/IMultiModuleEntry;


# static fields
.field protected static ModulesCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lorg/eclipse/jdt/internal/compiler/env/IModule;",
            ">;>;"
        }
    .end annotation
.end field

.field static final NO_LIMIT_MODULES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static PackageCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field accessRuleSet:Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;

.field protected annotationZipFile:Ljava/util/zip/ZipFile;

.field externalAnnotationPath:Ljava/lang/String;

.field zipFilename:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;->PackageCache:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;->ModulesCache:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;->NO_LIMIT_MODULES:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;Lorg/eclipse/core/runtime/IPath;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;->zipFilename:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;->accessRuleSet:Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;

    if-eqz p3, :cond_0

    .line 5
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;->externalAnnotationPath:Ljava/lang/String;

    .line 6
    :cond_0
    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;->loadModules(Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;)V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;->lambda$0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/env/IModule;
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;->lambda$1(Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/env/IModule;

    move-result-object p0

    return-object p0
.end method

.method public static findPackagesInModules(Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;->zipFilename:Ljava/lang/String;

    sget-object v1, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;->PackageCache:Ljava/util/HashMap;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sget-object v2, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;->PackageCache:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt$1;

    invoke-direct {v0, p0, v2, v1}, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt$1;-><init>(Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;Ljava/io/File;Ljava/util/HashMap;)V

    sget p0, Lorg/eclipse/jdt/internal/compiler/util/JRTUtil;->NOTIFY_PACKAGES:I

    sget v3, Lorg/eclipse/jdt/internal/compiler/util/JRTUtil;->NOTIFY_MODULES:I

    or-int/2addr p0, v3

    invoke-static {v2, v0, p0}, Lorg/eclipse/jdt/internal/compiler/util/JRTUtil;->walkModuleImage(Ljava/io/File;Lorg/eclipse/jdt/internal/compiler/util/JRTUtil$JrtFileVisitor;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v1
.end method

.method private static synthetic lambda$0(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p0
.end method

.method private synthetic lambda$1(Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/env/IModule;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;->getModule([C)Lorg/eclipse/jdt/internal/compiler/env/IModule;

    move-result-object p1

    return-object p1
.end method

.method public static loadModules(Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;)V
    .locals 2

    sget-object v0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;->ModulesCache:Ljava/util/HashMap;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;->zipFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt$2;

    invoke-direct {v1, p0, v0}, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt$2;-><init>(Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;Ljava/io/File;)V

    sget p0, Lorg/eclipse/jdt/internal/compiler/util/JRTUtil;->NOTIFY_MODULES:I

    invoke-static {v0, v1, p0}, Lorg/eclipse/jdt/internal/compiler/util/JRTUtil;->walkModuleImage(Ljava/io/File;Lorg/eclipse/jdt/internal/compiler/util/JRTUtil$JrtFileVisitor;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static resetCaches()V
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;->PackageCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;->ModulesCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method


# virtual methods
.method public acceptModule([B)V
    .locals 3

    if-nez p1, :cond_0

    return-void

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

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->getModuleDeclaration()Lorg/eclipse/jdt/internal/compiler/env/IBinaryModule;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v1, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;->ModulesCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-nez v1, :cond_1

    sget-object v1, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;->ModulesCache:Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v2

    :cond_1
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public addRequired(Ljava/lang/String;Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;->getModule([C)Lorg/eclipse/jdt/internal/compiler/env/IModule;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IModule;->requires()[Lorg/eclipse/jdt/internal/compiler/env/IModule$IModuleReference;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_1

    return-void

    :cond_1
    aget-object v2, p1, v1

    invoke-interface {v2}, Lorg/eclipse/jdt/internal/compiler/env/IModule$IModuleReference;->name()[C

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;->getModule([C)Lorg/eclipse/jdt/internal/compiler/env/IModule;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lorg/eclipse/jdt/internal/compiler/env/IModule;->name()[C

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, v2, p2}, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;->addRequired(Ljava/lang/String;Ljava/util/Set;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public cleanup()V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;->annotationZipFile:Ljava/util/zip/ZipFile;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;->annotationZipFile:Ljava/util/zip/ZipFile;

    :cond_0
    return-void
.end method

.method public createAnswer(Ljava/lang/String;Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;->externalAnnotationPath:Ljava/lang/String;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;->annotationZipFile:Ljava/util/zip/ZipFile;

    if-nez v2, :cond_0

    invoke-static {v1, v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationDecorator;->getAnnotationZipFile(Ljava/lang/String;Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationDecorator$ZipFileProducer;)Ljava/util/zip/ZipFile;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;->annotationZipFile:Ljava/util/zip/ZipFile;

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;->externalAnnotationPath:Ljava/lang/String;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;->annotationZipFile:Ljava/util/zip/ZipFile;

    invoke-static {p2, v1, p1, v2}, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationDecorator;->create(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;Ljava/lang/String;Ljava/lang/String;Ljava/util/zip/ZipFile;)Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;->accessRuleSet:Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;

    if-nez v1, :cond_2

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    invoke-interface {p2}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getModule()[C

    move-result-object v1

    invoke-direct {p1, p2, v0, v1}, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;-><init>(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;[C)V

    return-object p1

    :cond_2
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;->getViolatedRestriction([C)Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;

    move-result-object p1

    invoke-interface {p2}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getModule()[C

    move-result-object v1

    invoke-direct {v0, p2, p1, v1}, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;-><init>(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;[C)V

    :cond_3
    return-object v0
.end method

.method public debugPathString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;->zipFilename:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;->accessRuleSet:Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;

    iget-object v3, p1, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;->accessRuleSet:Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;

    if-eq v1, v3, :cond_3

    if-eqz v1, :cond_2

    invoke-virtual {v1, v3}, Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    return v2

    :cond_3
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;->zipFilename:Ljava/lang/String;

    iget-object v3, p1, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;->zipFilename:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->areAllModuleOptionsEqual(Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;)Z

    move-result p1

    if-eqz p1, :cond_4

    return v0

    :cond_4
    return v2
.end method

.method public findClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 7
    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;->findClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/function/Predicate;)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    move-result-object p1

    return-object p1
.end method

.method public findClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/function/Predicate;)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2, p3}, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;->isPackage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return-object p2

    .line 2
    :cond_0
    :try_start_0
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p1

    sget-object p5, Lorg/eclipse/jdt/internal/compiler/util/SuffixConstants;->SUFFIX_CLASS:[C

    array-length p5, p5

    sub-int/2addr p1, p5

    const/4 p5, 0x0

    invoke-virtual {p4, p5, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance p5, Ljava/io/File;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;->zipFilename:Ljava/lang/String;

    invoke-direct {p5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p5, p3, p4, p6}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->readFromModule(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Predicate;)Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;

    move-result-object p3

    .line 4
    invoke-virtual {p0, p1, p3}, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;->createAnswer(Ljava/lang/String;Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    move-result-object p1
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object p2
.end method

.method public findClass([CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/function/Predicate;)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([C",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;"
        }
    .end annotation

    .line 5
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([C)V

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    .line 6
    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;->findClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/function/Predicate;)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    move-result-object p1

    return-object p1
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;->zipFilename:Ljava/lang/String;

    return-object v0
.end method

.method public getModule([C)Lorg/eclipse/jdt/internal/compiler/env/IModule;
    .locals 3

    sget-object v0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;->ModulesCache:Ljava/util/HashMap;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/env/IModule;

    invoke-interface {v1}, Lorg/eclipse/jdt/internal/compiler/env/IModule;->name()[C

    move-result-object v2

    invoke-static {v2, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getModuleNames(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;->findPackagesInModules(Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;->selectModules(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getModulesDeclaringPackage(Ljava/lang/String;Ljava/lang/String;)[[C
    .locals 2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;->zipFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/util/JRTUtil;->getModulesDeclaringPackage(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->toCharArrays(Ljava/util/List;)[[C

    move-result-object p1

    return-object p1
.end method

.method public getProjectRelativePath()Lorg/eclipse/core/runtime/IPath;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public hasCompilationUnit(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;->zipFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/util/JRTUtil;->hasCompilationUnit(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public hasModule()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;->zipFilename:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method

.method public isPackage(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;->zipFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/util/JRTUtil;->getModulesDeclaringPackage(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public selectModules(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;->NO_LIMIT_MODULES:Ljava/util/Set;

    if-ne p2, v0, :cond_0

    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, p2}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    move-object p2, v0

    goto :goto_0

    :cond_1
    new-instance p2, Lorg/eclipse/jdt/internal/core/builder/a;

    invoke-direct {p2}, Lorg/eclipse/jdt/internal/core/builder/a;-><init>()V

    new-instance v0, Lorg/eclipse/jdt/internal/core/builder/b;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/core/builder/b;-><init>(Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;)V

    invoke-static {p1, p2, v0}, Lorg/eclipse/jdt/internal/core/JavaProject;->internalDefaultRootModules(Ljava/lang/Iterable;Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object p2

    :goto_0
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    return-object p1

    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;->addRequired(Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Classpath jrt file "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;->zipFilename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
