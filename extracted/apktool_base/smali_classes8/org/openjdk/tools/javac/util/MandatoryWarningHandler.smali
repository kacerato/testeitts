.class public Lorg/openjdk/tools/javac/util/MandatoryWarningHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;
    }
.end annotation


# instance fields
.field private deferredDiagnosticArg:Ljava/lang/Object;

.field private deferredDiagnosticKind:Lorg/openjdk/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;

.field private deferredDiagnosticSource:Lorg/openjdk/javax/tools/JavaFileObject;

.field private final enforceMandatory:Z

.field private final lintCategory:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

.field private log:Lorg/openjdk/tools/javac/util/Log;

.field private prefix:Ljava/lang/String;

.field private sourcesWithReportedWarnings:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/openjdk/javax/tools/JavaFileObject;",
            ">;"
        }
    .end annotation
.end field

.field private verbose:Z


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/util/Log;ZZLjava/lang/String;Lorg/openjdk/tools/javac/code/Lint$LintCategory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/util/MandatoryWarningHandler;->log:Lorg/openjdk/tools/javac/util/Log;

    iput-boolean p2, p0, Lorg/openjdk/tools/javac/util/MandatoryWarningHandler;->verbose:Z

    iput-object p4, p0, Lorg/openjdk/tools/javac/util/MandatoryWarningHandler;->prefix:Ljava/lang/String;

    iput-boolean p3, p0, Lorg/openjdk/tools/javac/util/MandatoryWarningHandler;->enforceMandatory:Z

    iput-object p5, p0, Lorg/openjdk/tools/javac/util/MandatoryWarningHandler;->lintCategory:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    return-void
.end method

