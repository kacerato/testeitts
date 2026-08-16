.class Lorg/eclipse/jdt/internal/core/ExternalFoldersManager$1InitializeFolders;
.super Lorg/eclipse/core/resources/WorkspaceJob;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InitializeFolders"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager$1InitializeFolders;->this$0:Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;

    const-string p1, "Initialize external folders"

    invoke-direct {p0, p1}, Lorg/eclipse/core/resources/WorkspaceJob;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public belongsTo(Ljava/lang/Object;)Z
    .locals 1

    const-class v0, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager$1InitializeFolders;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public runInWorkspace(Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/core/runtime/IStatus;
    .locals 0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager$1InitializeFolders;->this$0:Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;->access$0(Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;)Ljava/util/Map;

    sget-object p1, Lorg/eclipse/core/runtime/Status;->OK_STATUS:Lorg/eclipse/core/runtime/IStatus;

    return-object p1
.end method
