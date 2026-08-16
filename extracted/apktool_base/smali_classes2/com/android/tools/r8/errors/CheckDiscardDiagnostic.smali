.class public Lcom/android/tools/r8/errors/CheckDiscardDiagnostic;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/Diagnostic;


# instance fields
.field private final b:Lcom/android/tools/r8/internal/hC;


# direct methods
.method private constructor <init>(Lcom/android/tools/r8/internal/hC;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/android/tools/r8/errors/CheckDiscardDiagnostic;->b:Lcom/android/tools/r8/internal/hC;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/errors/k;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/tools/r8/errors/CheckDiscardDiagnostic;-><init>(Lcom/android/tools/r8/internal/hC;)V

    return-void
.end method

.method private static synthetic a(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static synthetic b(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/tools/r8/errors/CheckDiscardDiagnostic;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getDiagnosticMessage()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Discard checks failed."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/tools/r8/errors/CheckDiscardDiagnostic;->b:Lcom/android/tools/r8/internal/hC;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "The following items were not discarded"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/tools/r8/errors/CheckDiscardDiagnostic;->b:Lcom/android/tools/r8/internal/hC;

    new-instance v2, Lcom/android/tools/r8/errors/j;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/errors/j;-><init>(Ljava/lang/StringBuilder;)V

    invoke-interface {v1, v2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumberOfFailures()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/errors/CheckDiscardDiagnostic;->b:Lcom/android/tools/r8/internal/hC;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
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
