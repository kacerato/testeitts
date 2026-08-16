.class public Lorg/eclipse/jdt/internal/core/JrtPackageFragmentRoot;
.super Lorg/eclipse/jdt/internal/core/JarPackageFragmentRoot;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/env/IModulePathEntry;


# static fields
.field public static final workingOnOldClasspath:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field moduleName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/eclipse/jdt/internal/core/JrtPackageFragmentRoot;->workingOnOldClasspath:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/core/runtime/IPath;Ljava/lang/String;Lorg/eclipse/jdt/internal/core/JavaProject;)V
    .locals 0

    invoke-direct {p0, p1, p3}, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRoot;-><init>(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/internal/core/JavaProject;)V

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/JrtPackageFragmentRoot;->moduleName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public computeChildren(Lorg/eclipse/jdt/internal/core/OpenableElementInfo;Lorg/eclipse/core/resources/IResource;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    new-instance p2, Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;

    invoke-direct {p2}, Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;-><init>()V

    sget-object v0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_STRINGS:[Ljava/lang/String;

    sget-object v1, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRoot;->EMPTY_LIST:Ljava/util/ArrayList;

    filled-new-array {v1, v1}, [Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;->put([Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRoot;->jarPath:Lorg/eclipse/core/runtime/IPath;

    invoke-interface {v0}, Lorg/eclipse/core/runtime/IPath;->toFile()Ljava/io/File;

    move-result-object v0

    new-instance v1, Lorg/eclipse/jdt/internal/core/JrtPackageFragmentRoot$1;

    invoke-direct {v1, p0, p2}, Lorg/eclipse/jdt/internal/core/JrtPackageFragmentRoot$1;-><init>(Lorg/eclipse/jdt/internal/core/JrtPackageFragmentRoot;Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;)V

    sget v2, Lorg/eclipse/jdt/internal/compiler/util/JRTUtil;->NOTIFY_ALL:I

    invoke-static {v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/util/JRTUtil;->walkModuleImage(Ljava/io/File;Lorg/eclipse/jdt/internal/compiler/util/JRTUtil$JrtFileVisitor;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error reading modules"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->toStringWithAncestors()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v1, v0}, Lorg/eclipse/jdt/internal/core/util/Util;->log(ILjava/lang/String;)V

    :goto_0
    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRoot;->createChildren(Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;)[Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/OpenableElementInfo;->setChildren([Lorg/eclipse/jdt/core/IJavaElement;)V

    check-cast p1, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRootInfo;

    iput-object p2, p1, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRootInfo;->rawPackageInfo:Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;

    const/4 p1, 0x1

    return p1
.end method

.method public createSourceMapper(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/internal/core/SourceMapper;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/JavaProject;->getClasspathEntryFor(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    check-cast v0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getSourceAttachmentEncoding()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JrtPackageFragmentRoot;->getModule()Lorg/eclipse/jdt/internal/compiler/env/IModule;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-interface {v2}, Lorg/eclipse/jdt/internal/compiler/env/IModule;->name()[C

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    :goto_1
    new-instance v2, Lorg/eclipse/jdt/internal/core/SourceMapper;

    if-nez p2, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {p2}, Lorg/eclipse/core/runtime/IPath;->toOSString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object p2

    const/4 v3, 0x1

    invoke-interface {p2, v3}, Lorg/eclipse/jdt/core/IJavaProject;->getOptions(Z)Ljava/util/Map;

    move-result-object p2

    invoke-direct {v2, p1, v1, p2, v0}, Lorg/eclipse/jdt/internal/core/SourceMapper;-><init>(Lorg/eclipse/core/runtime/IPath;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-object v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/eclipse/jdt/internal/core/JrtPackageFragmentRoot;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lorg/eclipse/jdt/internal/core/JrtPackageFragmentRoot;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JrtPackageFragmentRoot;->moduleName:Ljava/lang/String;

    iget-object v3, p1, Lorg/eclipse/jdt/internal/core/JrtPackageFragmentRoot;->moduleName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRoot;->jarPath:Lorg/eclipse/core/runtime/IPath;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRoot;->jarPath:Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public getElementName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JrtPackageFragmentRoot;->moduleName:Ljava/lang/String;

    return-object v0
.end method

.method public getModule()Lorg/eclipse/jdt/internal/compiler/env/IModule;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRoot;->getModuleDescription()Lorg/eclipse/jdt/core/IModuleDescription;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    check-cast v0, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/env/IModule;
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/util/Util;->log(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getModulesDeclaringPackage(Ljava/lang/String;Ljava/lang/String;)[[C
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JrtPackageFragmentRoot;->moduleName:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getPackageFragment(Ljava/lang/String;)Lorg/eclipse/jdt/core/IPackageFragment;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    filled-new-array {p1}, [[C

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0
.end method

.method public getPackageFragment([Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/PackageFragment;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/core/JarPackageFragment;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/jdt/internal/core/JarPackageFragment;-><init>(Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;[Ljava/lang/String;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRoot;->jarPath:Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JrtPackageFragmentRoot;->moduleName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public ignoreErrorStatus(Lorg/eclipse/core/runtime/IStatus;)Z
    .locals 1

    invoke-interface {p1}, Lorg/eclipse/core/runtime/IStatus;->getCode()I

    move-result p1

    const/16 v0, 0x3ee

    if-ne p1, v0, :cond_0

    sget-object p1, Lorg/eclipse/jdt/internal/core/JrtPackageFragmentRoot;->workingOnOldClasspath:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isComplianceJava9OrHigher()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toStringInfo(ILjava/lang/StringBuffer;Ljava/lang/Object;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->tabString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "<module:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/JrtPackageFragmentRoot;->moduleName:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, ">"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-nez p3, :cond_0

    const-string p1, " (not open)"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    return-void
.end method
