.class public Lcom/android/tools/r8/ir/optimize/ServiceLoaderRewriterDiagnostic;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/Diagnostic;


# instance fields
.field private final b:Lcom/android/tools/r8/origin/Origin;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/origin/Origin;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/ir/optimize/ServiceLoaderRewriterDiagnostic;->b:Lcom/android/tools/r8/origin/Origin;

    iput-object p2, p0, Lcom/android/tools/r8/ir/optimize/ServiceLoaderRewriterDiagnostic;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDiagnosticMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/ServiceLoaderRewriterDiagnostic;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getOrigin()Lcom/android/tools/r8/origin/Origin;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/ServiceLoaderRewriterDiagnostic;->b:Lcom/android/tools/r8/origin/Origin;

    return-object v0
.end method

.method public getPosition()Lcom/android/tools/r8/position/Position;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/position/Position;->UNKNOWN:Lcom/android/tools/r8/position/Position;

    return-object v0
.end method
