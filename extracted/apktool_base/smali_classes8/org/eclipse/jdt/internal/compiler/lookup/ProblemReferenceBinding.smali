.class public Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;
.super Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
.source "SourceFile"


# instance fields
.field closestMatch:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

.field private problemReason:I


# direct methods
.method public constructor <init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V
    .locals 0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;->closestMatch:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;->problemReason:I

    return-void
.end method

.method public static problemReasonString(I)Ljava/lang/String;
    .locals 9

    :try_start_0
    const-class v0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReasons;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-ltz v3, :cond_0

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-lt v5, v4, :cond_1

    goto :goto_2

    :cond_1
    aget-object v6, v3, v5

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v7

    if-ne v7, p0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_3
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    :goto_2
    const-string p0, "unknown"

    return-object p0
.end method


# virtual methods
.method public clone(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public closestMatch()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;->closestMatch:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    return-object v0
.end method

.method public closestReferenceMatch()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;->closestMatch:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    return-object v0
.end method

.method public hasTypeBit(I)Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;->closestMatch:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->hasTypeBit(I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public problemId()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;->problemReason:I

    return v0
.end method

.method public setTypeAnnotations([Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;Z)V
    .locals 0

    return-void
.end method

.method public shortReadableName()[C
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->readableName()[C

    move-result-object v0

    return-object v0
.end method

.method public sourceName()[C
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    array-length v1, v0

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v1, "ProblemType:[compoundName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    const-string v2, "<null>"

    if-nez v1, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/String;

    const/16 v4, 0x2e

    invoke-static {v1, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([C)V

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "][problemID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;->problemReason:I

    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;->problemReasonString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "][closestMatch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;->closestMatch:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
