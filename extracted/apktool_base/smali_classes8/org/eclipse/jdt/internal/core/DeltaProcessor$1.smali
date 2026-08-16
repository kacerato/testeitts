.class Lorg/eclipse/jdt/internal/core/DeltaProcessor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/core/resources/IWorkspaceRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/core/DeltaProcessor;->checkExternalArchiveChanges([Lorg/eclipse/jdt/core/IJavaElement;ZLorg/eclipse/core/runtime/IProgressMonitor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/DeltaProcessor;

.field private final synthetic val$projectsToTouch:[Lorg/eclipse/core/resources/IProject;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/DeltaProcessor;[Lorg/eclipse/core/resources/IProject;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor$1;->this$0:Lorg/eclipse/jdt/internal/core/DeltaProcessor;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor$1;->val$projectsToTouch:[Lorg/eclipse/core/resources/IProject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor$1;->val$projectsToTouch:[Lorg/eclipse/core/resources/IProject;

    array-length v2, v1

    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    aget-object v1, v1, v0

    sget-boolean v2, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->DEBUG:Z

    if-eqz v2, :cond_1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Touching project "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Lorg/eclipse/core/resources/IProject;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " due to external jar file change"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    invoke-interface {v1, p1}, Lorg/eclipse/core/resources/IProject;->touch(Lorg/eclipse/core/runtime/IProgressMonitor;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
