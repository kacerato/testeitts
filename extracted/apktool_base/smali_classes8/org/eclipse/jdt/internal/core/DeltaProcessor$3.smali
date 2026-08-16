.class Lorg/eclipse/jdt/internal/core/DeltaProcessor$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/core/runtime/ISafeRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/core/DeltaProcessor;->notifyListeners(Lorg/eclipse/jdt/core/IJavaElementDelta;I[Lorg/eclipse/jdt/core/IElementChangedListener;[II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/DeltaProcessor;

.field private final synthetic val$extraEvent:Lorg/eclipse/jdt/core/ElementChangedEvent;

.field private final synthetic val$listener:Lorg/eclipse/jdt/core/IElementChangedListener;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/DeltaProcessor;Lorg/eclipse/jdt/core/IElementChangedListener;Lorg/eclipse/jdt/core/ElementChangedEvent;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor$3;->this$0:Lorg/eclipse/jdt/internal/core/DeltaProcessor;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor$3;->val$listener:Lorg/eclipse/jdt/core/IElementChangedListener;

    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor$3;->val$extraEvent:Lorg/eclipse/jdt/core/ElementChangedEvent;

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
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-boolean v0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->PERF:Z

    if-eqz v0, :cond_0

    const-string v0, "org.eclipse.jdt.core/perf/javadeltalistener"

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor$3;->val$listener:Lorg/eclipse/jdt/core/IElementChangedListener;

    invoke-static {v0, v1}, Lorg/eclipse/core/runtime/PerformanceStats;->getStats(Ljava/lang/String;Ljava/lang/Object;)Lorg/eclipse/core/runtime/PerformanceStats;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/core/runtime/PerformanceStats;->startRun()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor$3;->val$listener:Lorg/eclipse/jdt/core/IElementChangedListener;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor$3;->val$extraEvent:Lorg/eclipse/jdt/core/ElementChangedEvent;

    invoke-interface {v1, v2}, Lorg/eclipse/jdt/core/IElementChangedListener;->elementChanged(Lorg/eclipse/jdt/core/ElementChangedEvent;)V

    sget-boolean v1, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->PERF:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lorg/eclipse/core/runtime/PerformanceStats;->endRun()V

    :cond_1
    return-void
.end method
