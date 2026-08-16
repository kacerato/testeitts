.class public Lcom/android/tools/r8/retrace/RetraceInvalidStackTraceLineDiagnostics;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/Diagnostic;


# instance fields
.field private final b:I


# direct methods
.method private constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/tools/r8/retrace/RetraceInvalidStackTraceLineDiagnostics;->b:I

    return-void
.end method

.method public static createNull(I)Lcom/android/tools/r8/retrace/RetraceInvalidStackTraceLineDiagnostics;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/retrace/RetraceInvalidStackTraceLineDiagnostics;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/retrace/RetraceInvalidStackTraceLineDiagnostics;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public getDiagnosticMessage()Ljava/lang/String;
    .locals 1

    const-string v0, "The stack trace line is <null>"

    return-object v0
.end method

.method public getOrigin()Lcom/android/tools/r8/origin/Origin;
    .locals 1

    invoke-static {}, Lcom/android/tools/r8/origin/Origin;->unknown()Lcom/android/tools/r8/origin/Origin;

    move-result-object v0

    return-object v0
.end method

.method public getPosition()Lcom/android/tools/r8/position/Position;
    .locals 5

    new-instance v0, Lcom/android/tools/r8/position/TextPosition;

    iget v1, p0, Lcom/android/tools/r8/retrace/RetraceInvalidStackTraceLineDiagnostics;->b:I

    const-wide/16 v2, 0x0

    const/4 v4, -0x1

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/android/tools/r8/position/TextPosition;-><init>(JII)V

    return-object v0
.end method
