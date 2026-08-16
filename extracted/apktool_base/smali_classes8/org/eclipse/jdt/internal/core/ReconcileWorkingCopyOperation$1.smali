.class Lorg/eclipse/jdt/internal/core/ReconcileWorkingCopyOperation$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/core/runtime/ISafeRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/core/ReconcileWorkingCopyOperation;->notifyParticipants(Lorg/eclipse/jdt/internal/core/CompilationUnit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/ReconcileWorkingCopyOperation;

.field private final synthetic val$context:Lorg/eclipse/jdt/core/compiler/ReconcileContext;

.field private final synthetic val$participant:Lorg/eclipse/jdt/core/compiler/CompilationParticipant;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/ReconcileWorkingCopyOperation;Lorg/eclipse/jdt/core/compiler/CompilationParticipant;Lorg/eclipse/jdt/core/compiler/ReconcileContext;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/ReconcileWorkingCopyOperation$1;->this$0:Lorg/eclipse/jdt/internal/core/ReconcileWorkingCopyOperation;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/ReconcileWorkingCopyOperation$1;->val$participant:Lorg/eclipse/jdt/core/compiler/CompilationParticipant;

    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/ReconcileWorkingCopyOperation$1;->val$context:Lorg/eclipse/jdt/core/compiler/ReconcileContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleException(Ljava/lang/Throwable;)V
    .locals 1

    instance-of v0, p1, Ljava/lang/Error;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/lang/UnsupportedOperationException;

    if-eqz v0, :cond_0

    const-string v0, "Reconcile participant attempted to modify the buffer of the working copy being reconciled"

    invoke-static {p1, v0}, Lorg/eclipse/jdt/internal/core/util/Util;->log(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "Exception occurred in reconcile participant"

    invoke-static {p1, v0}, Lorg/eclipse/jdt/internal/core/util/Util;->log(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    check-cast p1, Ljava/lang/Error;

    throw p1
.end method

.method public run()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ReconcileWorkingCopyOperation$1;->val$participant:Lorg/eclipse/jdt/core/compiler/CompilationParticipant;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/ReconcileWorkingCopyOperation$1;->val$context:Lorg/eclipse/jdt/core/compiler/ReconcileContext;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/compiler/CompilationParticipant;->reconcile(Lorg/eclipse/jdt/core/compiler/ReconcileContext;)V

    return-void
.end method
