.class public Lorg/openjdk/tools/javac/api/ClientCodeWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedTaskListener;,
        Lorg/openjdk/tools/javac/api/ClientCodeWrapper$DiagnosticSourceUnwrapper;,
        Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedDiagnosticListener;,
        Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedJavaFileObject;,
        Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedFileObject;,
        Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedStandardJavaFileManager;,
        Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedJavaFileManager;,
        Lorg/openjdk/tools/javac/api/ClientCodeWrapper$Trusted;
    }
.end annotation


# instance fields
.field trustedClasses:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/util/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper;->trustedClasses:Ljava/util/Map;

    return-void
.end method

.method public static synthetic access$000(Lorg/openjdk/tools/javac/api/ClientCodeWrapper;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/api/ClientCodeWrapper;->wrappedToString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Lorg/openjdk/tools/javac/api/ClientCodeWrapper;Lorg/openjdk/javax/tools/Diagnostic;)Lorg/openjdk/javax/tools/Diagnostic;
    .locals 0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/api/ClientCodeWrapper;->unwrap(Lorg/openjdk/javax/tools/Diagnostic;)Lorg/openjdk/javax/tools/Diagnostic;

    move-result-object p0

    return-object p0
.end method

.method public static instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/api/ClientCodeWrapper;
    .locals 1

    const-class v0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/util/Context;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper;

    if-nez v0, :cond_0

    new-instance v0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/api/ClientCodeWrapper;-><init>(Lorg/openjdk/tools/javac/util/Context;)V

    :cond_0
    return-object v0
.end method

.method private unwrap(Lorg/openjdk/javax/tools/Diagnostic;)Lorg/openjdk/javax/tools/Diagnostic;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/openjdk/javax/tools/Diagnostic<",
            "TT;>;)",
            "Lorg/openjdk/javax/tools/Diagnostic<",
            "TT;>;"
        }
    .end annotation

    .line 10
    instance-of v0, p1, Lorg/openjdk/tools/javac/util/JCDiagnostic;

    if-eqz v0, :cond_0

    .line 11
    check-cast p1, Lorg/openjdk/tools/javac/util/JCDiagnostic;

    .line 12
    new-instance v0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$DiagnosticSourceUnwrapper;

    invoke-direct {v0, p0, p1}, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$DiagnosticSourceUnwrapper;-><init>(Lorg/openjdk/tools/javac/api/ClientCodeWrapper;Lorg/openjdk/tools/javac/util/JCDiagnostic;)V

    return-object v0

    :cond_0
    return-object p1
.end method

.method private wrappedToString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public isTrusted(Ljava/lang/Object;)Z
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    iget-object v0, p0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper;->trustedClasses:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "org.openjdk.tools.javac."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$Trusted;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper;->trustedClasses:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public unwrap(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/openjdk/source/util/TaskListener;",
            ">;)",
            "Ljava/util/Collection<",
            "Lorg/openjdk/source/util/TaskListener;",
            ">;"
        }
    .end annotation

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/source/util/TaskListener;

    .line 9
    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/api/ClientCodeWrapper;->unwrap(Lorg/openjdk/source/util/TaskListener;)Lorg/openjdk/source/util/TaskListener;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public unwrap(Lorg/openjdk/javax/tools/FileObject;)Lorg/openjdk/javax/tools/FileObject;
    .locals 1

    .line 1
    instance-of v0, p1, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedFileObject;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedFileObject;

    iget-object p1, p1, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedFileObject;->clientFileObject:Lorg/openjdk/javax/tools/FileObject;

    :cond_0
    return-object p1
.end method

