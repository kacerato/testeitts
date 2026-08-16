.class Lorg/eclipse/jdt/internal/core/JavaModelManager$20$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/core/resources/IWorkspaceRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/core/JavaModelManager$20;->run(Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/core/runtime/IStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/eclipse/jdt/internal/core/JavaModelManager$20;

.field private final synthetic val$workspace:Lorg/eclipse/core/resources/IWorkspace;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/JavaModelManager$20;Lorg/eclipse/core/resources/IWorkspace;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$20$1;->this$1:Lorg/eclipse/jdt/internal/core/JavaModelManager$20;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$20$1;->val$workspace:Lorg/eclipse/core/resources/IWorkspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$20$1;->val$workspace:Lorg/eclipse/core/resources/IWorkspace;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$20$1;->this$1:Lorg/eclipse/jdt/internal/core/JavaModelManager$20;

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$20;->access$0(Lorg/eclipse/jdt/internal/core/JavaModelManager$20;)Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    const-string v1, "org.eclipse.jdt.core"

    invoke-interface {p1, v1, v0}, Lorg/eclipse/core/resources/IWorkspace;->addSaveParticipant(Ljava/lang/String;Lorg/eclipse/core/resources/ISaveParticipant;)Lorg/eclipse/core/resources/ISavedState;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$20$1;->this$1:Lorg/eclipse/jdt/internal/core/JavaModelManager$20;

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$20;->access$0(Lorg/eclipse/jdt/internal/core/JavaModelManager$20;)Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->deltaState:Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->getDeltaProcessor()Lorg/eclipse/jdt/internal/core/DeltaProcessor;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->overridenEventType:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$20$1;->this$1:Lorg/eclipse/jdt/internal/core/JavaModelManager$20;

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$20;->access$0(Lorg/eclipse/jdt/internal/core/JavaModelManager$20;)Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->deltaState:Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

    invoke-interface {p1, v0}, Lorg/eclipse/core/resources/ISavedState;->processResourceChangeEvents(Lorg/eclipse/core/resources/IResourceChangeListener;)V

    :cond_0
    return-void
.end method
