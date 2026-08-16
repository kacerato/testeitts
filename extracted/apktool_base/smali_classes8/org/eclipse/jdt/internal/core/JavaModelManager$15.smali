.class Lorg/eclipse/jdt/internal/core/JavaModelManager$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/IClasspathContainer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/core/JavaModelManager;->recreatePersistedContainer(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/core/runtime/IPath;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private final synthetic val$containerEntries:[Lorg/eclipse/jdt/core/IClasspathEntry;

.field private final synthetic val$containerPath:Lorg/eclipse/core/runtime/IPath;

.field private final synthetic val$project:Lorg/eclipse/jdt/core/IJavaProject;


# direct methods
.method public constructor <init>([Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IJavaProject;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$15;->val$containerEntries:[Lorg/eclipse/jdt/core/IClasspathEntry;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$15;->val$containerPath:Lorg/eclipse/core/runtime/IPath;

    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$15;->val$project:Lorg/eclipse/jdt/core/IJavaProject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getClasspathEntries()[Lorg/eclipse/jdt/core/IClasspathEntry;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$15;->val$containerEntries:[Lorg/eclipse/jdt/core/IClasspathEntry;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Persisted container ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$15;->val$containerPath:Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " for project ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$15;->val$project:Lorg/eclipse/jdt/core/IJavaProject;

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKind()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPath()Lorg/eclipse/core/runtime/IPath;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$15;->val$containerPath:Lorg/eclipse/core/runtime/IPath;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$15;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
