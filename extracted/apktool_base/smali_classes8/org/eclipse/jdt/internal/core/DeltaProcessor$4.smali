.class Lorg/eclipse/jdt/internal/core/DeltaProcessor$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/core/runtime/ISafeRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/core/DeltaProcessor;->notifyTypeHierarchies([Lorg/eclipse/jdt/core/IElementChangedListener;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/DeltaProcessor;

.field private final synthetic val$listener:Lorg/eclipse/jdt/core/IElementChangedListener;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/DeltaProcessor;Lorg/eclipse/jdt/core/IElementChangedListener;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor$4;->this$0:Lorg/eclipse/jdt/internal/core/DeltaProcessor;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor$4;->val$listener:Lorg/eclipse/jdt/core/IElementChangedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleException(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "Exception occurred in listener of Java element change notification"

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

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor$4;->val$listener:Lorg/eclipse/jdt/core/IElementChangedListener;

    check-cast v0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->hasFineGrainChanges()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->needsRefresh:Z

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->fireChange()V

    :cond_0
    return-void
.end method
