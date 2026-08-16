.class public abstract Lorg/openjdk/tools/javac/util/AbstractLog;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

.field protected source:Lorg/openjdk/tools/javac/util/DiagnosticSource;

.field protected sourceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/openjdk/javax/tools/JavaFileObject;",
            "Lorg/openjdk/tools/javac/util/DiagnosticSource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/util/AbstractLog;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/util/AbstractLog;->sourceMap:Ljava/util/Map;

    return-void
.end method

.method private wrap(I)Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$SimpleDiagnosticPosition;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic$SimpleDiagnosticPosition;-><init>(I)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method


# virtual methods
.method public currentSource()Lorg/openjdk/tools/javac/util/DiagnosticSource;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/AbstractLog;->source:Lorg/openjdk/tools/javac/util/DiagnosticSource;

    return-object v0
.end method

.method public varargs abstract directError(Ljava/lang/String;[Ljava/lang/Object;)V
.end method

.method public varargs error(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 7
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/AbstractLog;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    invoke-virtual {v0, p2, p3}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->errorKey(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(ILorg/openjdk/tools/javac/util/JCDiagnostic$Error;)V

    return-void
.end method

.method public error(ILorg/openjdk/tools/javac/util/JCDiagnostic$Error;)V
    .locals 3

    .line 8
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/AbstractLog;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    iget-object v1, p0, Lorg/openjdk/tools/javac/util/AbstractLog;->source:Lorg/openjdk/tools/javac/util/DiagnosticSource;

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/util/AbstractLog;->wrap(I)Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, p1, p2}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;Lorg/openjdk/tools/javac/util/DiagnosticSource;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/util/AbstractLog;->report(Lorg/openjdk/tools/javac/util/JCDiagnostic;)V

    return-void
.end method

.method public varargs error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/AbstractLog;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    invoke-virtual {v0, p1, p2}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->errorKey(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;)V

    return-void
.end method

.method public varargs error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 9
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/AbstractLog;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    invoke-virtual {v0, p3, p4}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->errorKey(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;ILorg/openjdk/tools/javac/util/JCDiagnostic$Error;)V

    return-void
.end method

.method public error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;ILorg/openjdk/tools/javac/util/JCDiagnostic$Error;)V
    .locals 2

    .line 10
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/AbstractLog;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    iget-object v1, p0, Lorg/openjdk/tools/javac/util/AbstractLog;->source:Lorg/openjdk/tools/javac/util/DiagnosticSource;

    invoke-direct {p0, p2}, Lorg/openjdk/tools/javac/util/AbstractLog;->wrap(I)Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object p2

    invoke-virtual {v0, p1, v1, p2, p3}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;Lorg/openjdk/tools/javac/util/DiagnosticSource;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/util/AbstractLog;->report(Lorg/openjdk/tools/javac/util/JCDiagnostic;)V

    return-void
.end method

.method public varargs error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/AbstractLog;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    invoke-virtual {v0, p3, p4}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->errorKey(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;)V

    return-void
.end method

.method public error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;)V
    .locals 2

    .line 6
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/AbstractLog;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    iget-object v1, p0, Lorg/openjdk/tools/javac/util/AbstractLog;->source:Lorg/openjdk/tools/javac/util/DiagnosticSource;

    invoke-virtual {v0, p1, v1, p2, p3}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;Lorg/openjdk/tools/javac/util/DiagnosticSource;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/util/AbstractLog;->report(Lorg/openjdk/tools/javac/util/JCDiagnostic;)V

    return-void
.end method

.method public varargs error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/AbstractLog;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    invoke-virtual {v0, p2, p3}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->errorKey(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;)V

    return-void
.end method

.method public error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;)V
    .locals 3

    .line 4
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/AbstractLog;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/openjdk/tools/javac/util/AbstractLog;->source:Lorg/openjdk/tools/javac/util/DiagnosticSource;

    invoke-virtual {v0, v1, v2, p1, p2}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;Lorg/openjdk/tools/javac/util/DiagnosticSource;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/util/AbstractLog;->report(Lorg/openjdk/tools/javac/util/JCDiagnostic;)V

    return-void
.end method

