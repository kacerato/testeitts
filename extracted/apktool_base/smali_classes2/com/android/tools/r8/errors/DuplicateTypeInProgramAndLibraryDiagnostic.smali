.class public Lcom/android/tools/r8/errors/DuplicateTypeInProgramAndLibraryDiagnostic;
.super Lcom/android/tools/r8/errors/DuplicateTypesDiagnostic;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/references/ClassReference;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/origin/Origin;)V
    .locals 0

    invoke-static {p2, p3}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/errors/DuplicateTypesDiagnostic;-><init>(Lcom/android/tools/r8/references/ClassReference;Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public getDiagnosticMessage()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lcom/android/tools/r8/errors/DuplicateTypesDiagnostic;->getType()Lcom/android/tools/r8/references/ClassReference;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/tools/r8/references/TypeReference;->getTypeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/tools/r8/errors/DuplicateTypeInProgramAndLibraryDiagnostic;->getProgramOrigin()Lcom/android/tools/r8/origin/Origin;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/tools/r8/errors/DuplicateTypeInProgramAndLibraryDiagnostic;->getLibraryOrigin()Lcom/android/tools/r8/origin/Origin;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is defined by both the program: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " and the library: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLibraryOrigin()Lcom/android/tools/r8/origin/Origin;
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/errors/DuplicateTypesDiagnostic;->getOrigins()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/origin/Origin;

    return-object v0
.end method

.method public getProgramOrigin()Lcom/android/tools/r8/origin/Origin;
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/errors/DuplicateTypesDiagnostic;->getOrigins()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/origin/Origin;

    return-object v0
.end method
