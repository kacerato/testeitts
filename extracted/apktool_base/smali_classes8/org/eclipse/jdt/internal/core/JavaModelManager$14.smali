.class Lorg/eclipse/jdt/internal/core/JavaModelManager$14;
.super Lorg/eclipse/core/resources/WorkspaceJob;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/core/JavaModelManager;->touchProjects([Lorg/eclipse/core/resources/IProject;Lorg/eclipse/core/runtime/IProgressMonitor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/JavaModelManager;

.field private final synthetic val$projectsToTouch:[Lorg/eclipse/core/resources/IProject;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/JavaModelManager;Ljava/lang/String;[Lorg/eclipse/core/resources/IProject;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$14;->this$0:Lorg/eclipse/jdt/internal/core/JavaModelManager;

    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$14;->val$projectsToTouch:[Lorg/eclipse/core/resources/IProject;

    invoke-direct {p0, p2}, Lorg/eclipse/core/resources/WorkspaceJob;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public belongsTo(Ljava/lang/Object;)Z
    .locals 1

    sget-object v0, Lorg/eclipse/core/resources/ResourcesPlugin;->FAMILY_MANUAL_REFRESH:Ljava/lang/Object;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public runInWorkspace(Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/core/runtime/IStatus;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$14;->val$projectsToTouch:[Lorg/eclipse/core/resources/IProject;

    array-length v0, v0

    invoke-static {p1, v0}, Lorg/eclipse/core/runtime/SubMonitor;->convert(Lorg/eclipse/core/runtime/IProgressMonitor;I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$14;->val$projectsToTouch:[Lorg/eclipse/core/resources/IProject;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    sget-object p1, Lorg/eclipse/core/runtime/Status;->OK_STATUS:Lorg/eclipse/core/runtime/IStatus;

    return-object p1

    :cond_0
    aget-object v3, v0, v2

    sget-boolean v4, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->DEBUG:Z

    if-eqz v4, :cond_1

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Touching project "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Lorg/eclipse/core/resources/IProject;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    invoke-interface {v3}, Lorg/eclipse/core/resources/IProject;->isAccessible()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/eclipse/core/resources/IProject;->touch(Lorg/eclipse/core/runtime/IProgressMonitor;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
