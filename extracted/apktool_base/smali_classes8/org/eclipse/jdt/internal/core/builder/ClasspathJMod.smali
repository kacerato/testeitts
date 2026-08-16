.class public Lorg/eclipse/jdt/internal/core/builder/ClasspathJMod;
.super Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;
.source "SourceFile"


# static fields
.field public static CLASSES:[C

.field public static CLASSES_FOLDER:[C

.field private static MODULE_DESCRIPTOR_NAME_LENGTH:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "classes"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJMod;->CLASSES:[C

    const-string v0, "classes/"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJMod;->CLASSES_FOLDER:[C

    const/16 v0, 0x11

    sput v0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJMod;->MODULE_DESCRIPTOR_NAME_LENGTH:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;Lorg/eclipse/core/runtime/IPath;)V
    .locals 7

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;-><init>(Ljava/lang/String;JLorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;Lorg/eclipse/core/runtime/IPath;Z)V

    return-void
.end method


# virtual methods
.method public findClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/function/Predicate;)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;
    .locals 0
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

    invoke-virtual {p0, p2, p3}, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->isPackage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    if-eqz p6, :cond_1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->module:Lorg/eclipse/jdt/internal/compiler/env/IModule;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IModule;->name()[C

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p6, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return-object p2

    :cond_1
    :try_start_0
    new-instance p1, Ljava/lang/String;

    sget-object p3, Lorg/eclipse/jdt/internal/core/builder/ClasspathJMod;->CLASSES_FOLDER:[C

    invoke-virtual {p4}, Ljava/lang/String;->toCharArray()[C

    move-result-object p4

    invoke-static {p3, p4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->append([C[C)[C

    move-result-object p3

    invoke-direct {p1, p3}, Ljava/lang/String;-><init>([C)V

    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->zipFile:Ljava/util/zip/ZipFile;

    invoke-static {p3, p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->read(Ljava/util/zip/ZipFile;Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;

    move-result-object p3

    if-eqz p3, :cond_7

    iget-object p4, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->module:Lorg/eclipse/jdt/internal/compiler/env/IModule;

    if-nez p4, :cond_2

    move-object p4, p2

    goto :goto_0

    :cond_2
    invoke-interface {p4}, Lorg/eclipse/jdt/internal/compiler/env/IModule;->name()[C

    move-result-object p4

    :goto_0
    iget-object p5, p3, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->moduleName:[C

    if-nez p5, :cond_3

    iput-object p4, p3, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->moduleName:[C

    goto :goto_1

    :cond_3
    move-object p4, p5

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p5

    sget-object p6, Lorg/eclipse/jdt/internal/compiler/util/SuffixConstants;->SUFFIX_CLASS:[C

    array-length p6, p6

    sub-int/2addr p5, p6

    const/4 p6, 0x0

    invoke-virtual {p1, p6, p5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iget-object p5, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->externalAnnotationPath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p5, :cond_5

    :try_start_1
    iget-object p6, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->annotationZipFile:Ljava/util/zip/ZipFile;

    if-nez p6, :cond_4

    invoke-static {p5, p2}, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationDecorator;->getAnnotationZipFile(Ljava/lang/String;Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationDecorator$ZipFileProducer;)Ljava/util/zip/ZipFile;

    move-result-object p5

    iput-object p5, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->annotationZipFile:Ljava/util/zip/ZipFile;

    :cond_4
    iget-object p5, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->externalAnnotationPath:Ljava/lang/String;

    iget-object p6, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->annotationZipFile:Ljava/util/zip/ZipFile;

    invoke-static {p3, p5, p1, p6}, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationDecorator;->create(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;Ljava/lang/String;Ljava/lang/String;Ljava/util/zip/ZipFile;)Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    move-result-object p3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_0
    :cond_5
    :try_start_2
    iget-object p5, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->accessRuleSet:Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;

    if-nez p5, :cond_6

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    invoke-direct {p1, p3, p2, p4}, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;-><init>(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;[C)V

    return-object p1

    :cond_6
    new-instance p6, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-virtual {p5, p1}, Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;->getViolatedRestriction([C)Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;

    move-result-object p1

    invoke-direct {p6, p3, p1, p4}, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;-><init>(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;[C)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException; {:try_start_2 .. :try_end_2} :catch_1

    return-object p6

    :catch_1
    :cond_7
    return-object p2
.end method

.method public initializeModule()Lorg/eclipse/jdt/internal/compiler/env/IModule;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/util/zip/ZipFile;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->zipFilename:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/String;

    sget-object v4, Lorg/eclipse/jdt/internal/core/builder/ClasspathJMod;->CLASSES_FOLDER:[C

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "module-info.class"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->read(Ljava/util/zip/ZipFile;Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->getModuleDeclaration()Lorg/eclipse/jdt/internal/compiler/env/IBinaryModule;

    move-result-object v0
    :try_end_1
    .catch Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_2

    :catchall_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_1
    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    :cond_1
    throw v0

    :catch_1
    move-object v1, v0

    :catch_2
    if-eqz v1, :cond_2

    goto :goto_0

    :catch_3
    :cond_2
    :goto_2
    return-object v0
.end method

.method public readJarContent(Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;)Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->zipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/zip/ZipEntry;

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const/16 v3, 0x2f

    invoke-static {v3, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[C)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v5

    sget-object v6, Lorg/eclipse/jdt/internal/core/builder/ClasspathJMod;->CLASSES:[C

    invoke-static {v6, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    array-length v5, v2

    invoke-static {v2, v3, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v3

    if-nez v1, :cond_2

    array-length v5, v3

    sget v6, Lorg/eclipse/jdt/internal/core/builder/ClasspathJMod;->MODULE_DESCRIPTOR_NAME_LENGTH:I

    if-ne v5, v6, :cond_2

    const-string v5, "module-info.class"

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    invoke-static {v3, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    invoke-static {p1, v2, v4}, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->addToPackageSet(Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;Ljava/lang/String;Z)V

    goto :goto_0
.end method
