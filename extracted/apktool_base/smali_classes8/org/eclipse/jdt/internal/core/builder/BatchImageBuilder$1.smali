.class Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/core/resources/IResourceVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder;->cleanOutputFolders(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder$1;->this$0:Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(Lorg/eclipse/core/resources/IResource;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v1, v0}, Lorg/eclipse/core/resources/IResource;->setDerived(ZLorg/eclipse/core/runtime/IProgressMonitor;)V

    invoke-interface {p1}, Lorg/eclipse/core/resources/IResource;->getType()I

    move-result p1

    if-eq p1, v1, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
