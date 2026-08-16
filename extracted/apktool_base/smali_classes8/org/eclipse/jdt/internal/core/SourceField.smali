.class public Lorg/eclipse/jdt/internal/core/SourceField;
.super Lorg/eclipse/jdt/internal/core/NamedMember;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/IField;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/NamedMember;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lorg/eclipse/jdt/internal/core/SourceField;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/core/SourceRefElement;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public findNode(Lorg/eclipse/jdt/core/dom/CompilationUnit;)Lorg/eclipse/jdt/core/dom/ASTNode;
    .locals 2

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/core/SourceRefElement;->findNode(Lorg/eclipse/jdt/core/dom/CompilationUnit;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getNodeType()I

    move-result v0

    const/16 v1, 0x48

    if-ne v0, v1, :cond_1

    return-object p1

    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getParent()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    return-object p1
.end method

.method public getConstant()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const-string v0, "L"

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/SourceFieldElementInfo;

    iget-object v2, v1, Lorg/eclipse/jdt/internal/core/SourceFieldElementInfo;->initializationSource:[C

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    :cond_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/SourceFieldElementInfo;->getTypeSignature()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    const-string v5, "I"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    goto/16 :goto_3

    :cond_1
    const-string v5, "S"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v4}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v3

    goto/16 :goto_3

    :cond_2
    const-string v5, "B"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v3

    goto/16 :goto_3

    :cond_3
    const-string v5, "Z"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    goto/16 :goto_3

    :cond_4
    const-string v5, "C"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    array-length v0, v2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    return-object v3

    :cond_5
    const/4 v0, 0x1

    aget-char v0, v2, v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    goto/16 :goto_3

    :cond_6
    const-string v2, "D"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, v4}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    :goto_0
    move-object v3, v0

    goto :goto_3

    :cond_7
    const-string v2, "F"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, v4}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    const-string v2, "J"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {v4, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "l"

    if-nez v1, :cond_a

    :try_start_1
    invoke-virtual {v4, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_1

    :cond_9
    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    goto :goto_3

    :cond_a
    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    const/4 v5, 0x0

    if-eq v0, v1, :cond_b

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    goto :goto_3

    :cond_b
    invoke-virtual {v4, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    goto :goto_3

    :cond_c
    const-string v0, "QString;"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_2

    :cond_d
    const-string v0, "Qjava.lang.String;"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v0, :cond_e

    :goto_2
    move-object v3, v4

    :catch_0
    :cond_e
    :goto_3
    return-object v3
.end method

.method public getElementType()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public getHandleMementoDelimiter()C
    .locals 1

    const/16 v0, 0x5e

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p0, v0}, Lorg/eclipse/jdt/internal/core/NamedMember;->getKey(Lorg/eclipse/jdt/core/IField;Z)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPrimaryElement(Z)Lorg/eclipse/jdt/core/IJavaElement;
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->getAncestor(I)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/core/CompilationUnit;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->isPrimary()Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaElement;->parent:Lorg/eclipse/jdt/internal/core/JavaElement;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getPrimaryElement(Z)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/core/IType;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/NamedMember;->name:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/eclipse/jdt/core/IType;->getField(Ljava/lang/String;)Lorg/eclipse/jdt/core/IField;

    move-result-object p1

    return-object p1
.end method

.method public getTypeSignature()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/SourceFieldElementInfo;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/SourceFieldElementInfo;->getTypeSignature()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEnumConstant()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/Member;->getFlags()I

    move-result v0

    invoke-static {v0}, Lorg/eclipse/jdt/core/Flags;->isEnum(I)Z

    move-result v0

    return v0
.end method

.method public isResolved()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public resolved(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)Lorg/eclipse/jdt/internal/core/JavaElement;
    .locals 4

    new-instance v0, Lorg/eclipse/jdt/internal/core/ResolvedSourceField;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaElement;->parent:Lorg/eclipse/jdt/internal/core/JavaElement;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/NamedMember;->name:Ljava/lang/String;

    new-instance v3, Ljava/lang/String;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->computeUniqueKey()[C

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/ResolvedSourceField;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p0, Lorg/eclipse/jdt/internal/core/SourceRefElement;->occurrenceCount:I

    iput p1, v0, Lorg/eclipse/jdt/internal/core/SourceRefElement;->occurrenceCount:I

    return-object v0
.end method

.method public toStringInfo(ILjava/lang/StringBuffer;Ljava/lang/Object;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->tabString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-nez p3, :cond_0

    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/core/SourceRefElement;->toStringName(Ljava/lang/StringBuffer;)V

    const-string p1, " (not open)"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/eclipse/jdt/internal/core/JavaElement;->NO_INFO:Ljava/lang/Object;

    if-ne p3, p1, :cond_1

    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/core/SourceRefElement;->toStringName(Ljava/lang/StringBuffer;)V

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/SourceField;->getTypeSignature()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/jdt/core/Signature;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, " "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/core/SourceRefElement;->toStringName(Ljava/lang/StringBuffer;)V
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "<JavaModelException in toString of "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/NamedMember;->getElementName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    return-void
.end method