.method private static equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_1

    :cond_1
    :goto_0
    if-ne p0, p1, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method private varargs logMandatoryNote(Lorg/openjdk/javax/tools/JavaFileObject;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/util/MandatoryWarningHandler;->enforceMandatory:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/MandatoryWarningHandler;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v0, p1, p2, p3}, Lorg/openjdk/tools/javac/util/AbstractLog;->mandatoryNote(Lorg/openjdk/javax/tools/JavaFileObject;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/MandatoryWarningHandler;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v0, p1, p2, p3}, Lorg/openjdk/tools/javac/util/AbstractLog;->note(Lorg/openjdk/javax/tools/JavaFileObject;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private varargs logMandatoryWarning(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/util/MandatoryWarningHandler;->enforceMandatory:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/MandatoryWarningHandler;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object v1, p0, Lorg/openjdk/tools/javac/util/MandatoryWarningHandler;->lintCategory:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/openjdk/tools/javac/util/AbstractLog;->mandatoryWarning(Lorg/openjdk/tools/javac/code/Lint$LintCategory;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/MandatoryWarningHandler;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object v1, p0, Lorg/openjdk/tools/javac/util/MandatoryWarningHandler;->lintCategory:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/openjdk/tools/javac/util/AbstractLog;->warning(Lorg/openjdk/tools/javac/code/Lint$LintCategory;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public varargs report(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/MandatoryWarningHandler;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/Log;->currentSourceFile()Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object v0

    iget-boolean v1, p0, Lorg/openjdk/tools/javac/util/MandatoryWarningHandler;->verbose:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/openjdk/tools/javac/util/MandatoryWarningHandler;->sourcesWithReportedWarnings:Ljava/util/Set;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lorg/openjdk/tools/javac/util/MandatoryWarningHandler;->sourcesWithReportedWarnings:Ljava/util/Set;

    :cond_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/util/MandatoryWarningHandler;->log:Lorg/openjdk/tools/javac/util/Log;

    iget v3, v1, Lorg/openjdk/tools/javac/util/Log;->nwarnings:I

    iget v1, v1, Lorg/openjdk/tools/javac/util/Log;->MaxWarnings:I

    if-ge v3, v1, :cond_1

    invoke-direct {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/util/MandatoryWarningHandler;->logMandatoryWarning(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/util/MandatoryWarningHandler;->sourcesWithReportedWarnings:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lorg/openjdk/tools/javac/util/MandatoryWarningHandler;->deferredDiagnosticKind:Lorg/openjdk/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;

    if-nez p1, :cond_3

    iget-object p1, p0, Lorg/openjdk/tools/javac/util/MandatoryWarningHandler;->sourcesWithReportedWarnings:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lorg/openjdk/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;->ADDITIONAL_IN_FILE:Lorg/openjdk/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;

    iput-object p1, p0, Lorg/openjdk/tools/javac/util/MandatoryWarningHandler;->deferredDiagnosticKind:Lorg/openjdk/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;

    goto :goto_0

    :cond_2
    sget-object p1, Lorg/openjdk/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;->IN_FILE:Lorg/openjdk/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;

    iput-object p1, p0, Lorg/openjdk/tools/javac/util/MandatoryWarningHandler;->deferredDiagnosticKind:Lorg/openjdk/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;

    :goto_0
    iput-object v0, p0, Lorg/openjdk/tools/javac/util/MandatoryWarningHandler;->deferredDiagnosticSource:Lorg/openjdk/javax/tools/JavaFileObject;

    iput-object v0, p0, Lorg/openjdk/tools/javac/util/MandatoryWarningHandler;->deferredDiagnosticArg:Ljava/lang/Object;

    goto :goto_1

    :cond_3
    sget-object p2, Lorg/openjdk/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;->IN_FILE:Lorg/openjdk/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;

    if-eq p1, p2, :cond_4

    sget-object p2, Lorg/openjdk/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;->ADDITIONAL_IN_FILE:Lorg/openjdk/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;

    if-ne p1, p2, :cond_7

    :cond_4
    iget-object p1, p0, Lorg/openjdk/tools/javac/util/MandatoryWarningHandler;->deferredDiagnosticSource:Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-static {p1, v0}, Lorg/openjdk/tools/javac/util/MandatoryWarningHandler;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    sget-object p1, Lorg/openjdk/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;->ADDITIONAL_IN_FILES:Lorg/openjdk/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;

    iput-object p1, p0, Lorg/openjdk/tools/javac/util/MandatoryWarningHandler;->deferredDiagnosticKind:Lorg/openjdk/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;

    iput-object v2, p0, Lorg/openjdk/tools/javac/util/MandatoryWarningHandler;->deferredDiagnosticArg:Ljava/lang/Object;

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lorg/openjdk/tools/javac/util/MandatoryWarningHandler;->deferredDiagnosticKind:Lorg/openjdk/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;

    if-nez p1, :cond_6

    sget-object p1, Lorg/openjdk/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;->IN_FILE:Lorg/openjdk/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;

    iput-object p1, p0, Lorg/openjdk/tools/javac/util/MandatoryWarningHandler;->deferredDiagnosticKind:Lorg/openjdk/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;

    iput-object v0, p0, Lorg/openjdk/tools/javac/util/MandatoryWarningHandler;->deferredDiagnosticSource:Lorg/openjdk/javax/tools/JavaFileObject;

    iput-object v0, p0, Lorg/openjdk/tools/javac/util/MandatoryWarningHandler;->deferredDiagnosticArg:Ljava/lang/Object;

    goto :goto_1

    :cond_6
    sget-object p2, Lorg/openjdk/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;->IN_FILE:Lorg/openjdk/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;

    if-ne p1, p2, :cond_7

    iget-object p1, p0, Lorg/openjdk/tools/javac/util/MandatoryWarningHandler;->deferredDiagnosticSource:Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-static {p1, v0}, Lorg/openjdk/tools/javac/util/MandatoryWarningHandler;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    sget-object p1, Lorg/openjdk/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;->IN_FILES:Lorg/openjdk/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;

    iput-object p1, p0, Lorg/openjdk/tools/javac/util/MandatoryWarningHandler;->deferredDiagnosticKind:Lorg/openjdk/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;

    iput-object v2, p0, Lorg/openjdk/tools/javac/util/MandatoryWarningHandler;->deferredDiagnosticArg:Ljava/lang/Object;

    :cond_7
    :goto_1
    return-void
.end method

.method public reportDeferredDiagnostic()V
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/MandatoryWarningHandler;->deferredDiagnosticKind:Lorg/openjdk/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/openjdk/tools/javac/util/MandatoryWarningHandler;->deferredDiagnosticArg:Ljava/lang/Object;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/openjdk/tools/javac/util/MandatoryWarningHandler;->deferredDiagnosticSource:Lorg/openjdk/javax/tools/JavaFileObject;

    iget-object v3, p0, Lorg/openjdk/tools/javac/util/MandatoryWarningHandler;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lorg/openjdk/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-direct {p0, v1, v0, v3}, Lorg/openjdk/tools/javac/util/MandatoryWarningHandler;->logMandatoryNote(Lorg/openjdk/javax/tools/JavaFileObject;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/util/MandatoryWarningHandler;->deferredDiagnosticSource:Lorg/openjdk/javax/tools/JavaFileObject;

    iget-object v3, p0, Lorg/openjdk/tools/javac/util/MandatoryWarningHandler;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lorg/openjdk/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lorg/openjdk/tools/javac/util/MandatoryWarningHandler;->deferredDiagnosticArg:Ljava/lang/Object;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v1, v0, v3}, Lorg/openjdk/tools/javac/util/MandatoryWarningHandler;->logMandatoryNote(Lorg/openjdk/javax/tools/JavaFileObject;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    iget-boolean v0, p0, Lorg/openjdk/tools/javac/util/MandatoryWarningHandler;->verbose:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/MandatoryWarningHandler;->deferredDiagnosticSource:Lorg/openjdk/javax/tools/JavaFileObject;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/openjdk/tools/javac/util/MandatoryWarningHandler;->prefix:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".recompile"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1, v2}, Lorg/openjdk/tools/javac/util/MandatoryWarningHandler;->logMandatoryNote(Lorg/openjdk/javax/tools/JavaFileObject;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
