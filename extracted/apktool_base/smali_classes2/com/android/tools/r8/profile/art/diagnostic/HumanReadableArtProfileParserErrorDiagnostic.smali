.class public Lcom/android/tools/r8/profile/art/diagnostic/HumanReadableArtProfileParserErrorDiagnostic;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/Diagnostic;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:I

.field private final d:Lcom/android/tools/r8/origin/Origin;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/android/tools/r8/origin/Origin;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/profile/art/diagnostic/HumanReadableArtProfileParserErrorDiagnostic;->b:Ljava/lang/String;

    iput p2, p0, Lcom/android/tools/r8/profile/art/diagnostic/HumanReadableArtProfileParserErrorDiagnostic;->c:I

    iput-object p3, p0, Lcom/android/tools/r8/profile/art/diagnostic/HumanReadableArtProfileParserErrorDiagnostic;->d:Lcom/android/tools/r8/origin/Origin;

    return-void
.end method


# virtual methods
.method public getDiagnosticMessage()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/android/tools/r8/profile/art/diagnostic/HumanReadableArtProfileParserErrorDiagnostic;->c:I

    iget-object v1, p0, Lcom/android/tools/r8/profile/art/diagnostic/HumanReadableArtProfileParserErrorDiagnostic;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to parse rule at line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " from ART profile: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOrigin()Lcom/android/tools/r8/origin/Origin;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/profile/art/diagnostic/HumanReadableArtProfileParserErrorDiagnostic;->d:Lcom/android/tools/r8/origin/Origin;

    return-object v0
.end method

.method public getPosition()Lcom/android/tools/r8/position/Position;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/position/Position;->UNKNOWN:Lcom/android/tools/r8/position/Position;

    return-object v0
.end method
