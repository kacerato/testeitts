.class public Lcom/android/tools/r8/errors/UnusedProguardKeepRuleDiagnostic;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/errors/ProguardKeepRuleDiagnostic;


# instance fields
.field private final b:Lcom/android/tools/r8/shaking/v3;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/shaking/v3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/errors/UnusedProguardKeepRuleDiagnostic;->b:Lcom/android/tools/r8/shaking/v3;

    return-void
.end method


# virtual methods
.method public getDiagnosticMessage()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/errors/UnusedProguardKeepRuleDiagnostic;->b:Lcom/android/tools/r8/shaking/v3;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Proguard configuration rule does not match anything: `"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "`"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOrigin()Lcom/android/tools/r8/origin/Origin;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/errors/UnusedProguardKeepRuleDiagnostic;->b:Lcom/android/tools/r8/shaking/v3;

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/f3;->i()Lcom/android/tools/r8/origin/Origin;

    move-result-object v0

    return-object v0
.end method

.method public getPosition()Lcom/android/tools/r8/position/Position;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/errors/UnusedProguardKeepRuleDiagnostic;->b:Lcom/android/tools/r8/shaking/v3;

    iget-object v0, v0, Lcom/android/tools/r8/shaking/f3;->b:Lcom/android/tools/r8/position/Position;

    return-object v0
.end method
