.class public Lcom/android/tools/r8/errors/AssumeValuesMissingStaticFieldDiagnostic;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/Diagnostic;


# instance fields
.field private final b:Lcom/android/tools/r8/graph/M2;

.field private final c:Lcom/android/tools/r8/graph/L2;

.field private final d:Lcom/android/tools/r8/origin/Origin;

.field private final e:Lcom/android/tools/r8/position/Position;


# direct methods
.method private constructor <init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/android/tools/r8/errors/AssumeValuesMissingStaticFieldDiagnostic;->b:Lcom/android/tools/r8/graph/M2;

    .line 4
    iput-object p2, p0, Lcom/android/tools/r8/errors/AssumeValuesMissingStaticFieldDiagnostic;->c:Lcom/android/tools/r8/graph/L2;

    .line 5
    iput-object p3, p0, Lcom/android/tools/r8/errors/AssumeValuesMissingStaticFieldDiagnostic;->d:Lcom/android/tools/r8/origin/Origin;

    .line 6
    iput-object p4, p0, Lcom/android/tools/r8/errors/AssumeValuesMissingStaticFieldDiagnostic;->e:Lcom/android/tools/r8/position/Position;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;Lcom/android/tools/r8/errors/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/errors/AssumeValuesMissingStaticFieldDiagnostic;-><init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;)V

    return-void
.end method


# virtual methods
.method public getDiagnosticMessage()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/errors/AssumeValuesMissingStaticFieldDiagnostic;->b:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->D0()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/errors/AssumeValuesMissingStaticFieldDiagnostic;->c:Lcom/android/tools/r8/graph/L2;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The field "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " is used as the return value in an -assumenosideeffects or -assumevalues rule, but no such static field exists."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOrigin()Lcom/android/tools/r8/origin/Origin;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/errors/AssumeValuesMissingStaticFieldDiagnostic;->d:Lcom/android/tools/r8/origin/Origin;

    return-object v0
.end method

.method public getPosition()Lcom/android/tools/r8/position/Position;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/errors/AssumeValuesMissingStaticFieldDiagnostic;->e:Lcom/android/tools/r8/position/Position;

    return-object v0
.end method
