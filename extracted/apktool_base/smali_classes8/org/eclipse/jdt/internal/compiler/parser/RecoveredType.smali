.class public Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;
.super Lorg/eclipse/jdt/internal/compiler/parser/RecoveredStatement;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/parser/TerminalTokens;


# static fields
.field public static final MAX_TYPE_DEPTH:I = 0x100


# instance fields
.field public annotationCount:I

.field public annotations:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;

.field public bodyEnd:I

.field public fieldCount:I

.field public fields:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;

.field public insideEnumConstantPart:Z

.field public memberTypeCount:I

.field public memberTypes:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

.field public methodCount:I

.field public methods:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;

.field public modifiers:I

.field public modifiersStart:I

.field pendingAnnotationCount:I

.field pendingAnnotations:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;

.field pendingModifersSourceStart:I

.field pendingModifiers:I

.field public pendingTypeParameters:[Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

.field public pendingTypeParametersStart:I

.field public preserveContent:Z

.field public typeDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredStatement;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/Statement;Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;I)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->preserveContent:Z

    iput-boolean p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->insideEnumConstantPart:Z

    const/4 p3, -0x1

    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->pendingModifersSourceStart:I

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->typeDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object p3, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->allocation:Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    iget-object p3, p3, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-nez p3, :cond_0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->foundOpeningBrace:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->bodyStartsAtHeaderEnd()Z

    move-result p3

    xor-int/2addr p3, v0

    iput-boolean p3, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->foundOpeningBrace:Z

    :goto_0
    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->modifiers:I

    invoke-static {p1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->kind(I)I

    move-result p1

    const/4 p3, 0x3

    if-ne p1, p3, :cond_1

    move p1, v0

    goto :goto_1

    :cond_1
    move p1, p2

    :goto_1
    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->insideEnumConstantPart:Z

    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->foundOpeningBrace:Z

    if-eqz p1, :cond_2

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->bracketBalance:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->bracketBalance:I

    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parser()Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    move-result-object p1

    iget-boolean p1, p1, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->methodRecoveryActivated:Z

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parser()Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    move-result-object p1

    iget-boolean p1, p1, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->statementRecoveryActivated:Z

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    move p2, v0

    :goto_2
    iput-boolean p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->preserveContent:Z

    return-void
.end method


# virtual methods
.method public add(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->typeDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationSourceEnd:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->declarationSourceStart:I

    if-le v2, v0, :cond_0

    .line 3
    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->pendingTypeParameters:[Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    .line 4
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->resetPendingModifiers()V

    .line 5
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parent:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->methods:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x5

    .line 7
    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->methods:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;

    .line 8
    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->methodCount:I

    goto :goto_0

    .line 9
    :cond_1
    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->methodCount:I

    array-length v4, v0

    if-ne v3, v4, :cond_2

    mul-int/lit8 v4, v3, 0x2

    .line 10
    new-array v4, v4, [Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;

    iput-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->methods:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;

    .line 11
    invoke-static {v0, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    :cond_2
    :goto_0
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->recoveringParser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    invoke-direct {v0, p1, p0, p2, v3}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;ILorg/eclipse/jdt/internal/compiler/parser/Parser;)V

    .line 13
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->methods:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->methodCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->methodCount:I

    aput-object v0, p2, v3

    .line 14
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->pendingTypeParameters:[Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    if-eqz p2, :cond_3

    .line 15
    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->pendingTypeParametersStart:I

    invoke-virtual {v0, p2, v3}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->attach([Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;I)V

    .line 16
    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->pendingTypeParameters:[Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    .line 17
    :cond_3
    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->pendingAnnotationCount:I

    if-gtz p2, :cond_4

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->pendingModifiers:I

    if-eqz v1, :cond_5

    .line 18
    :cond_4
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->pendingAnnotations:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;

    .line 19
    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->pendingModifiers:I

    .line 20
    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->pendingModifersSourceStart:I

    .line 21
    invoke-virtual {v0, v1, p2, v3, v4}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->attach([Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;III)V

    .line 22
    :cond_5
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->resetPendingModifiers()V

    .line 23
    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->insideEnumConstantPart:Z

    .line 24
    iget-boolean p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->foundOpeningBrace:Z

    if-nez p2, :cond_6

    const/4 p2, 0x1

    .line 25
    iput-boolean p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->foundOpeningBrace:Z

    .line 26
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->bracketBalance:I

    add-int/2addr v1, p2

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->bracketBalance:I

    .line 27
    :cond_6
    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->declarationSourceEnd:I

    if-nez p1, :cond_7

    return-object v0

    :cond_7
    return-object p0
.end method

.method public add(Lorg/eclipse/jdt/internal/compiler/ast/Block;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;
    .locals 2

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->pendingTypeParameters:[Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    .line 29
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->resetPendingModifiers()V

    .line 30
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parser()Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    move-result-object v0

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->recoveredStaticInitializerStart:I

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 31
    :goto_0
    new-instance v1, Lorg/eclipse/jdt/internal/compiler/ast/Initializer;

    invoke-direct {v1, p1, v0}, Lorg/eclipse/jdt/internal/compiler/ast/Initializer;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/Block;I)V

    invoke-virtual {p0, v1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->add(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object p1

    return-object p1
.end method

.method public add(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;
    .locals 5

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->pendingTypeParameters:[Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    .line 33
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->typeDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationSourceEnd:I

    if-eqz v0, :cond_0

    .line 34
    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceStart:I

    if-le v1, v0, :cond_0

    .line 35
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->resetPendingModifiers()V

    .line 36
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parent:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object p1

    return-object p1

    .line 37
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->fields:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x5

    .line 38
    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->fields:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;

    .line 39
    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->fieldCount:I

    goto :goto_0

    .line 40
    :cond_1
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->fieldCount:I

    array-length v3, v0

    if-ne v2, v3, :cond_2

    mul-int/lit8 v3, v2, 0x2

    .line 41
    new-array v3, v3, [Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;

    iput-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->fields:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;

    .line 42
    invoke-static {v0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->getKind()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_4

    return-object p0

    .line 44
    :cond_3
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredInitializer;

    invoke-direct {v0, p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredInitializer;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;I)V

    goto :goto_1

    .line 45
    :cond_4
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;

    invoke-direct {v0, p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;I)V

    .line 46
    :goto_1
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->fields:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->fieldCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->fieldCount:I

    aput-object v0, p2, v2

    .line 47
    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->pendingAnnotationCount:I

    if-lez p2, :cond_5

    .line 48
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->pendingAnnotations:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;

    .line 49
    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->pendingModifiers:I

    .line 50
    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->pendingModifersSourceStart:I

    .line 51
    invoke-virtual {v0, v2, p2, v3, v4}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;->attach([Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;III)V

    .line 52
    :cond_5
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->resetPendingModifiers()V

    .line 53
    iget-boolean p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->foundOpeningBrace:Z

    if-nez p2, :cond_6

    .line 54
    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->foundOpeningBrace:Z

    .line 55
    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->bracketBalance:I

    add-int/2addr p2, v1

    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->bracketBalance:I

    .line 56
    :cond_6
    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceEnd:I

    if-nez p1, :cond_7

    return-object v0

    :cond_7
    return-object p0
.end method

.method public add(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;
    .locals 5

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->pendingTypeParameters:[Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    .line 58
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->typeDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationSourceEnd:I

    if-eqz v0, :cond_0

    .line 59
    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationSourceStart:I

    if-le v1, v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->resetPendingModifiers()V

    .line 61
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parent:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->insideEnumConstantPart:Z

    .line 63
    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v1, v1, 0x200

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 64
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->methodCount:I

    if-lez v1, :cond_1

    .line 65
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->methods:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;

    sub-int/2addr v1, v2

    aget-object v1, v3, v1

    .line 66
    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->methodDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    iput v0, v3, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->bodyEnd:I

    .line 67
    iput v0, v3, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->declarationSourceEnd:I

    .line 68
    iget v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->bracketBalance:I

    add-int/2addr v0, v2

    iput v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->bracketBalance:I

    .line 69
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->resetPendingModifiers()V

    .line 70
    invoke-virtual {v1, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->add(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object p1

    return-object p1

    :cond_1
    return-object p0

    .line 71
    :cond_2
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    if-nez v1, :cond_3

    const/4 v1, 0x5

    .line 72
    new-array v1, v1, [Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    .line 73
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->memberTypeCount:I

    goto :goto_0

    .line 74
    :cond_3
    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->memberTypeCount:I

    array-length v4, v1

    if-ne v3, v4, :cond_4

    mul-int/lit8 v4, v3, 0x2

    .line 75
    new-array v4, v4, [Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    iput-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    .line 76
    invoke-static {v1, v0, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    :cond_4
    :goto_0
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    invoke-direct {v0, p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;I)V

    .line 78
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->memberTypeCount:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->memberTypeCount:I

    aput-object v0, p2, v1

    .line 79
    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->pendingAnnotationCount:I

    if-lez p2, :cond_5

    .line 80
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->pendingAnnotations:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;

    .line 81
    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->pendingModifiers:I

    .line 82
    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->pendingModifersSourceStart:I

    .line 83
    invoke-virtual {v0, v1, p2, v3, v4}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->attach([Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;III)V

    .line 84
    :cond_5
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->resetPendingModifiers()V

    .line 85
    iget-boolean p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->foundOpeningBrace:Z

    if-nez p2, :cond_6

    .line 86
    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->foundOpeningBrace:Z

    .line 87
    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->bracketBalance:I

    add-int/2addr p2, v2

    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->bracketBalance:I

    .line 88
    :cond_6
    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationSourceEnd:I

    if-nez p1, :cond_7

    return-object v0

    :cond_7
    return-object p0
.end method

.method public add([Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;I)V
    .locals 0

    .line 89
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->pendingTypeParameters:[Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    .line 90
    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->pendingTypeParametersStart:I

    return-void
.end method

.method public addAnnotationName(IIII)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;
    .locals 10

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->pendingAnnotations:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x5

    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->pendingAnnotations:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->pendingAnnotationCount:I

    goto :goto_0

    :cond_0
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->pendingAnnotationCount:I

    array-length v3, v0

    if-ne v2, v3, :cond_1

    mul-int/lit8 v3, v2, 0x2

    new-array v3, v3, [Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;

    iput-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->pendingAnnotations:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;

    invoke-static {v0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_0
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;

    move-object v4, v0

    move v5, p1

    move v6, p2

    move v7, p3

    move-object v8, p0

    move v9, p4

    invoke-direct/range {v4 .. v9}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;-><init>(IIILorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->pendingAnnotations:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;

    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->pendingAnnotationCount:I

    add-int/lit8 p3, p2, 0x1

    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->pendingAnnotationCount:I

    aput-object v0, p1, p2

    return-object v0
.end method

.method public addModifier(II)V
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->pendingModifiers:I

    or-int/2addr p1, v0

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->pendingModifiers:I

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->pendingModifersSourceStart:I

    if-gez p1, :cond_0

    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->pendingModifersSourceStart:I

    :cond_0
    return-void
.end method

.method public annotationsConsumed([Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)V
    .locals 9

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->pendingAnnotationCount:I

    new-array v1, v0, [Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;

    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-lt v4, v0, :cond_1

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->pendingAnnotationCount:I

    if-eq v5, p1, :cond_0

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->pendingAnnotations:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;

    iput v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->pendingAnnotationCount:I

    :cond_0
    return-void

    :cond_1
    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->pendingAnnotations:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;

    aget-object v6, v6, v4

    iget-object v6, v6, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;->annotation:Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    move v7, v3

    :goto_1
    if-lt v7, v2, :cond_2

    add-int/lit8 v6, v5, 0x1

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->pendingAnnotations:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;

    aget-object v7, v7, v4

    aput-object v7, v1, v5

    move v5, v6

    goto :goto_2

    :cond_2
    aget-object v8, p1, v7

    if-ne v8, v6, :cond_3

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1
.end method

.method public attach([Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;III)V
    .locals 6

    if-lez p2, :cond_4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->typeDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-eqz v0, :cond_3

    new-array v1, p2, [Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->annotations:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;

    const/4 v1, 0x0

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->annotationCount:I

    move v2, v1

    :goto_0
    if-lt v2, p2, :cond_0

    goto :goto_3

    :cond_0
    move v3, v1

    :goto_1
    array-length v4, v0

    if-lt v3, v4, :cond_1

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->annotations:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->annotationCount:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->annotationCount:I

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
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->annotations:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;

    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->annotationCount:I

    :cond_4
    :goto_3
    if-eqz p3, :cond_5

    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->modifiers:I

    iput p4, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->modifiersStart:I

    :cond_5
    return-void
.end method

.method public bodyEnd()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->bodyEnd:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->typeDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationSourceEnd:I

    :cond_0
    return v0
.end method

.method public bodyStartsAtHeaderEnd()Z
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->typeDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_5

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->superclass:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-nez v1, :cond_3

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->typeParameters:[Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    if-nez v1, :cond_1

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->bodyStart:I

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    add-int/2addr v0, v3

    if-ne v1, v0, :cond_0

    return v3

    :cond_0
    return v2

    :cond_1
    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->bodyStart:I

    array-length v4, v1

    sub-int/2addr v4, v3

    aget-object v1, v1, v4

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    add-int/2addr v1, v3

    if-ne v0, v1, :cond_2

    return v3

    :cond_2
    return v2

    :cond_3
    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->bodyStart:I

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    add-int/2addr v1, v3

    if-ne v0, v1, :cond_4

    return v3

    :cond_4
    return v2

    :cond_5
    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->bodyStart:I

    array-length v4, v1

    sub-int/2addr v4, v3

    aget-object v1, v1, v4

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    add-int/2addr v1, v3

    if-ne v0, v1, :cond_6

    return v3

    :cond_6
    return v2
.end method

.method public enclosingType()Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parent:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    :goto_0
    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    return-object v0

    :cond_1
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parent:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    goto :goto_0
.end method

.method public getLastStart()I
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->typeDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->bodyStart:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->fieldCount:I

    if-lez v1, :cond_0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->fields:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v2, v1

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;->fieldDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceStart:I

    if-ge v0, v1, :cond_0

    if-eqz v1, :cond_0

    move v0, v1

    :cond_0
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->methodCount:I

    if-lez v1, :cond_1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->methods:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v2, v1

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->methodDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->declarationSourceStart:I

    if-ge v0, v1, :cond_1

    if-eqz v1, :cond_1

    move v0, v1

    :cond_1
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->memberTypeCount:I

    if-lez v1, :cond_2

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v2, v1

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->typeDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationSourceStart:I

    if-ge v0, v1, :cond_2

    if-eqz v1, :cond_2

    move v0, v1

    :cond_2
    return v0
.end method

.method public lastMemberEnd()I
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->typeDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->bodyStart:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->fieldCount:I

    if-lez v1, :cond_0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->fields:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v2, v1

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;->fieldDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceEnd:I

    if-ge v0, v1, :cond_0

    if-eqz v1, :cond_0

    move v0, v1

    :cond_0
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->methodCount:I

    if-lez v1, :cond_1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->methods:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v2, v1

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->methodDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->declarationSourceEnd:I

    if-ge v0, v1, :cond_1

    if-eqz v1, :cond_1

    move v0, v1

    :cond_1
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->memberTypeCount:I

    if-lez v1, :cond_2

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v2, v1

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->typeDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationSourceEnd:I

    if-ge v0, v1, :cond_2

    if-eqz v1, :cond_2

    move v0, v1

    :cond_2
    return v0
.end method

.method public name()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->typeDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->name:[C

    return-object v0
.end method

.method public parseTree()Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->typeDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    return-object v0
.end method

.method public resetPendingModifiers()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->pendingAnnotations:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->pendingAnnotationCount:I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->pendingModifiers:I

    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->pendingModifersSourceStart:I

    return-void
.end method

.method public sourceEnd()I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->typeDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationSourceEnd:I

    return v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->tabString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "Recovered type:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->typeDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->tabString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->typeDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1, v0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->annotations:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;

    const-string v2, "\n"

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    move v1, v3

    :goto_0
    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->annotationCount:I

    if-lt v1, v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->annotations:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;

    aget-object v4, v4, v1

    invoke-virtual {v4, p1}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    if-eqz v1, :cond_4

    move v1, v3

    :goto_2
    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->memberTypeCount:I

    if-lt v1, v4, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    aget-object v4, v4, v1

    invoke-virtual {v4, p1}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->fields:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;

    if-eqz v1, :cond_6

    move v1, v3

    :goto_4
    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->fieldCount:I

    if-lt v1, v4, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->fields:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;

    aget-object v4, v4, v1

    invoke-virtual {v4, p1}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_6
    :goto_5
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->methods:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;

    if-eqz v1, :cond_8

    :goto_6
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->methodCount:I

    if-lt v3, v1, :cond_7

    goto :goto_7

    :cond_7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->methods:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;

    aget-object v1, v1, v3

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_8
    :goto_7
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public updateBodyStart(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->foundOpeningBrace:Z

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->typeDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iput p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->bodyStart:I

    return-void
.end method

.method public updateFromParserState()V
    .locals 9

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->bodyStartsAtHeaderEnd()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->typeDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->allocation:Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parser()Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    move-result-object v0

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->listLength:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_5

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astLengthPtr:I

    if-lez v1, :cond_5

    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astLengthStack:[I

    aget v1, v4, v1

    iget v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    sub-int/2addr v4, v1

    if-ltz v4, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v2

    :goto_0
    if-eqz v5, :cond_4

    iget-object v6, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    aget-object v6, v6, v4

    instance-of v6, v6, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-nez v6, :cond_1

    move v5, v2

    :cond_1
    add-int/2addr v1, v3

    :goto_1
    if-lt v3, v1, :cond_2

    goto :goto_2

    :cond_2
    iget-object v6, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    add-int v7, v4, v3

    aget-object v6, v6, v7

    instance-of v6, v6, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-nez v6, :cond_3

    move v5, v2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    if-eqz v5, :cond_d

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeClassHeaderImplements()V

    goto/16 :goto_8

    :cond_5
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->listTypeParameterLength:I

    if-lez v1, :cond_d

    iget v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsPtr:I

    add-int/lit8 v5, v4, 0x1

    if-lt v5, v1, :cond_6

    iget v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    const/4 v6, -0x1

    if-le v5, v6, :cond_6

    move v5, v3

    goto :goto_3

    :cond_6
    move v5, v2

    :goto_3
    if-eqz v5, :cond_c

    iget-object v6, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v7, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object v6, v6, v7

    instance-of v6, v6, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-nez v6, :cond_7

    move v5, v2

    :cond_7
    move v6, v4

    :goto_4
    add-int/lit8 v4, v6, 0x1

    if-le v4, v1, :cond_9

    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    aget-object v4, v4, v6

    instance-of v4, v4, Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    if-eqz v4, :cond_8

    goto :goto_5

    :cond_8
    add-int/lit8 v6, v6, -0x1

    goto :goto_4

    :cond_9
    :goto_5
    move v4, v2

    :goto_6
    if-lt v4, v1, :cond_a

    move v4, v6

    goto :goto_7

    :cond_a
    iget-object v7, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    sub-int v8, v6, v4

    aget-object v7, v7, v8

    instance-of v7, v7, Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    if-nez v7, :cond_b

    move v5, v2

    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_c
    :goto_7
    if-eqz v5, :cond_d

    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v6, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object v5, v5, v6

    check-cast v5, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v6, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    sub-int/2addr v4, v1

    add-int/2addr v4, v3

    new-array v7, v1, [Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    iput-object v7, v5, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->typeParameters:[Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    invoke-static {v6, v4, v7, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, v5, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->typeParameters:[Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    sub-int/2addr v1, v3

    aget-object v1, v4, v1

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceEnd:I

    add-int/2addr v1, v3

    iput v1, v5, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->bodyStart:I

    iput v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->listTypeParameterLength:I

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    :cond_d
    :goto_8
    return-void
.end method

.method public updateOnClosingBrace(II)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->bracketBalance:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->bracketBalance:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parent:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->updateSourceEndIfNecessary(II)V

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->bodyEnd:I

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parent:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    return-object p1

    :cond_0
    return-object p0
.end method

.method public updateOnOpeningBrace(II)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;
    .locals 4

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->bracketBalance:I

    const/4 v1, 0x1

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parser()Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    move-result-object v0

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastIgnoredToken:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/16 v3, 0x56

    if-eq v2, v3, :cond_0

    const/16 v3, 0x7b

    if-eq v2, v3, :cond_0

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :cond_0
    :pswitch_0
    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->recoveredStaticInitializerStart:I

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->foundOpeningBrace:Z

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->bracketBalance:I

    :cond_2
    :goto_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->bracketBalance:I

    if-ne v0, v1, :cond_4

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/ast/Block;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Block;-><init>(I)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parser()Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    move-result-object v0

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v2, v2, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    iput v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->recoveredStaticInitializerStart:I

    if-nez v2, :cond_3

    new-instance v2, Lorg/eclipse/jdt/internal/compiler/ast/Initializer;

    invoke-direct {v2, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Initializer;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/Block;I)V

    goto :goto_2

    :cond_3
    new-instance v2, Lorg/eclipse/jdt/internal/compiler/ast/Initializer;

    const/16 p2, 0x8

    invoke-direct {v2, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Initializer;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/Block;I)V

    iget p1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->recoveredStaticInitializerStart:I

    iput p1, v2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceStart:I

    :goto_2
    iget-object p1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iput p1, v2, Lorg/eclipse/jdt/internal/compiler/ast/Initializer;->bodyStart:I

    invoke-virtual {p0, v2, v1}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->add(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->updateOnOpeningBrace(II)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public updateParseTree()V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->updatedTypeDeclaration(ILjava/util/Set;)Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    return-void
.end method

.method public updateSourceEndIfNecessary(II)V
    .locals 1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->typeDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationSourceEnd:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->bodyEnd:I

    iput p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationSourceEnd:I

    iput p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->bodyEnd:I

    :cond_0
    return-void
.end method

.method public updatedStatement(ILjava/util/Set;)Lorg/eclipse/jdt/internal/compiler/ast/Statement;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->typeDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->preserveContent:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->updatedTypeDeclaration(ILjava/util/Set;)Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    move-result-object p1

    if-eqz p1, :cond_2

    iget p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 p2, p2, 0x200

    if-eqz p2, :cond_2

    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->allocation:Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;

    iget v0, p2, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->statementEnd:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationSourceEnd:I

    iput p1, p2, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->statementEnd:I

    :cond_1
    return-object p2

    :cond_2
    return-object p1
.end method

.method public updatedTypeDeclaration(ILjava/util/Set;)Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;",
            ">;)",
            "Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    const/16 v4, 0x100

    if-lt v1, v4, :cond_0

    return-object v3

    :cond_0
    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->typeDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    return-object v3

    :cond_1
    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->typeDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->typeDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget v5, v3, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->bodyStart:I

    iget v6, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->modifiers:I

    if-eqz v6, :cond_2

    iget v7, v3, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->modifiers:I

    or-int/2addr v6, v7

    iput v6, v3, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->modifiers:I

    iget v6, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->modifiersStart:I

    iget v7, v3, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationSourceStart:I

    if-ge v6, v7, :cond_2

    iput v6, v3, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationSourceStart:I

    :cond_2
    iget v6, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->annotationCount:I

    const/4 v7, 0x0

    if-lez v6, :cond_6

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-nez v3, :cond_3

    move v8, v7

    goto :goto_0

    :cond_3
    array-length v8, v3

    :goto_0
    add-int v9, v8, v6

    new-array v9, v9, [Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-lez v8, :cond_4

    invoke-static {v3, v7, v9, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    move v3, v7

    :goto_1
    iget v6, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->annotationCount:I

    if-lt v3, v6, :cond_5

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->typeDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iput-object v9, v3, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iget-object v6, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->annotations:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;

    aget-object v6, v6, v7

    iget-object v6, v6, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;->annotation:Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iget v6, v6, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v8, v3, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationSourceStart:I

    if-ge v6, v8, :cond_6

    iput v6, v3, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationSourceStart:I

    goto :goto_2

    :cond_5
    iget-object v6, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->annotations:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;->updatedAnnotationReference()Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    move-result-object v6

    aput-object v6, v9, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->memberTypeCount:I

    const/4 v6, 0x1

    if-lez v3, :cond_d

    iget-object v8, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->typeDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v8, v8, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-nez v8, :cond_7

    move v9, v7

    goto :goto_3

    :cond_7
    array-length v9, v8

    :goto_3
    add-int/2addr v3, v9

    new-array v3, v3, [Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-lez v9, :cond_8

    invoke-static {v8, v7, v3, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_8
    iget-object v8, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    iget v10, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->memberTypeCount:I

    sub-int/2addr v10, v6

    aget-object v8, v8, v10

    iget-object v8, v8, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->typeDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget v8, v8, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationSourceEnd:I

    if-nez v8, :cond_9

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->bodyEnd()I

    move-result v8

    iget-object v10, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    iget v11, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->memberTypeCount:I

    add-int/lit8 v12, v11, -0x1

    aget-object v12, v10, v12

    iget-object v12, v12, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->typeDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iput v8, v12, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationSourceEnd:I

    sub-int/2addr v11, v6

    aget-object v10, v10, v11

    iget-object v10, v10, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->typeDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iput v8, v10, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->bodyEnd:I

    :cond_9
    move v8, v7

    move v10, v8

    :goto_4
    iget v11, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->memberTypeCount:I

    if-lt v8, v11, :cond_b

    if-ge v10, v11, :cond_a

    add-int/2addr v9, v10

    new-array v8, v9, [Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    invoke-static {v3, v7, v8, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v8

    :cond_a
    array-length v8, v3

    if-lez v8, :cond_d

    iget-object v8, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->typeDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iput-object v3, v8, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    array-length v8, v3

    sub-int/2addr v8, v6

    aget-object v8, v3, v8

    iget v8, v8, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationSourceEnd:I

    if-le v8, v5, :cond_d

    array-length v5, v3

    sub-int/2addr v5, v6

    aget-object v3, v3, v5

    iget v5, v3, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationSourceEnd:I

    goto :goto_5

    :cond_b
    iget-object v11, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    aget-object v11, v11, v8

    add-int/lit8 v12, v1, 0x1

    invoke-virtual {v11, v12, v2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->updatedTypeDeclaration(ILjava/util/Set;)Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    move-result-object v11

    if-eqz v11, :cond_c

    add-int/lit8 v12, v10, 0x1

    add-int/2addr v10, v9

    aput-object v11, v3, v10

    move v10, v12

    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_d
    :goto_5
    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->fieldCount:I

    if-lez v3, :cond_17

    iget-object v8, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->typeDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v8, v8, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->fields:[Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    if-nez v8, :cond_e

    move v9, v7

    goto :goto_6

    :cond_e
    array-length v9, v8

    :goto_6
    add-int/2addr v3, v9

    new-array v10, v3, [Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    if-lez v9, :cond_f

    invoke-static {v8, v7, v10, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_f
    iget-object v8, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->fields:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;

    iget v11, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->fieldCount:I

    sub-int/2addr v11, v6

    aget-object v8, v8, v11

    iget-object v8, v8, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;->fieldDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    iget v8, v8, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceEnd:I

    if-nez v8, :cond_12

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->bodyEnd()I

    move-result v8

    iget-object v11, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->fields:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;

    iget v12, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->fieldCount:I

    sub-int/2addr v12, v6

    aget-object v11, v11, v12

    iget-object v11, v11, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;->fieldDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    if-nez v8, :cond_11

    iget v12, v11, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    if-lez v12, :cond_11

    if-le v5, v12, :cond_10

    move v5, v12

    move v8, v5

    goto :goto_7

    :cond_10
    move v8, v12

    :cond_11
    :goto_7
    iput v8, v11, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceEnd:I

    iput v8, v11, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationEnd:I

    :cond_12
    move v8, v5

    move v5, v7

    :goto_8
    iget v11, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->fieldCount:I

    if-lt v5, v11, :cond_16

    sub-int/2addr v11, v6

    :goto_9
    if-gtz v11, :cond_14

    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->typeDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iput-object v10, v5, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->fields:[Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    sub-int/2addr v3, v6

    aget-object v3, v10, v3

    iget v5, v3, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceEnd:I

    if-le v5, v8, :cond_13

    goto :goto_a

    :cond_13
    move v5, v8

    goto :goto_a

    :cond_14
    add-int v5, v9, v11

    add-int/lit8 v12, v5, -0x1

    aget-object v12, v10, v12

    iget v13, v12, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceStart:I

    aget-object v5, v10, v5

    iget v14, v5, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceStart:I

    if-ne v13, v14, :cond_15

    iget v13, v5, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceEnd:I

    iput v13, v12, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceEnd:I

    iget v5, v5, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationEnd:I

    iput v5, v12, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationEnd:I

    :cond_15
    add-int/lit8 v11, v11, -0x1

    goto :goto_9

    :cond_16
    add-int v11, v9, v5

    iget-object v12, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->fields:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;

    aget-object v12, v12, v5

    invoke-virtual {v12, v1, v2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;->updatedFieldDeclaration(ILjava/util/Set;)Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    move-result-object v12

    aput-object v12, v10, v11

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_17
    :goto_a
    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->typeDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->methods:[Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    if-nez v3, :cond_18

    move v3, v7

    goto :goto_b

    :cond_18
    array-length v3, v3

    :goto_b
    iget v8, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->methodCount:I

    const/4 v9, -0x1

    if-lez v8, :cond_25

    add-int/2addr v8, v3

    new-array v10, v8, [Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    move v11, v7

    move v12, v11

    :goto_c
    if-lt v11, v3, :cond_22

    iget-object v11, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->methods:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;

    iget v13, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->methodCount:I

    sub-int/2addr v13, v6

    aget-object v11, v11, v13

    iget-object v11, v11, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->methodDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    iget v11, v11, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->declarationSourceEnd:I

    if-nez v11, :cond_19

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->bodyEnd()I

    move-result v11

    iget-object v13, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->methods:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;

    iget v14, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->methodCount:I

    add-int/lit8 v15, v14, -0x1

    aget-object v15, v13, v15

    iget-object v15, v15, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->methodDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    iput v11, v15, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->declarationSourceEnd:I

    sub-int/2addr v14, v6

    aget-object v13, v13, v14

    iget-object v13, v13, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->methodDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    iput v11, v13, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->bodyEnd:I

    :cond_19
    move v14, v3

    move v13, v7

    move/from16 v16, v13

    move v15, v12

    :goto_d
    iget v11, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->methodCount:I

    if-lt v13, v11, :cond_1d

    if-eq v14, v8, :cond_1a

    new-array v1, v14, [Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    invoke-static {v10, v7, v1, v7, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v10, v1

    :cond_1a
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->typeDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iput-object v10, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->methods:[Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    array-length v2, v10

    sub-int/2addr v2, v6

    aget-object v2, v10, v2

    iget v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->declarationSourceEnd:I

    if-le v2, v5, :cond_1b

    array-length v2, v10

    sub-int/2addr v2, v6

    aget-object v2, v10, v2

    iget v5, v2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->declarationSourceEnd:I

    :cond_1b
    if-eqz v15, :cond_1c

    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/lit16 v2, v2, 0x800

    iput v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parser()Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->checkConstructors(Lorg/eclipse/jdt/internal/compiler/parser/Parser;)Z

    move-result v1

    goto :goto_11

    :cond_1d
    move v11, v7

    :goto_e
    if-lt v11, v3, :cond_20

    iget-object v11, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->methods:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;

    aget-object v11, v11, v13

    invoke-virtual {v11, v1, v2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->updatedMethodDeclaration(ILjava/util/Set;)Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    move-result-object v11

    invoke-virtual {v11}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->isConstructor()Z

    move-result v12

    if-eqz v12, :cond_1e

    move/from16 v16, v6

    :cond_1e
    invoke-virtual {v11}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->isAbstract()Z

    move-result v12

    if-eqz v12, :cond_1f

    move v15, v6

    :cond_1f
    add-int/lit8 v12, v14, 0x1

    aput-object v11, v10, v14

    move v14, v12

    goto :goto_f

    :cond_20
    aget-object v12, v10, v11

    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->methods:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;

    aget-object v4, v4, v13

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->methodDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    if-ne v12, v4, :cond_21

    :goto_f
    add-int/lit8 v13, v13, 0x1

    const/16 v4, 0x100

    goto :goto_d

    :cond_21
    add-int/lit8 v11, v11, 0x1

    const/16 v4, 0x100

    goto :goto_e

    :cond_22
    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->typeDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->methods:[Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    aget-object v4, v4, v11

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->isDefaultConstructor()Z

    move-result v13

    if-eqz v13, :cond_23

    move v9, v11

    :cond_23
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->isAbstract()Z

    move-result v13

    if-eqz v13, :cond_24

    move v12, v6

    :cond_24
    aput-object v4, v10, v11

    add-int/lit8 v11, v11, 0x1

    const/16 v4, 0x100

    goto/16 :goto_c

    :cond_25
    move v1, v7

    move v2, v1

    :goto_10
    if-lt v2, v3, :cond_33

    move/from16 v16, v7

    :goto_11
    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->typeDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->needClassInitMethod()Z

    move-result v2

    if-eqz v2, :cond_28

    move v2, v7

    :goto_12
    if-lt v2, v3, :cond_26

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->typeDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->addClinit()V

    goto :goto_13

    :cond_26
    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->typeDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->methods:[Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->isClinit()Z

    move-result v4

    if-eqz v4, :cond_27

    goto :goto_13

    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_28
    :goto_13
    if-ltz v9, :cond_2b

    if-eqz v16, :cond_2b

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->typeDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->methods:[Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    array-length v2, v1

    sub-int/2addr v2, v6

    new-array v2, v2, [Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    if-eqz v9, :cond_29

    invoke-static {v1, v7, v2, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_29
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->typeDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->methods:[Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    array-length v3, v1

    sub-int/2addr v3, v6

    if-eq v9, v3, :cond_2a

    add-int/lit8 v3, v9, 0x1

    array-length v4, v1

    sub-int/2addr v4, v9

    sub-int/2addr v4, v6

    invoke-static {v1, v3, v2, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2a
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->typeDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iput-object v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->methods:[Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    goto :goto_17

    :cond_2b
    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->typeDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->modifiers:I

    invoke-static {v2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->kind(I)I

    move-result v2

    if-nez v1, :cond_2f

    const/4 v1, 0x2

    if-eq v2, v1, :cond_2f

    const/4 v1, 0x4

    if-eq v2, v1, :cond_2f

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->typeDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->allocation:Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;

    if-nez v1, :cond_2f

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parent:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    :goto_14
    if-nez v1, :cond_2c

    move v1, v7

    goto :goto_15

    :cond_2c
    instance-of v2, v1, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;

    if-eqz v2, :cond_2e

    move v1, v6

    :goto_15
    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->typeDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parser()Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    move-result-object v3

    iget-boolean v3, v3, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->diet:Z

    if-eqz v3, :cond_2d

    if-nez v1, :cond_2d

    goto :goto_16

    :cond_2d
    move v7, v6

    :goto_16
    invoke-virtual {v2, v7, v6}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->createDefaultConstructor(ZZ)Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;

    goto :goto_17

    :cond_2e
    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parent:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    goto :goto_14

    :cond_2f
    :goto_17
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parent:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    instance-of v2, v1, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    if-eqz v2, :cond_30

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->typeDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/lit16 v2, v2, 0x400

    iput v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    goto :goto_18

    :cond_30
    instance-of v1, v1, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;

    if-eqz v1, :cond_31

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->typeDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/16 v4, 0x100

    or-int/2addr v2, v4

    iput v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    :cond_31
    :goto_18
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->typeDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationSourceEnd:I

    if-nez v2, :cond_32

    iput v5, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationSourceEnd:I

    iput v5, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->bodyEnd:I

    :cond_32
    return-object v1

    :cond_33
    const/16 v4, 0x100

    iget-object v8, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->typeDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v8, v8, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->methods:[Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    aget-object v8, v8, v2

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->isConstructor()Z

    move-result v8

    if-eqz v8, :cond_34

    move v1, v6

    :cond_34
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_10
.end method
