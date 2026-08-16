.class public Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;
.super Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;
.source "SourceFile"


# static fields
.field public static final MARKER:I = 0x0

.field public static final NORMAL:I = 0x1

.field public static final SINGLE_MEMBER:I = 0x2


# instance fields
.field public annotation:Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

.field public hasPendingMemberValueName:Z

.field private identifierLengthPtr:I

.field private identifierPtr:I

.field private kind:I

.field public memberValuPairEqualEnd:I

.field private sourceStart:I


# direct methods
.method public constructor <init>(IIILorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;I)V
    .locals 0

    invoke-direct {p0, p4, p5}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;-><init>(Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;I)V

    const/4 p4, -0x1

    iput p4, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;->memberValuPairEqualEnd:I

    const/4 p4, 0x0

    iput p4, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;->kind:I

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;->identifierPtr:I

    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;->identifierLengthPtr:I

    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;->sourceStart:I

    return-void
.end method


# virtual methods
.method public add(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;->annotation:Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-nez v0, :cond_0

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object p1

    return-object p1
.end method

.method public addAnnotation(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;->annotation:Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parent:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    return-object p0
.end method

.method public addAnnotationName(IIII)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;
    .locals 7

    new-instance v6, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;

    move-object v0, v6

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p0

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;-><init>(IIILorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;I)V

    return-object v6
.end method

.method public parseTree()Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;->annotation:Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    return-object v0
.end method

.method public resetPendingModifiers()V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parent:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->resetPendingModifiers()V

    :cond_0
    return-void
.end method

.method public setKind(I)V
    .locals 0

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;->kind:I

    return-void
.end method

.method public sourceEnd()I
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;->annotation:Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parser()Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    move-result-object v0

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;->identifierPtr:I

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPositionStack:[J

    array-length v2, v0

    if-ge v1, v2, :cond_0

    aget-wide v1, v0, v1

    long-to-int v0, v1

    return v0

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;->sourceStart:I

    return v0

    :cond_1
    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->declarationSourceEnd:I

    return v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;->annotation:Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->tabString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "Recovered annotation:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;->annotation:Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    add-int/lit8 p1, p1, 0x1

    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {v1, p1, v2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->tabString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "Recovered annotation: identiferPtr="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;->identifierPtr:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " identiferlengthPtr="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;->identifierLengthPtr:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public updateFromParserState()V
    .locals 15

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parser()Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;->annotation:Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-nez v1, :cond_a

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;->identifierPtr:I

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    if-gt v1, v2, :cond_a

    iget-boolean v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;->hasPendingMemberValueName:Z

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/16 v6, 0x20

    const/4 v7, 0x1

    if-eqz v3, :cond_1

    if-ge v1, v2, :cond_1

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierStack:[[C

    add-int/lit8 v3, v1, 0x1

    aget-object v2, v2, v3

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPositionStack:[J

    add-int/2addr v1, v7

    aget-wide v8, v3, v1

    ushr-long v10, v8, v6

    long-to-int v1, v10

    long-to-int v3, v8

    iget v8, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;->memberValuPairEqualEnd:I

    if-le v8, v5, :cond_0

    goto :goto_0

    :cond_0
    move v8, v3

    :goto_0
    new-instance v9, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;

    sget-object v10, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->FAKE_IDENTIFIER:[C

    int-to-long v11, v8

    const-wide/16 v13, 0x1

    add-long/2addr v13, v11

    shl-long/2addr v13, v6

    add-long/2addr v13, v11

    invoke-direct {v9, v10, v13, v14}, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;-><init>([CJ)V

    new-instance v8, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;

    invoke-direct {v8, v2, v1, v3, v9}, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;-><init>([CIILorg/eclipse/jdt/internal/compiler/ast/Expression;)V

    goto :goto_1

    :cond_1
    move-object v8, v4

    :goto_1
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;->identifierPtr:I

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;->identifierLengthPtr:I

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->getAnnotationType()Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object v1

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;->kind:I

    const/4 v3, 0x0

    if-eq v2, v7, :cond_3

    const/4 v9, 0x2

    if-eq v2, v9, :cond_2

    goto/16 :goto_3

    :cond_2
    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    if-le v2, v5, :cond_7

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    add-int/lit8 v4, v2, -0x1

    iput v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    aget-object v2, v3, v2

    new-instance v4, Lorg/eclipse/jdt/internal/compiler/ast/SingleMemberAnnotation;

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;->sourceStart:I

    invoke-direct {v4, v1, v3}, Lorg/eclipse/jdt/internal/compiler/ast/SingleMemberAnnotation;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;I)V

    iput-object v2, v4, Lorg/eclipse/jdt/internal/compiler/ast/SingleMemberAnnotation;->memberValue:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iput v2, v4, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->declarationSourceEnd:I

    iget v2, v4, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/2addr v2, v6

    iput v2, v4, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    goto :goto_4

    :cond_3
    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    if-le v2, v5, :cond_7

    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    aget-object v9, v5, v2

    instance-of v9, v9, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;

    if-eqz v9, :cond_7

    iget-object v9, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astLengthStack:[I

    iget v10, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astLengthPtr:I

    aget v9, v9, v10

    sub-int/2addr v2, v9

    add-int/2addr v2, v7

    if-lez v9, :cond_7

    if-eqz v8, :cond_4

    add-int/lit8 v4, v9, 0x1

    new-array v4, v4, [Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;

    invoke-static {v5, v2, v4, v3, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astLengthPtr:I

    sub-int/2addr v2, v7

    iput v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astLengthPtr:I

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    sub-int/2addr v2, v9

    iput v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aput-object v8, v4, v9

    iget v2, v8, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    goto :goto_2

    :cond_4
    new-array v4, v9, [Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;

    invoke-static {v5, v2, v4, v3, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astLengthPtr:I

    sub-int/2addr v2, v7

    iput v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astLengthPtr:I

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    sub-int/2addr v2, v9

    iput v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    sub-int/2addr v9, v7

    aget-object v2, v4, v9

    iget-object v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->value:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v3, :cond_6

    instance-of v2, v3, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-eqz v2, :cond_5

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iget v2, v3, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->declarationSourceEnd:I

    goto :goto_2

    :cond_5
    iget v2, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    goto :goto_2

    :cond_6
    iget v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    :goto_2
    new-instance v3, Lorg/eclipse/jdt/internal/compiler/ast/NormalAnnotation;

    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;->sourceStart:I

    invoke-direct {v3, v1, v5}, Lorg/eclipse/jdt/internal/compiler/ast/NormalAnnotation;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;I)V

    iput-object v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/NormalAnnotation;->memberValuePairs:[Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;

    iput v2, v3, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->declarationSourceEnd:I

    iget v2, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/2addr v2, v6

    iput v2, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    move-object v4, v3

    goto :goto_4

    :cond_7
    :goto_3
    move v7, v3

    :goto_4
    if-nez v7, :cond_9

    if-eqz v8, :cond_8

    new-instance v4, Lorg/eclipse/jdt/internal/compiler/ast/NormalAnnotation;

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;->sourceStart:I

    invoke-direct {v4, v1, v2}, Lorg/eclipse/jdt/internal/compiler/ast/NormalAnnotation;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;I)V

    filled-new-array {v8}, [Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;

    move-result-object v1

    iput-object v1, v4, Lorg/eclipse/jdt/internal/compiler/ast/NormalAnnotation;->memberValuePairs:[Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;

    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->value:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iput v1, v4, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->declarationSourceEnd:I

    iget v1, v4, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/2addr v1, v6

    iput v1, v4, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    goto :goto_5

    :cond_8
    new-instance v4, Lorg/eclipse/jdt/internal/compiler/ast/MarkerAnnotation;

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;->sourceStart:I

    invoke-direct {v4, v1, v2}, Lorg/eclipse/jdt/internal/compiler/ast/MarkerAnnotation;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;I)V

    iget v1, v4, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iput v1, v4, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->declarationSourceEnd:I

    iget v1, v4, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/2addr v1, v6

    iput v1, v4, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    :cond_9
    :goto_5
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;->identifierPtr:I

    invoke-virtual {p0, v4, v1}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;->addAnnotation(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object v1

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    iget v1, v4, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v2, v4, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->declarationSourceEnd:I

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->annotationRecoveryCheckPoint(II)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parent:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->updateFromParserState()V

    :cond_a
    return-void
.end method

.method public updateOnClosingBrace(II)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->bracketBalance:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->bracketBalance:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parent:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->updateOnClosingBrace(II)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object p1

    return-object p1

    :cond_1
    return-object p0
.end method

.method public updateParseTree()V
    .locals 0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;->updatedAnnotationReference()Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    return-void
.end method

.method public updatedAnnotationReference()Lorg/eclipse/jdt/internal/compiler/ast/Annotation;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;->annotation:Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    return-object v0
.end method
