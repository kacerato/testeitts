.class Lorg/eclipse/jdt/internal/core/DeltaProcessingState$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/core/runtime/ISafeRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->resourceChanged(Lorg/eclipse/core/resources/IResourceChangeEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

.field private final synthetic val$event:Lorg/eclipse/core/resources/IResourceChangeEvent;

.field private final synthetic val$listener:Lorg/eclipse/core/resources/IResourceChangeListener;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/DeltaProcessingState;Lorg/eclipse/core/resources/IResourceChangeListener;Lorg/eclipse/core/resources/IResourceChangeEvent;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState$1;->this$0:Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState$1;->val$listener:Lorg/eclipse/core/resources/IResourceChangeListener;

    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState$1;->val$event:Lorg/eclipse/core/resources/IResourceChangeEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleException(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "Exception occurred in listener of pre Java resource change notification"

    invoke-static {p1, v0}, Lorg/eclipse/jdt/internal/core/util/Util;->log(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public run()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState$1;->val$listener:Lorg/eclipse/core/resources/IResourceChangeListener;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState$1;->val$event:Lorg/eclipse/core/resources/IResourceChangeEvent;

    invoke-interface {v0, v1}, Lorg/eclipse/core/resources/IResourceChangeListener;->resourceChanged(Lorg/eclipse/core/resources/IResourceChangeEvent;)V

    return-void
.end method
