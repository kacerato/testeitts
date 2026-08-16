.class Lorg/eclipse/jdt/core/ClasspathContainerInitializer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/IClasspathContainer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/core/ClasspathContainerInitializer;->getFailureContainer(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IJavaProject;)Lorg/eclipse/jdt/core/IClasspathContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/core/ClasspathContainerInitializer;

.field private final synthetic val$containerPath:Lorg/eclipse/core/runtime/IPath;

.field private final synthetic val$description:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/core/ClasspathContainerInitializer;Ljava/lang/String;Lorg/eclipse/core/runtime/IPath;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/core/ClasspathContainerInitializer$1;->this$0:Lorg/eclipse/jdt/core/ClasspathContainerInitializer;

    iput-object p2, p0, Lorg/eclipse/jdt/core/ClasspathContainerInitializer$1;->val$description:Ljava/lang/String;

    iput-object p3, p0, Lorg/eclipse/jdt/core/ClasspathContainerInitializer$1;->val$containerPath:Lorg/eclipse/core/runtime/IPath;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getClasspathEntries()[Lorg/eclipse/jdt/core/IClasspathEntry;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/eclipse/jdt/core/IClasspathEntry;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/ClasspathContainerInitializer$1;->val$description:Ljava/lang/String;

    return-object v0
.end method

.method public getKind()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPath()Lorg/eclipse/core/runtime/IPath;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/ClasspathContainerInitializer$1;->val$containerPath:Lorg/eclipse/core/runtime/IPath;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/ClasspathContainerInitializer$1;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
