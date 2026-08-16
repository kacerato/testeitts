.class Lorg/eclipse/jdt/internal/core/BinaryMethod$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/core/BinaryMethod;->getParameterNames()[Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/BinaryMethod;

.field private final synthetic val$nameCollector:Lorg/eclipse/jdt/internal/core/BinaryMethod$1ParametersNameCollector;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/BinaryMethod;Lorg/eclipse/jdt/internal/core/BinaryMethod$1ParametersNameCollector;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/BinaryMethod$1;->this$0:Lorg/eclipse/jdt/internal/core/BinaryMethod;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/BinaryMethod$1;->val$nameCollector:Lorg/eclipse/jdt/internal/core/BinaryMethod$1ParametersNameCollector;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/BinaryMethod$1;->val$nameCollector:Lorg/eclipse/jdt/internal/core/BinaryMethod$1ParametersNameCollector;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/BinaryMethod$1;->this$0:Lorg/eclipse/jdt/internal/core/BinaryMethod;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/core/BinaryMethod;->getAttachedJavadoc(Lorg/eclipse/core/runtime/IProgressMonitor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/BinaryMethod$1ParametersNameCollector;->setJavadoc(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/BinaryMethod$1;->val$nameCollector:Lorg/eclipse/jdt/internal/core/BinaryMethod$1ParametersNameCollector;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/BinaryMethod$1;->val$nameCollector:Lorg/eclipse/jdt/internal/core/BinaryMethod$1ParametersNameCollector;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
