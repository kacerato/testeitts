.class Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker$DirectoryNode;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DirectoryNode"
.end annotation


# instance fields
.field children:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/eclipse/core/runtime/IPath;",
            "Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker$DirectoryNode;",
            ">;"
        }
    .end annotation
.end field

.field classFiles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/eclipse/core/runtime/IPath;",
            "Lorg/eclipse/jdt/internal/core/ClassFile;",
            ">;"
        }
    .end annotation
.end field

.field modelRoot:Lorg/eclipse/jdt/core/IPackageFragmentRoot;

.field parent:Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker$DirectoryNode;

.field path:Lorg/eclipse/core/runtime/IPath;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker$DirectoryNode;Lorg/eclipse/core/runtime/IPath;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker$DirectoryNode;->parent:Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker$DirectoryNode;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker$DirectoryNode;->path:Lorg/eclipse/core/runtime/IPath;

    return-void
.end method


# virtual methods
.method public getChildren()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lorg/eclipse/core/runtime/IPath;",
            "Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker$DirectoryNode;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker$DirectoryNode;->children:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker$DirectoryNode;->children:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker$DirectoryNode;->children:Ljava/util/Map;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker$DirectoryNode;->children:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker$DirectoryNode;->classFiles:Ljava/util/Map;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public numClassFiles()I
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker$DirectoryNode;->classFiles:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker$DirectoryNode;->children:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker$DirectoryNode;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker$DirectoryNode;->numClassFiles()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method public registerClassFile(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/internal/core/ClassFile;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker$DirectoryNode;->classFiles:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker$DirectoryNode;->classFiles:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker$DirectoryNode;->classFiles:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker$DirectoryNode;->modelRoot:Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    if-nez p1, :cond_1

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/Openable;->getPackageFragmentRoot()Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker$DirectoryNode;->modelRoot:Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker$DirectoryNode;->classFiles:Ljava/util/Map;

    if-eqz v1, :cond_0

    const-string v1, "annotation base "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const-string v1, "directory\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker$DirectoryNode;->children:Ljava/util/Map;

    if-eqz v1, :cond_1

    const-string v1, "\twith "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker$DirectoryNode;->children:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " children\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    const-string v1, "\t#classFiles: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker$DirectoryNode;->numClassFiles()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unregisterClassFile(Lorg/eclipse/core/runtime/IPath;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker$DirectoryNode;->classFiles:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker$DirectoryNode;->classFiles:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker$DirectoryNode;->parent:Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker$DirectoryNode;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker$DirectoryNode;->unregisterDirectory(Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker$DirectoryNode;)V

    :cond_0
    return-void
.end method

.method public unregisterDirectory(Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker$DirectoryNode;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker$DirectoryNode;->children:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker$DirectoryNode;->path:Lorg/eclipse/core/runtime/IPath;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker$DirectoryNode;->children:Ljava/util/Map;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker$DirectoryNode;->parent:Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker$DirectoryNode;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker$DirectoryNode;->unregisterDirectory(Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker$DirectoryNode;)V

    :cond_2
    return-void
.end method
