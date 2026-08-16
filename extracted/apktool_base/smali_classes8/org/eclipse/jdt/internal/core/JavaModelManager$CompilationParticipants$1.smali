.class Lorg/eclipse/jdt/internal/core/JavaModelManager$CompilationParticipants$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/core/runtime/ISafeRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/core/JavaModelManager$CompilationParticipants;->getCompilationParticipants(Lorg/eclipse/jdt/core/IJavaProject;)[Lorg/eclipse/jdt/core/compiler/CompilationParticipant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/eclipse/jdt/internal/core/JavaModelManager$CompilationParticipants;

.field private final synthetic val$configElement:Lorg/eclipse/core/runtime/IConfigurationElement;

.field private final synthetic val$participantIndex:I

.field private final synthetic val$participantsPerSource:[[Ljava/lang/Object;

.field private final synthetic val$sourceLevelIndex:I


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/JavaModelManager$CompilationParticipants;Lorg/eclipse/core/runtime/IConfigurationElement;I[[Ljava/lang/Object;I)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$CompilationParticipants$1;->this$1:Lorg/eclipse/jdt/internal/core/JavaModelManager$CompilationParticipants;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$CompilationParticipants$1;->val$configElement:Lorg/eclipse/core/runtime/IConfigurationElement;

    iput p3, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$CompilationParticipants$1;->val$sourceLevelIndex:I

    iput-object p4, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$CompilationParticipants$1;->val$participantsPerSource:[[Ljava/lang/Object;

    iput p5, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$CompilationParticipants$1;->val$participantIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleException(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "Exception occurred while creating compilation participant"

    invoke-static {p1, v0}, Lorg/eclipse/jdt/internal/core/util/Util;->log(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public run()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$CompilationParticipants$1;->val$configElement:Lorg/eclipse/core/runtime/IConfigurationElement;

    const-string v1, "class"

    invoke-interface {v0, v1}, Lorg/eclipse/core/runtime/IConfigurationElement;->createExecutableExtension(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$CompilationParticipants$1;->val$sourceLevelIndex:I

    :goto_0
    sget v2, Lorg/eclipse/jdt/internal/core/JavaModelManager$CompilationParticipants;->MAX_SOURCE_LEVEL:I

    if-lt v1, v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$CompilationParticipants$1;->val$participantsPerSource:[[Ljava/lang/Object;

    aget-object v2, v2, v1

    iget v3, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$CompilationParticipants$1;->val$participantIndex:I

    aput-object v0, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
