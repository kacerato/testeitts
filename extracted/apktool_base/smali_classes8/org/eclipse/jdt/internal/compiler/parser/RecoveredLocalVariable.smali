.class public Lorg/eclipse/jdt/internal/compiler/parser/RecoveredLocalVariable;
.super Lorg/eclipse/jdt/internal/compiler/parser/RecoveredStatement;
.source "SourceFile"


# instance fields
.field public alreadyCompletedLocalInitialization:Z

.field public annotationCount:I

.field public annotations:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;

.field public localDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

.field public modifiers:I

.field public modifiersStart:I


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredStatement;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/Statement;Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;I)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredLocalVariable;->localDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredLocalVariable;->alreadyCompletedLocalInitialization:Z

    return-void
.end method


# virtual methods
.method public add(Lorg/eclipse/jdt/internal/compiler/ast/Statement;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;
    .locals 2

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredLocalVariable;->alreadyCompletedLocalInitialization:Z

    if-nez v0, :cond_1

    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isTrulyExpression()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    iput-boolean p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredLocalVariable;->alreadyCompletedLocalInitialization:Z

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredLocalVariable;->localDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    iput-object v0, p2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iput p1, p2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceEnd:I

    iput p1, p2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationEnd:I

    return-object p0

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/Statement;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object p1

    return-object p1
.end method

.method public attach([Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;III)V
    .locals 6

    if-lez p2, :cond_4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredLocalVariable;->localDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-eqz v0, :cond_3

    new-array v1, p2, [Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredLocalVariable;->annotations:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;

    const/4 v1, 0x0

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredLocalVariable;->annotationCount:I

    move v2, v1

    :goto_0
    if-lt v2, p2, :cond_0

    goto :goto_3

    :cond_0
    move v3, v1

    :goto_1
    array-length v4, v0

    if-lt v3, v4, :cond_1

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredLocalVariable;->annotations:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredLocalVariable;->annotationCount:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredLocalVariable;->annotationCount:I

    aget-object v5, p1, v2

    aput-object v5, v3, v4

    goto :goto_2

    :cond_1
    aget-object v4, p1, v2

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;->annotation:Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    aget-object v5, v0, v3

    if-ne v4, v5, :cond_2

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredLocalVariable;->annotations:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;

    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredLocalVariable;->annotationCount:I

    :cond_4
    :goto_3
    if-eqz p3, :cond_5

    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredLocalVariable;->modifiers:I

    iput p4, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredLocalVariable;->modifiersStart:I

    :cond_5
    return-void
.end method

.method public parseTree()Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredLocalVariable;->localDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    return-object v0
.end method

.method public sourceEnd()I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredLocalVariable;->localDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceEnd:I

    return v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->tabString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "Recovered local variable:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredLocalVariable;->localDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    add-int/lit8 p1, p1, 0x1

    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {v1, p1, v2}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public updateOnClosingBrace(II)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->bracketBalance:I

    if-lez v0, :cond_1

    const/4 p1, 0x1

    sub-int/2addr v0, p1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->bracketBalance:I

    if-nez v0, :cond_0

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredLocalVariable;->alreadyCompletedLocalInitialization:Z

    :cond_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parent:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->updateOnClosingBrace(II)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object p1

    return-object p1

    :cond_2
    return-object p0
.end method

.method public updateOnOpeningBrace(II)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredLocalVariable;->localDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceEnd:I

    if-nez v1, :cond_1

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;

    if-nez v1, :cond_0

    instance-of v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayQualifiedTypeReference;

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredLocalVariable;->alreadyCompletedLocalInitialization:Z

    if-nez v0, :cond_1

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->bracketBalance:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->bracketBalance:I

    const/4 p1, 0x0

    return-object p1

    :cond_1
    add-int/lit8 v0, p1, -0x1

    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredLocalVariable;->updateSourceEndIfNecessary(II)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parent:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->updateOnOpeningBrace(II)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object p1

    return-object p1
.end method

.method public updateParseTree()V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredLocalVariable;->updatedStatement(ILjava/util/Set;)Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    return-void
.end method

.method public updateSourceEndIfNecessary(II)V
    .locals 1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredLocalVariable;->localDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceEnd:I

    if-nez v0, :cond_0

    iput p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceEnd:I

    iput p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationEnd:I

    :cond_0
    return-void
.end method

.method public updatedStatement(ILjava/util/Set;)Lorg/eclipse/jdt/internal/compiler/ast/Statement;
    .locals 3

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredLocalVariable;->modifiers:I

    if-eqz p1, :cond_0

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredLocalVariable;->localDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    iget v0, p2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->modifiers:I

    or-int/2addr p1, v0

    iput p1, p2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->modifiers:I

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredLocalVariable;->modifiersStart:I

    iget v0, p2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceStart:I

    if-ge p1, v0, :cond_0

    iput p1, p2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceStart:I

    :cond_0
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredLocalVariable;->annotationCount:I

    if-lez p1, :cond_4

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredLocalVariable;->localDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    const/4 v0, 0x0

    if-nez p2, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    array-length v1, p2

    :goto_0
    add-int v2, v1, p1

    new-array v2, v2, [Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-lez v1, :cond_2

    invoke-static {p2, v0, v2, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    move p1, v0

    :goto_1
    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredLocalVariable;->annotationCount:I

    if-lt p1, p2, :cond_3

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredLocalVariable;->localDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    iput-object v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredLocalVariable;->annotations:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;

    aget-object p2, p2, v0

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;->annotation:Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iget p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceStart:I

    if-ge p2, v0, :cond_4

    iput p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceStart:I

    goto :goto_2

    :cond_3
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredLocalVariable;->annotations:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;

    aget-object p2, p2, p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;->updatedAnnotationReference()Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    move-result-object p2

    aput-object p2, v2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredLocalVariable;->localDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    return-object p1
.end method
