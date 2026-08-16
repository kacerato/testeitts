.class public Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field accessRestriction:Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;

.field binaryType:Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

.field binding:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

.field compilationUnit:Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

.field externalAnnotationPath:Ljava/lang/String;

.field public moduleBinding:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

.field moduleName:[C

.field sourceTypes:[Lorg/eclipse/jdt/internal/compiler/env/ISourceType;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getModule()[C

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;-><init>(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;[C)V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;[C)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->binaryType:Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    .line 4
    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->accessRestriction:Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;

    .line 5
    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->moduleName:[C

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V
    .locals 1

    .line 6
    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;->getModuleName()[C

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;-><init>(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;[C)V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;[C)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->compilationUnit:Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    .line 9
    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->accessRestriction:Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;

    .line 10
    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->moduleName:[C

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 18
    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->moduleBinding:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    return-void
.end method

.method public constructor <init>([Lorg/eclipse/jdt/internal/compiler/env/ISourceType;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;Ljava/lang/String;[C)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->sourceTypes:[Lorg/eclipse/jdt/internal/compiler/env/ISourceType;

    .line 13
    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->accessRestriction:Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;

    .line 14
    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->externalAnnotationPath:Ljava/lang/String;

    .line 15
    iput-object p4, p0, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->moduleName:[C

    return-void
.end method


# virtual methods
.method public getAccessRestriction()Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->accessRestriction:Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;

    return-object v0
.end method

.method public getBinaryType()Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->binaryType:Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    return-object v0
.end method

.method public getCompilationUnit()Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->compilationUnit:Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    return-object v0
.end method

.method public getExternalAnnotationPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->externalAnnotationPath:Ljava/lang/String;

    return-object v0
.end method

.method public getResolvedBinding()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    return-object v0
.end method

.method public getSourceTypes()[Lorg/eclipse/jdt/internal/compiler/env/ISourceType;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->sourceTypes:[Lorg/eclipse/jdt/internal/compiler/env/ISourceType;

    return-object v0
.end method

.method public ignoreIfBetter()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->accessRestriction:Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;->ignoreIfBetter()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isBetter(Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->accessRestriction:Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;

    if-nez v1, :cond_1

    return v0

    :cond_1
    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->accessRestriction:Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;->getProblemId()I

    move-result v1

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->accessRestriction:Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;->getProblemId()I

    move-result p1

    if-ge v1, p1, :cond_2

    return v0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public isBinaryType()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->binaryType:Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isCompilationUnit()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->compilationUnit:Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isResolvedBinding()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSourceType()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->sourceTypes:[Lorg/eclipse/jdt/internal/compiler/env/ISourceType;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public moduleName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->moduleName:[C

    return-object v0
.end method

.method public setBinaryType(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->binaryType:Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->binaryType:Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    const-string v1, ""

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/IDependent;->getFileName()[C

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "IBinaryType "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->compilationUnit:Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ICompilationUnit "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->compilationUnit:Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->sourceTypes:[Lorg/eclipse/jdt/internal/compiler/env/ISourceType;

    if-eqz v0, :cond_3

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->accessRestriction:Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->accessRestriction:Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->externalAnnotationPath:Ljava/lang/String;

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " extPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->externalAnnotationPath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_5
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->moduleName:[C

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " module="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->moduleName:[C

    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_6
    return-object v1
.end method
