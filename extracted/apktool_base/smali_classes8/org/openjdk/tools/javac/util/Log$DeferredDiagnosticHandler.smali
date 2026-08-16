.class public Lorg/openjdk/tools/javac/util/Log$DeferredDiagnosticHandler;
.super Lorg/openjdk/tools/javac/util/Log$DiagnosticHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/util/Log;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeferredDiagnosticHandler"
.end annotation


# instance fields
.field private deferred:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic;",
            ">;"
        }
    .end annotation
.end field

.field private final filter:Lorg/openjdk/tools/javac/util/Filter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/Filter<",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/util/Log;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/openjdk/tools/javac/util/Log$DeferredDiagnosticHandler;-><init>(Lorg/openjdk/tools/javac/util/Log;Lorg/openjdk/tools/javac/util/Filter;)V

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/util/Log;Lorg/openjdk/tools/javac/util/Filter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/Log;",
            "Lorg/openjdk/tools/javac/util/Filter<",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lorg/openjdk/tools/javac/util/Log$DiagnosticHandler;-><init>()V

    .line 3
    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/javac/util/Log$DeferredDiagnosticHandler;->deferred:Ljava/util/Queue;

    .line 4
    iput-object p2, p0, Lorg/openjdk/tools/javac/util/Log$DeferredDiagnosticHandler;->filter:Lorg/openjdk/tools/javac/util/Filter;

    .line 5
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/util/Log$DiagnosticHandler;->install(Lorg/openjdk/tools/javac/util/Log;)V

    return-void
.end method


# virtual methods
.method public getDiagnostics()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Log$DeferredDiagnosticHandler;->deferred:Ljava/util/Queue;

    return-object v0
.end method

.method public report(Lorg/openjdk/tools/javac/util/JCDiagnostic;)V
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;->NON_DEFERRABLE:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/util/JCDiagnostic;->isFlagSet(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Log$DeferredDiagnosticHandler;->filter:Lorg/openjdk/tools/javac/util/Filter;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/openjdk/tools/javac/util/Filter;->accepts(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Log$DeferredDiagnosticHandler;->deferred:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Log$DiagnosticHandler;->prev:Lorg/openjdk/tools/javac/util/Log$DiagnosticHandler;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/Log$DiagnosticHandler;->report(Lorg/openjdk/tools/javac/util/JCDiagnostic;)V

    :goto_0
    return-void
.end method

.method public reportDeferredDiagnostics()V
    .locals 1

    .line 1
    const-class v0, Lorg/openjdk/javax/tools/Diagnostic$Kind;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/util/Log$DeferredDiagnosticHandler;->reportDeferredDiagnostics(Ljava/util/Set;)V

    return-void
.end method

.method public reportDeferredDiagnostics(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/openjdk/javax/tools/Diagnostic$Kind;",
            ">;)V"
        }
    .end annotation

    .line 2
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Log$DeferredDiagnosticHandler;->deferred:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/util/JCDiagnostic;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/JCDiagnostic;->getKind()Lorg/openjdk/javax/tools/Diagnostic$Kind;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lorg/openjdk/tools/javac/util/Log$DiagnosticHandler;->prev:Lorg/openjdk/tools/javac/util/Log$DiagnosticHandler;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/util/Log$DiagnosticHandler;->report(Lorg/openjdk/tools/javac/util/JCDiagnostic;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lorg/openjdk/tools/javac/util/Log$DeferredDiagnosticHandler;->deferred:Ljava/util/Queue;

    return-void
.end method