.method public error(Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/AbstractLog;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/openjdk/tools/javac/util/AbstractLog;->source:Lorg/openjdk/tools/javac/util/DiagnosticSource;

    invoke-virtual {v0, v1, v2, v1, p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;Lorg/openjdk/tools/javac/util/DiagnosticSource;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/util/AbstractLog;->report(Lorg/openjdk/tools/javac/util/JCDiagnostic;)V

    return-void
.end method

.method public getSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/tools/javac/util/DiagnosticSource;
    .locals 2

    if-nez p1, :cond_0

    sget-object p1, Lorg/openjdk/tools/javac/util/DiagnosticSource;->NO_SOURCE:Lorg/openjdk/tools/javac/util/DiagnosticSource;

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/AbstractLog;->sourceMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/util/DiagnosticSource;

    if-nez v0, :cond_1

    new-instance v0, Lorg/openjdk/tools/javac/util/DiagnosticSource;

    invoke-direct {v0, p1, p0}, Lorg/openjdk/tools/javac/util/DiagnosticSource;-><init>(Lorg/openjdk/javax/tools/JavaFileObject;Lorg/openjdk/tools/javac/util/AbstractLog;)V

    iget-object v1, p0, Lorg/openjdk/tools/javac/util/AbstractLog;->sourceMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public varargs mandatoryNote(Lorg/openjdk/javax/tools/JavaFileObject;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/AbstractLog;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    invoke-virtual {v0, p2, p3}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->noteKey(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/util/AbstractLog;->mandatoryNote(Lorg/openjdk/javax/tools/JavaFileObject;Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;)V

    return-void
.end method

.method public mandatoryNote(Lorg/openjdk/javax/tools/JavaFileObject;Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/AbstractLog;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/util/AbstractLog;->getSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/tools/javac/util/DiagnosticSource;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->mandatoryNote(Lorg/openjdk/tools/javac/util/DiagnosticSource;Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/util/AbstractLog;->report(Lorg/openjdk/tools/javac/util/JCDiagnostic;)V

    return-void
.end method

.method public varargs mandatoryWarning(Lorg/openjdk/tools/javac/code/Lint$LintCategory;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/AbstractLog;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    invoke-virtual {v0, p3, p4}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->warningKey(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/util/AbstractLog;->mandatoryWarning(Lorg/openjdk/tools/javac/code/Lint$LintCategory;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;)V

    return-void
.end method

.method public mandatoryWarning(Lorg/openjdk/tools/javac/code/Lint$LintCategory;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/AbstractLog;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    iget-object v1, p0, Lorg/openjdk/tools/javac/util/AbstractLog;->source:Lorg/openjdk/tools/javac/util/DiagnosticSource;

    invoke-virtual {v0, p1, v1, p2, p3}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->mandatoryWarning(Lorg/openjdk/tools/javac/code/Lint$LintCategory;Lorg/openjdk/tools/javac/util/DiagnosticSource;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/util/AbstractLog;->report(Lorg/openjdk/tools/javac/util/JCDiagnostic;)V

    return-void
.end method

.method public varargs mandatoryWarning(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/AbstractLog;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    invoke-virtual {v0, p2, p3}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->warningKey(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/util/AbstractLog;->mandatoryWarning(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;)V

    return-void
.end method

.method public mandatoryWarning(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/AbstractLog;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/openjdk/tools/javac/util/AbstractLog;->source:Lorg/openjdk/tools/javac/util/DiagnosticSource;

    invoke-virtual {v0, v1, v2, p1, p2}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->mandatoryWarning(Lorg/openjdk/tools/javac/code/Lint$LintCategory;Lorg/openjdk/tools/javac/util/DiagnosticSource;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/util/AbstractLog;->report(Lorg/openjdk/tools/javac/util/JCDiagnostic;)V

    return-void
.end method

.method public varargs note(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/AbstractLog;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    invoke-virtual {v0, p2, p3}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->noteKey(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/util/AbstractLog;->note(ILorg/openjdk/tools/javac/util/JCDiagnostic$Note;)V

    return-void
.end method

.method public note(ILorg/openjdk/tools/javac/util/JCDiagnostic$Note;)V
    .locals 2

    .line 6
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/AbstractLog;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    iget-object v1, p0, Lorg/openjdk/tools/javac/util/AbstractLog;->source:Lorg/openjdk/tools/javac/util/DiagnosticSource;

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/util/AbstractLog;->wrap(I)Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object p1

    invoke-virtual {v0, v1, p1, p2}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->note(Lorg/openjdk/tools/javac/util/DiagnosticSource;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/util/AbstractLog;->report(Lorg/openjdk/tools/javac/util/JCDiagnostic;)V

    return-void
.end method

.method public varargs note(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/AbstractLog;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    invoke-virtual {v0, p1, p2}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->noteKey(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/util/AbstractLog;->note(Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;)V

    return-void
.end method

.method public varargs note(Lorg/openjdk/javax/tools/JavaFileObject;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 7
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/AbstractLog;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    invoke-virtual {v0, p2, p3}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->noteKey(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/util/AbstractLog;->note(Lorg/openjdk/javax/tools/JavaFileObject;Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;)V

    return-void
.end method

.method public note(Lorg/openjdk/javax/tools/JavaFileObject;Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;)V
    .locals 2

    .line 8
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/AbstractLog;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/util/AbstractLog;->getSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/tools/javac/util/DiagnosticSource;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->note(Lorg/openjdk/tools/javac/util/DiagnosticSource;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/util/AbstractLog;->report(Lorg/openjdk/tools/javac/util/JCDiagnostic;)V

    return-void
.end method

.method public varargs note(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/AbstractLog;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    invoke-virtual {v0, p2, p3}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->noteKey(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/util/AbstractLog;->note(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;)V

    return-void
.end method

.method public note(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/AbstractLog;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    iget-object v1, p0, Lorg/openjdk/tools/javac/util/AbstractLog;->source:Lorg/openjdk/tools/javac/util/DiagnosticSource;

    invoke-virtual {v0, v1, p1, p2}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->note(Lorg/openjdk/tools/javac/util/DiagnosticSource;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/util/AbstractLog;->report(Lorg/openjdk/tools/javac/util/JCDiagnostic;)V

    return-void
.end method

.method public note(Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/AbstractLog;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    iget-object v1, p0, Lorg/openjdk/tools/javac/util/AbstractLog;->source:Lorg/openjdk/tools/javac/util/DiagnosticSource;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->note(Lorg/openjdk/tools/javac/util/DiagnosticSource;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/util/AbstractLog;->report(Lorg/openjdk/tools/javac/util/JCDiagnostic;)V

    return-void
.end method

.method public abstract report(Lorg/openjdk/tools/javac/util/JCDiagnostic;)V
.end method

.method public useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/AbstractLog;->source:Lorg/openjdk/tools/javac/util/DiagnosticSource;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/DiagnosticSource;->getFile()Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/util/AbstractLog;->getSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/tools/javac/util/DiagnosticSource;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/util/AbstractLog;->source:Lorg/openjdk/tools/javac/util/DiagnosticSource;

    return-object v0
.end method

.method public varargs warning(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 9
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/AbstractLog;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    invoke-virtual {v0, p2, p3}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->warningKey(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/util/AbstractLog;->warning(ILorg/openjdk/tools/javac/util/JCDiagnostic$Warning;)V

    return-void
.end method

.method public warning(ILorg/openjdk/tools/javac/util/JCDiagnostic$Warning;)V
    .locals 3

    .line 10
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/AbstractLog;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    iget-object v1, p0, Lorg/openjdk/tools/javac/util/AbstractLog;->source:Lorg/openjdk/tools/javac/util/DiagnosticSource;

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/util/AbstractLog;->wrap(I)Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, p1, p2}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->warning(Lorg/openjdk/tools/javac/code/Lint$LintCategory;Lorg/openjdk/tools/javac/util/DiagnosticSource;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/util/AbstractLog;->report(Lorg/openjdk/tools/javac/util/JCDiagnostic;)V

    return-void
.end method

.method public varargs warning(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/AbstractLog;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    invoke-virtual {v0, p1, p2}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->warningKey(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/util/AbstractLog;->warning(Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;)V

    return-void
.end method

.method public varargs warning(Lorg/openjdk/tools/javac/code/Lint$LintCategory;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/AbstractLog;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    invoke-virtual {v0, p2, p3}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->warningKey(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/util/AbstractLog;->warning(Lorg/openjdk/tools/javac/code/Lint$LintCategory;Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;)V

    return-void
.end method

.method public varargs warning(Lorg/openjdk/tools/javac/code/Lint$LintCategory;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 7
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/AbstractLog;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    invoke-virtual {v0, p3, p4}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->warningKey(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/util/AbstractLog;->warning(Lorg/openjdk/tools/javac/code/Lint$LintCategory;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;)V

    return-void
.end method

.method public warning(Lorg/openjdk/tools/javac/code/Lint$LintCategory;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;)V
    .locals 2

    .line 8
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/AbstractLog;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    iget-object v1, p0, Lorg/openjdk/tools/javac/util/AbstractLog;->source:Lorg/openjdk/tools/javac/util/DiagnosticSource;

    invoke-virtual {v0, p1, v1, p2, p3}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->warning(Lorg/openjdk/tools/javac/code/Lint$LintCategory;Lorg/openjdk/tools/javac/util/DiagnosticSource;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/util/AbstractLog;->report(Lorg/openjdk/tools/javac/util/JCDiagnostic;)V

    return-void
.end method

.method public warning(Lorg/openjdk/tools/javac/code/Lint$LintCategory;Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/AbstractLog;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1, p2}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->warning(Lorg/openjdk/tools/javac/code/Lint$LintCategory;Lorg/openjdk/tools/javac/util/DiagnosticSource;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/util/AbstractLog;->report(Lorg/openjdk/tools/javac/util/JCDiagnostic;)V

    return-void
.end method

.method public varargs warning(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/AbstractLog;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    invoke-virtual {v0, p2, p3}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->warningKey(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/util/AbstractLog;->warning(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;)V

    return-void
.end method

.method public warning(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;)V
    .locals 3

    .line 6
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/AbstractLog;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/openjdk/tools/javac/util/AbstractLog;->source:Lorg/openjdk/tools/javac/util/DiagnosticSource;

    invoke-virtual {v0, v1, v2, p1, p2}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->warning(Lorg/openjdk/tools/javac/code/Lint$LintCategory;Lorg/openjdk/tools/javac/util/DiagnosticSource;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/util/AbstractLog;->report(Lorg/openjdk/tools/javac/util/JCDiagnostic;)V

    return-void
.end method

.method public warning(Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/AbstractLog;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/openjdk/tools/javac/util/AbstractLog;->source:Lorg/openjdk/tools/javac/util/DiagnosticSource;

    invoke-virtual {v0, v1, v2, v1, p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->warning(Lorg/openjdk/tools/javac/code/Lint$LintCategory;Lorg/openjdk/tools/javac/util/DiagnosticSource;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/util/AbstractLog;->report(Lorg/openjdk/tools/javac/util/JCDiagnostic;)V

    return-void
.end method
