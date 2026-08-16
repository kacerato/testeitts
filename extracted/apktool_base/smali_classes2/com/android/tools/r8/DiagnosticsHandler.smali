.class public interface abstract Lcom/android/tools/r8/DiagnosticsHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static printDiagnosticToStream(Lcom/android/tools/r8/Diagnostic;Ljava/lang/String;Ljava/io/PrintStream;)V
    .locals 2

    invoke-interface {p0}, Lcom/android/tools/r8/Diagnostic;->getOrigin()Lcom/android/tools/r8/origin/Origin;

    move-result-object v0

    invoke-static {}, Lcom/android/tools/r8/origin/Origin;->unknown()Lcom/android/tools/r8/origin/Origin;

    move-result-object v1

    if-eq v0, v1, :cond_1

    invoke-interface {p0}, Lcom/android/tools/r8/Diagnostic;->getOrigin()Lcom/android/tools/r8/origin/Origin;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/android/tools/r8/Diagnostic;->getPosition()Lcom/android/tools/r8/position/Position;

    move-result-object p1

    sget-object v0, Lcom/android/tools/r8/position/Position;->UNKNOWN:Lcom/android/tools/r8/position/Position;

    if-eq p1, v0, :cond_0

    invoke-interface {p0}, Lcom/android/tools/r8/Diagnostic;->getPosition()Lcom/android/tools/r8/position/Position;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/tools/r8/position/Position;->getDescription()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_0
    const-string p1, ":"

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_0
    invoke-interface {p0}, Lcom/android/tools/r8/Diagnostic;->getDiagnosticMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public error(Lcom/android/tools/r8/Diagnostic;)V
    .locals 2

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Error"

    invoke-static {p1, v1, v0}, Lcom/android/tools/r8/DiagnosticsHandler;->printDiagnosticToStream(Lcom/android/tools/r8/Diagnostic;Ljava/lang/String;Ljava/io/PrintStream;)V

    return-void
.end method

.method public info(Lcom/android/tools/r8/Diagnostic;)V
    .locals 2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Info"

    invoke-static {p1, v1, v0}, Lcom/android/tools/r8/DiagnosticsHandler;->printDiagnosticToStream(Lcom/android/tools/r8/Diagnostic;Ljava/lang/String;Ljava/io/PrintStream;)V

    return-void
.end method

.method public modifyDiagnosticsLevel(Lcom/android/tools/r8/DiagnosticsLevel;Lcom/android/tools/r8/Diagnostic;)Lcom/android/tools/r8/DiagnosticsLevel;
    .locals 0

    return-object p1
.end method

.method public warning(Lcom/android/tools/r8/Diagnostic;)V
    .locals 2

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Warning"

    invoke-static {p1, v1, v0}, Lcom/android/tools/r8/DiagnosticsHandler;->printDiagnosticToStream(Lcom/android/tools/r8/Diagnostic;Ljava/lang/String;Ljava/io/PrintStream;)V

    return-void
.end method
