.class public Lcom/android/tools/r8/errors/DexFileOverflowDiagnostic;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/Diagnostic;


# instance fields
.field private final b:Z

.field private final c:J

.field private final d:J


# direct methods
.method public constructor <init>(ZJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/tools/r8/errors/DexFileOverflowDiagnostic;->b:Z

    iput-wide p2, p0, Lcom/android/tools/r8/errors/DexFileOverflowDiagnostic;->c:J

    iput-wide p4, p0, Lcom/android/tools/r8/errors/DexFileOverflowDiagnostic;->d:J

    return-void
.end method


# virtual methods
.method public getDiagnosticMessage()Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot fit requested classes in "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/tools/r8/errors/DexFileOverflowDiagnostic;->hasMainDexSpecification()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "the main-"

    goto :goto_0

    :cond_0
    const-string v1, "a single "

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "dex file ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/tools/r8/errors/DexFileOverflowDiagnostic;->getNumberOfMethods()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/android/tools/r8/errors/DexFileOverflowDiagnostic;->getMaximumNumberOfMethods()J

    move-result-wide v3

    cmp-long v1, v1, v3

    const-string v2, " > "

    if-lez v1, :cond_1

    const-string v1, "# methods: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/tools/r8/errors/DexFileOverflowDiagnostic;->getNumberOfMethods()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/tools/r8/errors/DexFileOverflowDiagnostic;->getMaximumNumberOfMethods()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/tools/r8/errors/DexFileOverflowDiagnostic;->getNumberOfFields()J

    move-result-wide v3

    invoke-virtual {p0}, Lcom/android/tools/r8/errors/DexFileOverflowDiagnostic;->getMaximumNumberOfFields()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-lez v1, :cond_1

    const-string v1, " ; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/errors/DexFileOverflowDiagnostic;->getNumberOfFields()J

    move-result-wide v3

    invoke-virtual {p0}, Lcom/android/tools/r8/errors/DexFileOverflowDiagnostic;->getMaximumNumberOfFields()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-lez v1, :cond_2

    const-string v1, "# fields: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/tools/r8/errors/DexFileOverflowDiagnostic;->getNumberOfFields()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/tools/r8/errors/DexFileOverflowDiagnostic;->getMaximumNumberOfFields()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_2
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaximumNumberOfFields()J
    .locals 2

    const-wide/32 v0, 0x10000

    return-wide v0
.end method

.method public getMaximumNumberOfMethods()J
    .locals 2

    const-wide/32 v0, 0x10000

    return-wide v0
.end method

.method public getNumberOfFields()J
    .locals 2

    iget-wide v0, p0, Lcom/android/tools/r8/errors/DexFileOverflowDiagnostic;->d:J

    return-wide v0
.end method

.method public getNumberOfMethods()J
    .locals 2

    iget-wide v0, p0, Lcom/android/tools/r8/errors/DexFileOverflowDiagnostic;->c:J

    return-wide v0
.end method

.method public getOrigin()Lcom/android/tools/r8/origin/Origin;
    .locals 1

    invoke-static {}, Lcom/android/tools/r8/origin/Origin;->unknown()Lcom/android/tools/r8/origin/Origin;

    move-result-object v0

    return-object v0
.end method

.method public getPosition()Lcom/android/tools/r8/position/Position;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public hasMainDexSpecification()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/errors/DexFileOverflowDiagnostic;->b:Z

    return v0
.end method
