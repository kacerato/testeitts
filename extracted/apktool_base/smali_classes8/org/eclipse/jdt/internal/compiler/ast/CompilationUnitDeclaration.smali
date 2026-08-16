.class public Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;
.super Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/problem/ProblemSeverities;
.implements Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;


# static fields
.field private static final STRING_LITERALS_INCREMENT:I = 0xa

.field private static final STRING_LITERAL_COMPARATOR:Ljava/util/Comparator;


# instance fields
.field public comments:[[I

.field public compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

.field public currentPackage:Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

.field public functionalExpressions:[Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;

.field public functionalExpressionsCount:I

.field public ignoreFurtherInvestigation:Z

.field public ignoreMethodBodies:Z

.field public imports:[Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

.field public isPropagatingInnerClassEmulation:Z

.field public javadoc:Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;

.field public localTypeCount:I

.field public localTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;

.field public moduleDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;

.field public nlsTags:[Lorg/eclipse/jdt/internal/compiler/parser/NLSTag;

.field public problemReporter:Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

.field public scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

.field private stringLiterals:[Lorg/eclipse/jdt/internal/compiler/ast/StringLiteral;

.field private stringLiteralsPtr:I

.field private stringLiteralsStart:Lorg/eclipse/jdt/internal/compiler/util/HashSetOfInt;

.field suppressWarningAnnotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

.field suppressWarningIrritants:[Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

.field suppressWarningScopePositions:[J

.field suppressWarningsCount:I

.field public types:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

.field public validIdentityComparisonLines:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration$1;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration$1;-><init>()V

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->STRING_LITERAL_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;Lorg/eclipse/jdt/internal/compiler/CompilationResult;I)V
    .locals 1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->ignoreFurtherInvestigation:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->ignoreMethodBodies:Z

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->localTypeCount:I

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->problemReporter:Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    add-int/lit8 p3, p3, -0x1

    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    return-void
.end method

.method private cleanUp(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)V
    .locals 3

    .line 22
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-eqz v0, :cond_1

    .line 23
    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    goto :goto_1

    .line 24
    :cond_0
    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    aget-object v2, v2, v1

    invoke-direct {p0, v2}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->cleanUp(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 25
    :cond_1
    :goto_1
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isAnnotationType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 26
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->hasAnnotations:Z

    .line 27
    :cond_2
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    .line 28
    iput-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    :cond_3
    return-void
.end method

.method private isLambdaExpressionCopyContext(Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;)Z
    .locals 2

    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    if-eqz v0, :cond_0

    move-object v1, p1

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->original()Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;

    move-result-object v1

    if-eq p1, v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    if-eqz v1, :cond_1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    goto :goto_0

    :cond_1
    instance-of v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-eqz v1, :cond_2

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_4

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->parent:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->referenceContext()Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->isLambdaExpressionCopyContext(Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;)Z

    move-result p1

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method private reportNLSProblems()V
    .locals 14

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->nlsTags:[Lorg/eclipse/jdt/internal/compiler/parser/NLSTag;

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->stringLiterals:[Lorg/eclipse/jdt/internal/compiler/ast/StringLiteral;

    if-eqz v1, :cond_17

    :cond_0
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->stringLiteralsPtr:I

    const/4 v2, 0x0

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    array-length v0, v0

    :goto_0
    if-nez v1, :cond_4

    if-eqz v0, :cond_17

    :goto_1
    if-lt v2, v0, :cond_2

    goto/16 :goto_c

    :cond_2
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->nlsTags:[Lorg/eclipse/jdt/internal/compiler/parser/NLSTag;

    aget-object v1, v1, v2

    if-eqz v1, :cond_3

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v3

    iget v4, v1, Lorg/eclipse/jdt/internal/compiler/parser/NLSTag;->start:I

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/parser/NLSTag;->end:I

    invoke-virtual {v3, v4, v1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->unnecessaryNLSTags(II)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->stringLiterals:[Lorg/eclipse/jdt/internal/compiler/ast/StringLiteral;

    array-length v3, v0

    if-eq v3, v1, :cond_5

    new-array v3, v1, [Lorg/eclipse/jdt/internal/compiler/ast/StringLiteral;

    iput-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->stringLiterals:[Lorg/eclipse/jdt/internal/compiler/ast/StringLiteral;

    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->stringLiterals:[Lorg/eclipse/jdt/internal/compiler/ast/StringLiteral;

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->STRING_LITERAL_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    :goto_2
    if-lt v2, v1, :cond_6

    goto/16 :goto_c

    :cond_6
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->stringLiterals:[Lorg/eclipse/jdt/internal/compiler/ast/StringLiteral;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->nonExternalizedStringLiteral(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->stringLiterals:[Lorg/eclipse/jdt/internal/compiler/ast/StringLiteral;

    array-length v4, v3

    if-eq v4, v1, :cond_8

    new-array v4, v1, [Lorg/eclipse/jdt/internal/compiler/ast/StringLiteral;

    iput-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->stringLiterals:[Lorg/eclipse/jdt/internal/compiler/ast/StringLiteral;

    invoke-static {v3, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_8
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->stringLiterals:[Lorg/eclipse/jdt/internal/compiler/ast/StringLiteral;

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->STRING_LITERAL_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v3, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    const/4 v3, 0x1

    const/4 v4, -0x1

    move v6, v3

    move v5, v4

    move v4, v2

    :goto_3
    if-lt v2, v1, :cond_9

    goto/16 :goto_a

    :cond_9
    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->stringLiterals:[Lorg/eclipse/jdt/internal/compiler/ast/StringLiteral;

    aget-object v7, v7, v2

    iget v8, v7, Lorg/eclipse/jdt/internal/compiler/ast/StringLiteral;->lineNumber:I

    if-eq v5, v8, :cond_a

    move v6, v3

    move v5, v8

    goto :goto_4

    :cond_a
    add-int/2addr v6, v3

    :goto_4
    if-ge v4, v0, :cond_14

    :goto_5
    if-lt v4, v0, :cond_b

    goto :goto_a

    :cond_b
    iget-object v9, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->nlsTags:[Lorg/eclipse/jdt/internal/compiler/parser/NLSTag;

    aget-object v10, v9, v4

    if-nez v10, :cond_c

    goto :goto_9

    :cond_c
    iget v11, v10, Lorg/eclipse/jdt/internal/compiler/parser/NLSTag;->lineNumber:I

    if-ge v8, v11, :cond_d

    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v8

    invoke-virtual {v8, v7}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->nonExternalizedStringLiteral(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    goto :goto_8

    :cond_d
    if-ne v8, v11, :cond_13

    iget v10, v10, Lorg/eclipse/jdt/internal/compiler/parser/NLSTag;->index:I

    const/4 v11, 0x0

    if-ne v10, v6, :cond_e

    aput-object v11, v9, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_e
    add-int/lit8 v9, v4, 0x1

    :goto_6
    if-lt v9, v0, :cond_f

    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v8

    invoke-virtual {v8, v7}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->nonExternalizedStringLiteral(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    goto :goto_8

    :cond_f
    iget-object v10, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->nlsTags:[Lorg/eclipse/jdt/internal/compiler/parser/NLSTag;

    aget-object v12, v10, v9

    if-nez v12, :cond_10

    goto :goto_7

    :cond_10
    iget v13, v12, Lorg/eclipse/jdt/internal/compiler/parser/NLSTag;->lineNumber:I

    if-ne v8, v13, :cond_12

    iget v12, v12, Lorg/eclipse/jdt/internal/compiler/parser/NLSTag;->index:I

    if-ne v12, v6, :cond_11

    aput-object v11, v10, v9

    goto :goto_8

    :cond_11
    :goto_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_12
    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v8

    invoke-virtual {v8, v7}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->nonExternalizedStringLiteral(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_13
    iget-object v9, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v9

    iget v11, v10, Lorg/eclipse/jdt/internal/compiler/parser/NLSTag;->start:I

    iget v10, v10, Lorg/eclipse/jdt/internal/compiler/parser/NLSTag;->end:I

    invoke-virtual {v9, v11, v10}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->unnecessaryNLSTags(II)V

    :goto_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_14
    :goto_a
    if-lt v2, v1, :cond_18

    if-ge v4, v0, :cond_17

    :goto_b
    if-lt v4, v0, :cond_15

    goto :goto_c

    :cond_15
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->nlsTags:[Lorg/eclipse/jdt/internal/compiler/parser/NLSTag;

    aget-object v1, v1, v4

    if-eqz v1, :cond_16

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    iget v3, v1, Lorg/eclipse/jdt/internal/compiler/parser/NLSTag;->start:I

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/parser/NLSTag;->end:I

    invoke-virtual {v2, v3, v1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->unnecessaryNLSTags(II)V

    :cond_16
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_17
    :goto_c
    return-void

    :cond_18
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v3

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->stringLiterals:[Lorg/eclipse/jdt/internal/compiler/ast/StringLiteral;

    aget-object v5, v5, v2

    invoke-virtual {v3, v5}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->nonExternalizedStringLiteral(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a
.end method


# virtual methods
.method public abort(ILorg/eclipse/jdt/core/compiler/CategorizedProblem;)V
    .locals 1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10

    if-eq p1, v0, :cond_0

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilationUnit;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    invoke-direct {p1, v0, p2}, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilationUnit;-><init>(Lorg/eclipse/jdt/internal/compiler/CompilationResult;Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)V

    throw p1

    :cond_0
    new-instance p1, Lorg/eclipse/jdt/internal/compiler/problem/AbortMethod;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    invoke-direct {p1, v0, p2}, Lorg/eclipse/jdt/internal/compiler/problem/AbortMethod;-><init>(Lorg/eclipse/jdt/internal/compiler/CompilationResult;Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)V

    throw p1

    :cond_1
    new-instance p1, Lorg/eclipse/jdt/internal/compiler/problem/AbortType;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    invoke-direct {p1, v0, p2}, Lorg/eclipse/jdt/internal/compiler/problem/AbortType;-><init>(Lorg/eclipse/jdt/internal/compiler/CompilationResult;Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)V

    throw p1
.end method

.method public analyseCode()V
    .locals 4

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->ignoreFurtherInvestigation:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->types:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-eqz v0, :cond_2

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->types:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    aget-object v2, v2, v1

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->moduleDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;)V

    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->propagateInnerEmulationForAllLocalTypes()V
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilationUnit; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->ignoreFurtherInvestigation:Z

    return-void
.end method

.method public checkUnusedImports()V
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->imports:[Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;

    if-eqz v0, :cond_2

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    iget-object v3, v2, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->imports:[Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;

    aget-object v3, v3, v1

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;->reference:Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    if-eqz v3, :cond_1

    iget v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_1

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->unusedImport(Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public cleanUp()V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->types:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 2
    array-length v0, v0

    move v3, v1

    :goto_0
    if-lt v3, v0, :cond_1

    .line 3
    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->localTypeCount:I

    move v0, v1

    :goto_1
    if-lt v0, v4, :cond_0

    goto :goto_2

    .line 4
    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->localTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;

    aget-object v3, v3, v0

    .line 5
    iput-object v2, v3, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    .line 6
    iput-object v2, v3, Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;->enclosingCase:Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 7
    :cond_1
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->types:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    aget-object v4, v4, v3

    invoke-direct {p0, v4}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->cleanUp(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8
    :cond_2
    :goto_2
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->functionalExpressionsCount:I

    if-lez v0, :cond_4

    move v3, v1

    :goto_3
    if-lt v3, v0, :cond_3

    goto :goto_4

    .line 9
    :cond_3
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->functionalExpressions:[Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->cleanUp()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 10
    :cond_4
    :goto_4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    iput-object v2, v0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->recoveryScannerData:Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;

    .line 11
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->getClassFiles()[Lorg/eclipse/jdt/internal/compiler/ClassFile;

    move-result-object v0

    .line 12
    array-length v3, v0

    :goto_5
    if-lt v1, v3, :cond_6

    .line 13
    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->suppressWarningAnnotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    .line 14
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    if-eqz v0, :cond_5

    .line 15
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->cleanUpInferenceContexts()V

    :cond_5
    return-void

    .line 16
    :cond_6
    aget-object v4, v0, v1

    .line 17
    iput-object v2, v4, Lorg/eclipse/jdt/internal/compiler/ClassFile;->referenceBinding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    .line 18
    iput-object v2, v4, Lorg/eclipse/jdt/internal/compiler/ClassFile;->innerClassesBindings:Ljava/util/Map;

    .line 19
    iput-object v2, v4, Lorg/eclipse/jdt/internal/compiler/ClassFile;->bootstrapMethods:Ljava/util/List;

    .line 20
    iput-object v2, v4, Lorg/eclipse/jdt/internal/compiler/ClassFile;->missingTypes:Ljava/util/List;

    .line 21
    iput-object v2, v4, Lorg/eclipse/jdt/internal/compiler/ClassFile;->visitedTypes:Ljava/util/Set;

    add-int/lit8 v1, v1, 0x1

    goto :goto_5
.end method

.method public compilationResult()Lorg/eclipse/jdt/internal/compiler/CompilationResult;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    return-object v0
.end method

.method public createPackageInfoType()V
    .locals 3

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;-><init>(Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->PACKAGE_INFO_NAME:[C

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->name:[C

    const/16 v1, 0x200

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->modifiers:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->javadoc:Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->javadoc:Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->types:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-void
.end method

.method public declarationOfType([[C)Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->types:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    array-length v2, v1

    if-lt v0, v2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationOfType([[C)Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public finalizeProblems()V
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->problemCount:I

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->problems:[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->suppressWarningsCount:I

    if-nez v3, :cond_0

    return-void

    :cond_0
    new-array v3, v3, [Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    const/16 v9, 0x20

    const/4 v10, 0x1

    if-lt v6, v2, :cond_1f

    if-lez v7, :cond_4

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    if-lt v6, v2, :cond_1

    goto :goto_3

    :cond_1
    aget-object v11, v1, v6

    if-eqz v11, :cond_3

    if-le v6, v7, :cond_2

    add-int/lit8 v12, v7, 0x1

    aput-object v11, v1, v7

    move v7, v12

    goto :goto_2

    :cond_2
    add-int/lit8 v7, v7, 0x1

    :cond_3
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    :goto_3
    if-nez v8, :cond_1e

    const/high16 v1, 0x22000000

    invoke-virtual {v4, v1}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->getSeverity(I)I

    move-result v1

    const/16 v2, 0x100

    if-eq v1, v2, :cond_1e

    and-int/2addr v1, v10

    if-nez v1, :cond_5

    goto :goto_4

    :cond_5
    const/4 v10, 0x0

    :goto_4
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->suppressWarningsCount:I

    const/4 v2, 0x0

    :goto_5
    if-lt v2, v1, :cond_6

    goto/16 :goto_12

    :cond_6
    iget-object v6, v0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->suppressWarningAnnotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    aget-object v6, v6, v2

    if-nez v6, :cond_8

    :cond_7
    :goto_6
    move v5, v1

    move/from16 v19, v2

    move/from16 v17, v10

    goto/16 :goto_11

    :cond_8
    iget-object v7, v0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->suppressWarningIrritants:[Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    aget-object v7, v7, v2

    if-eqz v10, :cond_9

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->areAllSet()Z

    move-result v8

    if-eqz v8, :cond_9

    goto :goto_6

    :cond_9
    aget-object v8, v3, v2

    if-eq v7, v8, :cond_7

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->memberValuePairs()[Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x0

    :goto_7
    if-lt v8, v7, :cond_a

    goto :goto_6

    :cond_a
    aget-object v11, v6, v8

    iget-object v12, v11, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->name:[C

    sget-object v13, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->VALUE:[C

    invoke-static {v12, v13}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v12

    if-eqz v12, :cond_1c

    iget-object v6, v11, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->value:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    instance-of v7, v6, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;

    const/16 v8, 0xb

    if-eqz v7, :cond_14

    move-object v7, v6

    check-cast v7, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;

    iget-object v7, v7, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;->expressions:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v7, :cond_7

    array-length v11, v7

    const/4 v12, 0x0

    :goto_8
    if-lt v12, v11, :cond_b

    goto :goto_6

    :cond_b
    aget-object v13, v7, v12

    iget-object v13, v13, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    sget-object v14, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-eq v13, v14, :cond_c

    invoke-virtual {v13}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->typeID()I

    move-result v14

    if-ne v14, v8, :cond_c

    invoke-virtual {v13}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->stringValue()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->warningTokenToIrritants(Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    move-result-object v13

    if-eqz v13, :cond_c

    invoke-virtual {v13}, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->areAllSet()Z

    move-result v14

    if-nez v14, :cond_c

    aget-object v14, v3, v2

    if-eqz v14, :cond_d

    invoke-virtual {v14, v13}, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->isAnySet(Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;)Z

    move-result v14

    if-nez v14, :cond_c

    goto :goto_9

    :cond_c
    move v5, v1

    move/from16 v19, v2

    move/from16 v17, v10

    move/from16 v18, v11

    goto/16 :goto_d

    :cond_d
    :goto_9
    if-eqz v10, :cond_e

    iget v14, v6, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v15, v6, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    add-int/lit8 v16, v2, -0x1

    :goto_a
    if-gez v16, :cond_f

    :cond_e
    move v5, v1

    move/from16 v19, v2

    move/from16 v17, v10

    move/from16 v18, v11

    goto :goto_c

    :cond_f
    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->suppressWarningScopePositions:[J

    move/from16 v17, v10

    move/from16 v18, v11

    aget-wide v10, v5, v16

    move v5, v1

    move/from16 v19, v2

    ushr-long v1, v10, v9

    long-to-int v1, v1

    long-to-int v2, v10

    if-ge v14, v1, :cond_10

    goto :goto_b

    :cond_10
    if-le v15, v2, :cond_11

    goto :goto_b

    :cond_11
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->suppressWarningIrritants:[Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    aget-object v1, v1, v16

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->areAllSet()Z

    move-result v1

    if-eqz v1, :cond_12

    goto/16 :goto_11

    :cond_12
    :goto_b
    add-int/lit8 v16, v16, -0x1

    move v1, v5

    move/from16 v10, v17

    move/from16 v11, v18

    move/from16 v2, v19

    goto :goto_a

    :goto_c
    invoke-virtual {v4, v13}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->getIgnoredIrritant(Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;)I

    move-result v1

    if-lez v1, :cond_13

    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->optionKeyFromIrritant(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    aget-object v10, v7, v12

    invoke-virtual {v2, v10, v1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->problemNotAnalysed(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Ljava/lang/String;)V

    goto :goto_d

    :cond_13
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    aget-object v2, v7, v12

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->unusedWarningToken(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)V

    :goto_d
    add-int/lit8 v12, v12, 0x1

    move v1, v5

    move/from16 v10, v17

    move/from16 v11, v18

    move/from16 v2, v19

    goto/16 :goto_8

    :cond_14
    move v5, v1

    move/from16 v19, v2

    move/from16 v17, v10

    iget-object v1, v6, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-eq v1, v2, :cond_1d

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->typeID()I

    move-result v2

    if-ne v2, v8, :cond_1d

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->stringValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->warningTokenToIrritants(Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    move-result-object v1

    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->areAllSet()Z

    move-result v2

    if-nez v2, :cond_1d

    aget-object v2, v3, v19

    if-eqz v2, :cond_15

    invoke-virtual {v2, v1}, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->isAnySet(Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;)Z

    move-result v2

    if-nez v2, :cond_1d

    :cond_15
    if-eqz v17, :cond_1a

    iget v2, v6, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v7, v6, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    add-int/lit8 v8, v19, -0x1

    :goto_e
    if-gez v8, :cond_16

    goto :goto_10

    :cond_16
    iget-object v10, v0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->suppressWarningScopePositions:[J

    aget-wide v11, v10, v8

    ushr-long v13, v11, v9

    long-to-int v10, v13

    long-to-int v11, v11

    if-ge v2, v10, :cond_17

    goto :goto_f

    :cond_17
    if-le v7, v11, :cond_18

    goto :goto_f

    :cond_18
    iget-object v10, v0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->suppressWarningIrritants:[Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    aget-object v10, v10, v8

    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->areAllSet()Z

    move-result v10

    if-eqz v10, :cond_19

    goto :goto_11

    :cond_19
    :goto_f
    add-int/lit8 v8, v8, -0x1

    goto :goto_e

    :cond_1a
    :goto_10
    invoke-virtual {v4, v1}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->getIgnoredIrritant(Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;)I

    move-result v1

    if-lez v1, :cond_1b

    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->optionKeyFromIrritant(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    invoke-virtual {v2, v6, v1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->problemNotAnalysed(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Ljava/lang/String;)V

    goto :goto_11

    :cond_1b
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    invoke-virtual {v1, v6}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->unusedWarningToken(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)V

    goto :goto_11

    :cond_1c
    move v5, v1

    move/from16 v19, v2

    move/from16 v17, v10

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_7

    :cond_1d
    :goto_11
    add-int/lit8 v2, v19, 0x1

    move v1, v5

    move/from16 v10, v17

    goto/16 :goto_5

    :cond_1e
    :goto_12
    return-void

    :cond_1f
    aget-object v5, v1, v6

    invoke-interface {v5}, Lorg/eclipse/jdt/core/compiler/IProblem;->getID()I

    move-result v11

    invoke-static {v11}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->getIrritant(I)I

    move-result v11

    invoke-interface {v5}, Lorg/eclipse/jdt/core/compiler/IProblem;->isError()Z

    move-result v12

    if-eqz v12, :cond_21

    if-nez v11, :cond_20

    move/from16 v17, v2

    move-object/from16 v16, v3

    move v15, v6

    move v8, v10

    goto/16 :goto_16

    :cond_20
    iget-boolean v10, v4, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->suppressOptionalErrors:Z

    if-nez v10, :cond_21

    goto :goto_14

    :cond_21
    invoke-interface {v5}, Lorg/eclipse/jdt/core/compiler/IProblem;->getSourceStart()I

    move-result v10

    invoke-interface {v5}, Lorg/eclipse/jdt/core/compiler/IProblem;->getSourceEnd()I

    move-result v12

    iget v13, v0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->suppressWarningsCount:I

    const/4 v14, 0x0

    :goto_13
    if-lt v14, v13, :cond_22

    :goto_14
    move/from16 v17, v2

    move-object/from16 v16, v3

    move v15, v6

    goto :goto_16

    :cond_22
    iget-object v15, v0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->suppressWarningScopePositions:[J

    move/from16 v17, v2

    move-object/from16 v16, v3

    aget-wide v2, v15, v14

    move v15, v6

    move/from16 v18, v7

    ushr-long v6, v2, v9

    long-to-int v6, v6

    long-to-int v2, v2

    if-ge v10, v6, :cond_23

    goto :goto_15

    :cond_23
    if-le v12, v2, :cond_24

    goto :goto_15

    :cond_24
    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->suppressWarningIrritants:[Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    aget-object v2, v2, v14

    invoke-virtual {v2, v11}, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->isSet(I)Z

    move-result v2

    if-nez v2, :cond_26

    instance-of v2, v5, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblem;

    if-eqz v2, :cond_25

    move-object v2, v5

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblem;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblem;->reportError()V

    :cond_25
    :goto_15
    add-int/lit8 v14, v14, 0x1

    move v6, v15

    move-object/from16 v3, v16

    move/from16 v2, v17

    move/from16 v7, v18

    goto :goto_13

    :cond_26
    add-int/lit8 v7, v18, 0x1

    const/4 v2, 0x0

    aput-object v2, v1, v15

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    invoke-virtual {v2, v5}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->removeProblem(Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)V

    aget-object v2, v16, v14

    if-nez v2, :cond_27

    new-instance v2, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    invoke-direct {v2, v11}, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;-><init>(I)V

    aput-object v2, v16, v14

    goto :goto_16

    :cond_27
    invoke-virtual {v2, v11}, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->set(I)Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    :goto_16
    add-int/lit8 v6, v15, 0x1

    move-object/from16 v3, v16

    move/from16 v2, v17

    goto/16 :goto_0
.end method

.method public generateCode()V
    .locals 4

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->ignoreFurtherInvestigation:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->types:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-eqz v0, :cond_1

    array-length v0, v0

    :goto_0
    if-lt v1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->types:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    iput-boolean v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->ignoreFurtherInvestigation:Z

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->types:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-eqz v0, :cond_4

    array-length v0, v0

    :goto_2
    if-lt v1, v0, :cond_3

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->types:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    aget-object v2, v2, v1

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->moduleDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->generateCode()V
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilationUnit; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_5
    return-void
.end method

.method public getCompilationUnitDeclaration()Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;
    .locals 0

    return-object p0
.end method

.method public getFileName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->getFileName()[C

    move-result-object v0

    return-object v0
.end method

.method public getMainTypeName()[C
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->compilationUnit:Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->getFileName()[C

    move-result-object v0

    const/16 v1, 0x2f

    invoke-static {v1, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->lastIndexOf(C[C)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x5c

    if-eqz v1, :cond_0

    invoke-static {v2, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->lastIndexOf(C[C)I

    move-result v3

    if-ge v1, v3, :cond_1

    :cond_0
    invoke-static {v2, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->lastIndexOf(C[C)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    const/16 v2, 0x2e

    invoke-static {v2, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->lastIndexOf(C[C)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    array-length v2, v0

    :cond_2
    invoke-static {v0, v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v0

    return-object v0

    :cond_3
    invoke-interface {v1}, Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;->getMainTypeName()[C

    move-result-object v0

    return-object v0
.end method

.method public hasErrors()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->ignoreFurtherInvestigation:Z

    return v0
.end method

.method public hasFunctionalTypes()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->hasFunctionalTypes:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->currentPackage:Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->imports:[Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->types:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isModuleInfo()Z
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->getMainTypeName()[C

    move-result-object v0

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->MODULE_INFO_NAME:[C

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v0

    return v0
.end method

.method public isPackageInfo()Z
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->getMainTypeName()[C

    move-result-object v0

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->PACKAGE_INFO_NAME:[C

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v0

    return v0
.end method

.method public isSuppressed(Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)Z
    .locals 10

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->suppressWarningsCount:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p1}, Lorg/eclipse/jdt/core/compiler/IProblem;->getID()I

    move-result v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->getIrritant(I)I

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-interface {p1}, Lorg/eclipse/jdt/core/compiler/IProblem;->getSourceStart()I

    move-result v2

    invoke-interface {p1}, Lorg/eclipse/jdt/core/compiler/IProblem;->getSourceEnd()I

    move-result p1

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->suppressWarningsCount:I

    move v4, v1

    :goto_0
    if-lt v4, v3, :cond_2

    return v1

    :cond_2
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->suppressWarningScopePositions:[J

    aget-wide v6, v5, v4

    const/16 v5, 0x20

    ushr-long v8, v6, v5

    long-to-int v5, v8

    long-to-int v6, v6

    if-ge v2, v5, :cond_3

    goto :goto_1

    :cond_3
    if-le p1, v6, :cond_4

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->suppressWarningIrritants:[Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    aget-object v5, v5, v4

    invoke-virtual {v5, v0}, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->isSet(I)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 p1, 0x1

    return p1

    :cond_5
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public module(Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->moduleDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceModuleBinding;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->compilationUnit:Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;->module(Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->module:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    return-object p1
.end method

.method public print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->currentPackage:Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    const-string v1, ";\n"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->printIndent(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, "package "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->currentPackage:Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    invoke-virtual {v0, v2, p2, v2}, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->print(ILjava/lang/StringBuffer;Z)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->imports:[Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    if-eqz v0, :cond_3

    move v0, v2

    :goto_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->imports:[Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    array-length v3, v3

    if-lt v0, v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->printIndent(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "import "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->imports:[Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->isStatic()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "static "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {v3, v2, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->moduleDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;

    const-string v1, "\n"

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->types:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-eqz v0, :cond_6

    :goto_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->types:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    array-length v3, v0

    if-lt v2, v3, :cond_5

    goto :goto_3

    :cond_5
    aget-object v0, v0, v2

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    return-object p2
.end method

.method public propagateInnerEmulationForAllLocalTypes()V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->isPropagatingInnerClassEmulation:Z

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->localTypeCount:I

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->localTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;

    aget-object v2, v2, v1

    iget-object v3, v2, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceType()Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    move-result-object v3

    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;->updateInnerEmulationDependents()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public record(Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;)I
    .locals 4

    .line 6
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->functionalExpressionsCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x5

    .line 7
    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->functionalExpressions:[Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;

    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->functionalExpressions:[Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;

    array-length v2, v1

    if-ne v0, v2, :cond_1

    mul-int/lit8 v2, v0, 0x2

    .line 9
    new-array v2, v2, [Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->functionalExpressions:[Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->functionalExpressions:[Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->functionalExpressionsCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->functionalExpressionsCount:I

    aput-object p1, v0, v1

    .line 11
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->enclosingScope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->classScope()Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->record(Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;)I

    move-result p1

    return p1
.end method

.method public record(Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;)V
    .locals 4

    .line 1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->localTypeCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x5

    .line 2
    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->localTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->localTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;

    array-length v2, v1

    if-ne v0, v2, :cond_1

    mul-int/lit8 v2, v0, 0x2

    .line 4
    new-array v2, v2, [Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->localTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->localTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->localTypeCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->localTypeCount:I

    aput-object p1, v0, v1

    return-void
.end method

.method public recordStringLiteral(Lorg/eclipse/jdt/internal/compiler/ast/StringLiteral;Z)V
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->stringLiteralsStart:Lorg/eclipse/jdt/internal/compiler/util/HashSetOfInt;

    const/16 v1, 0xa

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {v0, p2}, Lorg/eclipse/jdt/internal/compiler/util/HashSetOfInt;->contains(I)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->stringLiteralsStart:Lorg/eclipse/jdt/internal/compiler/util/HashSetOfInt;

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {p2, v0}, Lorg/eclipse/jdt/internal/compiler/util/HashSetOfInt;->add(I)I

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_4

    new-instance p2, Lorg/eclipse/jdt/internal/compiler/util/HashSetOfInt;

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->stringLiteralsPtr:I

    add-int/2addr v0, v1

    invoke-direct {p2, v0}, Lorg/eclipse/jdt/internal/compiler/util/HashSetOfInt;-><init>(I)V

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->stringLiteralsStart:Lorg/eclipse/jdt/internal/compiler/util/HashSetOfInt;

    move p2, v2

    :goto_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->stringLiteralsPtr:I

    if-lt p2, v0, :cond_3

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->stringLiteralsStart:Lorg/eclipse/jdt/internal/compiler/util/HashSetOfInt;

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {p2, v0}, Lorg/eclipse/jdt/internal/compiler/util/HashSetOfInt;->contains(I)Z

    move-result p2

    if-eqz p2, :cond_2

    return-void

    :cond_2
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->stringLiteralsStart:Lorg/eclipse/jdt/internal/compiler/util/HashSetOfInt;

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {p2, v0}, Lorg/eclipse/jdt/internal/compiler/util/HashSetOfInt;->add(I)I

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->stringLiteralsStart:Lorg/eclipse/jdt/internal/compiler/util/HashSetOfInt;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->stringLiterals:[Lorg/eclipse/jdt/internal/compiler/ast/StringLiteral;

    aget-object v3, v3, p2

    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {v0, v3}, Lorg/eclipse/jdt/internal/compiler/util/HashSetOfInt;->add(I)I

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->stringLiterals:[Lorg/eclipse/jdt/internal/compiler/ast/StringLiteral;

    if-nez p2, :cond_5

    new-array p2, v1, [Lorg/eclipse/jdt/internal/compiler/ast/StringLiteral;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->stringLiterals:[Lorg/eclipse/jdt/internal/compiler/ast/StringLiteral;

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->stringLiteralsPtr:I

    goto :goto_2

    :cond_5
    array-length v0, p2

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->stringLiteralsPtr:I

    if-ne v1, v0, :cond_6

    add-int/lit8 v1, v0, 0xa

    new-array v1, v1, [Lorg/eclipse/jdt/internal/compiler/ast/StringLiteral;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->stringLiterals:[Lorg/eclipse/jdt/internal/compiler/ast/StringLiteral;

    invoke-static {p2, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6
    :goto_2
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->stringLiterals:[Lorg/eclipse/jdt/internal/compiler/ast/StringLiteral;

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->stringLiteralsPtr:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->stringLiteralsPtr:I

    aput-object p1, p2, v0

    return-void
.end method

.method public recordSuppressWarnings(Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;Lorg/eclipse/jdt/internal/compiler/ast/Annotation;IILorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;)V
    .locals 5

    invoke-direct {p0, p5}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->isLambdaExpressionCopyContext(Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;)Z

    move-result p5

    if-eqz p5, :cond_0

    return-void

    :cond_0
    iget-object p5, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->suppressWarningIrritants:[Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    const/4 v0, 0x0

    if-nez p5, :cond_1

    const/4 p5, 0x3

    new-array v1, p5, [Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->suppressWarningIrritants:[Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    new-array v1, p5, [Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->suppressWarningAnnotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    new-array p5, p5, [J

    iput-object p5, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->suppressWarningScopePositions:[J

    goto :goto_0

    :cond_1
    array-length v1, p5

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->suppressWarningsCount:I

    if-ne v1, v2, :cond_2

    mul-int/lit8 v1, v2, 0x2

    new-array v1, v1, [Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->suppressWarningIrritants:[Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    invoke-static {p5, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p5, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->suppressWarningAnnotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->suppressWarningsCount:I

    mul-int/lit8 v2, v1, 0x2

    new-array v2, v2, [Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->suppressWarningAnnotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    invoke-static {p5, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p5, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->suppressWarningScopePositions:[J

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->suppressWarningsCount:I

    mul-int/lit8 v2, v1, 0x2

    new-array v2, v2, [J

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->suppressWarningScopePositions:[J

    invoke-static {p5, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    :goto_0
    int-to-long v1, p3

    const/16 p3, 0x20

    shl-long/2addr v1, p3

    int-to-long p3, p4

    add-long/2addr v1, p3

    iget p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->suppressWarningsCount:I

    :goto_1
    if-lt v0, p3, :cond_3

    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->suppressWarningIrritants:[Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    iget p4, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->suppressWarningsCount:I

    aput-object p1, p3, p4

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->suppressWarningAnnotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    aput-object p2, p1, p4

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->suppressWarningScopePositions:[J

    add-int/lit8 p2, p4, 0x1

    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->suppressWarningsCount:I

    aput-wide v1, p1, p4

    return-void

    :cond_3
    iget-object p4, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->suppressWarningAnnotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    aget-object p4, p4, v0

    if-ne p4, p2, :cond_4

    iget-object p4, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->suppressWarningScopePositions:[J

    aget-wide v3, p4, v0

    cmp-long p4, v3, v1

    if-nez p4, :cond_4

    iget-object p4, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->suppressWarningIrritants:[Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    aget-object p4, p4, v0

    invoke-virtual {p4, p1}, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->hasSameIrritants(Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;)Z

    move-result p4

    if-eqz p4, :cond_4

    return-void

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public resolve()V
    .locals 6

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->isPackageInfo()Z

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->types:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    aget-object v1, v1, v3

    iget-object v4, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->javadoc:Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;

    if-nez v4, :cond_0

    new-instance v4, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;

    iget v5, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationSourceStart:I

    invoke-direct {v4, v5, v5}, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;-><init>(II)V

    iput-object v4, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->javadoc:Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;

    :cond_0
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    invoke-virtual {v1, v4}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->resolve(Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;)V

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->javadoc:Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;

    if-eqz v4, :cond_1

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->staticInitializerScope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    if-eqz v1, :cond_1

    invoke-virtual {v4, v1}, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->resolve(Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;)V

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->javadoc:Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;

    if-eqz v1, :cond_3

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    invoke-virtual {v1, v4}, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->resolve(Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;)V

    :cond_3
    move v1, v3

    :goto_0
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->currentPackage:Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    if-eqz v4, :cond_4

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-eqz v4, :cond_4

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->currentPackage:Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    aget-object v3, v4, v3

    invoke-virtual {v0, v3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->invalidFileNameForPackageAnnotations(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)V

    :cond_4
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->types:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-eqz v0, :cond_6

    array-length v0, v0

    :goto_1
    if-lt v1, v0, :cond_5

    goto :goto_2

    :cond_5
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->types:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    aget-object v3, v3, v1

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    invoke-virtual {v3, v4}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->resolve(Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->hasMandatoryErrors()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->checkUnusedImports()V

    :cond_7
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->reportNLSProblems()V
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilationUnit; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->ignoreFurtherInvestigation:Z

    return-void
.end method

.method public tagAsHavingErrors()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->ignoreFurtherInvestigation:Z

    return-void
.end method

.method public tagAsHavingIgnoredMandatoryErrors(I)V
    .locals 0

    return-void
.end method

.method public traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;Z)V

    return-void
.end method

.method public traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;Z)V
    .locals 4

    if-eqz p3, :cond_0

    .line 2
    iget-boolean p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->ignoreFurtherInvestigation:Z

    if-eqz p2, :cond_0

    return-void

    .line 3
    :cond_0
    :try_start_0
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 4
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->types:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    const/4 p3, 0x0

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->isPackageInfo()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 5
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->types:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    aget-object p2, p2, p3

    .line 6
    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->staticInitializerScope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    .line 7
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->javadoc:Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 8
    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    .line 9
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->currentPackage:Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    .line 10
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-eqz v0, :cond_3

    .line 11
    array-length v1, v0

    move v2, p3

    :goto_0
    if-lt v2, v1, :cond_2

    goto :goto_1

    .line 12
    :cond_2
    aget-object v3, v0, v2

    invoke-virtual {v3, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 13
    :cond_3
    :goto_1
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->currentPackage:Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    if-eqz p2, :cond_4

    .line 14
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    invoke-virtual {p2, p1, v0}, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;)V

    .line 15
    :cond_4
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->imports:[Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    if-eqz p2, :cond_6

    .line 16
    array-length p2, p2

    move v0, p3

    :goto_2
    if-lt v0, p2, :cond_5

    goto :goto_3

    .line 17
    :cond_5
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->imports:[Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    aget-object v1, v1, v0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    invoke-virtual {v1, p1, v2}, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 18
    :cond_6
    :goto_3
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->types:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-eqz p2, :cond_8

    .line 19
    array-length p2, p2

    :goto_4
    if-lt p3, p2, :cond_7

    goto :goto_5

    .line 20
    :cond_7
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->types:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    aget-object v0, v0, p3

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_4

    .line 21
    :cond_8
    :goto_5
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->isModuleInfo()Z

    move-result p2

    if-eqz p2, :cond_9

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->moduleDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;

    if-eqz p2, :cond_9

    .line 22
    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    invoke-virtual {p2, p1, p3}, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;)V

    .line 23
    :cond_9
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;)V
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilationUnit; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
