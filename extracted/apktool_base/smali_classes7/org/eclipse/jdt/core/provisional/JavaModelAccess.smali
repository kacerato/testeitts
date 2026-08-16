.class public Lorg/eclipse/jdt/core/provisional/JavaModelAccess;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAutomaticModuleDescription(Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/core/IModuleDescription;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    check-cast p0, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getAutomaticModuleDescription()Lorg/eclipse/jdt/core/IModuleDescription;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal kind of java element: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    check-cast p0, Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getAutomaticModuleDescription()Lorg/eclipse/jdt/core/IModuleDescription;

    move-result-object p0

    return-object p0
.end method

.method public static getRequiredModules(Lorg/eclipse/jdt/core/IModuleDescription;)[Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-interface {p0}, Lorg/eclipse/jdt/core/IModuleDescription;->getRequiredModuleNames()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isSystemModule(Lorg/eclipse/jdt/core/IModuleDescription;)Z
    .locals 1

    const/4 v0, 0x3

    invoke-interface {p0, v0}, Lorg/eclipse/jdt/core/IJavaElement;->getAncestor(I)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p0

    check-cast p0, Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    instance-of p0, p0, Lorg/eclipse/jdt/internal/core/JrtPackageFragmentRoot;

    return p0
.end method
