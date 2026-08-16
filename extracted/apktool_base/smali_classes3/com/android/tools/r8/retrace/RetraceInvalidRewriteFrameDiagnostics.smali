.class public Lcom/android/tools/r8/retrace/RetraceInvalidRewriteFrameDiagnostics;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/Diagnostic;


# instance fields
.field private final b:I

.field private final c:Ljava/lang/String;


# direct methods
.method private constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/tools/r8/retrace/RetraceInvalidRewriteFrameDiagnostics;->b:I

    iput-object p2, p0, Lcom/android/tools/r8/retrace/RetraceInvalidRewriteFrameDiagnostics;->c:Ljava/lang/String;

    return-void
.end method

.method public static create(ILjava/lang/String;)Lcom/android/tools/r8/retrace/RetraceInvalidRewriteFrameDiagnostics;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/retrace/RetraceInvalidRewriteFrameDiagnostics;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/retrace/RetraceInvalidRewriteFrameDiagnostics;-><init>(ILjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getDiagnosticMessage()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/android/tools/r8/retrace/RetraceInvalidRewriteFrameDiagnostics;->b:I

    iget-object v1, p0, Lcom/android/tools/r8/retrace/RetraceInvalidRewriteFrameDiagnostics;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot remove "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " frames from the retraced output of "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " because it exceeds the number of retraced frames"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOrigin()Lcom/android/tools/r8/origin/Origin;
    .locals 1

    invoke-static {}, Lcom/android/tools/r8/origin/Origin;->unknown()Lcom/android/tools/r8/origin/Origin;

    move-result-object v0

    return-object v0
.end method

.method public getPosition()Lcom/android/tools/r8/position/Position;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/position/Position;->UNKNOWN:Lcom/android/tools/r8/position/Position;

    return-object v0
.end method
