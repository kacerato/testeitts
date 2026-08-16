.class Lorg/eclipse/jdt/internal/core/JavaModelManager$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/core/runtime/ISafeRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/core/JavaModelManager;->createAnnotationProcessorManager()Lorg/eclipse/jdt/internal/compiler/AbstractAnnotationProcessorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/JavaModelManager;

.field private final synthetic val$apm:[Lorg/eclipse/jdt/internal/compiler/AbstractAnnotationProcessorManager;

.field private final synthetic val$factory:Lorg/eclipse/core/runtime/IConfigurationElement;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/JavaModelManager;Lorg/eclipse/core/runtime/IConfigurationElement;[Lorg/eclipse/jdt/internal/compiler/AbstractAnnotationProcessorManager;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$9;->this$0:Lorg/eclipse/jdt/internal/core/JavaModelManager;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$9;->val$factory:Lorg/eclipse/core/runtime/IConfigurationElement;

    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$9;->val$apm:[Lorg/eclipse/jdt/internal/compiler/AbstractAnnotationProcessorManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleException(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "Exception occurred while loading annotation processor manager"

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

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$9;->val$factory:Lorg/eclipse/core/runtime/IConfigurationElement;

    const-string v1, "class"

    invoke-interface {v0, v1}, Lorg/eclipse/core/runtime/IConfigurationElement;->createExecutableExtension(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/AbstractAnnotationProcessorManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$9;->val$apm:[Lorg/eclipse/jdt/internal/compiler/AbstractAnnotationProcessorManager;

    const/4 v2, 0x0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/AbstractAnnotationProcessorManager;

    aput-object v0, v1, v2

    :cond_0
    return-void
.end method
