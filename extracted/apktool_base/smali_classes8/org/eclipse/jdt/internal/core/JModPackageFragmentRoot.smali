.class public Lorg/eclipse/jdt/internal/core/JModPackageFragmentRoot;
.super Lorg/eclipse/jdt/internal/core/JarPackageFragmentRoot;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/eclipse/core/resources/IResource;Lorg/eclipse/jdt/internal/core/JavaProject;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRoot;-><init>(Lorg/eclipse/core/resources/IResource;Lorg/eclipse/jdt/internal/core/JavaProject;)V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/internal/core/JavaProject;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRoot;-><init>(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/internal/core/JavaProject;)V

    return-void
.end method


# virtual methods
.method public getClassFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJMod;->CLASSES_FOLDER:[C

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-static {v0, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->append([C[C)[C

    move-result-object p1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public initRawPackageInfo(Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    sget-object v0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJMod;->CLASSES_FOLDER:[C

    invoke-static {v0, p2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->prefixEquals([C[C)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJMod;->CLASSES_FOLDER:[C

    array-length v0, v0

    array-length v1, p2

    invoke-static {p2, v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object p2

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>([C)V

    invoke-super {p0, p1, v0, p3, p4}, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRoot;->initRawPackageInfo(Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method
