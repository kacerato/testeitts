.class public final Lcom/android/tools/r8/T;
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

    check-cast p1, Lcom/android/tools/r8/errors/DexFileOverflowDiagnostic;

    new-instance v0, Lcom/android/tools/r8/utils/StringDiagnostic;

    invoke-virtual {p1}, Lcom/android/tools/r8/errors/DexFileOverflowDiagnostic;->getDiagnosticMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Library too large. L8 can only produce a single .dex file"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;)V

    invoke-super {p0, v0}, Lcom/android/tools/r8/DiagnosticsHandler;->error(Lcom/android/tools/r8/Diagnostic;)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/android/tools/r8/DiagnosticsHandler;->error(Lcom/android/tools/r8/Diagnostic;)V

    return-void
.end method
