.class Lorg/eclipse/jdt/internal/core/JavaProject$JImageModuleFragmentBridge;
.super Lorg/eclipse/jdt/internal/core/JarPackageFragmentRoot;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/core/JavaProject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "JImageModuleFragmentBridge"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/JavaProject;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/JavaProject;Lorg/eclipse/core/runtime/IPath;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaProject$JImageModuleFragmentBridge;->this$0:Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-direct {p0, p2, p1}, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRoot;-><init>(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/internal/core/JavaProject;)V

    return-void
.end method


# virtual methods
.method public computeChildren(Lorg/eclipse/jdt/internal/core/OpenableElementInfo;Lorg/eclipse/core/resources/IResource;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public getPackageFragment([Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/PackageFragment;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/JavaProject$JImageModuleFragmentBridge;->getPackageFragment([Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/PackageFragment;

    move-result-object p1

    return-object p1
.end method

.method public getPackageFragment([Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/PackageFragment;
    .locals 3

    .line 2
    new-instance v0, Lorg/eclipse/jdt/internal/core/JrtPackageFragmentRoot;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRoot;->jarPath:Lorg/eclipse/core/runtime/IPath;

    if-nez p2, :cond_0

    .line 3
    const-string p2, "java.base"

    .line 4
    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/JavaProject$JImageModuleFragmentBridge;->this$0:Lorg/eclipse/jdt/internal/core/JavaProject;

    .line 5
    invoke-direct {v0, v1, p2, v2}, Lorg/eclipse/jdt/internal/core/JrtPackageFragmentRoot;-><init>(Lorg/eclipse/core/runtime/IPath;Ljava/lang/String;Lorg/eclipse/jdt/internal/core/JavaProject;)V

    .line 6
    new-instance p2, Lorg/eclipse/jdt/internal/core/JarPackageFragment;

    invoke-direct {p2, v0, p1}, Lorg/eclipse/jdt/internal/core/JarPackageFragment;-><init>(Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;[Ljava/lang/String;)V

    return-object p2
.end method

.method public isModule()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
