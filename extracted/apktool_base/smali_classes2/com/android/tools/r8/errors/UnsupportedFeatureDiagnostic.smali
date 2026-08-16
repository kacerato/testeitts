.class public abstract Lcom/android/tools/r8/errors/UnsupportedFeatureDiagnostic;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/Diagnostic;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Lcom/android/tools/r8/internal/C2;

.field private final d:Lcom/android/tools/r8/origin/Origin;

.field private final e:Lcom/android/tools/r8/position/Position;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/tools/r8/internal/C2;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/errors/UnsupportedFeatureDiagnostic;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/tools/r8/errors/UnsupportedFeatureDiagnostic;->c:Lcom/android/tools/r8/internal/C2;

    iput-object p3, p0, Lcom/android/tools/r8/errors/UnsupportedFeatureDiagnostic;->d:Lcom/android/tools/r8/origin/Origin;

    iput-object p4, p0, Lcom/android/tools/r8/errors/UnsupportedFeatureDiagnostic;->e:Lcom/android/tools/r8/position/Position;

    return-void
.end method

.method public static makeMessage(Lcom/android/tools/r8/internal/C2;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " are not supported at any API level known by the compiler"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/C2;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/C2;->d()I

    move-result p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " are only supported starting with "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " (--min-api "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    if-eqz p2, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public getFeatureDescriptor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/errors/UnsupportedFeatureDiagnostic;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getOrigin()Lcom/android/tools/r8/origin/Origin;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/errors/UnsupportedFeatureDiagnostic;->d:Lcom/android/tools/r8/origin/Origin;

    return-object v0
.end method

.method public getPosition()Lcom/android/tools/r8/position/Position;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/errors/UnsupportedFeatureDiagnostic;->e:Lcom/android/tools/r8/position/Position;

    return-object v0
.end method

.method public getSupportedApiLevel()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/errors/UnsupportedFeatureDiagnostic;->c:Lcom/android/tools/r8/internal/C2;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/C2;->d()I

    move-result v0

    return v0
.end method
