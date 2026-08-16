.class Lorg/eclipse/jdt/internal/core/PackageFragmentInfo;
.super Lorg/eclipse/jdt/internal/core/OpenableElementInfo;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/OpenableElementInfo;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/OpenableElementInfo;->nonJavaResources:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public containsJavaResources()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/OpenableElementInfo;->children:[Lorg/eclipse/jdt/core/IJavaElement;

    array-length v0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getNonJavaResources(Lorg/eclipse/core/resources/IResource;Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;)[Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/OpenableElementInfo;->nonJavaResources:[Ljava/lang/Object;

    if-nez v0, :cond_0

    :try_start_0
    check-cast p1, Lorg/eclipse/core/resources/IContainer;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->fullInclusionPatternChars()[[C

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->fullExclusionPatternChars()[[C

    move-result-object v1

    invoke-static {p2, p1, v0, v1}, Lorg/eclipse/jdt/internal/core/PackageFragmentRootInfo;->computeFolderNonJavaResources(Lorg/eclipse/jdt/core/IPackageFragmentRoot;Lorg/eclipse/core/resources/IContainer;[[C[[C)[Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v0, p1

    goto :goto_1

    :catch_0
    sget-object p1, Lorg/eclipse/jdt/internal/core/JavaElementInfo;->NO_NON_JAVA_RESOURCES:[Ljava/lang/Object;

    goto :goto_0

    :goto_1
    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/OpenableElementInfo;->nonJavaResources:[Ljava/lang/Object;

    :cond_0
    return-object v0
.end method
