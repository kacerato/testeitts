.class public Lorg/eclipse/jdt/core/JavaModelException;
.super Lorg/eclipse/core/runtime/CoreException;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0xa8d7a8ca0b77bb7L


# instance fields
.field nestedCoreException:Lorg/eclipse/core/runtime/CoreException;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;I)V
    .locals 1

    .line 1
    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    invoke-direct {v0, p2, p1}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILjava/lang/Throwable;)V

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/jdt/core/IJavaModelStatus;)V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/core/runtime/CoreException;)V
    .locals 1

    .line 2
    invoke-virtual {p1}, Lorg/eclipse/core/runtime/CoreException;->getStatus()Lorg/eclipse/core/runtime/IStatus;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/eclipse/core/runtime/CoreException;-><init>(Lorg/eclipse/core/runtime/IStatus;)V

    .line 3
    iput-object p1, p0, Lorg/eclipse/jdt/core/JavaModelException;->nestedCoreException:Lorg/eclipse/core/runtime/CoreException;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/core/runtime/IStatus;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lorg/eclipse/core/runtime/CoreException;-><init>(Lorg/eclipse/core/runtime/IStatus;)V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/core/IJavaModelStatus;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lorg/eclipse/core/runtime/CoreException;-><init>(Lorg/eclipse/core/runtime/IStatus;)V

    return-void
.end method


# virtual methods
.method public getException()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/JavaModelException;->nestedCoreException:Lorg/eclipse/core/runtime/CoreException;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/JavaModelException;->getStatus()Lorg/eclipse/core/runtime/IStatus;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/core/runtime/IStatus;->getException()Ljava/lang/Throwable;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getJavaModelStatus()Lorg/eclipse/jdt/core/IJavaModelStatus;
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/JavaModelException;->getStatus()Lorg/eclipse/core/runtime/IStatus;

    move-result-object v0

    instance-of v1, v0, Lorg/eclipse/jdt/core/IJavaModelStatus;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/eclipse/jdt/core/IJavaModelStatus;

    return-object v0

    :cond_0
    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    iget-object v1, p0, Lorg/eclipse/jdt/core/JavaModelException;->nestedCoreException:Lorg/eclipse/core/runtime/CoreException;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(Lorg/eclipse/core/runtime/CoreException;)V

    return-object v0
.end method

.method public isDoesNotExist()Z
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/JavaModelException;->getJavaModelStatus()Lorg/eclipse/jdt/core/IJavaModelStatus;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaModelStatus;->isDoesNotExist()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .locals 2

    .line 1
    monitor-enter p1

    .line 2
    :try_start_0
    invoke-super {p0, p1}, Lorg/eclipse/core/runtime/CoreException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 3
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/JavaModelException;->getException()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    const-string v1, "Caused by: "

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 6
    :cond_0
    :goto_0
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .locals 2

    .line 7
    monitor-enter p1

    .line 8
    :try_start_0
    invoke-super {p0, p1}, Lorg/eclipse/core/runtime/CoreException;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 9
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/JavaModelException;->getException()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10
    const-string v1, "Caused by: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 12
    :cond_0
    :goto_0
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Java Model Exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/JavaModelException;->getException()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/JavaModelException;->getException()Ljava/lang/Throwable;

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/JavaModelException;->getException()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/JavaModelException;->getStatus()Lorg/eclipse/core/runtime/IStatus;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
