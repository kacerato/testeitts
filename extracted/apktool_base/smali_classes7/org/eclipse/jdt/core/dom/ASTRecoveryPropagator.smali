.class Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;
.super Lorg/eclipse/jdt/core/dom/DefaultASTVisitor;
.source "SourceFile"


# static fields
.field private static final NOTHING:I = -0x1


# instance fields
.field private blockDepth:I

.field private data:Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;

.field endingTokens:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;

.field private insertedTokensFlagged:[Z

.field private insertedTokensKind:[I

.field private insertedTokensPosition:[I

.field private lastEnd:I

.field private problems:[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

.field private removedTokensFlagged:[Z

.field private replacedTokensFlagged:[Z

.field private stack:Ljava/util/Vector;

.field private usedOrIrrelevantProblems:[Z


# direct methods
.method public constructor <init>([Lorg/eclipse/jdt/core/compiler/CategorizedProblem;Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;)V
    .locals 9

    invoke-direct {p0}, Lorg/eclipse/jdt/core/dom/DefaultASTVisitor;-><init>()V

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->endingTokens:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;

    const/16 v1, 0x21

    filled-new-array {v1}, [I

    move-result-object v2

    const-class v3, Lorg/eclipse/jdt/core/dom/AnonymousClassDeclaration;

    invoke-virtual {v0, v3, v2}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;->put(Ljava/lang/Object;[I)[I

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->endingTokens:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;

    const/16 v2, 0x42

    filled-new-array {v2}, [I

    move-result-object v3

    const-class v4, Lorg/eclipse/jdt/core/dom/ArrayAccess;

    invoke-virtual {v0, v4, v3}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;->put(Ljava/lang/Object;[I)[I

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->endingTokens:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;

    const/4 v3, -0x1

    filled-new-array {v3, v2}, [I

    move-result-object v4

    const-class v5, Lorg/eclipse/jdt/core/dom/ArrayCreation;

    invoke-virtual {v0, v5, v4}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;->put(Ljava/lang/Object;[I)[I

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->endingTokens:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;

    const-class v4, Lorg/eclipse/jdt/core/dom/ArrayInitializer;

    filled-new-array {v1}, [I

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;->put(Ljava/lang/Object;[I)[I

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->endingTokens:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;

    const-class v4, Lorg/eclipse/jdt/core/dom/ArrayType;

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;->put(Ljava/lang/Object;[I)[I

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->endingTokens:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;

    const/16 v2, 0x1a

    filled-new-array {v2}, [I

    move-result-object v4

    const-class v5, Lorg/eclipse/jdt/core/dom/AssertStatement;

    invoke-virtual {v0, v5, v4}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;->put(Ljava/lang/Object;[I)[I

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->endingTokens:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;

    const-class v4, Lorg/eclipse/jdt/core/dom/Block;

    filled-new-array {v1}, [I

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;->put(Ljava/lang/Object;[I)[I

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->endingTokens:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;

    const/16 v4, 0x26

    const/16 v5, 0x28

    filled-new-array {v4, v5}, [I

    move-result-object v4

    const-class v5, Lorg/eclipse/jdt/core/dom/BooleanLiteral;

    invoke-virtual {v0, v5, v4}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;->put(Ljava/lang/Object;[I)[I

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->endingTokens:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;

    const-class v4, Lorg/eclipse/jdt/core/dom/BreakStatement;

    filled-new-array {v2}, [I

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;->put(Ljava/lang/Object;[I)[I

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->endingTokens:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;

    const/16 v4, 0x2d

    filled-new-array {v4}, [I

    move-result-object v4

    const-class v5, Lorg/eclipse/jdt/core/dom/CharacterLiteral;

    invoke-virtual {v0, v5, v4}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;->put(Ljava/lang/Object;[I)[I

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->endingTokens:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;

    const/16 v4, 0x19

    filled-new-array {v1, v4}, [I

    move-result-object v5

    const-class v6, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;

    invoke-virtual {v0, v6, v5}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;->put(Ljava/lang/Object;[I)[I

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->endingTokens:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;

    const-class v5, Lorg/eclipse/jdt/core/dom/ConstructorInvocation;

    filled-new-array {v2}, [I

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;->put(Ljava/lang/Object;[I)[I

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->endingTokens:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;

    const-class v5, Lorg/eclipse/jdt/core/dom/ContinueStatement;

    filled-new-array {v2}, [I

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;->put(Ljava/lang/Object;[I)[I

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->endingTokens:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;

    const-class v5, Lorg/eclipse/jdt/core/dom/DoStatement;

    filled-new-array {v4}, [I

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;->put(Ljava/lang/Object;[I)[I

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->endingTokens:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;

    const-class v5, Lorg/eclipse/jdt/core/dom/EmptyStatement;

    filled-new-array {v2}, [I

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;->put(Ljava/lang/Object;[I)[I

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->endingTokens:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;

    const-class v5, Lorg/eclipse/jdt/core/dom/ExpressionStatement;

    filled-new-array {v2}, [I

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;->put(Ljava/lang/Object;[I)[I

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->endingTokens:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;

    const-class v5, Lorg/eclipse/jdt/core/dom/FieldDeclaration;

    filled-new-array {v2}, [I

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;->put(Ljava/lang/Object;[I)[I

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->endingTokens:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;

    const-class v5, Lorg/eclipse/jdt/core/dom/ImportDeclaration;

    filled-new-array {v2}, [I

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;->put(Ljava/lang/Object;[I)[I

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->endingTokens:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;

    const-class v5, Lorg/eclipse/jdt/core/dom/Initializer;

    filled-new-array {v1}, [I

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;->put(Ljava/lang/Object;[I)[I

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->endingTokens:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;

    const-class v5, Lorg/eclipse/jdt/core/dom/MethodDeclaration;

    filled-new-array {v3, v2}, [I

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;->put(Ljava/lang/Object;[I)[I

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->endingTokens:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;

    const-class v5, Lorg/eclipse/jdt/core/dom/MethodInvocation;

    filled-new-array {v4}, [I

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;->put(Ljava/lang/Object;[I)[I

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->endingTokens:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;

    const-class v5, Lorg/eclipse/jdt/core/dom/ModuleDeclaration;

    filled-new-array {v1}, [I

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;->put(Ljava/lang/Object;[I)[I

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->endingTokens:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;

    const-class v5, Lorg/eclipse/jdt/core/dom/ModuleDirective;

    filled-new-array {v2}, [I

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;->put(Ljava/lang/Object;[I)[I

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->endingTokens:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;

    const/16 v5, 0x27

    filled-new-array {v5}, [I

    move-result-object v5

    const-class v6, Lorg/eclipse/jdt/core/dom/NullLiteral;

    invoke-virtual {v0, v6, v5}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;->put(Ljava/lang/Object;[I)[I

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->endingTokens:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;

    const/16 v5, 0x2b

    const/16 v6, 0x2c

    const/16 v7, 0x29

    const/16 v8, 0x2a

    filled-new-array {v7, v8, v5, v6}, [I

    move-result-object v5

    const-class v6, Lorg/eclipse/jdt/core/dom/NumberLiteral;

    invoke-virtual {v0, v6, v5}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;->put(Ljava/lang/Object;[I)[I

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->endingTokens:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;

    const-class v5, Lorg/eclipse/jdt/core/dom/PackageDeclaration;

    filled-new-array {v2}, [I

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;->put(Ljava/lang/Object;[I)[I

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->endingTokens:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;

    const-class v5, Lorg/eclipse/jdt/core/dom/ParenthesizedExpression;

    filled-new-array {v4}, [I

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;->put(Ljava/lang/Object;[I)[I

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->endingTokens:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;

    const/4 v5, 0x2

    const/4 v6, 0x3

    filled-new-array {v5, v6}, [I

    move-result-object v5

    const-class v6, Lorg/eclipse/jdt/core/dom/PostfixExpression;

    invoke-virtual {v0, v6, v5}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;->put(Ljava/lang/Object;[I)[I

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->endingTokens:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;

    const/16 v5, 0x9

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    const-class v6, Lorg/eclipse/jdt/core/dom/PrimitiveType;

    invoke-virtual {v0, v6, v5}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;->put(Ljava/lang/Object;[I)[I

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->endingTokens:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;

    const-class v5, Lorg/eclipse/jdt/core/dom/ReturnStatement;

    filled-new-array {v2}, [I

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;->put(Ljava/lang/Object;[I)[I

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->endingTokens:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;

    const/16 v5, 0x16

    filled-new-array {v5}, [I

    move-result-object v5

    const-class v6, Lorg/eclipse/jdt/core/dom/SimpleName;

    invoke-virtual {v0, v6, v5}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;->put(Ljava/lang/Object;[I)[I

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->endingTokens:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;

    const-class v5, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;

    filled-new-array {v2}, [I

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;->put(Ljava/lang/Object;[I)[I

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->endingTokens:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;

    const/16 v5, 0x2e

    filled-new-array {v5}, [I

    move-result-object v5

    const-class v6, Lorg/eclipse/jdt/core/dom/StringLiteral;

    invoke-virtual {v0, v6, v5}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;->put(Ljava/lang/Object;[I)[I

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->endingTokens:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;

    const-class v5, Lorg/eclipse/jdt/core/dom/SuperConstructorInvocation;

    filled-new-array {v2}, [I

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;->put(Ljava/lang/Object;[I)[I

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->endingTokens:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;

    const-class v5, Lorg/eclipse/jdt/core/dom/SuperMethodInvocation;

    filled-new-array {v4}, [I

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;->put(Ljava/lang/Object;[I)[I

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->endingTokens:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;

    const/16 v4, 0x3e

    filled-new-array {v4}, [I

    move-result-object v4

    const-class v5, Lorg/eclipse/jdt/core/dom/SwitchCase;

    invoke-virtual {v0, v5, v4}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;->put(Ljava/lang/Object;[I)[I

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->endingTokens:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;

    const-class v4, Lorg/eclipse/jdt/core/dom/SwitchStatement;

    filled-new-array {v1}, [I

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;->put(Ljava/lang/Object;[I)[I

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->endingTokens:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;

    const-class v4, Lorg/eclipse/jdt/core/dom/SynchronizedStatement;

    filled-new-array {v1}, [I

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;->put(Ljava/lang/Object;[I)[I

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->endingTokens:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;

    const/16 v4, 0x23

    filled-new-array {v4}, [I

    move-result-object v4

    const-class v5, Lorg/eclipse/jdt/core/dom/ThisExpression;

    invoke-virtual {v0, v5, v4}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;->put(Ljava/lang/Object;[I)[I

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->endingTokens:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;

    const-class v4, Lorg/eclipse/jdt/core/dom/ThrowStatement;

    filled-new-array {v2}, [I

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;->put(Ljava/lang/Object;[I)[I

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->endingTokens:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;

    const-class v4, Lorg/eclipse/jdt/core/dom/TypeDeclaration;

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;->put(Ljava/lang/Object;[I)[I

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->endingTokens:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;

    const/16 v1, 0x43

    filled-new-array {v1}, [I

    move-result-object v1

    const-class v4, Lorg/eclipse/jdt/core/dom/TypeLiteral;

    invoke-virtual {v0, v4, v1}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;->put(Ljava/lang/Object;[I)[I

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->endingTokens:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;

    const-class v1, Lorg/eclipse/jdt/core/dom/VariableDeclarationStatement;

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;->put(Ljava/lang/Object;[I)[I

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->blockDepth:I

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->stack:Ljava/util/Vector;

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->problems:[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    array-length p1, p1

    new-array p1, p1, [Z

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->usedOrIrrelevantProblems:[Z

    iput-object p2, p0, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->data:Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;

    if-eqz p2, :cond_4

    move p1, v0

    move v1, p1

    :goto_0
    iget v2, p2, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->insertedTokensPtr:I

    add-int/lit8 v2, v2, 0x1

    if-lt p1, v2, :cond_3

    new-array p1, v1, [I

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->insertedTokensKind:[I

    new-array p1, v1, [I

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->insertedTokensPosition:[I

    new-array p1, v1, [Z

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->insertedTokensFlagged:[Z

    move p1, v0

    move v2, p1

    :goto_1
    iget v1, p2, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->insertedTokensPtr:I

    add-int/lit8 v1, v1, 0x1

    if-lt v2, v1, :cond_1

    iget p1, p2, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->removedTokensPtr:I

    if-eq p1, v3, :cond_0

    add-int/lit8 p1, p1, 0x1

    new-array p1, p1, [Z

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->removedTokensFlagged:[Z

    :cond_0
    iget p1, p2, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->replacedTokensPtr:I

    if-eq p1, v3, :cond_4

    add-int/lit8 p1, p1, 0x1

    new-array p1, p1, [Z

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->replacedTokensFlagged:[Z

    goto :goto_3

    :cond_1
    move v1, v0

    :goto_2
    iget-object v4, p2, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->insertedTokens:[[I

    aget-object v4, v4, v2

    array-length v5, v4

    if-lt v1, v5, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->insertedTokensKind:[I

    aget v4, v4, v1

    aput v4, v5, p1

    iget-object v4, p0, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->insertedTokensPosition:[I

    iget-object v5, p2, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->insertedTokensPosition:[I

    aget v5, v5, v2

    aput v5, v4, p1

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    iget-object v2, p2, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->insertedTokens:[[I

    aget-object v2, v2, p1

    array-length v2, v2

    add-int/2addr v1, v2

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_4
    :goto_3
    return-void

    nop

    :array_0
    .array-data 4
        0x64
        0x6d
        0x67
        0x6b
        0x6c
        0x69
        0x63
        0x68
        0x6e
    .end array-data
.end method

.method private flagNodeWithInsertedTokens()V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->insertedTokensKind:[I

    if-eqz v0, :cond_2

    array-length v0, v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->stack:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    const/4 v2, -0x1

    if-gt v1, v2, :cond_1

    const/4 v1, 0x0

    :goto_1
    if-lt v1, v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->stack:Ljava/util/Vector;

    goto :goto_2

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->stack:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-direct {p0, v2}, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->flagNodesWithInsertedTokensInside(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->stack:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-direct {p0, v2}, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->flagNodesWithInsertedTokensAtEnd(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method private flagNodesWithInsertedTokensAtEnd(Lorg/eclipse/jdt/core/dom/ASTNode;)Z
    .locals 9

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->endingTokens:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToIntArray;->get(Ljava/lang/Object;)[I

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v2

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v2, v1

    iget-object v3, p0, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->insertedTokensKind:[I

    array-length v3, v3

    sub-int/2addr v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const/4 v6, -0x1

    if-gt v3, v6, :cond_0

    goto :goto_2

    :cond_0
    iget-object v6, p0, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->insertedTokensFlagged:[Z

    aget-boolean v7, v6, v3

    if-nez v7, :cond_5

    iget-object v7, p0, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->insertedTokensPosition:[I

    aget v7, v7, v3

    if-ne v7, v2, :cond_5

    aput-boolean v1, v6, v3

    move v6, v4

    :goto_1
    array-length v7, v0

    if-lt v6, v7, :cond_1

    move v5, v1

    goto :goto_4

    :cond_1
    aget v7, v0, v6

    iget-object v8, p0, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->insertedTokensKind:[I

    aget v8, v8, v3

    if-ne v7, v8, :cond_4

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getFlags()I

    move-result v0

    or-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->setFlags(I)V

    :goto_2
    if-eqz v5, :cond_6

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getParent()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    :goto_3
    if-nez v0, :cond_2

    goto :goto_5

    :cond_2
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getFlags()I

    move-result v3

    or-int/lit8 v3, v3, 0x8

    invoke-virtual {v0, v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->setFlags(I)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v3

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v3, v1

    if-eq v3, v2, :cond_3

    const/4 v0, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getParent()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    goto :goto_3

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    :goto_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_6
    :goto_5
    return v1
.end method

.method private flagNodesWithInsertedTokensInside(Lorg/eclipse/jdt/core/dom/ASTNode;)Z
    .locals 5

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v1

    add-int/2addr v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->insertedTokensKind:[I

    array-length v4, v4

    if-lt v3, v4, :cond_0

    return v2

    :cond_0
    iget-object v4, p0, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->insertedTokensFlagged:[Z

    aget-boolean v4, v4, v3

    if-nez v4, :cond_1

    iget-object v4, p0, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->insertedTokensPosition:[I

    aget v4, v4, v3

    if-gt v0, v4, :cond_1

    if-ge v4, v1, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getFlags()I

    move-result v4

    or-int/lit8 v4, v4, 0x8

    invoke-virtual {p1, v4}, Lorg/eclipse/jdt/core/dom/ASTNode;->setFlags(I)V

    iget-object v4, p0, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->insertedTokensFlagged:[Z

    aput-boolean v2, v4, v3

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private markIncludedProblems(II)Z
    .locals 7

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->problems:[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v1, v0, :cond_0

    return v2

    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->problems:[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    aget-object v3, v3, v1

    iget-object v4, p0, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->usedOrIrrelevantProblems:[Z

    aget-boolean v4, v4, v1

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v3}, Lorg/eclipse/jdt/core/compiler/IProblem;->getID()I

    move-result v4

    const v5, 0x60000106

    const/4 v6, 0x1

    if-eq v4, v5, :cond_2

    packed-switch v4, :pswitch_data_0

    packed-switch v4, :pswitch_data_1

    packed-switch v4, :pswitch_data_2

    packed-switch v4, :pswitch_data_3

    iget-object v3, p0, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->usedOrIrrelevantProblems:[Z

    aput-boolean v6, v3, v1

    goto :goto_1

    :cond_2
    :pswitch_0
    invoke-interface {v3}, Lorg/eclipse/jdt/core/compiler/IProblem;->getSourceStart()I

    move-result v4

    invoke-interface {v3}, Lorg/eclipse/jdt/core/compiler/IProblem;->getSourceEnd()I

    move-result v3

    if-gt p1, v4, :cond_3

    if-le v4, p2, :cond_4

    :cond_3
    if-gt p1, v3, :cond_5

    if-gt v3, p2, :cond_5

    :cond_4
    iget-object v2, p0, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->usedOrIrrelevantProblems:[Z

    aput-boolean v6, v2, v1

    move v2, v6

    :cond_5
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x600000cc
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x600000d1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x600000e6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x600000fa
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public endVisit(Lorg/eclipse/jdt/core/dom/Block;)V
    .locals 1

    .line 1
    iget v0, p0, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->blockDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->blockDepth:I

    if-gtz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->flagNodeWithInsertedTokens()V

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultASTVisitor;->endVisit(Lorg/eclipse/jdt/core/dom/Block;)V

    return-void
.end method

.method public endVisit(Lorg/eclipse/jdt/core/dom/ExpressionStatement;)V
    .locals 4

    .line 4
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->endVisitNode(Lorg/eclipse/jdt/core/dom/ASTNode;)V

    .line 5
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ExpressionStatement;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getNodeType()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    .line 8
    check-cast v0, Lorg/eclipse/jdt/core/dom/Assignment;

    .line 9
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/Assignment;->getRightHandSide()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getNodeType()I

    move-result v2

    const/16 v3, 0x2a

    if-ne v2, v3, :cond_1

    .line 11
    check-cast v1, Lorg/eclipse/jdt/core/dom/SimpleName;

    .line 12
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->FAKE_IDENTIFIER:[C

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/SimpleName;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-static {v2, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 13
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/Assignment;->getLeftHandSide()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v0

    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->setParent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)V

    .line 15
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->setFlags(I)V

    .line 16
    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/core/dom/ExpressionStatement;->setExpression(Lorg/eclipse/jdt/core/dom/Expression;)V

    :cond_1
    return-void
.end method

.method public endVisit(Lorg/eclipse/jdt/core/dom/ForStatement;)V
    .locals 6

    .line 17
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->endVisitNode(Lorg/eclipse/jdt/core/dom/ASTNode;)V

    .line 18
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ForStatement;->initializers()Ljava/util/List;

    move-result-object p1

    .line 19
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    .line 20
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/core/dom/Expression;

    .line 21
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getNodeType()I

    move-result v1

    const/16 v2, 0x3a

    if-ne v1, v2, :cond_2

    .line 22
    check-cast p1, Lorg/eclipse/jdt/core/dom/VariableDeclarationExpression;

    .line 23
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/VariableDeclarationExpression;->fragments()Ljava/util/List;

    move-result-object v1

    .line 24
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-lt v0, v2, :cond_0

    goto :goto_1

    .line 25
    :cond_0
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/core/dom/VariableDeclarationFragment;

    .line 26
    invoke-virtual {v3}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v4

    .line 27
    sget-object v5, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->FAKE_IDENTIFIER:[C

    invoke-virtual {v4}, Lorg/eclipse/jdt/core/dom/SimpleName;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    invoke-static {v5, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 28
    invoke-interface {v1, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 29
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getFlags()I

    move-result v3

    or-int/lit8 v3, v3, 0x8

    invoke-virtual {p1, v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->setFlags(I)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public endVisit(Lorg/eclipse/jdt/core/dom/NormalAnnotation;)V
    .locals 3

    .line 41
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->endVisitNode(Lorg/eclipse/jdt/core/dom/ASTNode;)V

    .line 42
    iget v0, p0, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->blockDepth:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 43
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/NormalAnnotation;->values()Ljava/util/List;

    move-result-object v0

    .line 44
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    sub-int/2addr v2, v1

    .line 45
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/MemberValuePair;

    .line 46
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v1

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v2

    add-int/2addr v1, v2

    .line 47
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v2

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v0

    add-int/2addr v2, v0

    if-ne v1, v2, :cond_0

    .line 48
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getFlags()I

    move-result v0

    or-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->setFlags(I)V

    :cond_0
    return-void
.end method

.method public endVisit(Lorg/eclipse/jdt/core/dom/SingleMemberAnnotation;)V
    .locals 3

    .line 49
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->endVisitNode(Lorg/eclipse/jdt/core/dom/ASTNode;)V

    .line 50
    iget v0, p0, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->blockDepth:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 51
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SingleMemberAnnotation;->getValue()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v0

    .line 52
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v1

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v2

    add-int/2addr v1, v2

    .line 53
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v2

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v0

    add-int/2addr v2, v0

    if-ne v1, v2, :cond_0

    .line 54
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getFlags()I

    move-result v0

    or-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->setFlags(I)V

    :cond_0
    return-void
.end method

.method public endVisit(Lorg/eclipse/jdt/core/dom/VariableDeclarationStatement;)V
    .locals 6

    .line 30
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->endVisitNode(Lorg/eclipse/jdt/core/dom/ASTNode;)V

    .line 31
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/VariableDeclarationStatement;->fragments()Ljava/util/List;

    move-result-object p1

    .line 32
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    .line 33
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/core/dom/VariableDeclarationFragment;

    .line 34
    invoke-virtual {v2}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->getInitializer()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 35
    :cond_1
    invoke-virtual {v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->getFlags()I

    move-result v4

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_2

    goto :goto_1

    .line 36
    :cond_2
    invoke-virtual {v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->getNodeType()I

    move-result v4

    const/16 v5, 0x2a

    if-ne v4, v5, :cond_3

    .line 37
    check-cast v3, Lorg/eclipse/jdt/core/dom/SimpleName;

    .line 38
    sget-object v4, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->FAKE_IDENTIFIER:[C

    invoke-virtual {v3}, Lorg/eclipse/jdt/core/dom/SimpleName;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-static {v4, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    .line 39
    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->setInitializer(Lorg/eclipse/jdt/core/dom/Expression;)V

    .line 40
    invoke-virtual {v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->getFlags()I

    move-result v3

    or-int/lit8 v3, v3, 0x8

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->setFlags(I)V

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public endVisitNode(Lorg/eclipse/jdt/core/dom/ASTNode;)V
    .locals 7

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v1

    add-int/2addr v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iget v3, p0, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->blockDepth:I

    if-ge v3, v2, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getNodeType()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_3

    :sswitch_0
    invoke-direct {p0, v0, v1}, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->markIncludedProblems(II)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getFlags()I

    move-result v0

    or-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->setFlags(I)V

    goto/16 :goto_3

    :cond_0
    invoke-direct {p0, v0, v1}, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->markIncludedProblems(II)Z

    iget-object v3, p0, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->insertedTokensFlagged:[Z

    if-eqz v3, :cond_2

    iget v3, p0, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->lastEnd:I

    if-eq v3, v1, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->flagNodeWithInsertedTokens()V

    :cond_1
    iget-object v3, p0, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->stack:Ljava/util/Vector;

    invoke-virtual {v3, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v3, p0, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->removedTokensFlagged:[Z

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    move v3, v4

    :goto_0
    iget-object v5, p0, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->data:Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;

    iget v6, v5, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->removedTokensPtr:I

    if-le v3, v6, :cond_3

    goto :goto_1

    :cond_3
    iget-object v6, p0, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->removedTokensFlagged:[Z

    aget-boolean v6, v6, v3

    if-nez v6, :cond_4

    iget-object v6, v5, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->removedTokensStart:[I

    aget v6, v6, v3

    if-lt v6, v0, :cond_4

    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->removedTokensEnd:[I

    aget v5, v5, v3

    if-gt v5, v1, :cond_4

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getFlags()I

    move-result v5

    or-int/lit8 v5, v5, 0x8

    invoke-virtual {p1, v5}, Lorg/eclipse/jdt/core/dom/ASTNode;->setFlags(I)V

    iget-object v5, p0, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->removedTokensFlagged:[Z

    aput-boolean v2, v5, v3

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    iget-object v3, p0, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->replacedTokensFlagged:[Z

    if-eqz v3, :cond_8

    :goto_2
    iget-object v3, p0, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->data:Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;

    iget v5, v3, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->replacedTokensPtr:I

    if-le v4, v5, :cond_6

    goto :goto_3

    :cond_6
    iget-object v5, p0, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->replacedTokensFlagged:[Z

    aget-boolean v5, v5, v4

    if-nez v5, :cond_7

    iget-object v5, v3, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->replacedTokensStart:[I

    aget v5, v5, v4

    if-lt v5, v0, :cond_7

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->replacedTokensEnd:[I

    aget v3, v3, v4

    if-gt v3, v1, :cond_7

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getFlags()I

    move-result v3

    or-int/lit8 v3, v3, 0x8

    invoke-virtual {p1, v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->setFlags(I)V

    iget-object v3, p0, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->replacedTokensFlagged:[Z

    aput-boolean v2, v3, v4

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_8
    :goto_3
    iput v1, p0, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->lastEnd:I

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0xf -> :sswitch_0
        0x17 -> :sswitch_0
        0x1a -> :sswitch_0
        0x1c -> :sswitch_0
        0x1f -> :sswitch_0
        0x23 -> :sswitch_0
        0x37 -> :sswitch_0
        0x47 -> :sswitch_0
        0x4d -> :sswitch_0
        0x4e -> :sswitch_0
        0x4f -> :sswitch_0
        0x51 -> :sswitch_0
        0x5d -> :sswitch_0
    .end sparse-switch
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/Block;)Z
    .locals 1

    invoke-super {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultASTVisitor;->visit(Lorg/eclipse/jdt/core/dom/Block;)Z

    move-result p1

    iget v0, p0, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->blockDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->blockDepth:I

    return p1
.end method

.method public visitNode(Lorg/eclipse/jdt/core/dom/ASTNode;)Z
    .locals 6

    iget v0, p0, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->blockDepth:I

    const/4 v1, 0x1

    if-lez v0, :cond_9

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result p1

    add-int/2addr p1, v0

    sub-int/2addr p1, v1

    iget-object v2, p0, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->insertedTokensFlagged:[Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    move v2, v3

    :goto_0
    iget-object v4, p0, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->insertedTokensFlagged:[Z

    array-length v4, v4

    if-lt v2, v4, :cond_0

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->insertedTokensPosition:[I

    aget v4, v4, v2

    if-lt v4, v0, :cond_1

    if-gt v4, p1, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v2, p0, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->removedTokensFlagged:[Z

    if-eqz v2, :cond_5

    move v2, v3

    :goto_2
    iget-object v4, p0, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->data:Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;

    iget v5, v4, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->removedTokensPtr:I

    if-le v2, v5, :cond_3

    goto :goto_3

    :cond_3
    iget-object v5, v4, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->removedTokensStart:[I

    aget v5, v5, v2

    if-lt v5, v0, :cond_4

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->removedTokensEnd:[I

    aget v4, v4, v2

    if-gt v4, p1, :cond_4

    return v1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    iget-object v2, p0, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->replacedTokensFlagged:[Z

    if-eqz v2, :cond_8

    move v2, v3

    :goto_4
    iget-object v4, p0, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;->data:Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;

    iget v5, v4, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->replacedTokensPtr:I

    if-le v2, v5, :cond_6

    goto :goto_5

    :cond_6
    iget-object v5, v4, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->replacedTokensStart:[I

    aget v5, v5, v2

    if-lt v5, v0, :cond_7

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->replacedTokensEnd:[I

    aget v4, v4, v2

    if-gt v4, p1, :cond_7

    return v1

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_8
    :goto_5
    return v3

    :cond_9
    return v1
.end method
