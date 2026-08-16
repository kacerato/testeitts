.class Lorg/eclipse/jdt/internal/core/JavaModelManager$20;
.super Lorg/eclipse/core/runtime/jobs/Job;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/core/JavaModelManager;->startup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/JavaModelManager;

.field private final synthetic val$workspace:Lorg/eclipse/core/resources/IWorkspace;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/JavaModelManager;Ljava/lang/String;Lorg/eclipse/core/resources/IWorkspace;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$20;->this$0:Lorg/eclipse/jdt/internal/core/JavaModelManager;

    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$20;->val$workspace:Lorg/eclipse/core/resources/IWorkspace;

    invoke-direct {p0, p2}, Lorg/eclipse/core/runtime/jobs/Job;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$0(Lorg/eclipse/jdt/internal/core/JavaModelManager$20;)Lorg/eclipse/jdt/internal/core/JavaModelManager;
    .locals 0

    iget-object p0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$20;->this$0:Lorg/eclipse/jdt/internal/core/JavaModelManager;

    return-object p0
.end method


# virtual methods
.method public run(Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/core/runtime/IStatus;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$20;->val$workspace:Lorg/eclipse/core/resources/IWorkspace;

    new-instance v1, Lorg/eclipse/jdt/internal/core/JavaModelManager$20$1;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$20;->val$workspace:Lorg/eclipse/core/resources/IWorkspace;

    invoke-direct {v1, p0, v2}, Lorg/eclipse/jdt/internal/core/JavaModelManager$20$1;-><init>(Lorg/eclipse/jdt/internal/core/JavaModelManager$20;Lorg/eclipse/core/resources/IWorkspace;)V

    invoke-interface {v0, v1, p1}, Lorg/eclipse/core/resources/IWorkspace;->run(Lorg/eclipse/core/resources/IWorkspaceRunnable;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object p1, Lorg/eclipse/core/runtime/Status;->OK_STATUS:Lorg/eclipse/core/runtime/IStatus;

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/eclipse/core/runtime/CoreException;->getStatus()Lorg/eclipse/core/runtime/IStatus;

    move-result-object p1

    return-object p1
.end method
