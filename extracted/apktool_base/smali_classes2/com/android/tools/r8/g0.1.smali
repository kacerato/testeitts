.class public final Lcom/android/tools/r8/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/DiagnosticsHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final error(Lcom/android/tools/r8/Diagnostic;)V
    .locals 2

    instance-of v0, p1, Lcom/android/tools/r8/errors/DexFileOverflowDiagnostic;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/tools/r8/errors/DexFileOverflowDiagnostic;

    invoke-virtual {v0}, Lcom/android/tools/r8/errors/DexFileOverflowDiagnostic;->hasMainDexSpecification()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance p1, Lcom/android/tools/r8/utils/StringDiagnostic;

    invoke-virtual {v0}, Lcom/android/tools/r8/errors/DexFileOverflowDiagnostic;->getDiagnosticMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". Try supplying a main-dex list or main-dex rules"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/tools/r8/DiagnosticsHandler;->error(Lcom/android/tools/r8/Diagnostic;)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/android/tools/r8/DiagnosticsHandler;->error(Lcom/android/tools/r8/Diagnostic;)V

    return-void
.end method