.method public unwrap(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;
    .locals 1

    .line 3
    instance-of v0, p1, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedJavaFileObject;

    if-eqz v0, :cond_0

    .line 4
    check-cast p1, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedJavaFileObject;

    iget-object p1, p1, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedFileObject;->clientFileObject:Lorg/openjdk/javax/tools/FileObject;

    check-cast p1, Lorg/openjdk/javax/tools/JavaFileObject;

    :cond_0
    return-object p1
.end method

.method public unwrap(Lorg/openjdk/source/util/TaskListener;)Lorg/openjdk/source/util/TaskListener;
    .locals 1

    .line 5
    instance-of v0, p1, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedTaskListener;

    if-eqz v0, :cond_0

    .line 6
    check-cast p1, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedTaskListener;

    iget-object p1, p1, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedTaskListener;->clientTaskListener:Lorg/openjdk/source/util/TaskListener;

    :cond_0
    return-object p1
.end method

.method public wrap(Lorg/openjdk/javax/tools/DiagnosticListener;)Lorg/openjdk/javax/tools/DiagnosticListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/openjdk/javax/tools/DiagnosticListener<",
            "TT;>;)",
            "Lorg/openjdk/javax/tools/DiagnosticListener<",
            "TT;>;"
        }
    .end annotation

    .line 9
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/api/ClientCodeWrapper;->isTrusted(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 10
    :cond_0
    new-instance v0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedDiagnosticListener;

    invoke-direct {v0, p0, p1}, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedDiagnosticListener;-><init>(Lorg/openjdk/tools/javac/api/ClientCodeWrapper;Lorg/openjdk/javax/tools/DiagnosticListener;)V

    return-object v0
.end method

.method public wrap(Lorg/openjdk/javax/tools/FileObject;)Lorg/openjdk/javax/tools/FileObject;
    .locals 1

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/api/ClientCodeWrapper;->isTrusted(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedFileObject;

    invoke-direct {v0, p0, p1}, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedFileObject;-><init>(Lorg/openjdk/tools/javac/api/ClientCodeWrapper;Lorg/openjdk/javax/tools/FileObject;)V

    return-object v0

    :cond_1
    :goto_0
    return-object p1
.end method

.method public wrap(Lorg/openjdk/javax/tools/JavaFileManager;)Lorg/openjdk/javax/tools/JavaFileManager;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/api/ClientCodeWrapper;->isTrusted(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 2
    :cond_0
    instance-of v0, p1, Lorg/openjdk/javax/tools/StandardJavaFileManager;

    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedStandardJavaFileManager;

    check-cast p1, Lorg/openjdk/javax/tools/StandardJavaFileManager;

    invoke-direct {v0, p0, p1}, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedStandardJavaFileManager;-><init>(Lorg/openjdk/tools/javac/api/ClientCodeWrapper;Lorg/openjdk/javax/tools/StandardJavaFileManager;)V

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedJavaFileManager;

    invoke-direct {v0, p0, p1}, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedJavaFileManager;-><init>(Lorg/openjdk/tools/javac/api/ClientCodeWrapper;Lorg/openjdk/javax/tools/JavaFileManager;)V

    return-object v0
.end method

.method public wrap(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;
    .locals 1

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/api/ClientCodeWrapper;->isTrusted(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedJavaFileObject;

    invoke-direct {v0, p0, p1}, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedJavaFileObject;-><init>(Lorg/openjdk/tools/javac/api/ClientCodeWrapper;Lorg/openjdk/javax/tools/JavaFileObject;)V

    return-object v0

    :cond_1
    :goto_0
    return-object p1
.end method

.method public wrap(Lorg/openjdk/source/util/TaskListener;)Lorg/openjdk/source/util/TaskListener;
    .locals 1

    .line 11
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/api/ClientCodeWrapper;->isTrusted(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 12
    :cond_0
    new-instance v0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedTaskListener;

    invoke-direct {v0, p0, p1}, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedTaskListener;-><init>(Lorg/openjdk/tools/javac/api/ClientCodeWrapper;Lorg/openjdk/source/util/TaskListener;)V

    return-object v0
.end method

.method public wrapJavaFileObjects(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/openjdk/javax/tools/JavaFileObject;",
            ">;)",
            "Ljava/lang/Iterable<",
            "Lorg/openjdk/javax/tools/JavaFileObject;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/api/ClientCodeWrapper;->wrap(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
