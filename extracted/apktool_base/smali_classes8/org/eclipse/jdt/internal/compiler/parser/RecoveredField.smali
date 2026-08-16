.class public Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;
.super Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;
.source "SourceFile"


# instance fields
.field alreadyCompletedFieldInitialization:Z

.field public annotationCount:I

.field public annotations:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;

.field public anonymousTypeCount:I

.field public anonymousTypes:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

.field public fieldDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

.field public modifiers:I

.field public modifiersStart:I


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;ILorg/eclipse/jdt/internal/compiler/parser/Parser;)V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;ILorg/eclipse/jdt/internal/compiler/parser/Parser;)V
    .locals 0

    .line 2
    invoke-direct {p0, p2, p3, p4}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;-><init>(Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;ILorg/eclipse/jdt/internal/compiler/parser/Parser;)V

    .line 3
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;->fieldDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    .line 4
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;->alreadyCompletedFieldInitialization:Z

    return-void
.end method


# virtual methods
.method public add(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;
    .locals 3

    .line 3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->resetPendingModifiers()V

    .line 4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parent:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    if-nez v0, :cond_0

    return-object p0

    .line 5
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;->fieldDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceStart:I

    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceStart:I

    if-ne v1, v2, :cond_2

    .line 6
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v1, :cond_1

    .line 7
    iget v0, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->updateSourceEndIfNecessary(I)V

    goto :goto_0

    .line 8
    :cond_1
    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->updateSourceEndIfNecessary(I)V

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, -0x1

    .line 9
    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->previousAvailableLineEnd(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->updateSourceEndIfNecessary(I)V

    .line 10
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parent:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object p1

    return-object p1
.end method

.method public add(Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;
    .locals 1

    .line 1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->lambdaNestLevel:I

    if-lez v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object p1

    return-object p1
.end method

.method public add(Lorg/eclipse/jdt/internal/compiler/ast/Statement;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;
    .locals 2

    .line 11
    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;->alreadyCompletedFieldInitialization:Z

    if-nez v0, :cond_3

    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isTrulyExpression()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 12
    :cond_0
    iget p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    if-lez p2, :cond_1

    const/4 p2, 0x1

    .line 13
    iput-boolean p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;->alreadyCompletedFieldInitialization:Z

    .line 14
    :cond_1
    instance-of p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;

    if-nez p2, :cond_2

    .line 15
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;->fieldDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->getKind()I

    move-result p2

    const/4 v1, 0x3

    if-ne p2, v1, :cond_2

    .line 16
    new-instance p1, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;

    invoke-direct {p1}, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;-><init>()V

    .line 17
    filled-new-array {v0}, [Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    move-result-object p2

    iput-object p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    .line 18
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;->fieldDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    iput-object p1, p2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    goto :goto_0

    .line 19
    :cond_2
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;->fieldDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    iput-object v0, p2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    .line 20
    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iput p1, p2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceEnd:I

    .line 21
    iput p1, p2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationEnd:I

    :goto_0
    return-object p0

    .line 22
    :cond_3
    :goto_1
    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/Statement;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object p1

    return-object p1
.end method

.method public add(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;
    .locals 4

    .line 23
    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;->alreadyCompletedFieldInitialization:Z

    if-nez v0, :cond_3

    .line 24
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_3

    .line 25
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;->fieldDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceEnd:I

    if-eqz v0, :cond_0

    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    if-le v1, v0, :cond_0

    goto :goto_1

    .line 26
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;->anonymousTypes:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x5

    .line 27
    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;->anonymousTypes:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    .line 28
    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;->anonymousTypeCount:I

    goto :goto_0

    .line 29
    :cond_1
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;->anonymousTypeCount:I

    array-length v3, v0

    if-ne v2, v3, :cond_2

    mul-int/lit8 v3, v2, 0x2

    .line 30
    new-array v3, v3, [Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    iput-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;->anonymousTypes:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    .line 31
    invoke-static {v0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32
    :cond_2
    :goto_0
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    invoke-direct {v0, p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;I)V

    .line 33
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;->anonymousTypes:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;->anonymousTypeCount:I

    add-int/lit8 v1, p2, 0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;->anonymousTypeCount:I

    aput-object v0, p1, p2

    return-object v0

    .line 34
    :cond_3
    :goto_1
    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object p1

    return-object p1
.end method

.method public attach([Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;III)V
    .locals 6

    if-lez p2, :cond_4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;->fieldDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-eqz v0, :cond_3

    new-array v1, p2, [Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;->annotations:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;

    const/4 v1, 0x0

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;->annotationCount:I

    move v2, v1

    :goto_0
    if-lt v2, p2, :cond_0

    goto :goto_3

    :cond_0
    move v3, v1

    :goto_1
    array-length v4, v0

    if-lt v3, v4, :cond_1

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;->annotations:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;->annotationCount:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;->annotationCount:I

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
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;->annotations:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;

    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;->annotationCount:I

    :cond_4
    :goto_3
    if-eqz p3, :cond_5

    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;->modifiers:I

    iput p4, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;->modifiersStart:I

    :cond_5
    return-void
.end method

.method public parseTree()Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;->fieldDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    return-object v0
.end method

.method public sourceEnd()I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;->fieldDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceEnd:I

    return v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->tabString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "Recovered field:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;->fieldDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1, v0}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;->annotations:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;

    const-string v2, "\n"

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    move v1, v3

    :goto_0
    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;->annotationCount:I

    if-lt v1, v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;->annotations:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;

    aget-object v4, v4, v1

    invoke-virtual {v4, p1}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;->anonymousTypes:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    if-eqz v1, :cond_3

    :goto_2
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;->anonymousTypeCount:I

    if-lt v3, v1, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;->anonymousTypes:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    aget-object v1, v1, v3

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public updateOnClosingBrace(II)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->bracketBalance:I

    const/4 v1, 0x1

    if-lez v0, :cond_2

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->bracketBalance:I

    if-nez v0, :cond_1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;->fieldDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->getKind()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->updateSourceEndIfNecessary(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parent:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    return-object p1

    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;->fieldDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceEnd:I

    if-lez p1, :cond_1

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;->alreadyCompletedFieldInitialization:Z

    :cond_1
    return-object p0

    :cond_2
    if-nez v0, :cond_3

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;->alreadyCompletedFieldInitialization:Z

    add-int/lit8 v0, p2, -0x1

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->updateSourceEndIfNecessary(I)V

    :cond_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parent:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->updateOnClosingBrace(II)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object p1

    return-object p1

    :cond_4
    return-object p0
.end method

.method public updateOnOpeningBrace(II)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;->fieldDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceEnd:I

    const/4 v2, 0x0

    if-nez v1, :cond_2

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    instance-of v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;

    if-nez v4, :cond_1

    instance-of v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/ArrayQualifiedTypeReference;

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->bracketBalance:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->bracketBalance:I

    return-object v2

    :cond_1
    :goto_0
    iget-boolean v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;->alreadyCompletedFieldInitialization:Z

    if-nez v3, :cond_2

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->bracketBalance:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->bracketBalance:I

    return-object v2

    :cond_2
    if-nez v1, :cond_3

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->getKind()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->bracketBalance:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->bracketBalance:I

    return-object v2

    :cond_3
    add-int/lit8 v0, p1, -0x1

    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;->updateSourceEndIfNecessary(II)V

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

    invoke-virtual {p0, v1, v0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;->updatedFieldDeclaration(ILjava/util/Set;)Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    return-void
.end method

.method public updateSourceEndIfNecessary(II)V
    .locals 1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;->fieldDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceEnd:I

    if-nez v0, :cond_0

    iput p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceEnd:I

    iput p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationEnd:I

    :cond_0
    return-void
.end method

.method public updatedFieldDeclaration(ILjava/util/Set;)Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;",
            ">;)",
            "Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;"
        }
    .end annotation

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;->modifiers:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;->fieldDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->modifiers:I

    or-int/2addr v0, v2

    iput v0, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->modifiers:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;->modifiersStart:I

    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceStart:I

    if-ge v0, v2, :cond_0

    iput v0, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceStart:I

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;->annotationCount:I

    const/4 v1, 0x0

    if-lez v0, :cond_4

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;->fieldDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-nez v2, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    array-length v3, v2

    :goto_0
    add-int v4, v3, v0

    new-array v4, v4, [Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-lez v3, :cond_2

    invoke-static {v2, v1, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    move v0, v1

    :goto_1
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;->annotationCount:I

    if-lt v0, v2, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;->fieldDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    iput-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;->annotations:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;

    aget-object v2, v2, v1

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;->annotation:Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iget v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceStart:I

    if-ge v2, v3, :cond_4

    iput v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceStart:I

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;->annotations:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;->updatedAnnotationReference()Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    move-result-object v2

    aput-object v2, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;->anonymousTypes:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;->fieldDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-nez v2, :cond_b

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;->anonymousTypeCount:I

    const/4 v2, 0x1

    if-le v0, v2, :cond_5

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;-><init>()V

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;->anonymousTypeCount:I

    new-array v3, v3, [Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iput-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;->expressions:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    :goto_3
    move-object v3, v0

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    goto :goto_3

    :goto_4
    move v0, v1

    move v4, v0

    :goto_5
    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;->anonymousTypeCount:I

    if-lt v0, v5, :cond_6

    if-lez v5, :cond_e

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;->fieldDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    iget p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/lit8 p2, p2, 0x2

    iput p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    if-eqz v3, :cond_e

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;->anonymousTypes:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    aget-object p2, p1, v1

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->typeDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iput p2, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    sub-int/2addr v5, v2

    aget-object p1, p1, v5

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->typeDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iput p1, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    goto/16 :goto_8

    :cond_6
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;->anonymousTypes:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    aget-object v5, v5, v0

    iget-object v6, v5, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->typeDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget v7, v6, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationSourceEnd:I

    if-nez v7, :cond_7

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;->fieldDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    iget v7, v7, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceEnd:I

    iput v7, v6, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationSourceEnd:I

    iput v7, v6, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->bodyEnd:I

    :cond_7
    iget-boolean v6, v5, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->preserveContent:Z

    if-eqz v6, :cond_a

    add-int/lit8 v6, p1, 0x1

    invoke-virtual {v5, v6, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->updatedTypeDeclaration(ILjava/util/Set;)Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    move-result-object v5

    if-eqz v5, :cond_a

    iget v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;->anonymousTypeCount:I

    if-le v6, v2, :cond_9

    if-nez v4, :cond_8

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;->fieldDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    iput-object v3, v6, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    :cond_8
    iget-object v6, v3, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;->expressions:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    add-int/lit8 v7, v4, 0x1

    iget-object v8, v5, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->allocation:Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;

    aput-object v8, v6, v4

    move v4, v7

    goto :goto_6

    :cond_9
    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;->fieldDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    iget-object v7, v5, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->allocation:Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;

    iput-object v7, v6, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    :goto_6
    iget v5, v5, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationSourceEnd:I

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;->fieldDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    iget v7, v6, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceEnd:I

    if-le v5, v7, :cond_a

    iput v5, v6, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceEnd:I

    iput v5, v6, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationEnd:I

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_b
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->getKind()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_e

    :goto_7
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;->anonymousTypeCount:I

    if-lt v1, v0, :cond_c

    goto :goto_8

    :cond_c
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;->anonymousTypes:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    aget-object v0, v0, v1

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->typeDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationSourceEnd:I

    if-nez v3, :cond_d

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;->fieldDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceEnd:I

    iput v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationSourceEnd:I

    iput v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->bodyEnd:I

    :cond_d
    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->updatedTypeDeclaration(ILjava/util/Set;)Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_e
    :goto_8
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;->fieldDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    return-object p1
.end method
