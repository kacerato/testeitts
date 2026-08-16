.class Lorg/eclipse/jdt/core/JavaCore$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/core/resources/IWorkspaceRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/core/JavaCore;->initializeAfterLoad(Lorg/eclipse/core/runtime/IProgressMonitor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private final synthetic val$projects:[Lorg/eclipse/jdt/core/IJavaProject;


# direct methods
.method public constructor <init>([Lorg/eclipse/jdt/core/IJavaProject;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/core/JavaCore$1;->val$projects:[Lorg/eclipse/jdt/core/IJavaProject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/core/JavaCore$1;->val$projects:[Lorg/eclipse/jdt/core/IJavaProject;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/core/JavaCore$1;->val$projects:[Lorg/eclipse/jdt/core/IJavaProject;

    aget-object v2, v2, v1

    :try_start_0
    sget-boolean v3, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->DEBUG:Z

    if-eqz v3, :cond_1

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Touching "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    new-instance v3, Lorg/eclipse/jdt/internal/core/ClasspathValidation;

    move-object v4, v2

    check-cast v4, Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-direct {v3, v4}, Lorg/eclipse/jdt/internal/core/ClasspathValidation;-><init>(Lorg/eclipse/jdt/internal/core/JavaProject;)V

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/ClasspathValidation;->validate()V

    invoke-interface {v2}, Lorg/eclipse/jdt/core/IJavaProject;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object v2

    invoke-interface {v2, p1}, Lorg/eclipse/core/resources/IProject;->touch(Lorg/eclipse/core/runtime/IProgressMonitor;)V
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
