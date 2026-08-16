.class public Lcom/android/tools/r8/errors/EmptyMemberRulesToDefaultInitRuleConversionDiagnostic;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/Diagnostic;


# instance fields
.field private final b:Lcom/android/tools/r8/shaking/K3;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/shaking/K3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/errors/EmptyMemberRulesToDefaultInitRuleConversionDiagnostic;->b:Lcom/android/tools/r8/shaking/K3;

    return-void
.end method


# virtual methods
.method public getDiagnosticMessage()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/errors/EmptyMemberRulesToDefaultInitRuleConversionDiagnostic;->b:Lcom/android/tools/r8/shaking/K3;

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/f3;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The current version of R8 implicitly keeps the default constructor for Proguard configuration rules that have no member pattern. If the following rule should continue to keep the default constructor in the next major version of R8, then it must be augmented with the member pattern `{ void <init>(); }` to explicitly keep the default constructor:"

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/zq0;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOrigin()Lcom/android/tools/r8/origin/Origin;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/errors/EmptyMemberRulesToDefaultInitRuleConversionDiagnostic;->b:Lcom/android/tools/r8/shaking/K3;

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/f3;->i()Lcom/android/tools/r8/origin/Origin;

    move-result-object v0

    return-object v0
.end method

.method public getPosition()Lcom/android/tools/r8/position/Position;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/errors/EmptyMemberRulesToDefaultInitRuleConversionDiagnostic;->b:Lcom/android/tools/r8/shaking/K3;

    iget-object v0, v0, Lcom/android/tools/r8/shaking/f3;->b:Lcom/android/tools/r8/position/Position;

    return-object v0
.end method
