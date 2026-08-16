.class public Lcom/android/tools/r8/errors/UnsupportedDesugaredLibraryConfigurationVersionDiagnostic;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/Diagnostic;


# instance fields
.field private final b:Lcom/android/tools/r8/origin/Origin;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/origin/Origin;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/errors/UnsupportedDesugaredLibraryConfigurationVersionDiagnostic;->b:Lcom/android/tools/r8/origin/Origin;

    return-void
.end method


# virtual methods
.method public getDiagnosticMessage()Ljava/lang/String;
    .locals 1

    const-string v0, "Unsupported desugared library configuration version, please upgrade the D8/R8 compiler. See https://developer.android.com/studio/build/library-desugaring-versions. To learn more about library desugaring read https://developer.android.com/studio/build/library-desugaring."

    return-object v0
.end method

.method public getOrigin()Lcom/android/tools/r8/origin/Origin;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/errors/UnsupportedDesugaredLibraryConfigurationVersionDiagnostic;->b:Lcom/android/tools/r8/origin/Origin;

    return-object v0
.end method

.method public getPosition()Lcom/android/tools/r8/position/Position;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/position/Position;->UNKNOWN:Lcom/android/tools/r8/position/Position;

    return-object v0
.end method
