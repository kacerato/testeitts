.class public Lorg/openjdk/tools/javac/code/DeferredLintHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/code/DeferredLintHandler$LintLogger;
    }
.end annotation


# static fields
.field private static final IMMEDIATE_POSITION:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

.field protected static final deferredLintHandlerKey:Lorg/openjdk/tools/javac/util/Context$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/Context$Key<",
            "Lorg/openjdk/tools/javac/code/DeferredLintHandler;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private currentPos:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

.field private loggersQueue:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "Lorg/openjdk/tools/javac/util/ListBuffer<",
            "Lorg/openjdk/tools/javac/code/DeferredLintHandler$LintLogger;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/Context$Key;-><init>()V

    sput-object v0, Lorg/openjdk/tools/javac/code/DeferredLintHandler;->deferredLintHandlerKey:Lorg/openjdk/tools/javac/util/Context$Key;

    new-instance v0, Lorg/openjdk/tools/javac/code/DeferredLintHandler$1;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/code/DeferredLintHandler$1;-><init>()V

    sput-object v0, Lorg/openjdk/tools/javac/code/DeferredLintHandler;->IMMEDIATE_POSITION:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/util/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/javac/code/DeferredLintHandler;->loggersQueue:Ljava/util/Map;

    sget-object v0, Lorg/openjdk/tools/javac/code/DeferredLintHandler;->deferredLintHandlerKey:Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-virtual {p1, v0, p0}, Lorg/openjdk/tools/javac/util/Context;->put(Lorg/openjdk/tools/javac/util/Context$Key;Ljava/lang/Object;)V

    sget-object p1, Lorg/openjdk/tools/javac/code/DeferredLintHandler;->IMMEDIATE_POSITION:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/DeferredLintHandler;->currentPos:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    return-void
.end method

.method public static instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/DeferredLintHandler;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/code/DeferredLintHandler;->deferredLintHandlerKey:Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/util/Context;->get(Lorg/openjdk/tools/javac/util/Context$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/code/DeferredLintHandler;

    if-nez v0, :cond_0

    new-instance v0, Lorg/openjdk/tools/javac/code/DeferredLintHandler;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/code/DeferredLintHandler;-><init>(Lorg/openjdk/tools/javac/util/Context;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public flush(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/DeferredLintHandler;->loggersQueue:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/code/DeferredLintHandler$LintLogger;

    invoke-interface {v1}, Lorg/openjdk/tools/javac/code/DeferredLintHandler$LintLogger;->report()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/DeferredLintHandler;->loggersQueue:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public immediate()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/code/DeferredLintHandler;->IMMEDIATE_POSITION:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/code/DeferredLintHandler;->setPos(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    return-object v0
.end method

.method public report(Lorg/openjdk/tools/javac/code/DeferredLintHandler$LintLogger;)V
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/DeferredLintHandler;->currentPos:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    sget-object v1, Lorg/openjdk/tools/javac/code/DeferredLintHandler;->IMMEDIATE_POSITION:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Lorg/openjdk/tools/javac/code/DeferredLintHandler$LintLogger;->report()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/code/DeferredLintHandler;->loggersQueue:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/DeferredLintHandler;->loggersQueue:Ljava/util/Map;

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/DeferredLintHandler;->currentPos:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    new-instance v2, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v2}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    :cond_1
    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    :goto_0
    return-void
.end method

.method public setPos(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/DeferredLintHandler;->currentPos:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/DeferredLintHandler;->currentPos:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    return-object v0
.end method
