.class public final Lcom/android/tools/r8/p0;
.super Lcom/android/tools/r8/internal/dy;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/dy;-><init>(Lcom/android/tools/r8/DiagnosticsHandler;)V

    return-void
.end method


# virtual methods
.method public final modifyDiagnosticsLevel(Lcom/android/tools/r8/DiagnosticsLevel;Lcom/android/tools/r8/Diagnostic;)Lcom/android/tools/r8/DiagnosticsLevel;
    .locals 1

    instance-of v0, p2, Lcom/android/tools/r8/diagnostic/R8VersionDiagnostic;

    if-eqz v0, :cond_0

    sget-object p1, Lcom/android/tools/r8/DiagnosticsLevel;->NONE:Lcom/android/tools/r8/DiagnosticsLevel;

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/dy;->a:Lcom/android/tools/r8/DiagnosticsHandler;

    invoke-interface {v0, p1, p2}, Lcom/android/tools/r8/DiagnosticsHandler;->modifyDiagnosticsLevel(Lcom/android/tools/r8/DiagnosticsLevel;Lcom/android/tools/r8/Diagnostic;)Lcom/android/tools/r8/DiagnosticsLevel;

    move-result-object p1

    return-object p1
.end method
