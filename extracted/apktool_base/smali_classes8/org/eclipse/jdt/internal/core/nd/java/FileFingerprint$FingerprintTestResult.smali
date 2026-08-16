.class public Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint$FingerprintTestResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FingerprintTestResult"
.end annotation


# instance fields
.field private matches:Z

.field private needsNewFingerprint:Z

.field private newFingerprint:Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint;


# direct methods
.method public constructor <init>(ZZLorg/eclipse/jdt/internal/core/nd/java/FileFingerprint;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint$FingerprintTestResult;->matches:Z

    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint$FingerprintTestResult;->newFingerprint:Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint;

    iput-boolean p2, p0, Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint$FingerprintTestResult;->needsNewFingerprint:Z

    return-void
.end method


# virtual methods
.method public getNewFingerprint()Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint$FingerprintTestResult;->newFingerprint:Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint;

    return-object v0
.end method

.method public matches()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint$FingerprintTestResult;->matches:Z

    return v0
.end method

.method public needsNewFingerprint()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint$FingerprintTestResult;->needsNewFingerprint:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FingerprintTestResult [matches="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint$FingerprintTestResult;->matches:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", needsNewFingerprint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint$FingerprintTestResult;->needsNewFingerprint:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", newFingerprint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint$FingerprintTestResult;->newFingerprint:Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
