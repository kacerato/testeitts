.class public Lorg/openjdk/tools/javac/processing/JavacMessager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/javax/annotation/processing/Messager;


# instance fields
.field errorCount:I

.field log:Lorg/openjdk/tools/javac/util/Log;

.field processingEnv:Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;

.field warningCount:I


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/util/Context;Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/openjdk/tools/javac/processing/JavacMessager;->errorCount:I

    iput v0, p0, Lorg/openjdk/tools/javac/processing/JavacMessager;->warningCount:I

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Log;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/processing/JavacMessager;->log:Lorg/openjdk/tools/javac/util/Log;

    iput-object p2, p0, Lorg/openjdk/tools/javac/processing/JavacMessager;->processingEnv:Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;

    return-void
.end method


# virtual methods
.method public errorCount()I
    .locals 1

    iget v0, p0, Lorg/openjdk/tools/javac/processing/JavacMessager;->errorCount:I

    return v0
.end method

.method public errorRaised()Z
    .locals 1

    iget v0, p0, Lorg/openjdk/tools/javac/processing/JavacMessager;->errorCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public newRound()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/openjdk/tools/javac/processing/JavacMessager;->errorCount:I

    return-void
.end method

.method public printError(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lorg/openjdk/javax/tools/Diagnostic$Kind;->ERROR:Lorg/openjdk/javax/tools/Diagnostic$Kind;

    invoke-virtual {p0, v0, p1}, Lorg/openjdk/tools/javac/processing/JavacMessager;->printMessage(Lorg/openjdk/javax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public printMessage(Lorg/openjdk/javax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 1
    invoke-virtual/range {v0 .. v5}, Lorg/openjdk/tools/javac/processing/JavacMessager;->printMessage(Lorg/openjdk/javax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;Lorg/openjdk/javax/lang/model/element/Element;Lorg/openjdk/javax/lang/model/element/AnnotationMirror;Lorg/openjdk/javax/lang/model/element/AnnotationValue;)V

    return-void
.end method

.method public printMessage(Lorg/openjdk/javax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;Lorg/openjdk/javax/lang/model/element/Element;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 2
    invoke-virtual/range {v0 .. v5}, Lorg/openjdk/tools/javac/processing/JavacMessager;->printMessage(Lorg/openjdk/javax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;Lorg/openjdk/javax/lang/model/element/Element;Lorg/openjdk/javax/lang/model/element/AnnotationMirror;Lorg/openjdk/javax/lang/model/element/AnnotationValue;)V

    return-void
.end method

.method public printMessage(Lorg/openjdk/javax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;Lorg/openjdk/javax/lang/model/element/Element;Lorg/openjdk/javax/lang/model/element/AnnotationMirror;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 3
    invoke-virtual/range {v0 .. v5}, Lorg/openjdk/tools/javac/processing/JavacMessager;->printMessage(Lorg/openjdk/javax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;Lorg/openjdk/javax/lang/model/element/Element;Lorg/openjdk/javax/lang/model/element/AnnotationMirror;Lorg/openjdk/javax/lang/model/element/AnnotationValue;)V

    return-void
.end method

.method public printMessage(Lorg/openjdk/javax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;Lorg/openjdk/javax/lang/model/element/Element;Lorg/openjdk/javax/lang/model/element/AnnotationMirror;Lorg/openjdk/javax/lang/model/element/AnnotationValue;)V
    .locals 4

    .line 4
    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacMessager;->processingEnv:Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->getElementUtils()Lorg/openjdk/tools/javac/model/JavacElements;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p3, p4, p5}, Lorg/openjdk/tools/javac/model/JavacElements;->getTreeAndTopLevel(Lorg/openjdk/javax/lang/model/element/Element;Lorg/openjdk/javax/lang/model/element/AnnotationMirror;Lorg/openjdk/javax/lang/model/element/AnnotationValue;)Lorg/openjdk/tools/javac/util/Pair;

    move-result-object p3

    const/4 p4, 0x0

    if-eqz p3, :cond_1

    .line 6
    iget-object p5, p3, Lorg/openjdk/tools/javac/util/Pair;->snd:Ljava/lang/Object;

    check-cast p5, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object p5, p5, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->sourcefile:Lorg/openjdk/javax/tools/JavaFileObject;

    if-eqz p5, :cond_0

    .line 7
    iget-object p4, p0, Lorg/openjdk/tools/javac/processing/JavacMessager;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p4, p5}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object p4

    .line 8
    iget-object p3, p3, Lorg/openjdk/tools/javac/util/Pair;->fst:Ljava/lang/Object;

    check-cast p3, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object p3

    move-object v3, p4

    move-object p4, p3

    move-object p3, v3

    goto :goto_0

    :cond_0
    move-object p3, p4

    goto :goto_0

    :cond_1
    move-object p3, p4

    move-object p5, p3

    .line 9
    :goto_0
    :try_start_0
    sget-object v0, Lorg/openjdk/tools/javac/processing/JavacMessager$1;->$SwitchMap$javax$tools$Diagnostic$Kind:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "proc.messager"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    .line 10
    :try_start_1
    iget-object p1, p0, Lorg/openjdk/tools/javac/processing/JavacMessager;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p4, v0, p2}, Lorg/openjdk/tools/javac/util/AbstractLog;->note(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 11
    :cond_2
    iget p1, p0, Lorg/openjdk/tools/javac/processing/JavacMessager;->warningCount:I

    add-int/2addr p1, v1

    iput p1, p0, Lorg/openjdk/tools/javac/processing/JavacMessager;->warningCount:I

    .line 12
    iget-object p1, p0, Lorg/openjdk/tools/javac/processing/JavacMessager;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p4, v0, p2}, Lorg/openjdk/tools/javac/util/AbstractLog;->mandatoryWarning(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 13
    :cond_3
    iget p1, p0, Lorg/openjdk/tools/javac/processing/JavacMessager;->warningCount:I

    add-int/2addr p1, v1

    iput p1, p0, Lorg/openjdk/tools/javac/processing/JavacMessager;->warningCount:I

    .line 14
    iget-object p1, p0, Lorg/openjdk/tools/javac/processing/JavacMessager;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p4, v0, p2}, Lorg/openjdk/tools/javac/util/AbstractLog;->warning(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 15
    :cond_4
    iget p1, p0, Lorg/openjdk/tools/javac/processing/JavacMessager;->errorCount:I

    add-int/2addr p1, v1

    iput p1, p0, Lorg/openjdk/tools/javac/processing/JavacMessager;->errorCount:I

    .line 16
    iget-object p1, p0, Lorg/openjdk/tools/javac/processing/JavacMessager;->log:Lorg/openjdk/tools/javac/util/Log;

    sget-object v1, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;->MULTIPLE:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, v1, p4, v0, p2}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz p5, :cond_5

    .line 17
    iget-object p1, p0, Lorg/openjdk/tools/javac/processing/JavacMessager;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p1, p3}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    :cond_5
    return-void

    :goto_2
    if-eqz p5, :cond_6

    iget-object p2, p0, Lorg/openjdk/tools/javac/processing/JavacMessager;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p2, p3}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    .line 18
    :cond_6
    throw p1
.end method

.method public printNotice(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lorg/openjdk/javax/tools/Diagnostic$Kind;->NOTE:Lorg/openjdk/javax/tools/Diagnostic$Kind;

    invoke-virtual {p0, v0, p1}, Lorg/openjdk/tools/javac/processing/JavacMessager;->printMessage(Lorg/openjdk/javax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public printWarning(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lorg/openjdk/javax/tools/Diagnostic$Kind;->WARNING:Lorg/openjdk/javax/tools/Diagnostic$Kind;

    invoke-virtual {p0, v0, p1}, Lorg/openjdk/tools/javac/processing/JavacMessager;->printMessage(Lorg/openjdk/javax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "javac Messager"

    return-object v0
.end method

.method public warningCount()I
    .locals 1

    iget v0, p0, Lorg/openjdk/tools/javac/processing/JavacMessager;->warningCount:I

    return v0
.end method
