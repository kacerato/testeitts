.class public abstract Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;
.super Lorg/eclipse/jdt/internal/compiler/parser/Parser;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field protected static final ASSIST_PARSER:I = 0x200

.field protected static final BLOCK_BODY:I = 0x1

.field protected static final EXPRESSION_BODY:I = 0x0

.field protected static final ElementStackIncrement:I = 0x64

.field protected static final K_ATTRIBUTE_VALUE_DELIMITER:I = 0x205

.field protected static final K_ENUM_CONSTANT_DELIMITER:I = 0x206

.field protected static final K_FIELD_INITIALIZER_DELIMITER:I = 0x204

.field protected static final K_LAMBDA_EXPRESSION_DELIMITER:I = 0x207

.field protected static final K_METHOD_DELIMITER:I = 0x203

.field protected static final K_MODULE_INFO_DELIMITER:I = 0x208

.field protected static final K_SELECTOR:I = 0x201

.field protected static final K_TYPE_DELIMITER:I = 0x202

.field protected static final NO_BODY:I = 0x0

.field protected static final RECOVERY_TOKENS:[I

.field protected static final SUPER_CONSTRUCTOR:I = -0x2

.field protected static final THIS_CONSTRUCTOR:I = -0x1

.field protected static final WITH_BODY:I = 0x1


# instance fields
.field public assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

.field blockStarts:[I

.field protected bracketDepth:I

.field protected elementInfoStack:[I

.field protected elementKindStack:[I

.field protected elementObjectInfoStack:[Ljava/lang/Object;

.field protected elementPtr:I

.field protected isFirst:Z

.field public isOrphanCompletionNode:Z

.field private lastArrowAssociatedWithCase:Z

.field protected lastModifiers:I

.field protected lastModifiersStart:I

.field protected previousIdentifierPtr:I

.field protected previousInfo:I

.field protected previousKind:I

.field protected previousObjectInfo:Ljava/lang/Object;

.field protected previousToken:I

.field private resumedAfterRepair:Z

.field snapShotPositions:[I

.field snapShotPtr:I

.field snapShotStack:[Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x21

    const/16 v1, 0x42

    const/16 v2, 0x1a

    const/16 v3, 0x19

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->RECOVERY_TOKENS:[I

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;)V
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;-><init>(Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;Z)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->resumedAfterRepair:Z

    iput p1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->lastModifiers:I

    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->lastModifiersStart:I

    const/16 v1, 0x1e

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->blockStarts:[I

    const/16 v1, 0x64

    new-array v2, v1, [I

    iput-object v2, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementKindStack:[I

    new-array v2, v1, [I

    iput-object v2, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementInfoStack:[I

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementObjectInfoStack:[Ljava/lang/Object;

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isFirst:Z

    const/4 v1, 0x3

    new-array v2, v1, [Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;

    iput-object v2, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->snapShotStack:[Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->snapShotPositions:[I

    iput v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->snapShotPtr:I

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->lastArrowAssociatedWithCase:Z

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->javadocParser:Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;

    iput-boolean p1, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->checkDocComment:Z

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->setMethodsFullRecovery(Z)V

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->setStatementsRecovery(Z)V

    return-void
.end method

.method private adjustBracket(I)V
    .locals 1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/16 v0, 0x17

    if-eq p1, v0, :cond_1

    const/16 v0, 0x19

    if-eq p1, v0, :cond_0

    const/16 v0, 0x21

    if-eq p1, v0, :cond_0

    const/16 v0, 0x31

    if-eq p1, v0, :cond_1

    const/16 v0, 0x42

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->bracketDepth:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->bracketDepth:I

    goto :goto_0

    :cond_1
    iget p1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->bracketDepth:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->bracketDepth:I

    :goto_0
    return-void
.end method

.method private initModuleInfo(Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;)V
    .locals 3

    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUnit;

    if-eqz v0, :cond_2

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUnit;

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUnit;->unitDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->isModuleInfo()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    if-le v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    aget-object v1, v1, v0

    instance-of v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;

    if-eqz v2, :cond_1

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->bracketDepth:I

    invoke-virtual {p1, v1, v0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUnit;->add(Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public addNewSnapShot(I)V
    .locals 5

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->snapShotPtr:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->snapShotPtr:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->snapShotStack:[Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;

    array-length v2, v1

    if-lt v0, v2, :cond_0

    array-length v0, v1

    add-int/lit8 v2, v0, 0x3

    new-array v3, v2, [Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;

    iput-object v3, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->snapShotStack:[Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;

    const/4 v4, 0x0

    invoke-static {v1, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->snapShotPositions:[I

    new-array v2, v2, [I

    iput-object v2, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->snapShotPositions:[I

    invoke-static {v1, v4, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->snapShotStack:[Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;

    iget v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->snapShotPtr:I

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->createSnapShotParser()Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->snapShotPositions:[I

    iget v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->snapShotPtr:I

    aput p1, v0, v1

    return-void
.end method

.method public abstract assistIdentifier()[C
.end method

.method public assistNodeNeedsStacking()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public assistNodeParent()Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public becomeSimpleParser()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public bodyEnd(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;)I
    .locals 0

    .line 1
    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->bodyEnd:I

    return p1
.end method

.method public bodyEnd(Lorg/eclipse/jdt/internal/compiler/ast/Initializer;)I
    .locals 0

    .line 2
    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceEnd:I

    return p1
.end method

.method public buildInitialRecoveryState()Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;
    .locals 11

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->referenceContext:Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    if-eqz v1, :cond_0

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->buildInitialRecoveryState()Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->flushAssistState()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->flushElementStack()V

    const/4 v1, -0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->snapShotPtr:I

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->initModuleInfo(Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;)V

    return-object v0

    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    instance-of v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    new-instance v2, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    invoke-direct {v2, v0, v3, v1, p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;ILorg/eclipse/jdt/internal/compiler/parser/Parser;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->referenceContext:Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->bodyStart:I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    goto :goto_3

    :cond_1
    instance-of v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-eqz v2, :cond_5

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->fields:[Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    if-nez v0, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    array-length v2, v0

    :goto_0
    move v5, v1

    :goto_1
    if-lt v5, v2, :cond_3

    goto :goto_2

    :cond_3
    aget-object v6, v0, v5

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->getKind()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_4

    iget v7, v6, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceStart:I

    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v9, v8, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->initialPosition:I

    if-gt v7, v9, :cond_4

    iget v7, v6, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceEnd:I

    if-gt v9, v7, :cond_4

    iget v8, v8, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->eofPosition:I

    add-int/lit8 v7, v7, 0x1

    if-gt v8, v7, :cond_4

    new-instance v2, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredInitializer;

    invoke-direct {v2, v6, v3, v4, p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredInitializer;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;ILorg/eclipse/jdt/internal/compiler/parser/Parser;)V

    iget v0, v6, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceStart:I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    goto :goto_3

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    move-object v2, v3

    :goto_3
    if-nez v2, :cond_6

    return-object v2

    :cond_6
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/Block;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/compiler/ast/Block;-><init>(I)V

    iget-object v5, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->blockStarts:[I

    aget v5, v5, v1

    iput v5, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {v2, v0, v4}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/Block;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object v0

    move v6, v1

    move-object v2, v3

    move v7, v4

    :goto_4
    iget v8, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    if-le v6, v8, :cond_f

    iget v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentToken:I

    const/16 v8, 0x21

    if-ne v6, v8, :cond_8

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isIndirectlyInsideLambdaExpression()Z

    move-result v6

    if-eqz v6, :cond_7

    iput-boolean v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->ignoreNextClosingBrace:Z

    goto :goto_5

    :cond_7
    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentToken:I

    :cond_8
    :goto_5
    iget-object v6, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    if-nez v6, :cond_9

    iget v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    :goto_6
    move v8, v6

    goto :goto_7

    :cond_9
    iget v6, v6, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    goto :goto_6

    :goto_7
    instance-of v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    if-eqz v3, :cond_a

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->body()Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    move-result-object v2

    instance-of v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/Block;

    if-eqz v2, :cond_a

    move v2, v4

    goto :goto_8

    :cond_a
    move v2, v1

    :goto_8
    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->realBlockPtr:I

    if-le v7, v3, :cond_b

    return-object v0

    :cond_b
    iget-object v3, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->blockStarts:[I

    aget v3, v3, v7

    if-ltz v3, :cond_d

    if-lt v3, v8, :cond_c

    if-eqz v2, :cond_e

    :cond_c
    if-eq v3, v5, :cond_e

    new-instance v2, Lorg/eclipse/jdt/internal/compiler/ast/Block;

    invoke-direct {v2, v1}, Lorg/eclipse/jdt/internal/compiler/ast/Block;-><init>(I)V

    iget-object v3, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->blockStarts:[I

    aget v3, v3, v7

    iput v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {v0, v2, v4}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/Block;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object v0

    move v2, v1

    move v5, v3

    goto :goto_9

    :cond_d
    if-ge v3, v8, :cond_e

    new-instance v3, Lorg/eclipse/jdt/internal/compiler/ast/Block;

    invoke-direct {v3, v1}, Lorg/eclipse/jdt/internal/compiler/ast/Block;-><init>(I)V

    iget-object v5, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->blockStarts:[I

    aget v5, v5, v7

    neg-int v5, v5

    iput v5, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {v0, v3, v4}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/Block;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object v0

    :cond_e
    :goto_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_f
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    aget-object v2, v2, v6

    iget v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    move v8, v7

    :goto_a
    iget v9, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->realBlockPtr:I

    if-le v7, v9, :cond_10

    move v7, v8

    goto :goto_c

    :cond_10
    iget-object v8, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->blockStarts:[I

    aget v8, v8, v7

    if-ltz v8, :cond_12

    if-le v8, v3, :cond_11

    goto :goto_c

    :cond_11
    if-eq v8, v5, :cond_25

    new-instance v5, Lorg/eclipse/jdt/internal/compiler/ast/Block;

    invoke-direct {v5, v1}, Lorg/eclipse/jdt/internal/compiler/ast/Block;-><init>(I)V

    iget-object v8, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->blockStarts:[I

    aget v8, v8, v7

    iput v8, v5, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {v0, v5, v4}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/Block;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object v0

    :goto_b
    move v5, v8

    goto/16 :goto_f

    :cond_12
    neg-int v8, v8

    if-le v8, v3, :cond_24

    :goto_c
    instance-of v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    if-eqz v3, :cond_16

    move-object v3, v2

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    iget v8, v3, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceEnd:I

    if-nez v8, :cond_14

    invoke-virtual {v0, v3, v1}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object v0

    iget-object v8, v3, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-nez v8, :cond_13

    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    add-int/2addr v3, v4

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    goto/16 :goto_e

    :cond_13
    iget v3, v8, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    add-int/2addr v3, v4

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    goto/16 :goto_e

    :cond_14
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->isArgument()Z

    move-result v8

    if-nez v8, :cond_15

    invoke-virtual {v0, v3, v1}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object v0

    goto :goto_d

    :cond_15
    invoke-virtual {v0, v3, v1}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    :goto_d
    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceEnd:I

    add-int/2addr v3, v4

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    goto/16 :goto_e

    :cond_16
    instance-of v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    if-eqz v3, :cond_18

    move-object v3, v2

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    iget v8, v3, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->declarationSourceEnd:I

    if-nez v8, :cond_17

    invoke-virtual {v0, v3, v1}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object v0

    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->bodyStart:I

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    goto/16 :goto_e

    :cond_17
    invoke-virtual {v0, v3, v1}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object v0

    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->declarationSourceEnd:I

    add-int/2addr v3, v4

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    goto/16 :goto_e

    :cond_18
    instance-of v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/Initializer;

    if-eqz v3, :cond_1a

    move-object v3, v2

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/ast/Initializer;

    iget v8, v3, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceEnd:I

    if-nez v8, :cond_19

    invoke-virtual {v0, v3, v4}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object v0

    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    goto/16 :goto_e

    :cond_19
    invoke-virtual {v0, v3, v1}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object v0

    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceEnd:I

    add-int/2addr v3, v4

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    goto/16 :goto_e

    :cond_1a
    instance-of v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    if-eqz v3, :cond_1d

    move-object v3, v2

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    iget v8, v3, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceEnd:I

    if-nez v8, :cond_1c

    invoke-virtual {v0, v3, v1}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object v0

    iget-object v8, v3, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-nez v8, :cond_1b

    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    add-int/2addr v3, v4

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    goto/16 :goto_e

    :cond_1b
    iget v3, v8, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    add-int/2addr v3, v4

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    goto/16 :goto_e

    :cond_1c
    invoke-virtual {v0, v3, v1}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object v0

    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceEnd:I

    add-int/2addr v3, v4

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    goto/16 :goto_e

    :cond_1d
    instance-of v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-eqz v3, :cond_1f

    move-object v3, v2

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget v8, v3, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationSourceEnd:I

    if-nez v8, :cond_1e

    invoke-virtual {v0, v3, v1}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object v0

    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->bodyStart:I

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    goto :goto_e

    :cond_1e
    invoke-virtual {v0, v3, v1}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object v0

    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationSourceEnd:I

    add-int/2addr v3, v4

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    goto :goto_e

    :cond_1f
    iget-object v3, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    if-eqz v3, :cond_22

    instance-of v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    if-eqz v3, :cond_22

    move-object v3, v2

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    instance-of v8, v3, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v8, :cond_20

    move-object v8, v3

    check-cast v8, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isTrulyExpression()Z

    move-result v9

    if-eqz v9, :cond_20

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->statementExpression()Z

    move-result v8

    if-eqz v8, :cond_23

    :cond_20
    iget-object v8, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v9, v8, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v10, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    if-lt v9, v10, :cond_21

    iget v8, v8, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iget v9, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    if-gt v8, v9, :cond_21

    invoke-virtual {v0, v3, v1}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/Statement;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    add-int/2addr v3, v4

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isOrphanCompletionNode:Z

    goto :goto_e

    :cond_21
    instance-of v8, v3, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;

    if-eqz v8, :cond_23

    move-object v8, v3

    check-cast v8, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;

    iget-object v8, v8, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->action:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    if-nez v8, :cond_23

    invoke-virtual {v0, v3, v1}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/Statement;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object v0

    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    add-int/2addr v3, v4

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    goto :goto_e

    :cond_22
    instance-of v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    if-eqz v3, :cond_23

    move-object v3, v2

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    invoke-virtual {v0, v3, v1}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object v0

    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->declarationSourceEnd:I

    add-int/2addr v3, v4

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    :cond_23
    :goto_e
    add-int/lit8 v6, v6, 0x1

    move-object v3, v2

    goto/16 :goto_4

    :cond_24
    new-instance v5, Lorg/eclipse/jdt/internal/compiler/ast/Block;

    invoke-direct {v5, v1}, Lorg/eclipse/jdt/internal/compiler/ast/Block;-><init>(I)V

    iget-object v8, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->blockStarts:[I

    aget v8, v8, v7

    neg-int v8, v8

    iput v8, v5, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {v0, v5, v4}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/Block;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object v0

    goto/16 :goto_b

    :cond_25
    :goto_f
    add-int/lit8 v8, v7, 0x1

    move v7, v8

    goto/16 :goto_a
.end method

.method public commit(Z)V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    iget v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->snapShotPtr:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->addNewSnapShot(I)V

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->blockStarts:[I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->realBlockPtr:I

    aget p1, p1, v2

    :goto_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->snapShotPositions:[I

    aget v1, v2, v1

    if-eq p1, v1, :cond_2

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->addNewSnapShot(I)V

    :cond_2
    :goto_1
    iget-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->snapShotStack:[Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->snapShotPtr:I

    aget-object p1, p1, v0

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->copyState(Lorg/eclipse/jdt/internal/compiler/parser/Parser;)V

    return-void
.end method

.method public consumeAnnotationTypeDeclarationHeader()V
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeAnnotationTypeDeclarationHeader()V

    const/16 v0, 0x202

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(I)V

    return-void
.end method

.method public consumeBlock()V
    .locals 2

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeBlock()V

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->snapShotPtr:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object v0, v0, v1

    instance-of v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/Block;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popSnapShot()V

    :cond_0
    return-void
.end method

.method public consumeBlockStatement()V
    .locals 2

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeBlockStatement()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object v0, v0, v1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->triggerRecoveryUponLambdaClosure(Lorg/eclipse/jdt/internal/compiler/ast/Statement;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->restartRecovery:Z

    :cond_0
    return-void
.end method

.method public consumeBlockStatements()V
    .locals 2

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeBlockStatements()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object v0, v0, v1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->triggerRecoveryUponLambdaClosure(Lorg/eclipse/jdt/internal/compiler/ast/Statement;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->restartRecovery:Z

    :cond_0
    return-void
.end method

.method public consumeClassBodyDeclaration()V
    .locals 1

    const/16 v0, 0x203

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeClassBodyDeclaration()V

    return-void
.end method

.method public consumeClassBodyopt()V
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeClassBodyopt()V

    const/16 v0, 0x201

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    return-void
.end method

.method public consumeClassHeader()V
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeClassHeader()V

    const/16 v0, 0x202

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(I)V

    return-void
.end method

.method public consumeConstructorBody()V
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeConstructorBody()V

    const/16 v0, 0x203

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    return-void
.end method

.method public consumeConstructorHeader()V
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeConstructorHeader()V

    const/16 v0, 0x203

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(I)V

    return-void
.end method

.method public consumeEnhancedForStatementHeaderInit(Z)V
    .locals 2

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeEnhancedForStatementHeaderInit(Z)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object v0, v0, v1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->elementVariable:Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    :cond_0
    return-void
.end method

.method public consumeEnterAnonymousClassBody(Z)V
    .locals 0

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeEnterAnonymousClassBody(Z)V

    const/16 p1, 0x201

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    const/16 p1, 0x202

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(I)V

    return-void
.end method

.method public consumeEnterMemberValue()V
    .locals 2

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeEnterMemberValue()V

    const/16 v0, 0x205

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(II)V

    return-void
.end method

.method public consumeEnumConstantHeader()V
    .locals 3

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentToken:I

    const/16 v1, 0x31

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x206

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(II)V

    const/16 v0, 0x204

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(I)V

    const/16 v0, 0x202

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(I)V

    :cond_0
    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeEnumConstantHeader()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object v0, v0, v1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->triggerRecoveryUponLambdaClosure(Lorg/eclipse/jdt/internal/compiler/ast/Statement;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->restartRecovery:Z

    :cond_1
    return-void
.end method

.method public consumeEnumConstantHeaderName()V
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeEnumConstantHeaderName()V

    const/16 v0, 0x206

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(I)V

    return-void
.end method

.method public consumeEnumConstantNoClassBody()V
    .locals 1

    const/16 v0, 0x206

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeEnumConstantNoClassBody()V

    return-void
.end method

.method public consumeEnumConstantWithClassBody()V
    .locals 1

    const/16 v0, 0x202

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    const/16 v0, 0x204

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    const/16 v0, 0x206

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeEnumConstantWithClassBody()V

    return-void
.end method

.method public consumeEnumHeader()V
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeEnumHeader()V

    const/16 v0, 0x202

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(I)V

    return-void
.end method

.method public consumeExitMemberValue()V
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeExitMemberValue()V

    const/16 v0, 0x205

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    return-void
.end method

.method public consumeExplicitConstructorInvocation(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeExplicitConstructorInvocation(II)V

    const/16 p1, 0x201

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    return-void
.end method

.method public consumeFieldDeclaration()V
    .locals 2

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeFieldDeclaration()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object v0, v0, v1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->triggerRecoveryUponLambdaClosure(Lorg/eclipse/jdt/internal/compiler/ast/Statement;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    instance-of v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    if-eqz v0, :cond_0

    const/16 v0, 0x202

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popUntilElement(I)V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->restartRecovery:Z

    :cond_1
    return-void
.end method

.method public consumeForceNoDiet()V
    .locals 4

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeForceNoDiet()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isInsideMethod()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x200

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementKind(I)I

    move-result v1

    const/16 v2, 0x204

    const/16 v3, 0x206

    if-eq v1, v3, :cond_0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementKind(II)I

    move-result v0

    if-eq v0, v3, :cond_1

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementInfo(I)I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public consumeInterfaceHeader()V
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeInterfaceHeader()V

    const/16 v0, 0x202

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(I)V

    return-void
.end method

.method public consumeMethodBody()V
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeMethodBody()V

    const/16 v0, 0x203

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    return-void
.end method

.method public consumeMethodDeclaration(ZZ)V
    .locals 1

    if-nez p1, :cond_0

    const/16 v0, 0x203

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeMethodDeclaration(ZZ)V

    iget p1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->snapShotPtr:I

    const/4 p2, -0x1

    if-le p1, p2, :cond_1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object p1, p1, p2

    instance-of p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popSnapShot()V

    :cond_1
    return-void
.end method

.method public consumeMethodHeader()V
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeMethodHeader()V

    const/16 v0, 0x203

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(I)V

    return-void
.end method

.method public consumeMethodInvocationName()V
    .locals 2

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeMethodInvocationName()V

    const/16 v0, 0x201

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    aget-object v0, v0, v1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    if-ne v0, v1, :cond_0

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    :cond_0
    return-void
.end method

.method public consumeMethodInvocationNameWithTypeArguments()V
    .locals 2

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeMethodInvocationNameWithTypeArguments()V

    const/16 v0, 0x201

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    aget-object v0, v0, v1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    if-ne v0, v1, :cond_0

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    :cond_0
    return-void
.end method

.method public consumeMethodInvocationPrimary()V
    .locals 2

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeMethodInvocationPrimary()V

    const/16 v0, 0x201

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    aget-object v0, v0, v1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    if-ne v0, v1, :cond_0

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    :cond_0
    return-void
.end method

.method public consumeMethodInvocationPrimaryWithTypeArguments()V
    .locals 2

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeMethodInvocationPrimaryWithTypeArguments()V

    const/16 v0, 0x201

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    aget-object v0, v0, v1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    if-ne v0, v1, :cond_0

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    :cond_0
    return-void
.end method

.method public consumeMethodInvocationSuper()V
    .locals 2

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeMethodInvocationSuper()V

    const/16 v0, 0x201

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    aget-object v0, v0, v1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    if-ne v0, v1, :cond_0

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    :cond_0
    return-void
.end method

.method public consumeMethodInvocationSuperWithTypeArguments()V
    .locals 2

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeMethodInvocationSuperWithTypeArguments()V

    const/16 v0, 0x201

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    aget-object v0, v0, v1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    if-ne v0, v1, :cond_0

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    :cond_0
    return-void
.end method

.method public consumeModuleDeclaration()V
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeModuleDeclaration()V

    const/16 v0, 0x208

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    return-void
.end method

.method public consumeModuleHeader()V
    .locals 6

    const/16 v0, 0x208

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(I)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->indexOfAssistIdentifier()I

    move-result v0

    if-gez v0, :cond_0

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeModuleHeader()V

    return-void

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthStack:[I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    aget v1, v1, v2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->identifierSubSet(I)[[C

    move-result-object v0

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    sub-int/2addr v2, v1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    new-array v3, v1, [J

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPositionStack:[J

    add-int/lit8 v2, v2, 0x1

    const/4 v5, 0x0

    invoke-static {v4, v2, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->compilationUnit:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    invoke-virtual {p0, v1, v0, v3}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->createAssistModuleDeclaration(Lorg/eclipse/jdt/internal/compiler/CompilationResult;[[C[J)Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->compilationUnit:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iput-object v0, v1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->moduleDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intStack:[I

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    add-int/lit8 v4, v3, -0x1

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v2, v2, v3

    iput v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->declarationSourceStart:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->bodyStart:I

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnAstStack(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    iput v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->listLength:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    if-eqz v1, :cond_1

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->bodyStart:I

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    invoke-virtual {v1, v0, v5}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastIgnoredToken:I

    :cond_1
    return-void
.end method

.method public consumeNestedLambda()V
    .locals 3

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeNestedLambda()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object v0, v0, v1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    const/16 v1, 0x207

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(IILjava/lang/Object;)V

    return-void
.end method

.method public consumeNestedMethod()V
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeNestedMethod()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isInsideMethod()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x203

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(I)V

    :cond_0
    return-void
.end method

.method public consumeOpenBlock()V
    .locals 6

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeOpenBlock()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->blockStarts:[I

    array-length v1, v0

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->realBlockPtr:I

    const/4 v3, 0x0

    if-lt v2, v1, :cond_0

    add-int/lit16 v2, v1, 0xff

    new-array v2, v2, [I

    iput-object v2, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->blockStarts:[I

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->blockStarts:[I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->realBlockPtr:I

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v2, v2, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    aput v2, v0, v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->requireExtendedRecovery()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentToken:I

    const/16 v1, 0x31

    if-ne v0, v1, :cond_2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->unstackedAct:I

    const/16 v1, 0x363

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->stack:[I

    array-length v1, v0

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->stateStackTop:I

    const/4 v4, 0x1

    add-int/2addr v2, v4

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->stateStackTop:I

    add-int/lit8 v5, v1, -0x1

    if-lt v2, v5, :cond_1

    add-int/lit16 v2, v1, 0xff

    new-array v2, v2, [I

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->stack:[I

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->stack:[I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->stateStackTop:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->stateStackTop:I

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->unstackedAct:I

    aput v3, v0, v1

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentToken:I

    invoke-static {v3, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->tAction(II)I

    move-result v1

    aput v1, v0, v2

    invoke-virtual {p0, v4}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->commit(Z)V

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->stateStackTop:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->stateStackTop:I

    :cond_2
    return-void
.end method

.method public consumeOpenFakeBlock()V
    .locals 4

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeOpenBlock()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->blockStarts:[I

    array-length v1, v0

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->realBlockPtr:I

    if-lt v2, v1, :cond_0

    add-int/lit16 v2, v1, 0xff

    new-array v2, v2, [I

    iput-object v2, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->blockStarts:[I

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->blockStarts:[I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->realBlockPtr:I

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v2, v2, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    neg-int v2, v2

    aput v2, v0, v1

    return-void
.end method

.method public consumePackageDeclarationName()V
    .locals 7

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->indexOfAssistIdentifier()I

    move-result v0

    if-gez v0, :cond_0

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumePackageDeclarationName()V

    return-void

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthStack:[I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    aget v1, v1, v2

    const/4 v2, 0x1

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->identifierSubSet(I)[[C

    move-result-object v0

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    sub-int/2addr v3, v2

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    sub-int/2addr v3, v1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    new-array v4, v1, [J

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPositionStack:[J

    add-int/2addr v3, v2

    const/4 v6, 0x0

    invoke-static {v5, v3, v4, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, v0, v4}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->createAssistPackageReference([[C[J)Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    add-int/2addr v3, v2

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->compilationUnit:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iput-object v0, v3, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->currentPackage:Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentToken:I

    const/16 v5, 0x1a

    if-ne v3, v5, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->declarationSourceEnd:I

    goto :goto_0

    :cond_1
    sub-int/2addr v1, v2

    aget-wide v3, v4, v1

    long-to-int v1, v3

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->declarationSourceEnd:I

    :goto_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intStack:[I

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    add-int/lit8 v4, v3, -0x1

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v1, v1, v3

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->declarationSourceStart:I

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->declarationSourceEnd:I

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->flushCommentsDefinedPriorTo(I)I

    move-result v1

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->declarationSourceEnd:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    if-eqz v0, :cond_2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->restartRecovery:Z

    :cond_2
    return-void
.end method

.method public consumePackageDeclarationNameWithModifiers()V
    .locals 8

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->indexOfAssistIdentifier()I

    move-result v0

    if-gez v0, :cond_0

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumePackageDeclarationNameWithModifiers()V

    return-void

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthStack:[I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    aget v1, v1, v2

    const/4 v2, 0x1

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->identifierSubSet(I)[[C

    move-result-object v0

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    sub-int/2addr v3, v2

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    sub-int/2addr v3, v1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    new-array v4, v1, [J

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPositionStack:[J

    add-int/2addr v3, v2

    const/4 v6, 0x0

    invoke-static {v5, v3, v4, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    add-int/lit8 v1, v1, -0x2

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    invoke-virtual {p0, v0, v4}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->createAssistPackageReference([[C[J)Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthStack:[I

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    add-int/lit8 v5, v3, -0x1

    iput v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    aget v1, v1, v3

    if-eqz v1, :cond_1

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    sub-int/2addr v5, v1

    iput v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    add-int/2addr v5, v2

    new-array v7, v1, [Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iput-object v7, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    invoke-static {v3, v5, v7, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    add-int/2addr v3, v2

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->compilationUnit:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iput-object v0, v3, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->currentPackage:Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentToken:I

    const/16 v5, 0x1a

    if-ne v3, v5, :cond_2

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->declarationSourceEnd:I

    goto :goto_0

    :cond_2
    sub-int/2addr v1, v2

    aget-wide v3, v4, v1

    long-to-int v1, v3

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->declarationSourceEnd:I

    :goto_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intStack:[I

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    add-int/lit8 v4, v3, -0x1

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v1, v1, v3

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->declarationSourceStart:I

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->declarationSourceEnd:I

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->flushCommentsDefinedPriorTo(I)I

    move-result v1

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->declarationSourceEnd:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    if-eqz v0, :cond_3

    add-int/2addr v1, v2

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->restartRecovery:Z

    :cond_3
    return-void
.end method

.method public consumeRestoreDiet()V
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeRestoreDiet()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isInsideMethod()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x204

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popUntilElement(I)V

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    :cond_0
    return-void
.end method

.method public consumeSinglePkgName()V
    .locals 6

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->indexOfAssistIdentifier()I

    move-result v0

    if-gez v0, :cond_0

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeSinglePkgName()V

    return-void

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthStack:[I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    aget v1, v1, v2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->identifierSubSet(I)[[C

    move-result-object v0

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    sub-int/2addr v2, v1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    new-array v3, v1, [J

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPositionStack:[J

    add-int/lit8 v2, v2, 0x1

    const/4 v5, 0x0

    invoke-static {v4, v2, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, v0, v3}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->createAssistPackageVisibilityReference([[C[J)Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnAstStack(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentToken:I

    const/16 v4, 0x1a

    if-ne v2, v4, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->declarationSourceEnd:I

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, -0x1

    aget-wide v1, v3, v1

    long-to-int v1, v1

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->declarationSourceEnd:I

    :goto_0
    return-void
.end method

.method public consumeSingleRequiresModuleName()V
    .locals 8

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->indexOfAssistIdentifier()I

    move-result v0

    if-gez v0, :cond_0

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeSingleRequiresModuleName()V

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->createAssistModuleReference(I)Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/ast/RequiresStatement;

    invoke-direct {v1, v0}, Lorg/eclipse/jdt/internal/compiler/ast/RequiresStatement;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;)V

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentToken:I

    const/16 v3, 0x1a

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v2, v2, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleStatement;->declarationSourceEnd:I

    goto :goto_0

    :cond_1
    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iput v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleStatement;->declarationSourceEnd:I

    :goto_0
    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleStatement;->declarationSourceStart:I

    iput v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleStatement;->declarationSourceEnd:I

    iput v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleStatement;->declarationEnd:I

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intStack:[I

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    add-int/lit8 v4, v3, -0x1

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v5, v2, v3

    iput v5, v1, Lorg/eclipse/jdt/internal/compiler/ast/RequiresStatement;->modifiersSourceStart:I

    iget v6, v1, Lorg/eclipse/jdt/internal/compiler/ast/RequiresStatement;->modifiers:I

    add-int/lit8 v7, v3, -0x2

    iput v7, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v4, v2, v4

    or-int/2addr v4, v6

    iput v4, v1, Lorg/eclipse/jdt/internal/compiler/ast/RequiresStatement;->modifiers:I

    add-int/lit8 v3, v3, -0x3

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v2, v2, v7

    iput v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleStatement;->declarationSourceStart:I

    if-ltz v5, :cond_2

    iput v5, v1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleStatement;->declarationSourceStart:I

    :cond_2
    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iput v0, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnAstStack(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    if-eqz v0, :cond_3

    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleStatement;->declarationSourceEnd:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/ModuleStatement;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastIgnoredToken:I

    :cond_3
    return-void
.end method

.method public consumeSingleStaticImportDeclarationName()V
    .locals 7

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->indexOfAssistIdentifier()I

    move-result v0

    if-gez v0, :cond_0

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeSingleStaticImportDeclarationName()V

    return-void

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthStack:[I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    aget v1, v1, v2

    const/4 v2, 0x1

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->identifierSubSet(I)[[C

    move-result-object v0

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    sub-int/2addr v3, v2

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    sub-int/2addr v3, v1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    new-array v4, v1, [J

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPositionStack:[J

    add-int/2addr v3, v2

    const/4 v6, 0x0

    invoke-static {v5, v3, v4, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v3, 0x8

    invoke-virtual {p0, v0, v4, v3}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->createAssistImportReference([[C[JI)Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    add-int/2addr v3, v2

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnAstStack(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentToken:I

    const/16 v5, 0x1a

    if-ne v3, v5, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->declarationSourceEnd:I

    goto :goto_0

    :cond_1
    sub-int/2addr v1, v2

    aget-wide v3, v4, v1

    long-to-int v1, v3

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->declarationSourceEnd:I

    :goto_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intStack:[I

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    add-int/lit8 v4, v3, -0x1

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v1, v1, v3

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->declarationSourceStart:I

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->declarationSourceEnd:I

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->flushCommentsDefinedPriorTo(I)I

    move-result v1

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->declarationSourceEnd:I

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    if-eqz v3, :cond_2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    invoke-virtual {v3, v0, v6}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastIgnoredToken:I

    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->restartRecovery:Z

    :cond_2
    return-void
.end method

.method public consumeSingleTargetModuleName()V
    .locals 3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->indexOfAssistIdentifier()I

    move-result v0

    if-gez v0, :cond_0

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeSingleTargetModuleName()V

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->createAssistModuleReference(I)Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnAstStack(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    instance-of v2, v1, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredExportsStatement;

    if-eqz v2, :cond_1

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredExportsStatement;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredPackageVisibilityStatement;->add(Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastIgnoredToken:I

    :cond_1
    return-void
.end method

.method public consumeSingleTypeImportDeclarationName()V
    .locals 7

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->indexOfAssistIdentifier()I

    move-result v0

    if-gez v0, :cond_0

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeSingleTypeImportDeclarationName()V

    return-void

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthStack:[I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    aget v1, v1, v2

    const/4 v2, 0x1

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->identifierSubSet(I)[[C

    move-result-object v0

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    sub-int/2addr v3, v2

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    sub-int/2addr v3, v1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    new-array v4, v1, [J

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPositionStack:[J

    add-int/2addr v3, v2

    const/4 v6, 0x0

    invoke-static {v5, v3, v4, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, v0, v4, v6}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->createAssistImportReference([[C[JI)Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    add-int/2addr v3, v2

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnAstStack(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentToken:I

    const/16 v5, 0x1a

    if-ne v3, v5, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->declarationSourceEnd:I

    goto :goto_0

    :cond_1
    sub-int/2addr v1, v2

    aget-wide v3, v4, v1

    long-to-int v1, v3

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->declarationSourceEnd:I

    :goto_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intStack:[I

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    add-int/lit8 v4, v3, -0x1

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v1, v1, v3

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->declarationSourceStart:I

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->declarationSourceEnd:I

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->flushCommentsDefinedPriorTo(I)I

    move-result v1

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->declarationSourceEnd:I

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    if-eqz v3, :cond_2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    invoke-virtual {v3, v0, v6}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastIgnoredToken:I

    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->restartRecovery:Z

    :cond_2
    return-void
.end method

.method public consumeStaticImportOnDemandDeclarationName()V
    .locals 8

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->indexOfAssistIdentifier()I

    move-result v0

    if-gez v0, :cond_0

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeStaticImportOnDemandDeclarationName()V

    return-void

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthStack:[I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    aget v1, v1, v2

    const/4 v2, 0x1

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->identifierSubSet(I)[[C

    move-result-object v0

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    sub-int/2addr v3, v2

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    sub-int/2addr v3, v1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    new-array v4, v1, [J

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPositionStack:[J

    add-int/2addr v3, v2

    const/4 v6, 0x0

    invoke-static {v5, v3, v4, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v3, 0x8

    invoke-virtual {p0, v0, v4, v3}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->createAssistImportReference([[C[JI)Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    move-result-object v0

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v5, 0x20000

    or-int/2addr v3, v5

    iput v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intStack:[I

    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    add-int/lit8 v7, v5, -0x1

    iput v7, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v3, v3, v5

    iput v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->trailingStarPosition:I

    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    add-int/2addr v3, v2

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnAstStack(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentToken:I

    const/16 v5, 0x1a

    if-ne v3, v5, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->declarationSourceEnd:I

    goto :goto_0

    :cond_1
    sub-int/2addr v1, v2

    aget-wide v3, v4, v1

    long-to-int v1, v3

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->declarationSourceEnd:I

    :goto_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intStack:[I

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    add-int/lit8 v4, v3, -0x1

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v1, v1, v3

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->declarationSourceStart:I

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->declarationSourceEnd:I

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->flushCommentsDefinedPriorTo(I)I

    move-result v1

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->declarationSourceEnd:I

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    if-eqz v3, :cond_2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    invoke-virtual {v3, v0, v6}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastIgnoredToken:I

    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->restartRecovery:Z

    :cond_2
    return-void
.end method

.method public consumeStaticInitializer()V
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeStaticInitializer()V

    const/16 v0, 0x203

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    return-void
.end method

.method public consumeStaticOnly()V
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeStaticOnly()V

    const/16 v0, 0x203

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(I)V

    return-void
.end method

.method public consumeToken(I)V
    .locals 5

    const/16 v0, 0x62

    if-ne v0, p1, :cond_0

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->caseFlagSet:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->lastArrowAssociatedWithCase:Z

    :cond_0
    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeToken(I)V

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isFirst:Z

    if-eqz v1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isFirst:Z

    return-void

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isInsideMethod()Z

    move-result v1

    const/16 v2, 0x16

    if-nez v1, :cond_5

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isInsideFieldInitialization()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isInsideAttributeValue()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isInsideEnumConstantnitialization()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isInsideModuleInfo()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->adjustBracket(I)V

    goto :goto_1

    :cond_3
    const/16 v0, 0x21

    if-eq p1, v0, :cond_4

    goto :goto_1

    :cond_4
    const/16 v0, 0x200

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementKind(I)I

    move-result v0

    const/16 v1, 0x202

    if-ne v0, v1, :cond_b

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    goto :goto_1

    :cond_5
    :goto_0
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->adjustBracket(I)V

    const/16 v1, 0x17

    if-eq p1, v1, :cond_7

    const/16 v1, 0x31

    if-eq p1, v1, :cond_6

    goto :goto_1

    :cond_6
    iget v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->previousToken:I

    if-ne v1, v0, :cond_b

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->lastArrowAssociatedWithCase:Z

    if-nez v0, :cond_b

    const/16 v0, 0x207

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    const/4 v1, 0x1

    iget-object v3, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->previousObjectInfo:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v3}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(IILjava/lang/Object;)V

    goto :goto_1

    :cond_7
    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->previousToken:I

    const/16 v1, 0x201

    if-eq v0, v2, :cond_a

    const/16 v3, 0x22

    if-eq v0, v3, :cond_9

    const/16 v3, 0x23

    const/4 v4, -0x1

    if-eq v0, v3, :cond_8

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    if-le v0, v4, :cond_b

    invoke-virtual {p0, v1, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(II)V

    goto :goto_1

    :cond_8
    invoke-virtual {p0, v1, v4}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(II)V

    goto :goto_1

    :cond_9
    const/4 v0, -0x2

    invoke-virtual {p0, v1, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(II)V

    goto :goto_1

    :cond_a
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    invoke-virtual {p0, v1, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(II)V

    :cond_b
    :goto_1
    iput p1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->previousToken:I

    if-ne p1, v2, :cond_c

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    iput p1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->previousIdentifierPtr:I

    :cond_c
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public consumeTypeImportOnDemandDeclarationName()V
    .locals 8

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->indexOfAssistIdentifier()I

    move-result v0

    if-gez v0, :cond_0

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeTypeImportOnDemandDeclarationName()V

    return-void

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthStack:[I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    aget v1, v1, v2

    const/4 v2, 0x1

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->identifierSubSet(I)[[C

    move-result-object v0

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    sub-int/2addr v3, v2

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    sub-int/2addr v3, v1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    new-array v4, v1, [J

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPositionStack:[J

    add-int/2addr v3, v2

    const/4 v6, 0x0

    invoke-static {v5, v3, v4, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, v0, v4, v6}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->createAssistImportReference([[C[JI)Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    move-result-object v0

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v5, 0x20000

    or-int/2addr v3, v5

    iput v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intStack:[I

    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    add-int/lit8 v7, v5, -0x1

    iput v7, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v3, v3, v5

    iput v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->trailingStarPosition:I

    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    add-int/2addr v3, v2

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnAstStack(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentToken:I

    const/16 v5, 0x1a

    if-ne v3, v5, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->declarationSourceEnd:I

    goto :goto_0

    :cond_1
    sub-int/2addr v1, v2

    aget-wide v3, v4, v1

    long-to-int v1, v3

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->declarationSourceEnd:I

    :goto_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intStack:[I

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    add-int/lit8 v4, v3, -0x1

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v1, v1, v3

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->declarationSourceStart:I

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->declarationSourceEnd:I

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->flushCommentsDefinedPriorTo(I)I

    move-result v1

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->declarationSourceEnd:I

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    if-eqz v3, :cond_2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    invoke-virtual {v3, v0, v6}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastIgnoredToken:I

    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->restartRecovery:Z

    :cond_2
    return-void
.end method

.method public copyState(Lorg/eclipse/jdt/internal/compiler/parser/Parser;)V
    .locals 4

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->copyState(Lorg/eclipse/jdt/internal/compiler/parser/Parser;)V

    check-cast p1, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;

    iget v0, p1, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->previousToken:I

    iput v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->previousToken:I

    iget v0, p1, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->previousIdentifierPtr:I

    iput v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->previousIdentifierPtr:I

    iget v0, p1, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->lastModifiers:I

    iput v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->lastModifiers:I

    iget v0, p1, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->lastModifiersStart:I

    iput v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->lastModifiersStart:I

    iget v0, p1, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->bracketDepth:I

    iput v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->bracketDepth:I

    iget v0, p1, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementPtr:I

    iput v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementPtr:I

    iget-object v0, p1, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->blockStarts:[I

    array-length v1, v0

    new-array v2, v1, [I

    iput-object v2, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->blockStarts:[I

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementKindStack:[I

    array-length v1, v0

    new-array v2, v1, [I

    iput-object v2, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementKindStack:[I

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementInfoStack:[I

    array-length v1, v0

    new-array v2, v1, [I

    iput-object v2, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementInfoStack:[I

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementObjectInfoStack:[Ljava/lang/Object;

    array-length v1, v0

    new-array v2, v1, [Ljava/lang/Object;

    iput-object v2, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementObjectInfoStack:[Ljava/lang/Object;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->previousKind:I

    iput v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->previousKind:I

    iget v0, p1, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->previousInfo:I

    iput v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->previousInfo:I

    iget-object p1, p1, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->previousObjectInfo:Ljava/lang/Object;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->previousObjectInfo:Ljava/lang/Object;

    return-void
.end method

.method public abstract createAssistImportReference([[C[JI)Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;
.end method

.method public abstract createAssistModuleDeclaration(Lorg/eclipse/jdt/internal/compiler/CompilationResult;[[C[J)Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;
.end method

.method public abstract createAssistModuleReference(I)Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;
.end method

.method public abstract createAssistPackageReference([[C[J)Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;
.end method

.method public abstract createAssistPackageVisibilityReference([[C[J)Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;
.end method

.method public abstract createParameterizedQualifiedAssistTypeReference([[C[[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;[C[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;[J)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;
.end method

.method public abstract createParameterizedSingleAssistTypeReference([Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;[CJ)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;
.end method

.method public abstract createQualifiedAssistNameReference([[C[C[J)Lorg/eclipse/jdt/internal/compiler/ast/NameReference;
.end method

.method public abstract createQualifiedAssistTypeReference([[C[C[J)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;
.end method

.method public abstract createSingleAssistNameReference([CJ)Lorg/eclipse/jdt/internal/compiler/ast/NameReference;
.end method

.method public abstract createSingleAssistTypeReference([CJ)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;
.end method

.method public abstract createSnapShotParser()Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;
.end method

.method public enclosingNode()Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public fallBackToSpringForward(Lorg/eclipse/jdt/internal/compiler/ast/Statement;)I
    .locals 7

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->automatonState()I

    move-result v0

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentToken:I

    const/16 v2, 0x3d

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    array-length v2, v2

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->referenceContext:Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    instance-of v6, v5, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    if-eqz v6, :cond_0

    check-cast v5, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    iget v2, v5, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->bodyEnd:I

    :cond_0
    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->eofPosition:I

    if-ge v1, v2, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->shouldStackAssistNode()V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iput v2, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->eofPosition:I

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->getNextToken()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->automatonWillShift(II)Z

    move-result v2

    if-eqz v2, :cond_1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentToken:I

    return v4

    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v2, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->ungetToken(I)V

    goto :goto_0

    :cond_2
    return v3

    :cond_3
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v2, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->ungetToken(I)V

    const/16 v2, 0x21

    if-ne v1, v2, :cond_4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->ignoreNextClosingBrace()V

    :cond_4
    :goto_0
    sget-object v1, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->RECOVERY_TOKENS:[I

    array-length v1, v1

    :goto_1
    if-lt v3, v1, :cond_7

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->snapShotPtr:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    const/4 p1, 0x1

    return p1

    :cond_5
    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->snapShotStack:[Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;

    aget-object v0, v1, v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->copyState(Lorg/eclipse/jdt/internal/compiler/parser/Parser;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNodeNeedsStacking()Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 p1, 0x1a

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentToken:I

    return v4

    :cond_6
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->fastForward(Lorg/eclipse/jdt/internal/compiler/ast/Statement;)I

    move-result p1

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentToken:I

    return v4

    :cond_7
    sget-object v2, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->RECOVERY_TOKENS:[I

    aget v5, v2, v3

    invoke-virtual {p0, v5, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->automatonWillShift(II)Z

    move-result v5

    if-eqz v5, :cond_8

    aget p1, v2, v3

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentToken:I

    return v4

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public flushAssistState()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isOrphanCompletionNode:Z

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->setAssistIdentifier([C)V

    return-void
.end method

.method public flushElementStack()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementPtr:I

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    const/4 v1, -0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementPtr:I

    iput v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->previousKind:I

    iput v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->previousInfo:I

    iput-object v3, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->previousObjectInfo:Ljava/lang/Object;

    return-void

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementObjectInfoStack:[Ljava/lang/Object;

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getAssistTypeReferenceForGenericType(III)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;
    .locals 10

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    if-ne p3, v0, :cond_1

    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsLengthStack:[I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsLengthPtr:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsLengthPtr:I

    aget p3, p3, v1

    const/4 v1, -0x1

    if-le p3, v1, :cond_0

    new-array v1, p3, [Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsPtr:I

    sub-int/2addr v2, p3

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsPtr:I

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    add-int/2addr v2, v0

    invoke-static {v3, v2, v1, p1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->NO_TYPE_ARGUMENTS:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    :goto_0
    new-array p3, p2, [J

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPositionStack:[J

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    invoke-static {v2, v3, p3, p1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    sub-int/2addr p2, v0

    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistIdentifier()[C

    move-result-object p2

    aget-wide v2, p3, p1

    invoke-virtual {p0, v1, p2, v2, v3}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->createParameterizedSingleAssistTypeReference([Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;[CJ)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    add-int/2addr p2, v0

    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    return-object p1

    :cond_1
    new-array v1, p3, [[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    new-array v2, p3, [[C

    new-array v8, p3, [J

    move v3, p3

    :cond_2
    :goto_1
    if-gtz v3, :cond_b

    move p2, p1

    move v3, p3

    :goto_2
    if-lt p2, p3, :cond_9

    if-nez v3, :cond_4

    aget-object p2, v1, p1

    if-eqz p2, :cond_3

    array-length p3, p2

    if-lez p3, :cond_3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistIdentifier()[C

    move-result-object p3

    aget-wide v1, v8, p1

    invoke-virtual {p0, p2, p3, v1, v2}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->createParameterizedSingleAssistTypeReference([Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;[CJ)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object p1

    goto :goto_5

    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistIdentifier()[C

    move-result-object p2

    aget-wide v1, v8, p1

    invoke-virtual {p0, p2, v1, v2}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->createSingleAssistTypeReference([CJ)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object p1

    goto :goto_5

    :cond_4
    aget-object v7, v1, v3

    new-array v4, v3, [[C

    invoke-static {v2, p1, v4, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v5, v3, [[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-static {v1, p1, v5, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move p2, p1

    :goto_3
    if-lt p1, v3, :cond_7

    if-nez p2, :cond_6

    if-eqz v7, :cond_5

    array-length p1, v7

    if-lez p1, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistIdentifier()[C

    move-result-object p1

    invoke-virtual {p0, v4, p1, v8}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->createQualifiedAssistTypeReference([[C[C[J)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object p1

    goto :goto_5

    :cond_6
    :goto_4
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistIdentifier()[C

    move-result-object v6

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->createParameterizedQualifiedAssistTypeReference([[C[[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;[C[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;[J)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object p1

    :goto_5
    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    add-int/2addr p2, v0

    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    return-object p1

    :cond_7
    aget-object p3, v5, p1

    if-eqz p3, :cond_8

    move p2, v0

    :cond_8
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_9
    aget-object v4, v2, p2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistIdentifier()[C

    move-result-object v5

    if-ne v4, v5, :cond_a

    move v3, p2

    :cond_a
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_b
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsLengthStack:[I

    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsLengthPtr:I

    add-int/lit8 v6, v5, -0x1

    iput v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsLengthPtr:I

    aget v4, v4, v5

    if-lez v4, :cond_c

    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsPtr:I

    sub-int/2addr v5, v4

    iput v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsPtr:I

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    add-int/2addr v5, v0

    add-int/lit8 v7, v3, -0x1

    new-array v9, v4, [Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aput-object v9, v1, v7

    invoke-static {v6, v5, v9, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_c
    if-eq p2, v0, :cond_d

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    sub-int/2addr v4, p2

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierStack:[[C

    add-int/2addr v4, v0

    sub-int v6, v3, p2

    invoke-static {v5, v4, v2, v6, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPositionStack:[J

    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    add-int/2addr v5, v0

    invoke-static {v4, v5, v8, v6, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_6

    :cond_d
    add-int/lit8 v4, v3, -0x1

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierStack:[[C

    iget v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    aget-object v5, v5, v6

    aput-object v5, v2, v4

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPositionStack:[J

    add-int/lit8 v7, v6, -0x1

    iput v7, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    aget-wide v6, v5, v6

    aput-wide v6, v8, v4

    :goto_6
    sub-int/2addr v3, p2

    if-lez v3, :cond_2

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthStack:[I

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    add-int/lit8 v5, v4, -0x1

    iput v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    aget p2, p2, v4

    goto/16 :goto_1
.end method

.method public getNextToken()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextToken()I

    move-result v0
    :try_end_0
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/16 v0, 0x3d

    return v0
.end method

.method public getTypeReference(I)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;
    .locals 7

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->indexOfAssistIdentifier(Z)I

    move-result v1

    if-gez v1, :cond_0

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->getTypeReference(I)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthStack:[I

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    aget v2, v2, v3

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsIdentifiersLengthStack:[I

    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsIdentifiersLengthPtr:I

    add-int/lit8 v6, v5, -0x1

    iput v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsIdentifiersLengthPtr:I

    aget v4, v4, v5

    if-ne v2, v4, :cond_3

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsLengthStack:[I

    iget v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsLengthPtr:I

    aget v5, v5, v6

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->identifierSubSet(I)[[C

    move-result-object p1

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    sub-int/2addr v3, v0

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    sub-int/2addr v3, v2

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    new-array v4, v2, [J

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPositionStack:[J

    add-int/2addr v3, v0

    const/4 v6, 0x0

    invoke-static {v5, v3, v4, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-nez v1, :cond_2

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsLengthPtr:I

    sub-int/2addr p1, v0

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsLengthPtr:I

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistIdentifier()[C

    move-result-object p1

    aget-wide v1, v4, v6

    invoke-virtual {p0, p1, v1, v2}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->createSingleAssistTypeReference([CJ)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object p1

    goto :goto_0

    :cond_2
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsLengthPtr:I

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsLengthPtr:I

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistIdentifier()[C

    move-result-object v1

    invoke-virtual {p0, p1, v1, v4}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->createQualifiedAssistTypeReference([[C[C[J)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    goto :goto_2

    :cond_3
    :goto_1
    sub-int/2addr v3, v0

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    invoke-virtual {p0, p1, v2, v4}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->getAssistTypeReferenceForGenericType(III)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object p1

    :goto_2
    return-object p1
.end method

.method public getUnspecifiedReferenceOptimized()Lorg/eclipse/jdt/internal/compiler/ast/NameReference;
    .locals 7

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->indexOfAssistIdentifier()I

    move-result v0

    if-gez v0, :cond_0

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->getUnspecifiedReferenceOptimized()Lorg/eclipse/jdt/internal/compiler/ast/NameReference;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeNonTypeUseName()V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthStack:[I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    aget v1, v1, v2

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->identifierSubSet(I)[[C

    move-result-object v2

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    sub-int/2addr v3, v1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    new-array v4, v1, [J

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPositionStack:[J

    add-int/lit8 v3, v3, 0x1

    const/4 v6, 0x0

    invoke-static {v5, v3, v4, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistIdentifier()[C

    move-result-object v0

    aget-wide v1, v4, v6

    invoke-virtual {p0, v0, v1, v2}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->createSingleAssistNameReference([CJ)Lorg/eclipse/jdt/internal/compiler/ast/NameReference;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistIdentifier()[C

    move-result-object v0

    invoke-virtual {p0, v2, v0, v4}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->createQualifiedAssistNameReference([[C[C[J)Lorg/eclipse/jdt/internal/compiler/ast/NameReference;

    move-result-object v0

    :goto_0
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit8 v1, v1, -0x8

    or-int/lit8 v1, v1, 0x3

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    return-object v0
.end method

.method public goForBlockStatementsOrCatchHeader()V
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->goForBlockStatementsOrCatchHeader()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isFirst:Z

    return-void
.end method

.method public goForBlockStatementsopt()V
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->goForBlockStatementsopt()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isFirst:Z

    return-void
.end method

.method public goForCompilationUnit()V
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->goForCompilationUnit()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isFirst:Z

    return-void
.end method

.method public goForHeaders()V
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->goForHeaders()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isFirst:Z

    return-void
.end method

.method public identifierSubSet(I)[[C
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierStack:[[C

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthStack:[I

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    aget v2, v2, v3

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    new-array v2, p1, [[C

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method public indexOfAssistIdentifier()I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->indexOfAssistIdentifier(Z)I

    move-result v0

    return v0
.end method

.method public indexOfAssistIdentifier(Z)I
    .locals 5

    .line 2
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    const/4 v1, -0x1

    if-gez v0, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistIdentifier()[C

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 4
    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthStack:[I

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    aget v2, v2, v3

    if-eqz p1, :cond_2

    if-lez v2, :cond_2

    .line 5
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsIdentifiersLengthPtr:I

    if-le p1, v1, :cond_2

    .line 6
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsIdentifiersLengthStack:[I

    aget v2, v2, p1

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-lt p1, v2, :cond_3

    return v1

    .line 7
    :cond_3
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierStack:[[C

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    sub-int/2addr v4, p1

    aget-object v3, v3, v4

    if-ne v3, v0, :cond_4

    sub-int/2addr v2, p1

    add-int/lit8 v2, v2, -0x1

    return v2

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method public initialize()V
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->initialize()V

    .line 2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->flushAssistState()V

    .line 3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->flushElementStack()V

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->previousIdentifierPtr:I

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->bracketDepth:I

    return-void
.end method

.method public initialize(Z)V
    .locals 0

    .line 6
    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->initialize(Z)V

    .line 7
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->flushAssistState()V

    .line 8
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->flushElementStack()V

    const/4 p1, -0x1

    .line 9
    iput p1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->previousIdentifierPtr:I

    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->bracketDepth:I

    return-void
.end method

.method public abstract initializeScanner()V
.end method

.method public isAssistParser()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isIndirectlyInsideEnumConstantnitialization()Z
    .locals 3

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementPtr:I

    :goto_0
    const/4 v1, -0x1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementKindStack:[I

    aget v1, v1, v0

    const/16 v2, 0x206

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public isIndirectlyInsideFieldInitialization()Z
    .locals 3

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementPtr:I

    :goto_0
    const/4 v1, -0x1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementKindStack:[I

    aget v1, v1, v0

    const/16 v2, 0x204

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public isIndirectlyInsideLambdaBlock()Z
    .locals 3

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementPtr:I

    :goto_0
    const/4 v1, -0x1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementKindStack:[I

    aget v1, v1, v0

    const/16 v2, 0x207

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementInfoStack:[I

    aget v1, v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public isIndirectlyInsideLambdaExpression()Z
    .locals 3

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementPtr:I

    :goto_0
    const/4 v1, -0x1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementKindStack:[I

    aget v1, v1, v0

    const/16 v2, 0x207

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public isIndirectlyInsideMethod()Z
    .locals 3

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementPtr:I

    :goto_0
    const/4 v1, -0x1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementKindStack:[I

    aget v1, v1, v0

    const/16 v2, 0x203

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public isIndirectlyInsideType()Z
    .locals 3

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementPtr:I

    :goto_0
    const/4 v1, -0x1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementKindStack:[I

    aget v1, v1, v0

    const/16 v2, 0x202

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public isInsideArrayInitializer()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isInsideAttributeValue()Z
    .locals 3

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementPtr:I

    :goto_0
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-gt v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementKindStack:[I

    aget v1, v1, v0

    packed-switch v1, :pswitch_data_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x1

    return v0

    :pswitch_1
    return v2

    :pswitch_data_0
    .packed-switch 0x202
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isInsideEnumConstantnitialization()Z
    .locals 4

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementPtr:I

    :goto_0
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-gt v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementKindStack:[I

    aget v1, v1, v0

    const/16 v3, 0x202

    if-eq v1, v3, :cond_2

    const/16 v3, 0x203

    if-eq v1, v3, :cond_2

    const/16 v2, 0x206

    if-eq v1, v2, :cond_1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    return v2
.end method

.method public isInsideFieldInitialization()Z
    .locals 3

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementPtr:I

    :goto_0
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-gt v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementKindStack:[I

    aget v1, v1, v0

    packed-switch v1, :pswitch_data_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x1

    return v0

    :pswitch_1
    return v2

    :pswitch_data_0
    .packed-switch 0x202
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isInsideMethod()Z
    .locals 3

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementPtr:I

    :goto_0
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-gt v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementKindStack:[I

    aget v1, v1, v0

    packed-switch v1, :pswitch_data_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :pswitch_0
    return v2

    :pswitch_1
    const/4 v0, 0x1

    return v0

    :pswitch_2
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x202
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isInsideModuleInfo()Z
    .locals 4

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementPtr:I

    :goto_0
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-gt v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementKindStack:[I

    aget v2, v2, v0

    const/16 v3, 0x208

    if-eq v2, v3, :cond_1

    packed-switch v2, :pswitch_data_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :pswitch_0
    return v1

    :cond_1
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x202
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isInsideType()Z
    .locals 3

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementPtr:I

    :goto_0
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-gt v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementKindStack:[I

    aget v1, v1, v0

    packed-switch v1, :pswitch_data_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :pswitch_0
    return v2

    :pswitch_1
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x202
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public lastIndexOfElement(I)I
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementPtr:I

    :goto_0
    const/4 v1, -0x1

    if-gt v0, v1, :cond_0

    return v1

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementKindStack:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public parseBlockStatements(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->parseBlockStatements(Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)V

    goto :goto_0

    .line 3
    :cond_0
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;

    if-eqz v0, :cond_1

    .line 4
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->parseBlockStatements(Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public parseBlockStatements(Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)V
    .locals 4

    .line 5
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->initialize()V

    .line 6
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->modifiers:I

    iput v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->lastModifiers:I

    .line 7
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->modifiersSourceStart:I

    iput v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->lastModifiersStart:I

    .line 8
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->goForBlockStatementsopt()V

    .line 9
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->referenceContext:Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    .line 10
    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->compilationUnit:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    .line 11
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->bodyStart:I

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->bodyEnd(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->resetTo(II)V

    .line 12
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->consumeNestedMethod()V

    const/16 p2, 0x4246

    .line 13
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->parse()V
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 14
    :catch_0
    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastAct:I

    .line 15
    :goto_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastAct:I

    if-ne v0, p2, :cond_0

    .line 16
    iget p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v0, 0x80000

    or-int/2addr p2, v0

    iput p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    return-void

    .line 17
    :cond_0
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->realBlockStack:[I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->realBlockPtr:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->realBlockPtr:I

    aget p2, p2, v0

    iput p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->explicitDeclarations:I

    .line 18
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astLengthStack:[I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astLengthPtr:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astLengthPtr:I

    aget p2, p2, v0

    if-eqz p2, :cond_2

    .line 19
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    sub-int/2addr v0, p2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    .line 20
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    add-int/lit8 v2, v0, 0x1

    aget-object v2, v1, v2

    instance-of v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 p2, p2, -0x1

    .line 21
    new-array v2, p2, [Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    iput-object v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    .line 22
    invoke-static {v1, v0, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    add-int/lit8 v0, v0, 0x1

    aget-object p2, p2, v0

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;

    iput-object p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;->constructorCall:Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 24
    new-array v2, p2, [Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    iput-object v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    .line 25
    invoke-static {v1, v0, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26
    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/ast/SuperReference;->implicitSuperConstructorCall()Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;

    move-result-object p2

    iput-object p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;->constructorCall:Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;

    goto :goto_1

    .line 27
    :cond_2
    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/ast/SuperReference;->implicitSuperConstructorCall()Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;

    move-result-object p2

    iput-object p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;->constructorCall:Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;

    .line 28
    iget p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->bodyStart:I

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->bodyEnd:I

    invoke-virtual {p0, p2, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->containsComment(II)Z

    move-result p2

    if-nez p2, :cond_3

    .line 29
    iget p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/lit8 p2, p2, 0x8

    iput p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    .line 30
    :cond_3
    :goto_1
    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;->constructorCall:Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;

    iget v0, p2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    if-nez v0, :cond_4

    .line 31
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iput v0, p2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    .line 32
    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iput p1, p2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    :cond_4
    return-void
.end method

.method public parseBlockStatements(Lorg/eclipse/jdt/internal/compiler/ast/Initializer;Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)V
    .locals 4

    .line 33
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->initialize()V

    .line 34
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->modifiers:I

    iput v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->lastModifiers:I

    .line 35
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->modifiersSourceStart:I

    iput v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->lastModifiersStart:I

    .line 36
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->goForBlockStatementsopt()V

    .line 37
    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->referenceContext:Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    .line 38
    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->compilationUnit:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    .line 39
    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->bodyEnd(Lorg/eclipse/jdt/internal/compiler/ast/Initializer;)I

    move-result v1

    invoke-virtual {p3, v0, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->resetTo(II)V

    .line 40
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->consumeNestedMethod()V

    const/16 p3, 0x4246

    .line 41
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->parse()V
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->nestedMethod:[I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->nestedType:I

    aget v2, v0, v1

    add-int/lit8 v2, v2, -0x1

    aput v2, v0, v1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 43
    :catch_0
    :try_start_1
    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastAct:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->nestedMethod:[I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->nestedType:I

    aget v2, v0, v1

    add-int/lit8 v2, v2, -0x1

    aput v2, v0, v1

    .line 45
    :goto_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastAct:I

    if-ne v0, p3, :cond_0

    .line 46
    iget p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 p3, 0x80000

    or-int/2addr p2, p3

    iput p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    return-void

    .line 47
    :cond_0
    iget-object p3, p1, Lorg/eclipse/jdt/internal/compiler/ast/Initializer;->block:Lorg/eclipse/jdt/internal/compiler/ast/Block;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->realBlockStack:[I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->realBlockPtr:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->realBlockPtr:I

    aget v0, v0, v1

    iput v0, p3, Lorg/eclipse/jdt/internal/compiler/ast/Block;->explicitDeclarations:I

    .line 48
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astLengthStack:[I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astLengthPtr:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astLengthPtr:I

    aget v0, v0, v1

    if-lez v0, :cond_1

    .line 49
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    sub-int/2addr v2, v0

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    add-int/lit8 v2, v2, 0x1

    new-array v3, v0, [Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    iput-object v3, p3, Lorg/eclipse/jdt/internal/compiler/ast/Block;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    const/4 p3, 0x0

    invoke-static {v1, v2, v3, p3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 50
    :cond_1
    iget v0, p3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget p3, p3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-virtual {p0, v0, p3}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->containsComment(II)Z

    move-result p3

    if-nez p3, :cond_2

    .line 51
    iget-object p3, p1, Lorg/eclipse/jdt/internal/compiler/ast/Initializer;->block:Lorg/eclipse/jdt/internal/compiler/ast/Block;

    iget v0, p3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    .line 52
    :cond_2
    :goto_1
    iget p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_3

    .line 53
    iget p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/lit8 p2, p2, 0x2

    iput p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    :cond_3
    return-void

    .line 54
    :goto_2
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->nestedMethod:[I

    iget p3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->nestedType:I

    aget v0, p2, p3

    add-int/lit8 v0, v0, -0x1

    aput v0, p2, p3

    .line 55
    throw p1
.end method

.method public parseBlockStatements(Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)V
    .locals 3

    .line 56
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->isNative()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 57
    :cond_0
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->modifiers:I

    const/high16 v1, 0x1000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    return-void

    .line 58
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->initialize()V

    .line 59
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->modifiers:I

    iput v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->lastModifiers:I

    .line 60
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->modifiersSourceStart:I

    iput v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->lastModifiersStart:I

    .line 61
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->goForBlockStatementsopt()V

    .line 62
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->referenceContext:Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    .line 63
    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->compilationUnit:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    .line 64
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->bodyStart:I

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->bodyEnd(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->resetTo(II)V

    .line 65
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->consumeNestedMethod()V

    const/16 p2, 0x4246

    .line 66
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->parse()V
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->nestedMethod:[I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->nestedType:I

    aget v2, v0, v1

    add-int/lit8 v2, v2, -0x1

    aput v2, v0, v1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 68
    :catch_0
    :try_start_1
    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastAct:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->nestedMethod:[I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->nestedType:I

    aget v2, v0, v1

    add-int/lit8 v2, v2, -0x1

    aput v2, v0, v1

    .line 70
    :goto_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastAct:I

    if-ne v0, p2, :cond_2

    .line 71
    iget p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v0, 0x80000

    or-int/2addr p2, v0

    iput p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    return-void

    .line 72
    :cond_2
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->realBlockStack:[I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->realBlockPtr:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->realBlockPtr:I

    aget p2, p2, v0

    iput p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->explicitDeclarations:I

    .line 73
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astLengthStack:[I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astLengthPtr:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astLengthPtr:I

    aget p2, p2, v0

    if-eqz p2, :cond_3

    .line 74
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    .line 75
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    sub-int/2addr v1, p2

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    add-int/lit8 v1, v1, 0x1

    .line 76
    new-array v2, p2, [Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    iput-object v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    const/4 p1, 0x0

    .line 77
    invoke-static {v0, v1, v2, p1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 78
    :cond_3
    iget p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->bodyStart:I

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->bodyEnd:I

    invoke-virtual {p0, p2, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->containsComment(II)Z

    move-result p2

    if-nez p2, :cond_4

    .line 79
    iget p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/lit8 p2, p2, 0x8

    iput p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    :cond_4
    :goto_1
    return-void

    .line 80
    :goto_2
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->nestedMethod:[I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->nestedType:I

    aget v1, p2, v0

    add-int/lit8 v1, v1, -0x1

    aput v1, p2, v0

    .line 81
    throw p1
.end method

.method public popElement(I)V
    .locals 3

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementPtr:I

    if-gez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x207

    if-eq p1, v1, :cond_3

    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementKindStack:[I

    aget v2, v2, v0

    if-eq v2, v1, :cond_2

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_1

    :cond_3
    :goto_0
    if-ltz v0, :cond_6

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementKindStack:[I

    aget v2, v1, v0

    if-eq v2, p1, :cond_4

    goto :goto_1

    :cond_4
    iput v2, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->previousKind:I

    iget-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementInfoStack:[I

    aget p1, p1, v0

    iput p1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->previousInfo:I

    iget-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementObjectInfoStack:[Ljava/lang/Object;

    aget-object p1, p1, v0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->previousObjectInfo:Ljava/lang/Object;

    iget p1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementPtr:I

    sub-int/2addr p1, v0

    if-lez p1, :cond_5

    add-int/lit8 v2, v0, 0x1

    invoke-static {v1, v2, v1, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementInfoStack:[I

    invoke-static {v1, v2, v1, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementObjectInfoStack:[Ljava/lang/Object;

    invoke-static {v1, v2, v1, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    iget-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementObjectInfoStack:[Ljava/lang/Object;

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementPtr:I

    const/4 v1, 0x0

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementPtr:I

    :cond_6
    :goto_1
    return-void
.end method

.method public popSnapShot()V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->snapShotStack:[Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;

    iget v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->snapShotPtr:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->snapShotPtr:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    return-void
.end method

.method public popUntilElement(I)V
    .locals 3

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementPtr:I

    if-gez v0, :cond_0

    return-void

    :cond_0
    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementKindStack:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-ltz v0, :cond_5

    iget p1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementPtr:I

    if-ge v0, p1, :cond_4

    iget-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementKindStack:[I

    add-int/lit8 v1, v0, 0x1

    aget p1, p1, v1

    iput p1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->previousKind:I

    iget-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementInfoStack:[I

    aget p1, p1, v1

    iput p1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->previousInfo:I

    iget-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementObjectInfoStack:[Ljava/lang/Object;

    aget-object p1, p1, v1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->previousObjectInfo:Ljava/lang/Object;

    :goto_2
    iget p1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementPtr:I

    if-le v1, p1, :cond_3

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementObjectInfoStack:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    iput v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementPtr:I

    :cond_5
    return-void
.end method

.method public prepareForBlockStatements()V
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->nestedMethod:[I

    const/4 v1, 0x0

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->nestedType:I

    const/4 v2, 0x1

    aput v2, v0, v1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->variablesCounter:[I

    aput v1, v0, v1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->realBlockStack:[I

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->realBlockPtr:I

    aput v1, v0, v2

    const/16 v0, 0x204

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->lastIndexOfElement(I)I

    move-result v1

    const/16 v2, 0x203

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->lastIndexOfElement(I)I

    move-result v3

    if-ne v3, v1, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->flushElementStack()V

    goto :goto_0

    :cond_0
    if-le v3, v1, :cond_1

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popUntilElement(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popUntilElement(I)V

    :goto_0
    return-void
.end method

.method public prepareForHeaders()V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->nestedMethod:[I

    const/4 v1, 0x0

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->nestedType:I

    aput v1, v0, v1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->variablesCounter:[I

    aput v1, v0, v1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->realBlockStack:[I

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->realBlockPtr:I

    aput v1, v0, v1

    const/16 v0, 0x202

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popUntilElement(I)V

    const/16 v1, 0x200

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementKind(I)I

    move-result v1

    if-eq v1, v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->flushElementStack()V

    :cond_0
    return-void
.end method

.method public pushOnElementStack(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(IILjava/lang/Object;)V

    return-void
.end method

.method public pushOnElementStack(II)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(IILjava/lang/Object;)V

    return-void
.end method

.method public pushOnElementStack(IILjava/lang/Object;)V
    .locals 5

    .line 3
    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementPtr:I

    const/4 v1, -0x1

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->previousKind:I

    .line 5
    iput v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->previousInfo:I

    const/4 v2, 0x0

    .line 6
    iput-object v2, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->previousObjectInfo:Ljava/lang/Object;

    .line 7
    iget-object v2, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementKindStack:[I

    array-length v3, v2

    add-int/lit8 v0, v0, 0x1

    .line 8
    iput v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementPtr:I

    if-lt v0, v3, :cond_1

    add-int/lit16 v0, v3, 0xff

    .line 9
    new-array v4, v0, [I

    iput-object v4, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementKindStack:[I

    .line 10
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    iget-object v2, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementInfoStack:[I

    .line 12
    new-array v4, v0, [I

    iput-object v4, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementInfoStack:[I

    .line 13
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    iget-object v2, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementObjectInfoStack:[Ljava/lang/Object;

    .line 15
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementObjectInfoStack:[Ljava/lang/Object;

    .line 16
    invoke-static {v2, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 17
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementKindStack:[I

    iget v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementPtr:I

    aput p1, v0, v1

    .line 18
    iget-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementInfoStack:[I

    aput p2, p1, v1

    .line 19
    iget-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementObjectInfoStack:[Ljava/lang/Object;

    aput-object p3, p1, v1

    return-void
.end method

.method public recoveryExitFromVariable()V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;

    if-eqz v1, :cond_0

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredInitializer;

    if-nez v1, :cond_0

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->recoveryExitFromVariable()V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    if-eq v0, v1, :cond_1

    const/16 v0, 0x204

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->recoveryExitFromVariable()V

    :cond_1
    :goto_0
    return-void
.end method

.method public recoveryTokenCheck()V
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentToken:I

    const/16 v2, 0x21

    const/16 v3, 0x203

    if-eq v1, v2, :cond_2

    const/16 v2, 0x31

    if-eq v1, v2, :cond_0

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->recoveryTokenCheck()V

    goto/16 :goto_1

    :cond_0
    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->recoveryTokenCheck()V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    instance-of v1, v1, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredInitializer;

    if-eqz v1, :cond_7

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;

    if-eqz v1, :cond_1

    const/16 v1, 0x204

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popUntilElement(I)V

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    if-eq v1, v0, :cond_7

    const/16 v0, 0x200

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementKind(I)I

    move-result v0

    if-eq v0, v3, :cond_7

    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(I)V

    goto :goto_1

    :cond_2
    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->recoveryTokenCheck()V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    if-eq v1, v0, :cond_7

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isInsideAttributeValue()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isIndirectlyInsideLambdaExpression()Z

    move-result v1

    if-nez v1, :cond_7

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredInitializer;

    if-nez v1, :cond_6

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;

    if-nez v1, :cond_6

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;

    if-eqz v1, :cond_3

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parent:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    instance-of v2, v2, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredInitializer;

    if-nez v2, :cond_6

    :cond_3
    if-eqz v1, :cond_4

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parent:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    instance-of v1, v1, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    instance-of v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    if-eqz v0, :cond_7

    const/16 v0, 0x202

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popUntilElement(I)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->referenceContext:Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    instance-of v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isIndirectlyInsideFieldInitialization()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    instance-of v1, v1, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUnit;

    if-eqz v1, :cond_7

    :cond_5
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    goto :goto_1

    :cond_6
    :goto_0
    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popUntilElement(I)V

    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    :cond_7
    :goto_1
    return-void
.end method

.method public replaceAssistStatement(Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;IILorg/eclipse/jdt/internal/compiler/ast/Statement;)Lorg/eclipse/jdt/internal/compiler/ast/Statement;
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    instance-of v1, p1, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;

    if-eqz v1, :cond_5

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;

    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->statements:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredStatement;

    if-eqz p2, :cond_7

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    array-length v4, p2

    if-lt v2, v4, :cond_1

    goto :goto_1

    :cond_1
    aget-object v4, p2, v2

    if-nez v4, :cond_2

    :goto_1
    if-eqz v3, :cond_7

    return-object v0

    :cond_2
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredStatement;->parseTree()Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    move-result-object v4

    iget v5, v4, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    if-lt v5, p3, :cond_4

    iget v4, v4, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    if-gt v4, p4, :cond_4

    if-nez v3, :cond_3

    new-instance v3, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredStatement;

    invoke-direct {v3, p5, p1, v1}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredStatement;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/Statement;Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;I)V

    aput-object v3, p2, v2

    add-int/lit8 v3, v2, 0x1

    iput v3, p1, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->statementCount:I

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    aput-object v0, p2, v2

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;

    if-eqz v0, :cond_6

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->methodBody:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->replaceAssistStatement(Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;IILorg/eclipse/jdt/internal/compiler/ast/Statement;)Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    move-result-object p5

    goto :goto_3

    :cond_6
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredInitializer;

    if-eqz v0, :cond_7

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredInitializer;

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredInitializer;->initializerBody:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->replaceAssistStatement(Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;IILorg/eclipse/jdt/internal/compiler/ast/Statement;)Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    move-result-object p5

    :cond_7
    :goto_3
    return-object p5
.end method

.method public requireExtendedRecovery()Z
    .locals 1

    const/16 v0, 0x207

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->lastIndexOfElement(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public reset()V
    .locals 0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->flushAssistState()V

    return-void
.end method

.method public restoreAssistParser(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public resumeAfterRecovery()I
    .locals 6

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->requireExtendedRecovery()Z

    move-result v0

    const/16 v1, 0x4246

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->unstackedAct:I

    const/4 v4, 0x2

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->fallBackToSpringForward(Lorg/eclipse/jdt/internal/compiler/ast/Statement;)I

    move-result v0

    if-ne v0, v4, :cond_0

    move v5, v2

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    iput-boolean v5, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->resumedAfterRepair:Z

    if-eq v0, v4, :cond_1

    if-nez v0, :cond_4

    :cond_1
    return v0

    :cond_2
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentToken:I

    const/16 v1, 0x31

    if-ne v0, v1, :cond_3

    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->ignoreNextOpeningBrace:Z

    :cond_3
    return v4

    :cond_4
    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astLengthPtr:I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->typeAnnotationLengthPtr:I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->typeAnnotationPtr:I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->dimensions:I

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->recoveredStaticInitializerStart:I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsIdentifiersLengthPtr:I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsLengthPtr:I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsPtr:I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->valueLambdaNestDepth:I

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->modifiers:I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->modifiersSourceStart:I

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->diet:Z

    if-eqz v0, :cond_5

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->dietInt:I

    :cond_5
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->unstackedAct:I

    if-eq v0, v1, :cond_6

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->resumedAfterRepair:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentToken:I

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->ungetToken(I)V

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->moveRecoveryCheckpoint()Z

    move-result v0

    if-nez v0, :cond_7

    return v3

    :cond_7
    :goto_1
    iput-boolean v3, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->resumedAfterRepair:Z

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->referenceContext:Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    if-nez v1, :cond_c

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    if-eqz v1, :cond_8

    goto :goto_4

    :cond_8
    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    if-nez v1, :cond_a

    instance-of v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-eqz v0, :cond_9

    goto :goto_2

    :cond_9
    return v3

    :cond_a
    :goto_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    instance-of v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->prepareForHeaders()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->goForHeaders()V

    goto :goto_3

    :cond_b
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->prepareForBlockStatements()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->goForBlockStatementsOrCatchHeader()V

    :goto_3
    return v2

    :cond_c
    :goto_4
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isInsideMethod()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isIndirectlyInsideFieldInitialization()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->prepareForBlockStatements()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->goForBlockStatementsOrCatchHeader()V

    goto :goto_5

    :cond_d
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isInsideArrayInitializer()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isIndirectlyInsideFieldInitialization()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->prepareForBlockStatements()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->goForBlockStatementsopt()V

    goto :goto_5

    :cond_e
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->prepareForHeaders()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->referenceContext:Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    if-eqz v1, :cond_f

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->isModuleInfo()Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x208

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(I)V

    :cond_f
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->goForHeaders()V

    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->diet:Z

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->dietInt:I

    :goto_5
    return v2
.end method

.method public abstract setAssistIdentifier([C)V
.end method

.method public shouldStackAssistNode()V
    .locals 0

    return-void
.end method

.method public topKnownElementInfo(I)I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementInfo(II)I

    move-result p1

    return p1
.end method

.method public topKnownElementInfo(II)I
    .locals 2

    .line 2
    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementPtr:I

    :goto_0
    const/4 v1, -0x1

    if-gt v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementKindStack:[I

    aget v1, v1, v0

    and-int/2addr v1, p1

    if-eqz v1, :cond_2

    if-gtz p2, :cond_1

    .line 4
    iget-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementInfoStack:[I

    aget p1, p1, v0

    return p1

    :cond_1
    add-int/lit8 p2, p2, -0x1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public topKnownElementKind(I)I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementKind(II)I

    move-result p1

    return p1
.end method

.method public topKnownElementKind(II)I
    .locals 3

    .line 2
    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementPtr:I

    :goto_0
    const/4 v1, -0x1

    if-gt v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementKindStack:[I

    aget v1, v1, v0

    and-int v2, v1, p1

    if-eqz v2, :cond_2

    if-gtz p2, :cond_1

    return v1

    :cond_1
    add-int/lit8 p2, p2, -0x1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public topKnownElementObjectInfo(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementObjectInfo(II)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public topKnownElementObjectInfo(II)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementPtr:I

    :goto_0
    const/4 v1, -0x1

    if-gt v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementKindStack:[I

    aget v1, v1, v0

    and-int/2addr v1, p1

    if-eqz v1, :cond_2

    if-gtz p2, :cond_1

    .line 3
    iget-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementObjectInfoStack:[Ljava/lang/Object;

    aget-object p1, p1, v0

    return-object p1

    :cond_1
    add-int/lit8 p2, p2, -0x1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public triggerRecoveryUponLambdaClosure(Lorg/eclipse/jdt/internal/compiler/ast/Statement;Z)Z
    .locals 11

    iget v6, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;

    if-eqz v0, :cond_0

    move-object v1, p1

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceEnd:I

    :goto_0
    move v7, v1

    goto :goto_1

    :cond_0
    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    goto :goto_0

    :goto_1
    iget v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementPtr:I

    const/4 v8, 0x0

    move v9, v8

    :goto_2
    const/4 v10, 0x1

    if-gez v1, :cond_e

    if-eqz v9, :cond_c

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    if-eqz p2, :cond_c

    instance-of v1, p2, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;

    if-nez v1, :cond_c

    if-nez v0, :cond_c

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->topElement()Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNodeParent()Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    move-result-object v2

    move-object v0, p0

    move v3, v6

    move v4, v7

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->replaceAssistStatement(Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;IILorg/eclipse/jdt/internal/compiler/ast/Statement;)Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    instance-of v0, p2, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    goto :goto_3

    :cond_1
    iget-object v0, p2, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parent:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    instance-of v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;

    if-eqz v2, :cond_2

    move-object p2, v0

    goto :goto_3

    :cond_2
    instance-of v0, p2, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;

    if-eqz v0, :cond_3

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->methodBody:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;

    goto :goto_3

    :cond_3
    move-object p2, v1

    :goto_3
    check-cast p2, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;

    if-eqz p2, :cond_9

    iget v0, p2, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->statementCount:I

    if-lez v0, :cond_4

    iget-object v2, p2, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->statements:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredStatement;

    sub-int/2addr v0, v10

    aget-object v0, v2, v0

    goto :goto_4

    :cond_4
    move-object v0, v1

    :goto_4
    if-eqz v0, :cond_5

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0, v8, v2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredStatement;->updatedStatement(ILjava/util/Set;)Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    move-result-object v2

    goto :goto_5

    :cond_5
    move-object v2, v1

    :goto_5
    if-eqz v2, :cond_9

    iget v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    if-eqz v3, :cond_8

    iget v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    if-eqz v2, :cond_8

    if-lt v3, v6, :cond_6

    if-gt v2, v7, :cond_6

    goto :goto_7

    :cond_6
    instance-of p2, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredLocalVariable;

    if-eqz p2, :cond_9

    instance-of p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz p2, :cond_9

    move-object p2, p1

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isTrulyExpression()Z

    move-result v2

    if-eqz v2, :cond_9

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredLocalVariable;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredLocalVariable;->localDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    if-eqz v0, :cond_9

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v2, :cond_9

    iget v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    if-eqz v3, :cond_7

    iget v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    if-eqz v2, :cond_7

    if-lt v3, v6, :cond_9

    if-gt v2, v7, :cond_9

    :cond_7
    iput-object p2, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iput p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceEnd:I

    iput p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationEnd:I

    :goto_6
    move-object p1, v1

    goto :goto_8

    :cond_8
    :goto_7
    iget-object v0, p2, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->statements:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredStatement;

    iget v2, p2, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->statementCount:I

    sub-int/2addr v2, v10

    new-instance v3, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredStatement;

    invoke-direct {v3, p1, p2, v8}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredStatement;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/Statement;Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;I)V

    aput-object v3, v0, v2

    goto :goto_6

    :cond_9
    :goto_8
    if-eqz p1, :cond_c

    :goto_9
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    if-nez p2, :cond_a

    goto :goto_a

    :cond_a
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parseTree()Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    move-result-object p2

    iget p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    if-ge p2, v0, :cond_b

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    invoke-virtual {p2, p1, v8}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/Statement;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    goto :goto_a

    :cond_b
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parent:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    goto :goto_9

    :cond_c
    :goto_a
    iget p1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->snapShotPtr:I

    const/4 p2, -0x1

    if-le p1, p2, :cond_d

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popSnapShot()V

    :cond_d
    return v9

    :cond_e
    iget-object v2, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementKindStack:[I

    aget v2, v2, v1

    const/16 v3, 0x207

    if-eq v2, v3, :cond_f

    goto :goto_b

    :cond_f
    iget-object v2, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementObjectInfoStack:[Ljava/lang/Object;

    aget-object v2, v2, v1

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    if-nez v2, :cond_10

    return v8

    :cond_10
    iget v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    if-lt v3, v6, :cond_11

    iget v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    if-gt v2, v7, :cond_11

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementPtr:I

    move v9, v10

    :goto_b
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_2

    :cond_11
    if-eqz p2, :cond_13

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->stack:[I

    array-length p2, p1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->stateStackTop:I

    add-int/2addr v0, v10

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->stateStackTop:I

    if-lt v0, p2, :cond_12

    add-int/lit16 v0, p2, 0xff

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->stack:[I

    invoke-static {p1, v8, v0, v8, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_12
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->stack:[I

    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->stateStackTop:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->unstackedAct:I

    aput v0, p1, p2

    invoke-virtual {p0, v8}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->commit(Z)V

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->stateStackTop:I

    sub-int/2addr p1, v10

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->stateStackTop:I

    :cond_13
    return v8
.end method

.method public wrapWithExplicitConstructorCallIfNeeded(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;
    .locals 4

    if-eqz p1, :cond_2

    const/16 v0, 0x200

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementKind(I)I

    move-result v1

    const/16 v2, 0x201

    if-ne v1, v2, :cond_2

    instance-of v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isTrulyExpression()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementInfo(I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    const/4 v3, -0x2

    if-ne v0, v3, :cond_2

    :cond_0
    new-instance v3, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;

    if-ne v0, v2, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    invoke-direct {v3, v0}, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;-><init>(I)V

    filled-new-array {v1}, [Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    move-result-object v0

    iput-object v0, v3, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iput v0, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iput p1, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    return-object v3

    :cond_2
    return-object p1
.end method
