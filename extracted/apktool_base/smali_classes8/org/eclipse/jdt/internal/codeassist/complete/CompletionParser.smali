.class public Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;
.super Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser$ModuleKeyword;,
        Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser$SavedState;
    }
.end annotation


# static fields
.field static final ALLOCATION:I = -0x4

.field static final ANNOTATION_NAME_COMPLETION:I = 0x4

.field static final CATCH:I = 0x3

.field static final COLON:I = 0x2

.field protected static final COMPLETION_OR_ASSIST_PARSER:I = 0x600

.field protected static final COMPLETION_PARSER:I = 0x400

.field static final DEFAULT:I = 0x1

.field static final DO:I = 0x7

.field static final EXPLICIT_RECEIVER:I = 0x0

.field public static final FAKE_ARGUMENT_NAME:[C

.field public static final FAKE_METHOD_NAME:[C

.field public static final FAKE_TYPE_NAME:[C

.field static final FOR:I = 0x6

.field static final IF:I = 0x1

.field static final INSIDE_NAME:I = 0x1

.field protected static final K_AFTER_NAME_IN_PROVIDES_STATEMENT:I = 0x431

.field protected static final K_AFTER_PACKAGE_IN_PACKAGE_VISIBILITY_STATEMENT:I = 0x430

.field protected static final K_AFTER_WITH_IN_PROVIDES_STATEMENT:I = 0x432

.field protected static final K_ARRAY_CREATION:I = 0x40e

.field protected static final K_ARRAY_INITIALIZER:I = 0x40d

.field protected static final K_ASSISGNMENT_OPERATOR:I = 0x411

.field protected static final K_BETWEEN_ANNOTATION_NAME_AND_RPAREN:I = 0x421

.field protected static final K_BETWEEN_CASE_AND_COLON:I = 0x41a

.field protected static final K_BETWEEN_CATCH_AND_RIGHT_PAREN:I = 0x404

.field protected static final K_BETWEEN_DEFAULT_AND_COLON:I = 0x41b

.field protected static final K_BETWEEN_FOR_AND_RIGHT_PAREN:I = 0x415

.field protected static final K_BETWEEN_IF_AND_RIGHT_PAREN:I = 0x413

.field protected static final K_BETWEEN_INSTANCEOF_AND_RPAREN:I = 0x429

.field protected static final K_BETWEEN_LEFT_AND_RIGHT_BRACKET:I = 0x41c

.field protected static final K_BETWEEN_NEW_AND_LEFT_BRACKET:I = 0x408

.field protected static final K_BETWEEN_SWITCH_AND_RIGHT_PAREN:I = 0x416

.field protected static final K_BETWEEN_SYNCHRONIZED_AND_RIGHT_PAREN:I = 0x417

.field protected static final K_BETWEEN_WHILE_AND_RIGHT_PAREN:I = 0x414

.field protected static final K_BINARY_OPERATOR:I = 0x410

.field protected static final K_BLOCK_DELIMITER:I = 0x401

.field protected static final K_CAST_STATEMENT:I = 0x40b

.field protected static final K_CONDITIONAL_OPERATOR:I = 0x412

.field protected static final K_CONTROL_STATEMENT_DELIMITER:I = 0x426

.field protected static final K_EXTENDS_KEYWORD:I = 0x41d

.field protected static final K_INSIDE_ASSERT_EXCEPTION:I = 0x427

.field protected static final K_INSIDE_ASSERT_STATEMENT:I = 0x418

.field protected static final K_INSIDE_BREAK_STATEMENT:I = 0x422

.field protected static final K_INSIDE_CONTINUE_STATEMENT:I = 0x423

.field protected static final K_INSIDE_EXPORTS_STATEMENT:I = 0x42c

.field protected static final K_INSIDE_FOR_CONDITIONAL:I = 0x428

.field protected static final K_INSIDE_IMPORT_STATEMENT:I = 0x42b

.field protected static final K_INSIDE_OPENS_STATEMENT:I = 0x433

.field protected static final K_INSIDE_PROVIDES_STATEMENT:I = 0x42f

.field protected static final K_INSIDE_REQUIRES_STATEMENT:I = 0x42d

.field protected static final K_INSIDE_RETURN_STATEMENT:I = 0x40a

.field protected static final K_INSIDE_THROW_STATEMENT:I = 0x409

.field protected static final K_INSIDE_USES_STATEMENT:I = 0x42e

.field protected static final K_LABEL:I = 0x424

.field protected static final K_LOCAL_INITIALIZER_DELIMITER:I = 0x40c

.field protected static final K_MEMBER_VALUE_ARRAY_INITIALIZER:I = 0x425

.field protected static final K_NEXT_TYPEREF_IS_CLASS:I = 0x405

.field protected static final K_NEXT_TYPEREF_IS_EXCEPTION:I = 0x407

.field protected static final K_NEXT_TYPEREF_IS_INTERFACE:I = 0x406

.field protected static final K_PARAMETERIZED_ALLOCATION:I = 0x41f

.field protected static final K_PARAMETERIZED_CAST:I = 0x420

.field protected static final K_PARAMETERIZED_METHOD_INVOCATION:I = 0x41e

.field protected static final K_SELECTOR_INVOCATION_TYPE:I = 0x402

.field protected static final K_SELECTOR_QUALIFIER:I = 0x403

.field protected static final K_SWITCH_LABEL:I = 0x419

.field protected static final K_UNARY_OPERATOR:I = 0x40f

.field static final LPAREN_CONSUMED:I = 0x2

.field static final LPAREN_NOT_CONSUMED:I = 0x1

.field protected static final LabelStackIncrement:I = 0xa

.field static final NAME_RECEIVER:I = -0x3

.field static final NEXTTOKEN:I = 0x1

.field static final NO:I = 0x0

.field static final NO_RECEIVER:I = -0x1

.field static final QUALIFIED_ALLOCATION:I = -0x5

.field static final QUESTION:I = 0x1

.field static final SUPER_RECEIVER:I = -0x2

.field static final SWITCH:I = 0x5

.field static final SYNCHRONIZED:I = 0x8

.field static final TRY:I = 0x2

.field public static final VALUE:[C

.field static final WHILE:I = 0x4

.field static final YES:I = 0x2


# instance fields
.field public assistNodeParent:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

.field canBeExplicitConstructor:I

.field private consumedEnhancedFor:Z

.field public cursorLocation:I

.field public enclosingNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

.field hasUnusedModifiers:Z

.field private inReferenceExpression:Z

.field invocationType:I

.field isAlreadyAttached:Z

.field labelPtr:I

.field labelStack:[[C

.field private monitor:Lorg/eclipse/core/runtime/IProgressMonitor;

.field pendingAnnotation:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnAnnotationOfType;

.field public potentialVariableNameEnds:[I

.field public potentialVariableNameStarts:[I

.field public potentialVariableNames:[[C

.field public potentialVariableNamesPtr:I

.field qualifier:I

.field public record:Z

.field public recordFrom:I

.field public recordTo:I

.field private resumeOnSyntaxError:I

.field shouldStackAssistNode:Z

.field public skipRecord:Z

.field public sourceEnds:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;

.field private storeSourceEnds:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x20

    const/4 v1, 0x1

    new-array v2, v1, [C

    const/4 v3, 0x0

    aput-char v0, v2, v3

    sput-object v2, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->FAKE_TYPE_NAME:[C

    new-array v2, v1, [C

    aput-char v0, v2, v3

    sput-object v2, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->FAKE_METHOD_NAME:[C

    new-array v1, v1, [C

    aput-char v0, v1, v3

    sput-object v1, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->FAKE_ARGUMENT_NAME:[C

    const/4 v0, 0x5

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->VALUE:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x76s
        0x61s
        0x6cs
        0x75s
        0x65s
    .end array-data
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;Z)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;-><init>(Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->canBeExplicitConstructor:I

    const/16 v0, 0xa

    .line 3
    new-array v0, v0, [[C

    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->labelStack:[[C

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->labelPtr:I

    .line 5
    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->record:Z

    .line 6
    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->skipRecord:Z

    .line 7
    iput p1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->resumeOnSyntaxError:I

    .line 8
    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->reportSyntaxErrorIsRequired:Z

    .line 9
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->javadocParser:Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->checkDocComment:Z

    .line 10
    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->annotationRecoveryActivated:Z

    if-eqz p2, :cond_0

    .line 11
    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->storeSourceEnds:Z

    .line 12
    new-instance p1, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;

    invoke-direct {p1}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->sourceEnds:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;

    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;ZLorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;-><init>(Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;Z)V

    .line 14
    iput-object p3, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->monitor:Lorg/eclipse/core/runtime/IProgressMonitor;

    return-void
.end method

.method private addPotentialName([CII)V
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->potentialVariableNames:[[C

    array-length v1, v0

    iget v2, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->potentialVariableNamesPtr:I

    add-int/lit8 v3, v1, -0x1

    if-lt v2, v3, :cond_0

    mul-int/lit8 v2, v1, 0x2

    new-array v3, v2, [[C

    iput-object v3, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->potentialVariableNames:[[C

    const/4 v4, 0x0

    invoke-static {v0, v4, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->potentialVariableNameStarts:[I

    new-array v3, v2, [I

    iput-object v3, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->potentialVariableNameStarts:[I

    invoke-static {v0, v4, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->potentialVariableNameEnds:[I

    new-array v2, v2, [I

    iput-object v2, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->potentialVariableNameEnds:[I

    invoke-static {v0, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->potentialVariableNames:[[C

    iget v1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->potentialVariableNamesPtr:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->potentialVariableNamesPtr:I

    aput-object p1, v0, v1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->potentialVariableNameStarts:[I

    aput p2, p1, v1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->potentialVariableNameEnds:[I

    aput p3, p1, v1

    return-void
.end method

.method private buildMoreAnnotationCompletionContext(Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;)V
    .locals 9

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    if-ltz v0, :cond_8

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    if-gez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->getAnnotationType()Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object v0

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v1, v2, :cond_1

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    aget-object v5, v5, v1

    if-ne v5, p1, :cond_1

    move v5, v4

    goto :goto_0

    :cond_1
    move v5, v3

    :goto_0
    instance-of v6, p1, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnMemberValueName;

    const/4 v7, 0x0

    if-eqz v6, :cond_3

    iget v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astLengthPtr:I

    if-le v6, v2, :cond_2

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astLengthStack:[I

    add-int/lit8 v8, v6, -0x1

    iput v8, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astLengthPtr:I

    aget v2, v2, v6

    if-le v2, v5, :cond_2

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    aget-object v8, v6, v1

    instance-of v8, v8, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;

    if-eqz v8, :cond_2

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    add-int/2addr v1, v4

    sub-int/2addr v2, v5

    new-array v7, v2, [Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;

    invoke-static {v6, v1, v7, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    new-instance v1, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnAnnotationMemberValuePair;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intStack:[I

    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    add-int/lit8 v6, v5, -0x1

    iput v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v2, v2, v5

    invoke-direct {v1, v0, v2, v7, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnAnnotationMemberValuePair;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;I[Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->assistNodeParent:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    if-lt p1, v0, :cond_7

    add-int/2addr p1, v4

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    goto :goto_2

    :cond_3
    iget v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astLengthPtr:I

    if-le v6, v2, :cond_6

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astLengthStack:[I

    add-int/lit8 v8, v6, -0x1

    iput v8, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astLengthPtr:I

    aget v2, v2, v6

    if-le v2, v5, :cond_6

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    aget-object v8, v6, v1

    instance-of v8, v8, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;

    if-eqz v8, :cond_4

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    add-int/2addr v1, v4

    sub-int v7, v2, v5

    add-int/lit8 v8, v7, 0x1

    new-array v8, v8, [Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;

    invoke-static {v6, v1, v8, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v7, v8

    :cond_4
    if-eqz v7, :cond_5

    sub-int/2addr v2, v5

    aput-object p1, v7, v2

    goto :goto_1

    :cond_5
    new-array v7, v4, [Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;

    aput-object p1, v7, v3

    goto :goto_1

    :cond_6
    new-array v7, v4, [Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;

    aput-object p1, v7, v3

    :goto_1
    new-instance v1, Lorg/eclipse/jdt/internal/compiler/ast/NormalAnnotation;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intStack:[I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    add-int/lit8 v4, v2, -0x1

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget p1, p1, v2

    invoke-direct {v1, v0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/NormalAnnotation;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;I)V

    iput-object v7, v1, Lorg/eclipse/jdt/internal/compiler/ast/NormalAnnotation;->memberValuePairs:[Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->assistNodeParent:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    :cond_7
    :goto_2
    new-instance p1, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnAnnotationOfType;

    sget-object v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->FAKE_TYPE_NAME:[C

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->compilationUnit:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult()Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    move-result-object v2

    invoke-direct {p1, v0, v2, v1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnAnnotationOfType;-><init>([CLorg/eclipse/jdt/internal/compiler/CompilationResult;Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    invoke-virtual {v0, p1, v3}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->pendingAnnotation:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnAnnotationOfType;

    :cond_8
    :goto_3
    return-void
.end method

.method private buildMoreCompletionContext(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/16 v3, 0x600

    invoke-virtual {v0, v3}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementKind(I)I

    move-result v4

    const/4 v10, 0x0

    if-eqz v4, :cond_26

    invoke-virtual {v0, v3}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementInfo(I)I

    move-result v5

    const/16 v6, 0x403

    const/16 v7, 0x20

    const/4 v8, 0x0

    const/4 v11, -0x1

    if-eq v4, v6, :cond_15

    const/16 v6, 0x41a

    if-eq v4, v6, :cond_12

    const/16 v6, 0x41c

    if-eq v4, v6, :cond_10

    const/16 v6, 0x427

    if-eq v4, v6, :cond_f

    const/16 v6, 0x428

    if-eq v4, v6, :cond_e

    packed-switch v4, :pswitch_data_0

    packed-switch v4, :pswitch_data_1

    packed-switch v4, :pswitch_data_2

    goto/16 :goto_c

    :pswitch_0
    iget v1, v0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->bracketDepth:I

    if-ne v5, v1, :cond_26

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/ast/AssertStatement;

    iget v2, v9, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-direct {v1, v9, v2}, Lorg/eclipse/jdt/internal/compiler/ast/AssertStatement;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/Expression;I)V

    iput-object v1, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->assistNodeParent:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    goto/16 :goto_c

    :pswitch_1
    new-instance v1, Lorg/eclipse/jdt/internal/compiler/ast/SynchronizedStatement;

    new-instance v2, Lorg/eclipse/jdt/internal/compiler/ast/Block;

    invoke-direct {v2, v10}, Lorg/eclipse/jdt/internal/compiler/ast/Block;-><init>(I)V

    iget v3, v9, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v4, v9, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-direct {v1, v9, v2, v3, v4}, Lorg/eclipse/jdt/internal/compiler/ast/SynchronizedStatement;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/ast/Block;II)V

    iput-object v1, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->assistNodeParent:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    goto/16 :goto_c

    :pswitch_2
    new-instance v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;

    invoke-direct {v1}, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;-><init>()V

    iput-object v9, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    new-array v2, v10, [Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    iput-object v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    iput-object v1, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->assistNodeParent:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    goto/16 :goto_c

    :pswitch_3
    new-instance v1, Lorg/eclipse/jdt/internal/compiler/ast/WhileStatement;

    new-instance v2, Lorg/eclipse/jdt/internal/compiler/ast/EmptyStatement;

    iget v3, v9, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-direct {v2, v3, v3}, Lorg/eclipse/jdt/internal/compiler/ast/EmptyStatement;-><init>(II)V

    iget v3, v9, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v4, v9, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-direct {v1, v9, v2, v3, v4}, Lorg/eclipse/jdt/internal/compiler/ast/WhileStatement;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/ast/Statement;II)V

    iput-object v1, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->assistNodeParent:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    goto/16 :goto_c

    :pswitch_4
    new-instance v1, Lorg/eclipse/jdt/internal/compiler/ast/IfStatement;

    new-instance v2, Lorg/eclipse/jdt/internal/compiler/ast/EmptyStatement;

    iget v3, v9, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-direct {v2, v3, v3}, Lorg/eclipse/jdt/internal/compiler/ast/EmptyStatement;-><init>(II)V

    iget v3, v9, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v4, v9, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-direct {v1, v9, v2, v3, v4}, Lorg/eclipse/jdt/internal/compiler/ast/IfStatement;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/ast/Statement;II)V

    iput-object v1, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->assistNodeParent:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    goto/16 :goto_c

    :pswitch_5
    const/16 v3, 0x412

    if-ne v5, v2, :cond_0

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    if-lez v1, :cond_26

    add-int/lit8 v4, v1, -0x1

    iput v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    iget v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    sub-int/2addr v5, v2

    iput v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    aget-object v1, v2, v1

    aput-object v1, v2, v4

    invoke-virtual {v0, v3}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    invoke-direct/range {p0 .. p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->buildMoreCompletionContext(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)V

    return-void

    :cond_0
    iget v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    if-le v4, v2, :cond_26

    add-int/lit8 v2, v4, -0x2

    iput v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    iget v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    sub-int/2addr v5, v1

    iput v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    aget-object v4, v1, v4

    aput-object v4, v1, v2

    invoke-virtual {v0, v3}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    invoke-direct/range {p0 .. p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->buildMoreCompletionContext(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)V

    return-void

    :pswitch_6
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    if-lez v1, :cond_26

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    sub-int/2addr v1, v2

    aget-object v1, v3, v1

    if-eqz v1, :cond_26

    const/16 v1, 0x1e

    if-ne v5, v1, :cond_1

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    sub-int/2addr v4, v2

    aget-object v2, v3, v4

    iget v3, v9, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-direct {v1, v2, v9, v3}, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/ast/Expression;I)V

    goto :goto_0

    :cond_1
    new-instance v1, Lorg/eclipse/jdt/internal/compiler/ast/CompoundAssignment;

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    sub-int/2addr v4, v2

    aget-object v2, v3, v4

    iget v3, v9, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-direct {v1, v2, v9, v5, v3}, Lorg/eclipse/jdt/internal/compiler/ast/CompoundAssignment;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/ast/Expression;II)V

    :goto_0
    iput-object v1, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->assistNodeParent:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    goto/16 :goto_c

    :pswitch_7
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    if-le v1, v11, :cond_26

    if-nez v1, :cond_3

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    if-le v1, v11, :cond_2

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->getUnspecifiedReferenceOptimized()Lorg/eclipse/jdt/internal/compiler/ast/NameReference;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v8

    goto :goto_1

    :cond_3
    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    sub-int/2addr v1, v2

    aget-object v1, v3, v1

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    if-le v3, v11, :cond_4

    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPositionStack:[J

    aget-wide v3, v4, v3

    ushr-long/2addr v3, v7

    long-to-int v3, v3

    iget v4, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    if-ge v4, v3, :cond_4

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->getUnspecifiedReferenceOptimized()Lorg/eclipse/jdt/internal/compiler/ast/NameReference;

    move-result-object v1

    :cond_4
    :goto_1
    if-eqz v1, :cond_8

    if-eqz v5, :cond_7

    if-eq v5, v2, :cond_6

    const/16 v2, 0x12

    if-eq v5, v2, :cond_5

    const/16 v2, 0x1d

    if-eq v5, v2, :cond_5

    new-instance v8, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;

    invoke-direct {v8, v1, v9, v5}, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/ast/Expression;I)V

    goto :goto_2

    :cond_5
    new-instance v8, Lorg/eclipse/jdt/internal/compiler/ast/EqualExpression;

    invoke-direct {v8, v1, v9, v5}, Lorg/eclipse/jdt/internal/compiler/ast/EqualExpression;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/ast/Expression;I)V

    goto :goto_2

    :cond_6
    new-instance v8, Lorg/eclipse/jdt/internal/compiler/ast/OR_OR_Expression;

    invoke-direct {v8, v1, v9, v5}, Lorg/eclipse/jdt/internal/compiler/ast/OR_OR_Expression;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/ast/Expression;I)V

    goto :goto_2

    :cond_7
    new-instance v8, Lorg/eclipse/jdt/internal/compiler/ast/AND_AND_Expression;

    invoke-direct {v8, v1, v9, v5}, Lorg/eclipse/jdt/internal/compiler/ast/AND_AND_Expression;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/ast/Expression;I)V

    :cond_8
    :goto_2
    if-eqz v8, :cond_26

    iput-object v8, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->assistNodeParent:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    goto/16 :goto_c

    :pswitch_8
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    if-le v1, v11, :cond_26

    if-eq v5, v7, :cond_a

    const/16 v1, 0x21

    if-eq v5, v1, :cond_9

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/ast/UnaryExpression;

    invoke-direct {v1, v9, v5}, Lorg/eclipse/jdt/internal/compiler/ast/UnaryExpression;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/Expression;I)V

    goto :goto_3

    :cond_9
    new-instance v1, Lorg/eclipse/jdt/internal/compiler/ast/PrefixExpression;

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/ast/IntLiteral;->One:Lorg/eclipse/jdt/internal/compiler/ast/IntLiteral;

    iget v3, v9, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    const/16 v4, 0xd

    invoke-direct {v1, v9, v2, v4, v3}, Lorg/eclipse/jdt/internal/compiler/ast/PrefixExpression;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/ast/Expression;II)V

    goto :goto_3

    :cond_a
    new-instance v1, Lorg/eclipse/jdt/internal/compiler/ast/PrefixExpression;

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/ast/IntLiteral;->One:Lorg/eclipse/jdt/internal/compiler/ast/IntLiteral;

    iget v3, v9, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    const/16 v4, 0xe

    invoke-direct {v1, v9, v2, v4, v3}, Lorg/eclipse/jdt/internal/compiler/ast/PrefixExpression;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/ast/Expression;II)V

    :goto_3
    iput-object v1, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->assistNodeParent:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    goto/16 :goto_c

    :pswitch_9
    new-instance v1, Lorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;

    invoke-direct {v1}, Lorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;-><init>()V

    invoke-virtual {v0, v10}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->getTypeReference(I)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object v2

    iput-object v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    filled-new-array/range {p1 .. p1}, [Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    move-result-object v2

    iput-object v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;->dimensions:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iput-object v1, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->assistNodeParent:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    goto/16 :goto_c

    :pswitch_a
    new-instance v4, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;

    invoke-direct {v4}, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;-><init>()V

    filled-new-array/range {p1 .. p1}, [Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    move-result-object v6

    iput-object v6, v4, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;->expressions:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v6, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    iget-object v7, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthStack:[I

    iget v8, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    add-int/lit8 v12, v8, -0x1

    iput v12, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    aget v7, v7, v8

    sub-int/2addr v6, v7

    iput v6, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    if-le v12, v11, :cond_b

    if-le v6, v11, :cond_b

    iget-object v7, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    aget-object v6, v7, v6

    if-eqz v6, :cond_b

    iget v6, v6, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    if-le v6, v5, :cond_b

    sub-int/2addr v8, v1

    iput v8, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    :cond_b
    invoke-virtual {v0, v3, v2}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementKind(II)I

    move-result v1

    const/16 v3, 0x40e

    if-ne v1, v3, :cond_c

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;

    invoke-direct {v1}, Lorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;-><init>()V

    invoke-virtual {v0, v10}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnGenericsLengthStack(I)V

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthStack:[I

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnGenericsIdentifiersLengthStack(I)V

    invoke-virtual {v0, v10}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->getTypeReference(I)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object v2

    iput-object v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v5, 0x40000000    # 2.0f

    or-int/2addr v3, v5

    iput v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthStack:[I

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    aget v2, v2, v3

    new-array v2, v2, [Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iput-object v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;->dimensions:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iput-object v4, v1, Lorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;->initializer:Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;

    iput-object v1, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->assistNodeParent:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    goto/16 :goto_c

    :cond_c
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    instance-of v3, v1, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;

    if-eqz v3, :cond_d

    instance-of v3, v1, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredInitializer;

    if-nez v3, :cond_d

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;->fieldDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->dimensions()I

    move-result v1

    if-nez v1, :cond_27

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/ast/Block;

    invoke-direct {v1, v10}, Lorg/eclipse/jdt/internal/compiler/ast/Block;-><init>(I)V

    iput v5, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    invoke-virtual {v3, v1, v2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/Block;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object v1

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    goto/16 :goto_c

    :cond_d
    instance-of v3, v1, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredLocalVariable;

    if-eqz v3, :cond_27

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredLocalVariable;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredLocalVariable;->localDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->dimensions()I

    move-result v1

    if-nez v1, :cond_27

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/ast/Block;

    invoke-direct {v1, v10}, Lorg/eclipse/jdt/internal/compiler/ast/Block;-><init>(I)V

    iput v5, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    invoke-virtual {v3, v1, v2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/Block;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object v1

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    goto/16 :goto_c

    :pswitch_b
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    if-lez v1, :cond_26

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    sub-int/2addr v1, v2

    aget-object v1, v3, v1

    instance-of v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v2, :cond_26

    new-instance v2, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;

    move-object v3, v1

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-direct {v2, v9, v3}, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iput v1, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v1, v9, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iput v1, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iput-object v2, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->assistNodeParent:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    goto/16 :goto_c

    :pswitch_c
    iget v1, v0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->bracketDepth:I

    if-ne v5, v1, :cond_26

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/ast/ReturnStatement;

    iget v2, v9, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v3, v9, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-direct {v1, v9, v2, v3}, Lorg/eclipse/jdt/internal/compiler/ast/ReturnStatement;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/Expression;II)V

    iput-object v1, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->assistNodeParent:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    goto/16 :goto_c

    :pswitch_d
    iget v1, v0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->bracketDepth:I

    if-ne v5, v1, :cond_26

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/ast/ThrowStatement;

    iget v2, v9, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v3, v9, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-direct {v1, v9, v2, v3}, Lorg/eclipse/jdt/internal/compiler/ast/ThrowStatement;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/Expression;II)V

    iput-object v1, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->assistNodeParent:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    goto/16 :goto_c

    :cond_e
    new-instance v11, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;

    new-array v2, v10, [Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    new-array v4, v10, [Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    new-instance v5, Lorg/eclipse/jdt/internal/compiler/ast/EmptyStatement;

    iget v1, v9, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-direct {v5, v1, v1}, Lorg/eclipse/jdt/internal/compiler/ast/EmptyStatement;-><init>(II)V

    iget v7, v9, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v8, v9, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    const/4 v6, 0x0

    move-object v1, v11

    move-object/from16 v3, p1

    invoke-direct/range {v1 .. v8}, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;-><init>([Lorg/eclipse/jdt/internal/compiler/ast/Statement;Lorg/eclipse/jdt/internal/compiler/ast/Expression;[Lorg/eclipse/jdt/internal/compiler/ast/Statement;Lorg/eclipse/jdt/internal/compiler/ast/Statement;ZII)V

    iput-object v11, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->assistNodeParent:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    goto/16 :goto_c

    :cond_f
    iget v1, v0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->bracketDepth:I

    if-ne v5, v1, :cond_26

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/ast/AssertStatement;

    new-instance v2, Lorg/eclipse/jdt/internal/compiler/ast/TrueLiteral;

    iget v3, v9, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-direct {v2, v3, v3}, Lorg/eclipse/jdt/internal/compiler/ast/TrueLiteral;-><init>(II)V

    iget v3, v9, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-direct {v1, v9, v2, v3}, Lorg/eclipse/jdt/internal/compiler/ast/AssertStatement;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/ast/Expression;I)V

    iput-object v1, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->assistNodeParent:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    goto/16 :goto_c

    :cond_10
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    if-gez v1, :cond_11

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    if-lez v1, :cond_11

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    aget-object v1, v3, v1

    if-ne v1, v9, :cond_11

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/ast/ArrayReference;

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    sub-int/2addr v4, v2

    aget-object v2, v3, v4

    invoke-direct {v1, v2, v9}, Lorg/eclipse/jdt/internal/compiler/ast/ArrayReference;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/ast/Expression;)V

    goto :goto_4

    :cond_11
    new-instance v1, Lorg/eclipse/jdt/internal/compiler/ast/ArrayReference;

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->getUnspecifiedReferenceOptimized()Lorg/eclipse/jdt/internal/compiler/ast/NameReference;

    move-result-object v2

    invoke-direct {v1, v2, v9}, Lorg/eclipse/jdt/internal/compiler/ast/ArrayReference;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/ast/Expression;)V

    :goto_4
    iput-object v1, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->assistNodeParent:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    goto/16 :goto_c

    :cond_12
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    if-lez v1, :cond_26

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;

    invoke-direct {v1}, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;-><init>()V

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    sub-int/2addr v4, v2

    aget-object v3, v3, v4

    iput-object v3, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astLengthPtr:I

    if-le v4, v11, :cond_13

    iget v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    if-le v5, v11, :cond_13

    iget-object v6, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astLengthStack:[I

    aget v4, v6, v4

    sub-int/2addr v5, v4

    iget-object v6, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    add-int/2addr v5, v2

    aget-object v7, v6, v5

    if-eqz v4, :cond_13

    iget v7, v7, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    if-le v7, v3, :cond_13

    add-int/lit8 v3, v4, 0x1

    new-array v3, v3, [Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    iput-object v3, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    invoke-static {v6, v5, v3, v10, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_13
    new-instance v3, Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;

    iget v4, v9, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v5, v9, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-direct {v3, v9, v4, v5}, Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/Expression;II)V

    iget-object v4, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    if-nez v4, :cond_14

    new-array v2, v2, [Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    aput-object v3, v2, v10

    iput-object v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    goto :goto_5

    :cond_14
    array-length v5, v4

    sub-int/2addr v5, v2

    aput-object v3, v4, v5

    :goto_5
    iput-object v1, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->assistNodeParent:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    goto/16 :goto_c

    :cond_15
    invoke-virtual {v0, v3, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementInfo(II)I

    move-result v4

    if-eq v4, v11, :cond_24

    const/4 v6, -0x2

    if-ne v4, v6, :cond_16

    goto/16 :goto_b

    :cond_16
    invoke-virtual {v0, v3, v2}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementInfo(II)I

    move-result v1

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthStack:[I

    iget v12, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    aget v13, v3, v12

    iget v14, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    if-lez v14, :cond_17

    if-lez v12, :cond_17

    if-ne v13, v2, :cond_17

    iget-object v15, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPositionStack:[J

    aget-wide v16, v15, v4

    ushr-long v6, v16, v7

    long-to-int v6, v6

    iget-object v7, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    add-int/lit8 v16, v14, -0x1

    aget-object v16, v7, v16

    if-eqz v16, :cond_17

    add-int/lit8 v16, v14, -0x1

    aget-object v7, v7, v16

    iget v7, v7, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    if-le v7, v6, :cond_17

    sub-int/2addr v12, v2

    aget v3, v3, v12

    add-int/2addr v13, v3

    :cond_17
    if-eqz v13, :cond_18

    new-array v3, v13, [Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    sub-int/2addr v14, v13

    iput v14, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    iget-object v6, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    add-int/2addr v14, v2

    sub-int/2addr v13, v2

    invoke-static {v6, v14, v3, v10, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object v9, v3, v13

    goto :goto_6

    :cond_18
    move-object v3, v8

    :goto_6
    const/4 v6, -0x4

    if-eq v1, v6, :cond_22

    const/4 v7, -0x5

    if-eq v1, v7, :cond_22

    new-instance v6, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;

    invoke-direct {v6}, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;-><init>()V

    iget-object v7, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierStack:[[C

    aget-object v4, v7, v4

    iput-object v4, v6, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->selector:[C

    iput-object v3, v6, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    const/4 v3, -0x3

    if-eq v1, v3, :cond_1c

    const/4 v3, -0x2

    if-eq v1, v3, :cond_1b

    if-eq v1, v11, :cond_1a

    if-eqz v1, :cond_19

    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/ast/ThisReference;->implicitThis()Lorg/eclipse/jdt/internal/compiler/ast/ThisReference;

    move-result-object v1

    iput-object v1, v6, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    goto/16 :goto_a

    :cond_19
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    aget-object v1, v1, v5

    iput-object v1, v6, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    goto/16 :goto_a

    :cond_1a
    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/ast/ThisReference;->implicitThis()Lorg/eclipse/jdt/internal/compiler/ast/ThisReference;

    move-result-object v1

    iput-object v1, v6, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    goto/16 :goto_a

    :cond_1b
    new-instance v1, Lorg/eclipse/jdt/internal/compiler/ast/SuperReference;

    invoke-direct {v1, v10, v10}, Lorg/eclipse/jdt/internal/compiler/ast/SuperReference;-><init>(II)V

    iput-object v1, v6, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    goto :goto_a

    :cond_1c
    :goto_7
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    if-ltz v1, :cond_1e

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthStack:[I

    aget v3, v3, v1

    if-ltz v3, :cond_1d

    goto :goto_8

    :cond_1d
    sub-int/2addr v1, v2

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    goto :goto_7

    :cond_1e
    :goto_8
    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    sub-int/2addr v3, v2

    iput v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsPtr:I

    if-le v3, v11, :cond_1f

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsLengthPtr:I

    if-le v3, v11, :cond_1f

    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsLengthStack:[I

    aget v3, v4, v3

    if-lez v3, :cond_1f

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    goto :goto_9

    :cond_1f
    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthStack:[I

    aget v4, v3, v1

    sub-int/2addr v4, v2

    aput v4, v3, v1

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->typeAnnotationLengthStack:[I

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->typeAnnotationLengthPtr:I

    add-int/lit8 v4, v3, -0x1

    iput v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->typeAnnotationLengthPtr:I

    aget v1, v1, v3

    if-eqz v1, :cond_20

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->typeAnnotationStack:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iget v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->typeAnnotationPtr:I

    sub-int/2addr v4, v1

    iput v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->typeAnnotationPtr:I

    add-int/2addr v4, v2

    new-array v5, v1, [Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    invoke-static {v3, v4, v5, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v3

    aget-object v4, v5, v10

    sub-int/2addr v1, v2

    aget-object v1, v5, v1

    invoke-virtual {v3, v4, v1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->misplacedTypeAnnotations(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)V

    :cond_20
    :goto_9
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthStack:[I

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    aget v1, v1, v3

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    if-le v3, v11, :cond_21

    if-lez v1, :cond_21

    add-int/2addr v3, v2

    if-lt v3, v1, :cond_21

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->getUnspecifiedReference()Lorg/eclipse/jdt/internal/compiler/ast/NameReference;

    move-result-object v1

    iput-object v1, v6, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    :goto_a
    move-object v8, v6

    :cond_21
    iput-object v8, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->assistNodeParent:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    goto :goto_c

    :cond_22
    if-ne v1, v6, :cond_23

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;

    invoke-direct {v1}, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;-><init>()V

    iput-object v3, v1, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthStack:[I

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnGenericsIdentifiersLengthStack(I)V

    invoke-virtual {v0, v10}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnGenericsLengthStack(I)V

    invoke-virtual {v0, v10}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->getTypeReference(I)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object v2

    iput-object v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iput-object v1, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->assistNodeParent:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    goto :goto_c

    :cond_23
    new-instance v1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;

    invoke-direct {v1}, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;-><init>()V

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    aget-object v2, v2, v5

    iput-object v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;->enclosingInstance:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iput-object v3, v1, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthStack:[I

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnGenericsIdentifiersLengthStack(I)V

    invoke-virtual {v0, v10}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnGenericsLengthStack(I)V

    invoke-virtual {v0, v10}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->getTypeReference(I)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object v2

    iput-object v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iput-object v1, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->assistNodeParent:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    goto :goto_c

    :cond_24
    :goto_b
    new-instance v2, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;

    if-ne v4, v11, :cond_25

    const/4 v1, 0x3

    :cond_25
    invoke-direct {v2, v1}, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;-><init>(I)V

    filled-new-array/range {p1 .. p1}, [Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    move-result-object v1

    iput-object v1, v2, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v1, v9, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iput v1, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v1, v9, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iput v1, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iput-object v2, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->assistNodeParent:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    :cond_26
    :goto_c
    move-object v4, v9

    :cond_27
    iget-object v1, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->assistNodeParent:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    if-eqz v1, :cond_28

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->buildMoreCompletionEnclosingContext(Lorg/eclipse/jdt/internal/compiler/ast/Statement;)Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    move-result-object v1

    invoke-virtual {v2, v1, v10}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/Statement;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object v1

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    goto :goto_d

    :cond_28
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    instance-of v2, v1, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;

    if-eqz v2, :cond_2a

    instance-of v2, v1, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredInitializer;

    if-nez v2, :cond_2a

    move-object v2, v1

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;->fieldDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-nez v2, :cond_2a

    const/16 v1, 0x207

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->lastIndexOfElement(I)I

    move-result v1

    const/16 v2, 0x204

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->lastIndexOfElement(I)I

    move-result v2

    if-gt v1, v2, :cond_29

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;->fieldDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    iput-object v1, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->assistNodeParent:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    :cond_29
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    invoke-direct {v0, v4}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->buildMoreCompletionEnclosingContext(Lorg/eclipse/jdt/internal/compiler/ast/Statement;)Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    move-result-object v2

    invoke-virtual {v1, v2, v10}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/Statement;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object v1

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    goto :goto_d

    :cond_2a
    instance-of v2, v1, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredLocalVariable;

    if-eqz v2, :cond_2b

    move-object v2, v1

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredLocalVariable;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredLocalVariable;->localDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-nez v2, :cond_2b

    move-object v2, v1

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredLocalVariable;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredLocalVariable;->localDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    iput-object v2, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->assistNodeParent:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    invoke-direct {v0, v4}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->buildMoreCompletionEnclosingContext(Lorg/eclipse/jdt/internal/compiler/ast/Statement;)Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    move-result-object v2

    invoke-virtual {v1, v2, v10}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/Statement;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object v1

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    goto :goto_d

    :cond_2b
    invoke-direct/range {p0 .. p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->buildMoreCompletionEnclosingContext(Lorg/eclipse/jdt/internal/compiler/ast/Statement;)Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    move-result-object v2

    invoke-virtual {v1, v2, v10}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/Statement;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object v1

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    :goto_d
    return-void

    :pswitch_data_0
    .packed-switch 0x409
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x40d
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x416
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private buildMoreCompletionEnclosingContext(Lorg/eclipse/jdt/internal/compiler/ast/Statement;)Lorg/eclipse/jdt/internal/compiler/ast/Statement;
    .locals 7

    const/16 v0, 0x401

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->lastIndexOfElement(I)I

    move-result v0

    const/16 v1, 0x426

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->lastIndexOfElement(I)I

    move-result v1

    const/16 v2, 0x429

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->lastIndexOfElement(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    if-le v2, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    if-ne v1, v3, :cond_1

    goto :goto_0

    :cond_1
    if-eq v0, v3, :cond_2

    if-ge v1, v0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gez v0, :cond_3

    goto :goto_1

    :cond_3
    if-eq v0, v3, :cond_9

    iget-object v4, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementInfoStack:[I

    aget v4, v4, v0

    if-ne v4, v1, :cond_9

    iget-object v4, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementObjectInfoStack:[Ljava/lang/Object;

    aget-object v4, v4, v0

    if-eqz v4, :cond_9

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    instance-of v5, v3, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredLocalVariable;

    if-eqz v5, :cond_4

    iget-object v5, v3, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parent:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    instance-of v5, v5, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;

    if-eqz v5, :cond_4

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredLocalVariable;

    iget-object v5, v3, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredLocalVariable;->localDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-nez v5, :cond_4

    instance-of v5, p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v5, :cond_4

    move-object v5, p1

    check-cast v5, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isTrulyExpression()Z

    move-result v5

    if-eqz v5, :cond_4

    iget v5, v4, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget-object v6, v3, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredLocalVariable;->localDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    iget v6, v6, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    if-ge v5, v6, :cond_4

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/Statement;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v3, v6, p1}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredLocalVariable;->updatedStatement(ILjava/util/Set;)Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    move-result-object p1

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parent:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;

    iget-object v5, v3, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->statements:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredStatement;

    iget v6, v3, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->statementCount:I

    sub-int/2addr v6, v1

    iput v6, v3, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->statementCount:I

    aput-object v2, v5, v6

    iput-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    :cond_4
    instance-of v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/AND_AND_Expression;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    instance-of v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    if-eqz v3, :cond_5

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    move-object p1, v2

    :cond_5
    new-instance v2, Lorg/eclipse/jdt/internal/compiler/ast/IfStatement;

    iget v3, v4, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v5, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-direct {v2, v4, p1, v3, v5}, Lorg/eclipse/jdt/internal/compiler/ast/IfStatement;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/ast/Statement;II)V

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-nez v2, :cond_6

    return-object p1

    :cond_6
    :goto_2
    if-gez v0, :cond_7

    iput-object v2, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->enclosingNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    return-object v2

    :cond_7
    iget-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementInfoStack:[I

    aget p1, p1, v0

    if-ne p1, v1, :cond_8

    iget-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementObjectInfoStack:[Ljava/lang/Object;

    aget-object p1, p1, v0

    instance-of v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/InstanceOfExpression;

    if-eqz v3, :cond_8

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/InstanceOfExpression;

    new-instance v3, Lorg/eclipse/jdt/internal/compiler/ast/IfStatement;

    iget v4, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v5, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-direct {v3, p1, v2, v4, v5}, Lorg/eclipse/jdt/internal/compiler/ast/IfStatement;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/ast/Statement;II)V

    move-object v2, v3

    :cond_8
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_9
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0
.end method

.method private buildMoreGenericsCompletionContext(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Z)V
    .locals 7

    const/16 v0, 0x600

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementKind(I)I

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementInfo(I)I

    move-result v2

    const/16 v3, 0x410

    if-eq v1, v3, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementKind(II)I

    move-result v3

    const/16 v4, 0x41e

    const/4 v5, -0x5

    const/4 v6, 0x0

    if-eq v3, v4, :cond_3

    const/16 v0, 0x41f

    if-eq v3, v0, :cond_1

    goto :goto_0

    :cond_1
    iget p2, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->invocationType:I

    const/4 v0, -0x4

    if-eq p2, v0, :cond_2

    if-ne p2, v5, :cond_e

    :cond_2
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {p2, p1, v6}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/Statement;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    goto/16 :goto_2

    :cond_3
    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementInfo(II)I

    move-result v0

    if-nez v0, :cond_4

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {p2, p1, v6}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/Statement;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    goto/16 :goto_2

    :cond_4
    :goto_0
    const/4 v0, 0x4

    if-ne v2, v0, :cond_e

    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v0, :cond_e

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_d

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthStack:[I

    aget v0, v2, v0

    if-eqz v0, :cond_d

    if-eqz p2, :cond_5

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->consumeTypeArguments()V

    :cond_5
    invoke-virtual {p0, v6}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->getTypeReference(I)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object p1

    const/16 p2, 0x420

    if-ne v3, p2, :cond_6

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v6, p2}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->computeQualifiedGenericsFromRightSide(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;I[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;

    move-result-object p1

    :cond_6
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    instance-of v0, p2, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    if-eqz v0, :cond_7

    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnFieldType;

    invoke-direct {v0, p1, v6}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnFieldType;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Z)V

    invoke-virtual {p2, v0, v6}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    goto/16 :goto_2

    :cond_7
    const/16 v0, 0x408

    if-ne v3, v0, :cond_c

    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    if-le p2, v1, :cond_8

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    aget-object p2, v0, p2

    instance-of p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;

    if-eqz p2, :cond_8

    iget p2, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->invocationType:I

    if-ne p2, v5, :cond_8

    new-instance p2, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;

    invoke-direct {p2}, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;-><init>()V

    iput-object p1, p2, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    aget-object v0, v0, v1

    iput-object v0, p2, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;->enclosingInstance:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    goto :goto_1

    :cond_8
    new-instance p2, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;

    invoke-direct {p2}, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;-><init>()V

    iput-object p1, p2, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    :goto_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->isInsideReturn()Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/ast/ReturnStatement;

    iget v0, p2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v1, p2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-direct {p1, p2, v0, v1}, Lorg/eclipse/jdt/internal/compiler/ast/ReturnStatement;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/Expression;II)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->enclosingNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    invoke-virtual {p2, p1, v6}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/Statement;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    goto :goto_2

    :cond_9
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredLocalVariable;

    if-eqz v1, :cond_a

    move-object p1, v0

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredLocalVariable;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredLocalVariable;->localDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-nez p1, :cond_e

    move-object p1, v0

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredLocalVariable;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredLocalVariable;->localDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->enclosingNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    invoke-virtual {v0, p2, v6}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/Statement;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    goto :goto_2

    :cond_a
    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;

    if-eqz v1, :cond_b

    move-object p1, v0

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;->fieldDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-nez p1, :cond_e

    move-object p1, v0

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;->fieldDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->enclosingNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    invoke-virtual {v0, p2, v6}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/Statement;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    goto :goto_2

    :cond_b
    invoke-virtual {v0, p1, v6}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/Statement;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    goto :goto_2

    :cond_c
    invoke-virtual {p2, p1, v6}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/Statement;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    goto :goto_2

    :cond_d
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->enclosingMethod()Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;

    move-result-object p2

    if-eqz p2, :cond_e

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->enclosingMethod()Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;

    move-result-object p2

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->methodDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->isConstructor()Z

    move-result p2

    if-eqz p2, :cond_e

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {p2, p1, v6}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/Statement;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    :cond_e
    :goto_2
    return-void
.end method

.method private buildMoreTryStatementCompletionContext(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V
    .locals 20

    move-object/from16 v0, p0

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astLengthPtr:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_3

    iget v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    const/4 v5, 0x2

    if-le v4, v5, :cond_3

    iget-object v6, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    add-int/lit8 v7, v4, -0x1

    aget-object v7, v6, v7

    instance-of v7, v7, Lorg/eclipse/jdt/internal/compiler/ast/Block;

    if-eqz v7, :cond_3

    sub-int/2addr v4, v5

    aget-object v4, v6, v4

    instance-of v4, v4, Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    if-eqz v4, :cond_3

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;

    invoke-direct {v1}, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;-><init>()V

    iget v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    sub-int/2addr v4, v3

    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astLengthStack:[I

    iget v6, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astLengthPtr:I

    sub-int/2addr v6, v3

    aget v3, v5, v6

    add-int/lit8 v5, v3, 0x1

    new-array v6, v5, [Lorg/eclipse/jdt/internal/compiler/ast/Block;

    iput-object v6, v1, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->catchBlocks:[Lorg/eclipse/jdt/internal/compiler/ast/Block;

    new-array v5, v5, [Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    iput-object v5, v1, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->catchArguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    if-eqz v3, :cond_1

    move v7, v3

    :goto_0
    add-int/lit8 v8, v7, -0x1

    if-gtz v7, :cond_0

    goto :goto_1

    :cond_0
    iget-object v7, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    add-int/lit8 v9, v4, -0x1

    aget-object v10, v7, v4

    check-cast v10, Lorg/eclipse/jdt/internal/compiler/ast/Block;

    aput-object v10, v6, v8

    const/4 v11, 0x0

    iput-object v11, v10, Lorg/eclipse/jdt/internal/compiler/ast/Block;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    add-int/lit8 v4, v4, -0x2

    aget-object v7, v7, v9

    check-cast v7, Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    aput-object v7, v5, v8

    move v7, v8

    goto :goto_0

    :cond_1
    :goto_1
    new-instance v7, Lorg/eclipse/jdt/internal/compiler/ast/Block;

    invoke-direct {v7, v2}, Lorg/eclipse/jdt/internal/compiler/ast/Block;-><init>(I)V

    aput-object v7, v6, v3

    iget-object v6, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v7, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object v6, v6, v7

    instance-of v7, v6, Lorg/eclipse/jdt/internal/compiler/ast/UnionTypeReference;

    if-eqz v7, :cond_2

    move-object v12, v6

    check-cast v12, Lorg/eclipse/jdt/internal/compiler/ast/UnionTypeReference;

    new-instance v6, Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    sget-object v9, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->FAKE_ARGUMENT_NAME:[C

    const-wide/16 v10, 0x0

    const/4 v13, 0x0

    move-object v8, v6

    invoke-direct/range {v8 .. v13}, Lorg/eclipse/jdt/internal/compiler/ast/Argument;-><init>([CJLorg/eclipse/jdt/internal/compiler/ast/TypeReference;I)V

    aput-object v6, v5, v3

    goto :goto_2

    :cond_2
    new-instance v6, Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    sget-object v15, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->FAKE_ARGUMENT_NAME:[C

    const-wide/16 v16, 0x0

    const/16 v19, 0x0

    move-object v14, v6

    move-object/from16 v18, p1

    invoke-direct/range {v14 .. v19}, Lorg/eclipse/jdt/internal/compiler/ast/Argument;-><init>([CJLorg/eclipse/jdt/internal/compiler/ast/TypeReference;I)V

    aput-object v6, v5, v3

    :goto_2
    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    aget-object v3, v3, v4

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/ast/Block;

    iput-object v3, v1, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->tryBlock:Lorg/eclipse/jdt/internal/compiler/ast/Block;

    iput-object v1, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->assistNodeParent:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    invoke-virtual {v3, v1, v2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/Statement;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    goto :goto_4

    :cond_3
    const/4 v4, -0x1

    if-le v1, v4, :cond_5

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    if-lez v1, :cond_5

    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    sub-int/2addr v1, v3

    aget-object v1, v4, v1

    instance-of v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/Block;

    if-eqz v1, :cond_5

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;

    invoke-direct {v1}, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;-><init>()V

    iget v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    sub-int/2addr v4, v3

    new-array v5, v3, [Lorg/eclipse/jdt/internal/compiler/ast/Block;

    iput-object v5, v1, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->catchBlocks:[Lorg/eclipse/jdt/internal/compiler/ast/Block;

    new-array v3, v3, [Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    iput-object v3, v1, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->catchArguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    new-instance v6, Lorg/eclipse/jdt/internal/compiler/ast/Block;

    invoke-direct {v6, v2}, Lorg/eclipse/jdt/internal/compiler/ast/Block;-><init>(I)V

    aput-object v6, v5, v2

    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v6, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object v5, v5, v6

    instance-of v6, v5, Lorg/eclipse/jdt/internal/compiler/ast/UnionTypeReference;

    if-eqz v6, :cond_4

    move-object v11, v5

    check-cast v11, Lorg/eclipse/jdt/internal/compiler/ast/UnionTypeReference;

    new-instance v5, Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    sget-object v8, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->FAKE_ARGUMENT_NAME:[C

    const-wide/16 v9, 0x0

    const/4 v12, 0x0

    move-object v7, v5

    invoke-direct/range {v7 .. v12}, Lorg/eclipse/jdt/internal/compiler/ast/Argument;-><init>([CJLorg/eclipse/jdt/internal/compiler/ast/TypeReference;I)V

    aput-object v5, v3, v2

    goto :goto_3

    :cond_4
    new-instance v5, Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    sget-object v14, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->FAKE_ARGUMENT_NAME:[C

    const-wide/16 v15, 0x0

    const/16 v18, 0x0

    move-object v13, v5

    move-object/from16 v17, p1

    invoke-direct/range {v13 .. v18}, Lorg/eclipse/jdt/internal/compiler/ast/Argument;-><init>([CJLorg/eclipse/jdt/internal/compiler/ast/TypeReference;I)V

    aput-object v5, v3, v2

    :goto_3
    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    aget-object v3, v3, v4

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/ast/Block;

    iput-object v3, v1, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->tryBlock:Lorg/eclipse/jdt/internal/compiler/ast/Block;

    iput-object v1, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->assistNodeParent:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    invoke-virtual {v3, v1, v2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/Statement;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    goto :goto_4

    :cond_5
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-object/from16 v3, p1

    invoke-virtual {v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/Statement;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object v1

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    :goto_4
    return-void
.end method

.method private checkAndCreateModuleQualifiedAssistTypeReference([[C[C[J)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->isInUsesStatement()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnUsesQualifiedTypeReference;

    invoke-direct {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnUsesQualifiedTypeReference;-><init>([[C[C[J)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->isInProvidesStatement()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->isAfterWithClause()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnProvidesImplementationsQualifiedTypeReference;

    invoke-direct {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnProvidesImplementationsQualifiedTypeReference;-><init>([[C[C[J)V

    return-object v0

    :cond_1
    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnProvidesInterfacesQualifiedTypeReference;

    invoke-direct {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnProvidesInterfacesQualifiedTypeReference;-><init>([[C[C[J)V

    return-object v0

    :cond_2
    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnQualifiedTypeReference;

    invoke-direct {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnQualifiedTypeReference;-><init>([[C[C[J)V

    return-object v0
.end method

.method private checkAndCreateModuleSingleAssistTypeReference([CJ)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->isInUsesStatement()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnUsesSingleTypeReference;

    invoke-direct {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnUsesSingleTypeReference;-><init>([CJ)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->isInProvidesStatement()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->isAfterWithClause()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnProvidesImplementationsSingleTypeReference;

    invoke-direct {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnProvidesImplementationsSingleTypeReference;-><init>([CJ)V

    return-object v0

    :cond_1
    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnProvidesInterfacesSingleTypeReference;

    invoke-direct {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnProvidesInterfacesSingleTypeReference;-><init>([CJ)V

    return-object v0

    :cond_2
    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnSingleTypeReference;

    invoke-direct {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnSingleTypeReference;-><init>([CJ)V

    return-object v0
.end method

.method private checkClassInstanceCreation()Z
    .locals 10

    const/16 v0, 0x600

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementKind(I)I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x408

    if-ne v1, v3, :cond_8

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthStack:[I

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    aget v1, v1, v4

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsIdentifiersLengthStack:[I

    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsIdentifiersLengthPtr:I

    aget v4, v4, v5

    const/4 v5, 0x1

    if-ne v1, v4, :cond_7

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsLengthStack:[I

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsLengthPtr:I

    aget v1, v1, v4

    if-eqz v1, :cond_0

    goto/16 :goto_4

    :cond_0
    iget v1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->invocationType:I

    const/4 v4, -0x4

    const/16 v6, 0x409

    const/16 v7, 0x407

    if-ne v1, v4, :cond_4

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;

    invoke-direct {v1}, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;-><init>()V

    invoke-virtual {p0, v0, v5}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementKind(II)I

    move-result v4

    if-ne v4, v6, :cond_1

    invoke-virtual {p0, v0, v5}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementInfo(II)I

    move-result v0

    iget v4, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->bracketDepth:I

    if-ne v0, v4, :cond_1

    invoke-virtual {p0, v7}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(I)V

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->getTypeReference(I)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object v0

    invoke-virtual {p0, v7}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->getTypeReference(I)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object v0

    :goto_0
    instance-of v4, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnSingleTypeReference;

    if-eqz v4, :cond_2

    move-object v4, v0

    check-cast v4, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnSingleTypeReference;

    iput-boolean v5, v4, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnSingleTypeReference;->isConstructorType:Z

    goto :goto_1

    :cond_2
    instance-of v4, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnQualifiedTypeReference;

    if-eqz v4, :cond_3

    move-object v4, v0

    check-cast v4, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnQualifiedTypeReference;

    iput-boolean v5, v4, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnQualifiedTypeReference;->isConstructorType:Z

    :cond_3
    :goto_1
    iput-object v0, v1, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iput v4, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iput v4, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnExpressionStack(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)V

    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isOrphanCompletionNode:Z

    goto :goto_3

    :cond_4
    new-instance v1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;

    invoke-direct {v1}, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;-><init>()V

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthStack:[I

    iget v8, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    aget v4, v4, v8

    invoke-virtual {p0, v4}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnGenericsIdentifiersLengthStack(I)V

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnGenericsLengthStack(I)V

    invoke-virtual {p0, v0, v5}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementKind(II)I

    move-result v4

    if-ne v4, v6, :cond_5

    invoke-virtual {p0, v0, v5}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementInfo(II)I

    move-result v0

    iget v4, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->bracketDepth:I

    if-ne v0, v4, :cond_5

    invoke-virtual {p0, v7}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(I)V

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->getTypeReference(I)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object v0

    invoke-virtual {p0, v7}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->getTypeReference(I)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object v0

    :goto_2
    instance-of v4, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnSingleTypeReference;

    if-eqz v4, :cond_6

    move-object v4, v0

    check-cast v4, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnSingleTypeReference;

    iput-boolean v5, v4, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnSingleTypeReference;->isConstructorType:Z

    :cond_6
    iput-object v0, v1, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v6, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->qualifier:I

    aget-object v7, v4, v6

    iput-object v7, v1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;->enclosingInstance:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intStack:[I

    iget v8, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    add-int/lit8 v9, v8, -0x1

    iput v9, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v7, v7, v8

    iput v7, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v7, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iput v7, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    aput-object v1, v4, v6

    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isOrphanCompletionNode:Z

    :goto_3
    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    add-int/2addr v0, v5

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    :cond_7
    :goto_4
    return v5

    :cond_8
    return v2
.end method

.method private checkClassLiteralAccess()Z
    .locals 7

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lt v0, v2, :cond_4

    iget v3, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->previousToken:I

    if-ne v3, v2, :cond_4

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthStack:[I

    sub-int/2addr v0, v2

    aget v0, v3, v0

    if-gez v0, :cond_3

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->isAfterArrayType()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intStack:[I

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    add-int/lit8 v4, v3, -0x1

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v1, v1, v3

    :cond_0
    if-nez v1, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->getAnnotationsOnDimensions(I)[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    move-result-object v3

    :goto_0
    neg-int v0, v0

    invoke-static {v0, v1, v3}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->baseTypeReference(II[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intStack:[I

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    add-int/lit8 v5, v4, -0x1

    iput v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v6, v3, v4

    iput v6, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    if-nez v1, :cond_2

    add-int/lit8 v4, v4, -0x2

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v1, v3, v5

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, -0x2

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->endPosition:I

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    :goto_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierStack:[[C

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    aget-object v1, v1, v3

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPositionStack:[J

    add-int/lit8 v5, v3, -0x1

    iput v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    aget-wide v3, v4, v3

    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    sub-int/2addr v5, v2

    iput v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    new-instance v5, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnClassLiteralAccess;

    invoke-direct {v5, v3, v4, v0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnClassLiteralAccess;-><init>(JLorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V

    iput-object v1, v5, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnClassLiteralAccess;->completionIdentifier:[C

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    sub-int/2addr v0, v2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    iput-object v5, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isOrphanCompletionNode:Z

    return v2

    :cond_3
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->isAfterArrayType()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierStack:[[C

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    aget-object v0, v0, v3

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPositionStack:[J

    add-int/lit8 v5, v3, -0x1

    iput v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    aget-wide v3, v4, v3

    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    sub-int/2addr v5, v2

    iput v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthStack:[I

    aget v5, v6, v5

    invoke-virtual {p0, v5}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnGenericsIdentifiersLengthStack(I)V

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnGenericsLengthStack(I)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intStack:[I

    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    add-int/lit8 v6, v5, -0x1

    iput v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v1, v1, v5

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->getTypeReference(I)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object v1

    new-instance v5, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnClassLiteralAccess;

    invoke-direct {v5, v3, v4, v1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnClassLiteralAccess;-><init>(JLorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V

    iput-object v0, v5, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnClassLiteralAccess;->completionIdentifier:[C

    iput-object v5, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isOrphanCompletionNode:Z

    return v2

    :cond_4
    return v1
.end method

.method private checkInstanceofKeyword()Z
    .locals 8

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isInsideMethod()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x600

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementKind(I)I

    move-result v0

    const/16 v1, 0x401

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->indexOfAssistIdentifier()I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    if-le v2, v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthStack:[I

    aget v1, v1, v2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthStack:[I

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    aget v3, v3, v4

    sub-int/2addr v1, v3

    add-int/2addr v1, v0

    add-int/2addr v1, v2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierStack:[[C

    aget-object v0, v0, v1

    array-length v3, v0

    if-lez v3, :cond_0

    sget-object v3, Lorg/eclipse/jdt/internal/codeassist/impl/Keywords;->INSTANCEOF:[C

    invoke-static {v0, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->prefixEquals([C[C)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnKeyword3;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierStack:[[C

    aget-object v4, v4, v1

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPositionStack:[J

    aget-wide v6, v5, v1

    invoke-direct {v0, v4, v6, v7, v3}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnKeyword3;-><init>([CJ[C)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isOrphanCompletionNode:Z

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private checkInvocation()Z
    .locals 11

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    aget-object v0, v2, v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const/16 v2, 0x600

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementKind(I)I

    move-result v3

    const/16 v4, 0x403

    const/4 v5, 0x0

    if-ne v3, v4, :cond_18

    iget-object v3, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    const/4 v4, 0x1

    if-ne v0, v3, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->isEmptyNameCompletion()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v4

    goto :goto_1

    :cond_1
    move v0, v5

    :goto_1
    if-nez v0, :cond_3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->indexOfAssistIdentifier()I

    move-result v3

    if-ltz v3, :cond_2

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierStack:[[C

    iget v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    aget-object v3, v3, v6

    array-length v3, v3

    if-nez v3, :cond_2

    move v3, v4

    goto :goto_2

    :cond_2
    move v3, v5

    :goto_2
    if-eqz v3, :cond_18

    goto :goto_3

    :cond_3
    move v3, v5

    :goto_3
    if-eqz v0, :cond_4

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    sub-int/2addr v0, v4

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthStack:[I

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    aget v6, v0, v3

    sub-int/2addr v6, v4

    aput v6, v0, v3

    goto :goto_4

    :cond_4
    if-eqz v3, :cond_5

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    sub-int/2addr v0, v4

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    sub-int/2addr v0, v4

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    :cond_5
    :goto_4
    invoke-virtual {p0, v2, v4}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementInfo(II)I

    move-result v0

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementInfo(I)I

    move-result v3

    iget v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    sub-int/2addr v6, v3

    add-int/lit8 v7, v3, 0x1

    if-lez v6, :cond_7

    new-array v8, v6, [Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-static {v1, v7, v8, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    sub-int/2addr v1, v6

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    :goto_5
    if-gtz v6, :cond_6

    move-object v1, v8

    goto :goto_6

    :cond_6
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthStack:[I

    iget v7, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    add-int/lit8 v9, v7, -0x1

    iput v9, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    aget v1, v1, v7

    sub-int/2addr v6, v1

    goto :goto_5

    :cond_7
    :goto_6
    const/4 v6, -0x4

    const/4 v7, -0x2

    const/4 v8, 0x2

    const/4 v9, -0x5

    const/4 v10, -0x1

    if-eq v0, v6, :cond_11

    if-eq v0, v9, :cond_11

    new-instance v6, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnMessageSend;

    invoke-direct {v6}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnMessageSend;-><init>()V

    iput-object v1, v6, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    const/4 v1, -0x3

    if-eq v0, v1, :cond_b

    if-eq v0, v7, :cond_a

    if-eq v0, v10, :cond_9

    if-eqz v0, :cond_8

    goto/16 :goto_a

    :cond_8
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    aget-object v0, v0, v3

    iput-object v0, v6, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    goto :goto_a

    :cond_9
    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/ast/ThisReference;->implicitThis()Lorg/eclipse/jdt/internal/compiler/ast/ThisReference;

    move-result-object v0

    iput-object v0, v6, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    goto :goto_a

    :cond_a
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/SuperReference;

    invoke-direct {v0, v5, v5}, Lorg/eclipse/jdt/internal/compiler/ast/SuperReference;-><init>(II)V

    iput-object v0, v6, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    goto :goto_a

    :cond_b
    :goto_7
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    if-ltz v0, :cond_d

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthStack:[I

    aget v1, v1, v0

    if-ltz v1, :cond_c

    goto :goto_8

    :cond_c
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    goto :goto_7

    :cond_d
    :goto_8
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    sub-int/2addr v1, v4

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsPtr:I

    if-le v1, v10, :cond_e

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsLengthPtr:I

    if-le v1, v10, :cond_e

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsLengthStack:[I

    aget v1, v3, v1

    if-lez v1, :cond_e

    sub-int/2addr v0, v4

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    goto :goto_9

    :cond_e
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthStack:[I

    aget v3, v1, v0

    sub-int/2addr v3, v4

    aput v3, v1, v0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->typeAnnotationLengthStack:[I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->typeAnnotationLengthPtr:I

    add-int/lit8 v3, v1, -0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->typeAnnotationLengthPtr:I

    aget v0, v0, v1

    if-eqz v0, :cond_f

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->typeAnnotationStack:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->typeAnnotationPtr:I

    sub-int/2addr v3, v0

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->typeAnnotationPtr:I

    add-int/2addr v3, v4

    new-array v7, v0, [Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    invoke-static {v1, v3, v7, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    aget-object v3, v7, v5

    sub-int/2addr v0, v4

    aget-object v0, v7, v0

    invoke-virtual {v1, v3, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->misplacedTypeAnnotations(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)V

    :cond_f
    :goto_9
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->getUnspecifiedReference()Lorg/eclipse/jdt/internal/compiler/ast/NameReference;

    move-result-object v0

    iput-object v0, v6, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    :goto_a
    invoke-virtual {p0, v2, v8}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementInfo(II)I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierStack:[[C

    aget-object v1, v1, v0

    iput-object v1, v6, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->selector:[C

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    if-ltz v1, :cond_10

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthStack:[I

    aget v2, v2, v1

    if-ne v2, v4, :cond_10

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    sub-int/2addr v2, v4

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    sub-int/2addr v1, v4

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    :cond_10
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPositionStack:[J

    aget-wide v0, v1, v0

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, v6, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->cursorLocation:I

    iput v0, v6, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iput-object v6, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    add-int/2addr v0, v4

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    iput-boolean v4, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isOrphanCompletionNode:Z

    return v4

    :cond_11
    invoke-virtual {p0, v2, v8}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementInfo(II)I

    move-result v2

    if-eq v2, v10, :cond_15

    if-ne v2, v7, :cond_12

    goto :goto_b

    :cond_12
    new-instance v2, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnQualifiedAllocationExpression;

    invoke-direct {v2}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnQualifiedAllocationExpression;-><init>()V

    iput-object v1, v2, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsLengthPtr:I

    if-gez v1, :cond_13

    invoke-virtual {p0, v5}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnGenericsLengthStack(I)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthStack:[I

    iget v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    aget v1, v1, v6

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnGenericsIdentifiersLengthStack(I)V

    :cond_13
    invoke-super {p0, v5}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->getTypeReference(I)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object v1

    iput-object v1, v2, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-ne v0, v9, :cond_14

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    aget-object v0, v0, v3

    iput-object v0, v2, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;->enclosingInstance:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    :cond_14
    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->cursorLocation:I

    add-int/lit8 v1, v0, 0x1

    iput v1, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iput v0, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iput-object v2, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    add-int/2addr v0, v4

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    iput-boolean v4, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isOrphanCompletionNode:Z

    return v4

    :cond_15
    :goto_b
    new-instance v5, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnExplicitConstructorCall;

    if-ne v2, v10, :cond_16

    const/4 v8, 0x3

    :cond_16
    invoke-direct {v5, v8}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnExplicitConstructorCall;-><init>(I)V

    iput-object v1, v5, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-ne v0, v9, :cond_17

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    aget-object v0, v0, v3

    iput-object v0, v5, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->qualification:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    :cond_17
    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->cursorLocation:I

    add-int/lit8 v1, v0, 0x1

    iput v1, v5, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iput v0, v5, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iput-object v5, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    add-int/2addr v0, v4

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    iput-boolean v4, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isOrphanCompletionNode:Z

    return v4

    :cond_18
    return v5
.end method

.method private checkKeyword()Z
    .locals 13

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUnit;

    const/4 v2, 0x0

    if-eqz v1, :cond_b

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUnit;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUnit;->unitDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->isModuleInfo()Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->indexOfAssistIdentifier()I

    move-result v1

    const/4 v3, -0x1

    if-le v1, v3, :cond_b

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthStack:[I

    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    aget v4, v4, v5

    sub-int/2addr v3, v4

    add-int/2addr v3, v1

    const/4 v1, 0x1

    add-int/2addr v3, v1

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierStack:[[C

    aget-object v4, v4, v3

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPositionStack:[J

    aget-wide v6, v5, v3

    const/16 v3, 0x32

    new-array v3, v3, [[C

    iget v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUnit;->typeCount:I

    if-nez v5, :cond_2

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->compilationUnit:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->isPackageInfo()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->compilationUnit:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->currentPackage:Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    if-eqz v5, :cond_2

    :cond_1
    iget v5, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->lastModifiers:I

    if-nez v5, :cond_2

    sget-object v5, Lorg/eclipse/jdt/internal/codeassist/impl/Keywords;->IMPORT:[C

    aput-object v5, v3, v2

    move v5, v1

    goto :goto_0

    :cond_2
    move v5, v2

    :goto_0
    iget v8, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUnit;->typeCount:I

    if-nez v8, :cond_3

    iget v8, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUnit;->importCount:I

    if-nez v8, :cond_3

    iget v8, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->lastModifiers:I

    if-nez v8, :cond_3

    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->compilationUnit:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iget-object v8, v8, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->currentPackage:Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    if-nez v8, :cond_3

    add-int/lit8 v8, v5, 0x1

    sget-object v9, Lorg/eclipse/jdt/internal/codeassist/impl/Keywords;->PACKAGE:[C

    aput-object v9, v3, v5

    move v5, v8

    :cond_3
    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->compilationUnit:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->isPackageInfo()Z

    move-result v8

    if-nez v8, :cond_a

    iget v8, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->lastModifiers:I

    and-int/2addr v8, v1

    if-nez v8, :cond_6

    move v9, v1

    move v8, v2

    :goto_1
    iget v10, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUnit;->typeCount:I

    if-lt v8, v10, :cond_4

    if-eqz v9, :cond_6

    add-int/lit8 v0, v5, 0x1

    sget-object v8, Lorg/eclipse/jdt/internal/codeassist/impl/Keywords;->PUBLIC:[C

    aput-object v8, v3, v5

    move v5, v0

    goto :goto_2

    :cond_4
    iget-object v10, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUnit;->types:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    aget-object v10, v10, v8

    iget-object v10, v10, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->typeDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget v10, v10, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->modifiers:I

    and-int/2addr v10, v1

    if-eqz v10, :cond_5

    move v9, v2

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->lastModifiers:I

    and-int/lit16 v8, v0, 0x400

    if-nez v8, :cond_7

    and-int/lit8 v8, v0, 0x10

    if-nez v8, :cond_7

    add-int/lit8 v8, v5, 0x1

    sget-object v9, Lorg/eclipse/jdt/internal/codeassist/impl/Keywords;->ABSTRACT:[C

    aput-object v9, v3, v5

    move v5, v8

    :cond_7
    and-int/lit16 v8, v0, 0x400

    if-nez v8, :cond_8

    and-int/lit8 v8, v0, 0x10

    if-nez v8, :cond_8

    add-int/lit8 v8, v5, 0x1

    sget-object v9, Lorg/eclipse/jdt/internal/codeassist/impl/Keywords;->FINAL:[C

    aput-object v9, v3, v5

    move v5, v8

    :cond_8
    add-int/lit8 v8, v5, 0x1

    sget-object v9, Lorg/eclipse/jdt/internal/codeassist/impl/Keywords;->CLASS:[C

    aput-object v9, v3, v5

    iget-object v9, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-wide v9, v9, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->complianceLevel:J

    const-wide/32 v11, 0x310000

    cmp-long v9, v9, v11

    if-ltz v9, :cond_9

    add-int/lit8 v5, v5, 0x2

    sget-object v9, Lorg/eclipse/jdt/internal/codeassist/impl/Keywords;->ENUM:[C

    aput-object v9, v3, v8

    goto :goto_3

    :cond_9
    move v5, v8

    :goto_3
    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_a

    add-int/lit8 v0, v5, 0x1

    sget-object v8, Lorg/eclipse/jdt/internal/codeassist/impl/Keywords;->INTERFACE:[C

    aput-object v8, v3, v5

    move v5, v0

    :cond_a
    if-eqz v5, :cond_b

    new-array v0, v5, [[C

    invoke-static {v3, v2, v0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v2, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnKeyword2;

    invoke-direct {v2, v4, v6, v7, v0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnKeyword2;-><init>([CJ[[C)V

    iput-object v2, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v0, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isOrphanCompletionNode:Z

    return v1

    :cond_b
    return v2
.end method

.method private checkLabelStatement()Z
    .locals 15

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isInsideMethod()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isInsideFieldInitialization()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/16 v0, 0x600

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementKind(I)I

    move-result v2

    const/16 v3, 0x422

    if-eq v2, v3, :cond_2

    const/16 v4, 0x423

    if-eq v2, v4, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->indexOfAssistIdentifier()I

    move-result v4

    if-eqz v4, :cond_3

    return v1

    :cond_3
    iget v4, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->labelPtr:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    new-array v4, v4, [[C

    move v8, v1

    move v6, v2

    move v7, v5

    :goto_1
    if-eqz v6, :cond_6

    const/16 v9, 0x203

    if-ne v6, v9, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p0, v0, v7}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementKind(II)I

    move-result v6

    const/16 v9, 0x424

    if-ne v6, v9, :cond_5

    invoke-virtual {p0, v0, v7}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementInfo(II)I

    move-result v9

    add-int/lit8 v10, v8, 0x1

    iget-object v11, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->labelStack:[[C

    aget-object v9, v11, v9

    aput-object v9, v4, v8

    move v8, v10

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    new-array v14, v8, [[C

    invoke-static {v4, v1, v14, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPositionStack:[J

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    aget-wide v6, v0, v1

    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnBranchStatementLabel;

    if-ne v2, v3, :cond_7

    move v10, v5

    goto :goto_3

    :cond_7
    const/4 v1, 0x2

    move v10, v1

    :goto_3
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierStack:[[C

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    aget-object v11, v1, v2

    const/16 v1, 0x20

    ushr-long v1, v6, v1

    long-to-int v12, v1

    long-to-int v13, v6

    move-object v9, v0

    invoke-direct/range {v9 .. v14}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnBranchStatementLabel;-><init>(I[CII[[C)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    add-int/2addr v0, v5

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    iput-boolean v5, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isOrphanCompletionNode:Z

    return v5
.end method

.method private checkMemberAccess()Z
    .locals 4

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->previousToken:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->qualifier:I

    const/4 v3, -0x1

    if-le v0, v3, :cond_1

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    if-ne v3, v0, :cond_1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    if-le v0, v2, :cond_0

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthStack:[I

    sub-int/2addr v0, v2

    aget v0, v3, v0

    if-gez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->pushCompletionOnMemberAccessOnExpressionStack(Z)V

    return v2

    :cond_1
    return v1
.end method

.method private checkMemberValueName()Z
    .locals 7

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->indexOfAssistIdentifier()I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x600

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementKind(I)I

    move-result v0

    const/16 v2, 0x421

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    const/4 v2, -0x1

    if-le v0, v2, :cond_2

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    if-le v3, v2, :cond_2

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthStack:[I

    aget v2, v2, v3

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierStack:[[C

    aget-object v1, v1, v0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPositionStack:[J

    add-int/lit8 v5, v0, -0x1

    iput v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    aget-wide v5, v2, v0

    sub-int/2addr v3, v4

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    long-to-int v0, v5

    const/16 v2, 0x20

    ushr-long v2, v5, v2

    long-to-int v2, v2

    new-instance v3, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnMemberValueName;

    invoke-direct {v3, v1, v2, v0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnMemberValueName;-><init>([CII)V

    iput-object v3, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v0, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    add-int/2addr v0, v4

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    iput-boolean v4, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isOrphanCompletionNode:Z

    return v4

    :cond_2
    return v1
.end method

.method private checkModuleInfoConstructs()Z
    .locals 8

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isInsideModuleInfo()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->indexOfAssistIdentifier()I

    move-result v0

    const/4 v2, -0x1

    if-gt v0, v2, :cond_1

    return v1

    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    instance-of v3, v2, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModule;

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModule;

    invoke-direct {p0, v2, v0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->checkModuleInfoKeyword(Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModule;I)Z

    move-result v0

    if-eqz v0, :cond_8

    return v4

    :cond_2
    sget-object v2, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser$ModuleKeyword;->NOT_A_KEYWORD:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser$ModuleKeyword;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->isInModuleStatements()Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x430

    invoke-direct {p0, v3}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->foundToken(I)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser$ModuleKeyword;->TO:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser$ModuleKeyword;

    goto :goto_0

    :cond_3
    move-object v3, v2

    :goto_0
    const/16 v5, 0x431

    invoke-direct {p0, v5}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->foundToken(I)Z

    move-result v5

    if-eqz v5, :cond_5

    sget-object v3, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser$ModuleKeyword;->PROVIDES_WITH:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser$ModuleKeyword;

    goto :goto_1

    :cond_4
    move-object v3, v2

    :cond_5
    :goto_1
    if-ne v3, v2, :cond_6

    return v1

    :cond_6
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthStack:[I

    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    aget v2, v2, v5

    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    sub-int/2addr v5, v2

    add-int/2addr v5, v0

    add-int/2addr v5, v4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierStack:[[C

    aget-object v0, v0, v5

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPositionStack:[J

    aget-wide v5, v2, v5

    invoke-direct {p0, v3}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->getModuleKeywords(Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser$ModuleKeyword;)[[C

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    instance-of v7, v3, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredPackageVisibilityStatement;

    if-eqz v7, :cond_7

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredPackageVisibilityStatement;

    new-instance v7, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnKeywordModule2;

    invoke-direct {v7, v0, v5, v6, v2}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnKeywordModule2;-><init>([CJ[[C)V

    invoke-virtual {v3, v7, v1}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredPackageVisibilityStatement;->add(Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    return v4

    :cond_7
    instance-of v7, v3, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredProvidesStatement;

    if-eqz v7, :cond_8

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredProvidesStatement;

    new-instance v7, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnKeyword1;

    invoke-direct {v7, v0, v5, v6, v2}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnKeyword1;-><init>([CJ[[C)V

    invoke-virtual {v3, v7, v1}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredProvidesStatement;->add(Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    return v4

    :cond_8
    return v1
.end method

.method private checkModuleInfoKeyword(Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModule;I)Z
    .locals 6

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->getKeyword()Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser$ModuleKeyword;

    move-result-object v0

    sget-object v1, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser$ModuleKeyword;->NOT_A_KEYWORD:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser$ModuleKeyword;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthStack:[I

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    aget v1, v1, v3

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    sub-int/2addr v3, v1

    add-int/2addr v3, p2

    const/4 p2, 0x1

    add-int/2addr v3, p2

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierStack:[[C

    aget-object v1, v1, v3

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPositionStack:[J

    aget-wide v3, v4, v3

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->getModuleKeywords(Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser$ModuleKeyword;)[[C

    move-result-object v0

    new-instance v5, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnKeywordModuleInfo;

    invoke-direct {v5, v1, v3, v4, v0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnKeywordModuleInfo;-><init>([CJ[[C)V

    invoke-virtual {p1, v5, v2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModule;->add(Lorg/eclipse/jdt/internal/compiler/ast/ExportsStatement;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    return p2
.end method

.method private checkNameCompletion()Z
    .locals 3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->getUnspecifiedReferenceOptimized()Lorg/eclipse/jdt/internal/compiler/ast/NameReference;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isOrphanCompletionNode:Z

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->hasUnusedModifiers:Z

    if-eqz v1, :cond_0

    instance-of v1, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnSingleNameReference;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnSingleNameReference;

    iput-boolean v2, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnSingleNameReference;->isPrecededByModifiers:Z

    :cond_0
    return v2
.end method

.method private checkParemeterizedMethodName()Z
    .locals 9

    const/16 v0, 0x600

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementKind(I)I

    move-result v1

    const/16 v2, 0x41e

    const/4 v3, 0x0

    if-ne v1, v2, :cond_4

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementInfo(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    const/4 v2, -0x1

    if-le v0, v2, :cond_4

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsLengthPtr:I

    if-le v4, v2, :cond_4

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsIdentifiersLengthPtr:I

    if-ne v4, v2, :cond_4

    iget v4, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->invocationType:I

    const/4 v5, -0x3

    const/16 v6, 0x20

    if-eq v4, v5, :cond_2

    const/4 v5, -0x2

    if-eq v4, v5, :cond_1

    if-eq v4, v2, :cond_0

    if-eqz v4, :cond_0

    goto/16 :goto_0

    :cond_0
    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    if-le v4, v2, :cond_3

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthStack:[I

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    aget v2, v2, v4

    if-ne v2, v1, :cond_3

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierStack:[[C

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    aget-object v2, v2, v4

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPositionStack:[J

    add-int/lit8 v7, v4, -0x1

    iput v7, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    aget-wide v4, v5, v4

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    long-to-int v0, v4

    ushr-long/2addr v4, v6

    long-to-int v4, v4

    new-instance v5, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnMessageSendName;

    invoke-direct {v5, v2, v4, v0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnMessageSendName;-><init>([CII)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsLengthStack:[I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsLengthPtr:I

    add-int/lit8 v4, v2, -0x1

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsLengthPtr:I

    aget v0, v0, v2

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsPtr:I

    sub-int/2addr v2, v0

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsPtr:I

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    add-int/2addr v2, v1

    new-array v6, v0, [Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iput-object v6, v5, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-static {v4, v2, v6, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    add-int/lit8 v4, v2, -0x1

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    aget-object v0, v0, v2

    iput-object v0, v5, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    goto/16 :goto_1

    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierStack:[[C

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    aget-object v2, v2, v4

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPositionStack:[J

    add-int/lit8 v7, v4, -0x1

    iput v7, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    aget-wide v4, v5, v4

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    long-to-int v0, v4

    ushr-long/2addr v4, v6

    long-to-int v4, v4

    new-instance v5, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnMessageSendName;

    invoke-direct {v5, v2, v4, v0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnMessageSendName;-><init>([CII)V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsLengthStack:[I

    iget v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsLengthPtr:I

    add-int/lit8 v7, v6, -0x1

    iput v7, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsLengthPtr:I

    aget v2, v2, v6

    iget v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsPtr:I

    sub-int/2addr v6, v2

    iput v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsPtr:I

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    add-int/2addr v6, v1

    new-array v8, v2, [Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iput-object v8, v5, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-static {v7, v6, v8, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    sub-int/2addr v2, v1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    new-instance v2, Lorg/eclipse/jdt/internal/compiler/ast/SuperReference;

    invoke-direct {v2, v4, v0}, Lorg/eclipse/jdt/internal/compiler/ast/SuperReference;-><init>(II)V

    iput-object v2, v5, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    goto :goto_1

    :cond_2
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    if-lez v2, :cond_3

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierStack:[[C

    aget-object v4, v4, v2

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPositionStack:[J

    add-int/lit8 v7, v2, -0x1

    iput v7, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    aget-wide v7, v5, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    long-to-int v0, v7

    ushr-long v5, v7, v6

    long-to-int v2, v5

    new-instance v5, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnMessageSendName;

    invoke-direct {v5, v4, v2, v0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnMessageSendName;-><init>([CII)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsLengthStack:[I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsLengthPtr:I

    add-int/lit8 v4, v2, -0x1

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsLengthPtr:I

    aget v0, v0, v2

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsPtr:I

    sub-int/2addr v2, v0

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsPtr:I

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    add-int/2addr v2, v1

    new-array v6, v0, [Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iput-object v6, v5, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-static {v4, v2, v6, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->getUnspecifiedReference()Lorg/eclipse/jdt/internal/compiler/ast/NameReference;

    move-result-object v0

    iput-object v0, v5, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_4

    invoke-virtual {p0, v5}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnExpressionStack(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)V

    iput-object v5, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v0, v5, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isOrphanCompletionNode:Z

    return v1

    :cond_4
    return v3
.end method

.method private checkParemeterizedType()Z
    .locals 9

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-le v0, v2, :cond_2

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsLengthPtr:I

    if-le v3, v2, :cond_2

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsIdentifiersLengthPtr:I

    if-le v4, v2, :cond_2

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthStack:[I

    aget v5, v5, v0

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsIdentifiersLengthStack:[I

    aget v6, v6, v4

    const/4 v7, 0x1

    if-ne v5, v6, :cond_1

    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsLengthStack:[I

    aget v3, v8, v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsPtr:I

    if-le v3, v2, :cond_2

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    aget-object v2, v2, v3

    instance-of v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v2, :cond_2

    add-int/2addr v6, v7

    sub-int/2addr v4, v7

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsIdentifiersLengthPtr:I

    sub-int/2addr v0, v7

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    invoke-virtual {p0, v1, v5, v6}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->getAssistTypeReferenceForGenericType(III)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    add-int/2addr v0, v7

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    iput-boolean v7, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isOrphanCompletionNode:Z

    return v7

    :cond_1
    :goto_0
    sub-int/2addr v4, v7

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsIdentifiersLengthPtr:I

    sub-int/2addr v0, v7

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    invoke-virtual {p0, v1, v5, v6}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->getAssistTypeReferenceForGenericType(III)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    add-int/2addr v0, v7

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    iput-boolean v7, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isOrphanCompletionNode:Z

    return v7

    :cond_2
    return v1
.end method

.method private checkRecoveredMethod()Z
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    instance-of v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->indexOfAssistIdentifier()I

    move-result v0

    if-gez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastErrorEndPosition:I

    iget v2, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->cursorLocation:I

    if-gt v0, v2, :cond_1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget-object v3, v2, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->lineEnds:[I

    iget v2, v2, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->linePtr:I

    invoke-static {v0, v3, v1, v2}, Lorg/eclipse/jdt/internal/compiler/util/Util;->getLineNumber(I[III)I

    move-result v0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    move-object v3, v2

    check-cast v3, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;

    iget v3, v3, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;->completedIdentifierStart:I

    iget-object v4, v2, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->lineEnds:[I

    iget v2, v2, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->linePtr:I

    invoke-static {v3, v4, v1, v2}, Lorg/eclipse/jdt/internal/compiler/util/Util;->getLineNumber(I[III)I

    move-result v2

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->foundOpeningBrace:Z

    if-nez v0, :cond_2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastIgnoredToken:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->getTypeReference(I)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isOrphanCompletionNode:Z

    :cond_2
    return v1
.end method

.method private checkRecoveredType()Z
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    instance-of v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->indexOfAssistIdentifier()I

    move-result v0

    if-gez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastErrorEndPosition:I

    iget v2, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->cursorLocation:I

    if-gt v0, v2, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->lastMemberEnd()I

    move-result v0

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastErrorEndPosition:I

    if-ge v0, v2, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->lineEnds:[I

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->linePtr:I

    invoke-static {v2, v3, v1, v0}, Lorg/eclipse/jdt/internal/compiler/util/Util;->getLineNumber(I[III)I

    move-result v0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    move-object v3, v2

    check-cast v3, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;

    iget v3, v3, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;->completedIdentifierStart:I

    iget-object v4, v2, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->lineEnds:[I

    iget v2, v2, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->linePtr:I

    invoke-static {v3, v4, v1, v2}, Lorg/eclipse/jdt/internal/compiler/util/Util;->getLineNumber(I[III)I

    move-result v2

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    iget-boolean v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->foundOpeningBrace:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsIdentifiersLengthPtr:I

    if-gez v0, :cond_2

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    const/4 v4, -0x1

    if-gt v2, v4, :cond_3

    :cond_2
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsIdentifiersLengthStack:[I

    aget v0, v2, v0

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    if-gt v0, v2, :cond_4

    :cond_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthStack:[I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    aget v0, v0, v2

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnGenericsIdentifiersLengthStack(I)V

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnGenericsLengthStack(I)V

    :cond_4
    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->getTypeReference(I)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    add-int/2addr v0, v3

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    iput-boolean v3, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isOrphanCompletionNode:Z

    return v3

    :cond_5
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->typeDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->superclass:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-nez v0, :cond_6

    const/16 v0, 0x600

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementKind(I)I

    move-result v0

    const/16 v2, 0x41d

    if-ne v0, v2, :cond_6

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeClassOrInterfaceName()V

    const/16 v0, 0x405

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(I)V

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->getTypeReference(I)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    add-int/2addr v0, v3

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    iput-boolean v3, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isOrphanCompletionNode:Z

    return v3

    :cond_6
    return v1
.end method

.method private classHeaderExtendsOrImplements(Z)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    if-eqz v2, :cond_3

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentToken:I

    const/16 v3, 0x16

    if-ne v2, v3, :cond_3

    iget v2, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->cursorLocation:I

    add-int/lit8 v3, v2, 0x1

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v5, v4, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    if-lt v3, v5, :cond_3

    iget v3, v4, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    if-ge v2, v3, :cond_3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushIdentifier()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->indexOfAssistIdentifier()I

    move-result v2

    const/4 v3, -0x1

    if-le v2, v3, :cond_3

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthStack:[I

    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    aget v4, v4, v5

    sub-int/2addr v3, v4

    add-int/2addr v3, v2

    add-int/2addr v3, v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    iget-boolean v4, v2, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->foundOpeningBrace:Z

    if-nez v4, :cond_3

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->typeDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-nez p1, :cond_2

    const/16 p1, 0x32

    new-array p1, p1, [[C

    iget-object v4, v2, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-nez v4, :cond_1

    iget-object v4, v2, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->superclass:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-nez v4, :cond_0

    sget-object v4, Lorg/eclipse/jdt/internal/codeassist/impl/Keywords;->EXTENDS:[C

    aput-object v4, p1, v0

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, v0

    :goto_0
    add-int/lit8 v5, v4, 0x1

    sget-object v6, Lorg/eclipse/jdt/internal/codeassist/impl/Keywords;->IMPLEMENTS:[C

    aput-object v6, p1, v4

    goto :goto_1

    :cond_1
    move v5, v0

    :goto_1
    new-array v4, v5, [[C

    invoke-static {p1, v0, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-lez v5, :cond_3

    new-instance p1, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnKeyword1;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierStack:[[C

    aget-object v0, v0, v3

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPositionStack:[J

    aget-wide v6, v5, v3

    invoke-direct {p1, v0, v6, v7, v4}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnKeyword1;-><init>([CJ[[C)V

    iput-object p1, v2, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->superclass:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    add-int/2addr p1, v1

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    goto :goto_2

    :cond_2
    iget-object p1, v2, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-nez p1, :cond_3

    new-instance p1, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnKeyword1;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierStack:[[C

    aget-object v4, v4, v3

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPositionStack:[J

    aget-wide v6, v5, v3

    sget-object v3, Lorg/eclipse/jdt/internal/codeassist/impl/Keywords;->EXTENDS:[C

    invoke-direct {p1, v4, v6, v7, v3}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnKeyword1;-><init>([CJ[C)V

    new-array v3, v1, [Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aput-object p1, v3, v0

    iput-object v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget-object v0, v3, v0

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    add-int/2addr p1, v1

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    :cond_3
    :goto_2
    return-void
.end method

.method private foundToken(I)Z
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementPtr:I

    :goto_0
    const/4 v1, -0x1

    if-gt v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementKindStack:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private getKeyword()Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser$ModuleKeyword;
    .locals 2

    sget-object v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser$ModuleKeyword;->FIRST_ALL:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser$ModuleKeyword;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->isInModuleStatements()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x430

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->foundToken(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser$ModuleKeyword;->TO:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser$ModuleKeyword;

    goto :goto_0

    :cond_0
    const/16 v0, 0x431

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->foundToken(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser$ModuleKeyword;->PROVIDES_WITH:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser$ModuleKeyword;

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser$ModuleKeyword;->NOT_A_KEYWORD:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser$ModuleKeyword;

    :cond_2
    :goto_0
    return-object v0
.end method

.method private getModuleKeywords(Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser$ModuleKeyword;)[[C
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser$ModuleKeyword;->TO:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser$ModuleKeyword;

    if-ne p1, v0, :cond_0

    sget-object p1, Lorg/eclipse/jdt/internal/codeassist/impl/Keywords;->TO:[C

    filled-new-array {p1}, [[C

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser$ModuleKeyword;->PROVIDES_WITH:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser$ModuleKeyword;

    if-ne p1, v0, :cond_1

    sget-object p1, Lorg/eclipse/jdt/internal/codeassist/impl/Keywords;->WITH:[C

    filled-new-array {p1}, [[C

    move-result-object p1

    return-object p1

    :cond_1
    sget-object p1, Lorg/eclipse/jdt/internal/codeassist/impl/Keywords;->EXPORTS:[C

    sget-object v0, Lorg/eclipse/jdt/internal/codeassist/impl/Keywords;->OPENS:[C

    sget-object v1, Lorg/eclipse/jdt/internal/codeassist/impl/Keywords;->REQUIRES:[C

    sget-object v2, Lorg/eclipse/jdt/internal/codeassist/impl/Keywords;->PROVIDES:[C

    sget-object v3, Lorg/eclipse/jdt/internal/codeassist/impl/Keywords;->USES:[C

    filled-new-array {p1, v0, v1, v2, v3}, [[C

    move-result-object p1

    return-object p1
.end method

.method private initializeForBlockStatements()V
    .locals 3

    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->previousToken:I

    iput v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->previousIdentifierPtr:I

    iput v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->invocationType:I

    iput v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->qualifier:I

    const/16 v0, 0x419

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popUntilElement(I)V

    const/16 v1, 0x600

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementKind(I)I

    move-result v2

    if-eq v2, v0, :cond_1

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementKind(I)I

    move-result v0

    const/16 v1, 0x40d

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popUntilElement(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x401

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popUntilElement(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private isAfterArrayType()Z
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intStack:[I

    aget v0, v1, v0

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isAlreadyPotentialName(I)Z
    .locals 3

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->potentialVariableNamesPtr:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->potentialVariableNameEnds:[I

    aget v0, v2, v0

    if-gt p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method private isEmptyNameCompletion()Z
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnSingleNameReference;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnSingleNameReference;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;->token:[C

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isInsideEnhancedForLoopWithoutBlock(I)V
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->consumedEnhancedFor:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x31

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->consumeOpenFakeBlock()V

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->consumedEnhancedFor:Z

    return-void
.end method

.method private pushCompletionOnMemberAccessOnExpressionStack(Z)V
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierStack:[[C

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    aget-object v0, v0, v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPositionStack:[J

    add-int/lit8 v3, v1, -0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    aget-wide v1, v2, v1

    new-instance v3, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnMemberAccess;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->isInsideAnnotation()Z

    move-result v4

    invoke-direct {v3, v0, v1, v2, v4}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnMemberAccess;-><init>([CJZ)V

    iput-object v3, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v0, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intStack:[I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget p1, p1, v0

    iput p1, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/ast/SuperReference;

    iget v0, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->endPosition:I

    invoke-direct {p1, v0, v1}, Lorg/eclipse/jdt/internal/compiler/ast/SuperReference;-><init>(II)V

    iput-object p1, v3, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnExpressionStack(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    aget-object p1, p1, v0

    iput-object p1, v3, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->isThis()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, v3, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iput p1, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    :cond_1
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    aput-object v3, p1, v0

    :goto_0
    return-void
.end method

.method private recordReference(Lorg/eclipse/jdt/internal/compiler/ast/NameReference;)V
    .locals 3

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->skipRecord:Z

    if-nez v0, :cond_2

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->recordFrom:I

    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    if-gt v0, v1, :cond_2

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iget v2, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->recordTo:I

    if-gt v0, v2, :cond_2

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->isAlreadyPotentialName(I)Z

    move-result v0

    if-nez v0, :cond_2

    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;->token:[C

    goto :goto_0

    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->tokens:[[C

    aget-object v0, v0, v1

    :goto_0
    aget-char v1, v0, v1

    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-direct {p0, v0, v1, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->addPotentialName([CII)V

    :cond_2
    return-void
.end method

.method private stackHasInstanceOfExpression([Ljava/lang/Object;I)Z
    .locals 1

    :goto_0
    if-gez p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    aget-object v0, p1, p2

    instance-of v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/InstanceOfExpression;

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_0
.end method


# virtual methods
.method public actFromTokenOrSynthetic(I)I
    .locals 6

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentToken:I

    invoke-static {p1, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->tAction(II)I

    move-result v0

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->hasError:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->diet:Z

    if-nez v1, :cond_2

    const/16 v1, 0x4246

    if-ne v0, v1, :cond_2

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentToken:I

    const/16 v3, 0x3d

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->requireExtendedRecovery()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->RECOVERY_TOKENS:[I

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v3, :cond_0

    goto :goto_1

    :cond_0
    aget v0, v2, v4

    invoke-static {p1, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->tAction(II)I

    move-result v5

    if-eq v5, v1, :cond_1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentToken:I

    return v5

    :cond_1
    add-int/lit8 v4, v4, 0x1

    move v0, v5

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method public assistIdentifier()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    check-cast v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;->completionIdentifier:[C

    return-object v0
.end method

.method public assistNodeNeedsStacking()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->shouldStackAssistNode:Z

    return v0
.end method

.method public assistNodeParent()Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->assistNodeParent:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    return-object v0
.end method

.method public attachOrphanCompletionNode()V
    .locals 13

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    if-eqz v0, :cond_39

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->isAlreadyAttached:Z

    if-eqz v1, :cond_0

    goto/16 :goto_a

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->isAlreadyAttached:Z

    iget-boolean v2, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isOrphanCompletionNode:Z

    const/4 v3, 0x4

    const/16 v4, 0x410

    const/16 v5, 0x600

    const/4 v6, -0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_12

    iput-boolean v7, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isOrphanCompletionNode:Z

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    instance-of v8, v2, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUnit;

    if-eqz v8, :cond_2

    instance-of v8, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    if-eqz v8, :cond_1

    move-object v8, v0

    check-cast v8, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    invoke-virtual {v2, v8, v7}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    goto/16 :goto_1

    :cond_1
    instance-of v8, v0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;

    if-eqz v8, :cond_8

    move-object v8, v0

    check-cast v8, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;

    invoke-virtual {v2, v8, v7}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    goto/16 :goto_1

    :cond_2
    instance-of v8, v2, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    if-eqz v8, :cond_8

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    iget-boolean v2, v2, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->foundOpeningBrace:Z

    if-eqz v2, :cond_8

    instance-of v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v2, :cond_8

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isInsideModuleInfo()Z

    move-result v2

    if-eqz v2, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0, v5}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementKind(I)I

    move-result v2

    invoke-virtual {p0, v5}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementInfo(I)I

    move-result v5

    if-ne v2, v4, :cond_5

    if-ne v5, v3, :cond_5

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    if-le v2, v6, :cond_5

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsLengthStack:[I

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsLengthPtr:I

    aget v2, v2, v3

    if-lez v2, :cond_4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->consumeTypeArguments()V

    :cond_4
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnGenericsStack(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->consumeTypeArguments()V

    invoke-virtual {p0, v7}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->getTypeReference(I)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->assistNodeParent:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    goto :goto_0

    :cond_5
    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    :goto_0
    new-instance v2, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnFieldType;

    invoke-direct {v2, v0, v7}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnFieldType;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Z)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthStack:[I

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    aget v0, v0, v3

    if-eqz v0, :cond_6

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    aget-object v5, v3, v4

    instance-of v5, v5, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-eqz v5, :cond_6

    sub-int/2addr v4, v0

    add-int/2addr v4, v1

    new-array v1, v0, [Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iput-object v1, v2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    invoke-static {v3, v4, v1, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_7

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intStack:[I

    add-int/lit8 v4, v0, -0x1

    aget v4, v3, v4

    iget v5, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->lastModifiersStart:I

    if-ne v4, v5, :cond_7

    add-int/lit8 v4, v0, -0x2

    aget v4, v3, v4

    iget v5, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->lastModifiers:I

    if-ne v4, v5, :cond_7

    add-int/lit8 v4, v0, -0x1

    aget v4, v3, v4

    iput v4, v2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->modifiersSourceStart:I

    sub-int/2addr v0, v1

    aget v0, v3, v0

    iput v0, v2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->modifiers:I

    :cond_7
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    invoke-virtual {v0, v2, v7}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    return-void

    :cond_8
    :goto_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    instance-of v8, v2, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;

    if-eqz v8, :cond_a

    move-object v8, v2

    check-cast v8, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;

    iget-boolean v8, v8, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->foundOpeningBrace:Z

    if-nez v8, :cond_a

    instance-of v8, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v8, :cond_9

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parent:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    new-instance v3, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnFieldType;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-direct {v3, v0, v1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnFieldType;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Z)V

    invoke-virtual {v2, v3, v7}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    return-void

    :cond_9
    instance-of v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-eqz v2, :cond_a

    new-instance v2, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnAnnotationOfType;

    sget-object v3, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->FAKE_TYPE_NAME:[C

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->compilationUnit:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult()Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    move-result-object v4

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    invoke-direct {v2, v3, v4, v0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnAnnotationOfType;-><init>([CLorg/eclipse/jdt/internal/compiler/CompilationResult;Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)V

    iput-boolean v1, v2, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnAnnotationOfType;->isParameter:Z

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parent:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    invoke-virtual {v0, v2, v7}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    iput-object v2, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->pendingAnnotation:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnAnnotationOfType;

    return-void

    :cond_a
    instance-of v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;

    if-eqz v2, :cond_b

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->buildMoreAnnotationCompletionContext(Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;)V

    return-void

    :cond_b
    instance-of v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-eqz v2, :cond_d

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->popUntilCompletedAnnotationIfNecessary()V

    new-instance v1, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnAnnotationOfType;

    sget-object v2, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->FAKE_TYPE_NAME:[C

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->compilationUnit:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult()Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    move-result-object v3

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    invoke-direct {v1, v2, v3, v0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnAnnotationOfType;-><init>([CLorg/eclipse/jdt/internal/compiler/CompilationResult;Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    invoke-virtual {v0, v1, v7}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->isInsideAnnotation()Z

    move-result v0

    if-nez v0, :cond_c

    iput-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->pendingAnnotation:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnAnnotationOfType;

    :cond_c
    return-void

    :cond_d
    invoke-virtual {p0, v5}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementKind(I)I

    move-result v2

    const/16 v8, 0x404

    if-ne v2, v8, :cond_10

    iget-object v2, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    instance-of v8, v2, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnSingleTypeReference;

    if-eqz v8, :cond_e

    check-cast v2, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnSingleTypeReference;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnSingleTypeReference;->isException()Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->buildMoreTryStatementCompletionContext(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V

    return-void

    :cond_e
    iget-object v2, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    instance-of v8, v2, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnQualifiedTypeReference;

    if-eqz v8, :cond_f

    check-cast v2, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnQualifiedTypeReference;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnQualifiedTypeReference;->isException()Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->buildMoreTryStatementCompletionContext(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V

    return-void

    :cond_f
    iget-object v2, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    instance-of v8, v2, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnParameterizedQualifiedTypeReference;

    if-eqz v8, :cond_10

    check-cast v2, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnParameterizedQualifiedTypeReference;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnParameterizedQualifiedTypeReference;->isException()Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->buildMoreTryStatementCompletionContext(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V

    return-void

    :cond_10
    instance-of v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    if-eqz v2, :cond_12

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->enclosingMethod()Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;

    move-result-object v2

    if-eqz v2, :cond_11

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->methodDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    iget v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->bodyStart:I

    iget v4, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    add-int/2addr v4, v1

    if-ne v3, v4, :cond_11

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget-object v4, v3, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->lineEnds:[I

    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->linePtr:I

    invoke-static {v1, v4, v7, v3}, Lorg/eclipse/jdt/internal/compiler/util/Util;->getLineNumber(I[III)I

    move-result v1

    iget v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget-object v4, v3, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->lineEnds:[I

    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->linePtr:I

    invoke-static {v2, v4, v7, v3}, Lorg/eclipse/jdt/internal/compiler/util/Util;->getLineNumber(I[III)I

    move-result v2

    if-ne v1, v2, :cond_11

    return-void

    :cond_11
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    invoke-virtual {v1, v0, v7}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/Statement;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    return-void

    :cond_12
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->isInsideAnnotation()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    if-le v0, v6, :cond_1c

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    aget-object v0, v2, v0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    if-ne v0, v2, :cond_1b

    invoke-virtual {p0, v5}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementKind(I)I

    move-result v2

    const/16 v8, 0x425

    const/16 v9, 0x205

    if-ne v2, v8, :cond_15

    new-instance v2, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;

    invoke-direct {v2}, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;-><init>()V

    filled-new-array {v0}, [Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    move-result-object v8

    iput-object v8, v2, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;->expressions:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    sget-object v8, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->VALUE:[C

    invoke-virtual {p0, v5, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementKind(II)I

    move-result v10

    if-ne v10, v9, :cond_13

    iget v9, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    if-lez v9, :cond_13

    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierStack:[[C

    iget v10, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    aget-object v8, v8, v10

    iget-object v11, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthStack:[I

    add-int/lit8 v12, v9, -0x1

    iput v12, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    aget v9, v11, v9

    sub-int/2addr v10, v9

    iput v10, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    :cond_13
    new-instance v9, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;

    iget v10, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-direct {v9, v8, v10, v0, v2}, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;-><init>([CIILorg/eclipse/jdt/internal/compiler/ast/Expression;)V

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astLengthPtr:I

    if-le v0, v6, :cond_14

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astLengthPtr:I

    :cond_14
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->getAnnotationType()Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object v0

    new-instance v2, Lorg/eclipse/jdt/internal/compiler/ast/NormalAnnotation;

    iget-object v10, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intStack:[I

    iget v11, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    add-int/lit8 v12, v11, -0x1

    iput v12, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v10, v10, v11

    invoke-direct {v2, v0, v10}, Lorg/eclipse/jdt/internal/compiler/ast/NormalAnnotation;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;I)V

    filled-new-array {v9}, [Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;

    move-result-object v9

    iput-object v9, v2, Lorg/eclipse/jdt/internal/compiler/ast/NormalAnnotation;->memberValuePairs:[Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;

    new-instance v9, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnAnnotationOfType;

    sget-object v10, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->FAKE_TYPE_NAME:[C

    iget-object v11, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->compilationUnit:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    invoke-virtual {v11}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult()Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    move-result-object v11

    invoke-direct {v9, v10, v11, v2}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnAnnotationOfType;-><init>([CLorg/eclipse/jdt/internal/compiler/CompilationResult;Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    invoke-virtual {v2, v9, v7}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    iput-object v9, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->pendingAnnotation:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnAnnotationOfType;

    new-instance v2, Lorg/eclipse/jdt/internal/codeassist/complete/AssistNodeParentAnnotationArrayInitializer;

    invoke-direct {v2, v0, v8}, Lorg/eclipse/jdt/internal/codeassist/complete/AssistNodeParentAnnotationArrayInitializer;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;[C)V

    iput-object v2, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->assistNodeParent:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    goto/16 :goto_3

    :cond_15
    invoke-virtual {p0, v5}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementKind(I)I

    move-result v2

    const/16 v8, 0x421

    if-ne v2, v8, :cond_18

    instance-of v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;

    if-eqz v2, :cond_16

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;

    new-instance v1, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnMemberValueName;

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;->token:[C

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-direct {v1, v2, v3, v0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnMemberValueName;-><init>([CII)V

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->buildMoreAnnotationCompletionContext(Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;)V

    return-void

    :cond_16
    instance-of v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;

    if-nez v2, :cond_17

    instance-of v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/StringLiteral;

    if-eqz v2, :cond_1c

    :cond_17
    new-instance v2, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;

    sget-object v8, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->VALUE:[C

    iget v9, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v10, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-direct {v2, v8, v9, v10, v0}, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;-><init>([CIILorg/eclipse/jdt/internal/compiler/ast/Expression;)V

    invoke-direct {p0, v2}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->buildMoreAnnotationCompletionContext(Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;)V

    goto :goto_3

    :cond_18
    invoke-virtual {p0, v9}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->lastIndexOfElement(I)I

    move-result v2

    if-eq v2, v6, :cond_1c

    iget-object v3, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementInfoStack:[I

    aget v2, v3, v2

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    :goto_2
    if-lt v2, v4, :cond_1a

    if-eq v2, v4, :cond_19

    return-void

    :cond_19
    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    sub-int/2addr v3, v1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierStack:[[C

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    add-int/lit8 v4, v3, -0x1

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    aget-object v2, v2, v3

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-direct {v1, v2, v3, v4, v0}, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;-><init>([CIILorg/eclipse/jdt/internal/compiler/ast/Expression;)V

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->buildMoreAnnotationCompletionContext(Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;)V

    return-void

    :cond_1a
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthStack:[I

    add-int/lit8 v6, v3, -0x1

    aget v3, v5, v3

    sub-int/2addr v4, v3

    move v3, v6

    goto :goto_2

    :cond_1b
    new-instance v8, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;

    invoke-direct {v8, v2, v0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->containsCompletionNode()Z

    move-result v2

    if-eqz v2, :cond_1c

    new-instance v2, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;

    sget-object v8, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->VALUE:[C

    iget v9, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v10, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-direct {v2, v8, v9, v10, v0}, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;-><init>([CIILorg/eclipse/jdt/internal/compiler/ast/Expression;)V

    invoke-direct {p0, v2}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->buildMoreAnnotationCompletionContext(Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;)V

    :cond_1c
    :goto_3
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    if-le v0, v6, :cond_1d

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    aget-object v0, v2, v0

    instance-of v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;

    if-eqz v2, :cond_1d

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;

    new-instance v2, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;

    iget-object v8, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    invoke-direct {v2, v8, v0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->containsCompletionNode()Z

    move-result v8

    if-eqz v8, :cond_1d

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->buildMoreAnnotationCompletionContext(Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;)V

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->getCompletionNodeParent()Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->assistNodeParent:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    return-void

    :cond_1d
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsPtr:I

    if-le v0, v6, :cond_1f

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    aget-object v0, v2, v0

    instance-of v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;

    if-eqz v2, :cond_1f

    move-object v2, v0

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;->bound:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v8, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    if-ne v2, v8, :cond_1f

    invoke-virtual {p0, v5}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementKind(I)I

    move-result v2

    if-ne v2, v4, :cond_1e

    invoke-virtual {p0, v5}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementInfo(I)I

    move-result v2

    if-ne v2, v3, :cond_1e

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->buildMoreGenericsCompletionContext(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Z)V

    return-void

    :cond_1e
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    if-le v2, v6, :cond_1f

    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthStack:[I

    aget v2, v8, v2

    if-eqz v2, :cond_1f

    invoke-virtual {p0, v4, v3}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(II)V

    invoke-direct {p0, v0, v7}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->buildMoreGenericsCompletionContext(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Z)V

    return-void

    :cond_1f
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    instance-of v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    if-nez v2, :cond_20

    instance-of v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;

    if-eqz v2, :cond_2a

    :cond_20
    instance-of v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    if-eqz v2, :cond_22

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->foundOpeningBrace:Z

    if-eqz v0, :cond_22

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsPtr:I

    if-le v0, v6, :cond_22

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    aget-object v0, v2, v0

    instance-of v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    if-eqz v2, :cond_22

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    new-instance v1, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    invoke-direct {v1, v2, v0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->containsCompletionNode()Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    new-instance v2, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnMethodTypeParameter;

    filled-new-array {v0}, [Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    move-result-object v0

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->compilationUnit:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult()Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnMethodTypeParameter;-><init>([Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V

    invoke-virtual {v1, v2, v7}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    :cond_21
    return-void

    :cond_22
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isInsideMethod()Z

    move-result v0

    if-nez v0, :cond_2a

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isInsideFieldInitialization()Z

    move-result v0

    if-nez v0, :cond_2a

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsPtr:I

    if-le v0, v6, :cond_2a

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsLengthPtr:I

    if-le v0, v6, :cond_2a

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsIdentifiersLengthPtr:I

    if-le v0, v6, :cond_2a

    invoke-virtual {p0, v5}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementKind(I)I

    move-result v0

    invoke-virtual {p0, v5}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementInfo(I)I

    move-result v2

    if-ne v0, v4, :cond_23

    if-ne v2, v3, :cond_23

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->consumeTypeArguments()V

    :cond_23
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsIdentifiersLengthStack:[I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsIdentifiersLengthPtr:I

    aget v0, v0, v2

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsPtr:I

    move v3, v7

    :goto_4
    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    if-gt v3, v4, :cond_28

    if-gtz v0, :cond_24

    goto :goto_6

    :cond_24
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthStack:[I

    sub-int/2addr v4, v3

    aget v4, v5, v4

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsLengthStack:[I

    iget v8, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsLengthPtr:I

    sub-int/2addr v8, v3

    aget v5, v5, v8

    move v8, v7

    :goto_5
    if-lt v8, v5, :cond_25

    sub-int/2addr v2, v5

    sub-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_25
    iget-object v9, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    sub-int v10, v2, v8

    aget-object v9, v9, v10

    new-instance v10, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;

    iget-object v11, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    invoke-direct {v10, v11, v9}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->containsCompletionNode()Z

    move-result v11

    if-eqz v11, :cond_27

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    if-ne v9, v0, :cond_26

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    if-le v0, v6, :cond_28

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthStack:[I

    aget v0, v2, v0

    if-eqz v0, :cond_28

    invoke-virtual {p0, v7}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->getTypeReference(I)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->assistNodeParent:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    goto :goto_6

    :cond_26
    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->getCompletionNodeParent()Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->assistNodeParent:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    goto :goto_6

    :cond_27
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_28
    :goto_6
    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->assistNodeParent:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    if-eqz v0, :cond_2a

    instance-of v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v2, :cond_2a

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    instance-of v3, v2, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    if-eqz v3, :cond_29

    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnFieldType;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->assistNodeParent:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-direct {v0, v3, v7}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnFieldType;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Z)V

    invoke-virtual {v2, v0, v7}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    goto :goto_7

    :cond_29
    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {v2, v0, v7}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/Statement;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    :cond_2a
    :goto_7
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isInsideMethod()Z

    move-result v0

    if-nez v0, :cond_2b

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isInsideFieldInitialization()Z

    move-result v0

    if-nez v0, :cond_2b

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isInsideAttributeValue()Z

    move-result v0

    if-nez v0, :cond_2b

    return-void

    :cond_2b
    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->assistNodeParent:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    instance-of v0, v0, Lorg/eclipse/jdt/internal/codeassist/complete/AssistNodeParentAnnotationArrayInitializer;

    if-eqz v0, :cond_2c

    return-void

    :cond_2c
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsPtr:I

    if-le v0, v6, :cond_2e

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    aget-object v0, v2, v0

    new-instance v2, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    invoke-direct {v2, v3, v0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->containsCompletionNode()Z

    move-result v2

    if-eqz v2, :cond_2e

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->enclosingMethod()Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;

    move-result-object v2

    if-eqz v2, :cond_2d

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->methodDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    iget v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->bodyStart:I

    iget v4, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    add-int/2addr v4, v1

    if-ne v3, v4, :cond_2d

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget-object v5, v4, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->lineEnds:[I

    iget v4, v4, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->linePtr:I

    invoke-static {v3, v5, v7, v4}, Lorg/eclipse/jdt/internal/compiler/util/Util;->getLineNumber(I[III)I

    move-result v3

    iget v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget-object v5, v4, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->lineEnds:[I

    iget v4, v4, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->linePtr:I

    invoke-static {v2, v5, v7, v4}, Lorg/eclipse/jdt/internal/compiler/util/Util;->getLineNumber(I[III)I

    move-result v2

    if-ne v3, v2, :cond_2d

    return-void

    :cond_2d
    iget-object v2, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    if-ne v0, v2, :cond_2e

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->buildMoreGenericsCompletionContext(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Z)V

    :cond_2e
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    if-le v0, v6, :cond_38

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    aget-object v0, v2, v0

    new-instance v2, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    invoke-direct {v2, v3, v0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->containsCompletionNode()Z

    move-result v3

    if-eqz v3, :cond_38

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->enclosingMethod()Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;

    move-result-object v3

    if-eqz v3, :cond_2f

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->methodDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    iget v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->bodyStart:I

    iget v5, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    add-int/2addr v5, v1

    if-ne v4, v5, :cond_2f

    iget v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget-object v6, v5, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->lineEnds:[I

    iget v5, v5, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->linePtr:I

    invoke-static {v4, v6, v7, v5}, Lorg/eclipse/jdt/internal/compiler/util/Util;->getLineNumber(I[III)I

    move-result v4

    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget-object v6, v5, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->lineEnds:[I

    iget v5, v5, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->linePtr:I

    invoke-static {v3, v6, v7, v5}, Lorg/eclipse/jdt/internal/compiler/util/Util;->getLineNumber(I[III)I

    move-result v3

    if-ne v4, v3, :cond_2f

    return-void

    :cond_2f
    iget-object v3, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    if-eq v0, v3, :cond_36

    instance-of v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;

    if-eqz v4, :cond_31

    move-object v4, v0

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-ne v4, v3, :cond_31

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    if-lez v3, :cond_30

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    sub-int/2addr v3, v1

    invoke-direct {p0, v4, v3}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->stackHasInstanceOfExpression([Ljava/lang/Object;I)Z

    move-result v1

    if-nez v1, :cond_36

    :cond_30
    iget v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementPtr:I

    if-ltz v1, :cond_31

    iget-object v3, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementObjectInfoStack:[Ljava/lang/Object;

    invoke-direct {p0, v3, v1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->stackHasInstanceOfExpression([Ljava/lang/Object;I)Z

    move-result v1

    if-nez v1, :cond_36

    :cond_31
    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;

    if-eqz v1, :cond_32

    move-object v1, v0

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    if-eq v1, v3, :cond_36

    :cond_32
    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/AND_AND_Expression;

    if-eqz v1, :cond_33

    iget v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementPtr:I

    if-ltz v1, :cond_33

    iget-object v3, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementObjectInfoStack:[Ljava/lang/Object;

    aget-object v1, v3, v1

    instance-of v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/InstanceOfExpression;

    if-nez v1, :cond_36

    :cond_33
    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;

    if-eqz v1, :cond_34

    move-object v1, v0

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfFalse:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    if-ne v1, v3, :cond_34

    goto :goto_9

    :cond_34
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->getCompletionNodeParent()Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->assistNodeParent:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    if-eqz v1, :cond_35

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    invoke-virtual {v0, v1, v7}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/Statement;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    goto :goto_8

    :cond_35
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    invoke-virtual {v1, v0, v7}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/Statement;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    :goto_8
    return-void

    :cond_36
    :goto_9
    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->buildMoreCompletionContext(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->assistNodeParent:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    if-nez v1, :cond_37

    instance-of v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;

    if-eqz v0, :cond_37

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->getCompletionNodeParent()Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->assistNodeParent:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    :cond_37
    return-void

    :cond_38
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    if-le v0, v6, :cond_39

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    aget-object v0, v2, v0

    instance-of v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    if-eqz v2, :cond_39

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    if-ne v2, v3, :cond_39

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->buildMoreCompletionEnclosingContext(Lorg/eclipse/jdt/internal/compiler/ast/Statement;)Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    move-result-object v0

    instance-of v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/IfStatement;

    if-eqz v2, :cond_39

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    instance-of v3, v2, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;

    if-eqz v3, :cond_39

    move-object v3, v2

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;

    iget-object v4, v3, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->statements:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredStatement;

    iget v5, v3, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->statementCount:I

    sub-int/2addr v5, v1

    iput v5, v3, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->statementCount:I

    const/4 v1, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v2, v0, v7}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/Statement;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    :cond_39
    :goto_a
    return-void
.end method

.method public augmentTypeWithAdditionalDimensions(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;I[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Z)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    if-ne v0, p1, :cond_0

    return-object p1

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->augmentTypeWithAdditionalDimensions(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;I[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Z)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object p2

    iget-object p3, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->assistNodeParent:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    if-ne p3, p1, :cond_1

    iput-object p2, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->assistNodeParent:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    :cond_1
    return-object p2
.end method

.method public becomeSimpleParser()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    check-cast v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;

    new-instance v1, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser$SavedState;

    iget v2, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->cursorLocation:I

    iget v3, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;->cursorLocation:I

    iget-object v4, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->assistNodeParent:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    invoke-direct {v1, v2, v3, v4}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser$SavedState;-><init>(IILorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    const v2, 0x7fffffff

    iput v2, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->cursorLocation:I

    iput v2, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;->cursorLocation:I

    return-object v1
.end method

.method public bodyEnd(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;)I
    .locals 0

    .line 1
    iget p1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->cursorLocation:I

    return p1
.end method

.method public bodyEnd(Lorg/eclipse/jdt/internal/compiler/ast/Initializer;)I
    .locals 0

    .line 2
    iget p1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->cursorLocation:I

    return p1
.end method

.method public checkAndSetModifiers(I)V
    .locals 0

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->checkAndSetModifiers(I)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isInsideMethod()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->hasUnusedModifiers:Z

    :cond_0
    return-void
.end method

.method public completionIdentifierCheck()V
    .locals 4

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->checkMemberValueName()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->checkKeyword()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->checkModuleInfoConstructs()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->checkRecoveredType()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->checkRecoveredMethod()Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isInsideMethod()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->diet:Z

    if-eqz v0, :cond_6

    :cond_5
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isIndirectlyInsideFieldInitialization()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isIndirectlyInsideEnumConstantnitialization()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isInsideAttributeValue()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isInsideModuleInfo()Z

    move-result v0

    if-nez v0, :cond_6

    return-void

    :cond_6
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->assistIdentifier()[C

    move-result-object v0

    if-nez v0, :cond_8

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentToken:I

    const/16 v1, 0x16

    if-ne v0, v1, :cond_8

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->cursorLocation:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    if-ge v0, v2, :cond_7

    iget v3, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    if-ne v3, v2, :cond_7

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushIdentifier()V

    goto :goto_0

    :cond_7
    add-int/lit8 v3, v0, 0x1

    if-lt v3, v2, :cond_8

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    if-ge v0, v1, :cond_8

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushIdentifier()V

    :cond_8
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->isEmptyNameCompletion()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->checkInvocation()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    return-void

    :cond_a
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->indexOfAssistIdentifier()I

    move-result v0

    if-gez v0, :cond_b

    return-void

    :cond_b
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->checkModuleInfoConstructs()Z

    move-result v0

    if-eqz v0, :cond_c

    return-void

    :cond_c
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->checkClassInstanceCreation()Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    :cond_d
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->checkMemberAccess()Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    :cond_e
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->checkClassLiteralAccess()Z

    move-result v0

    if-eqz v0, :cond_f

    return-void

    :cond_f
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->checkInstanceofKeyword()Z

    move-result v0

    if-eqz v0, :cond_10

    return-void

    :cond_10
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->checkInvocation()Z

    move-result v0

    if-eqz v0, :cond_11

    return-void

    :cond_11
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->checkParemeterizedType()Z

    move-result v0

    if-eqz v0, :cond_12

    return-void

    :cond_12
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->checkParemeterizedMethodName()Z

    move-result v0

    if-eqz v0, :cond_13

    return-void

    :cond_13
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->checkLabelStatement()Z

    move-result v0

    if-eqz v0, :cond_14

    return-void

    :cond_14
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->checkNameCompletion()Z

    return-void
.end method

.method public consumeAdditionalBound()V
    .locals 3

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeAdditionalBound()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsPtr:I

    aget-object v0, v0, v1

    instance-of v1, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnSingleTypeReference;

    const/4 v2, 0x2

    if-eqz v1, :cond_0

    check-cast v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnSingleTypeReference;

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnSingleTypeReference;->setKind(I)V

    goto :goto_0

    :cond_0
    instance-of v1, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnQualifiedTypeReference;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnQualifiedTypeReference;

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnQualifiedTypeReference;->setKind(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public consumeAdditionalBound1()V
    .locals 3

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeAdditionalBound1()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsPtr:I

    aget-object v0, v0, v1

    instance-of v1, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnSingleTypeReference;

    const/4 v2, 0x2

    if-eqz v1, :cond_0

    check-cast v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnSingleTypeReference;

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnSingleTypeReference;->setKind(I)V

    goto :goto_0

    :cond_0
    instance-of v1, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnQualifiedTypeReference;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnQualifiedTypeReference;

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnQualifiedTypeReference;->setKind(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public consumeAnnotationAsModifier()V
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeAnnotationAsModifier()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isInsideMethod()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->hasUnusedModifiers:Z

    :cond_0
    return-void
.end method

.method public consumeAnnotationName()V
    .locals 9

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->indexOfAssistIdentifier()I

    move-result v0

    const/16 v1, 0x421

    const/4 v2, 0x1

    if-gez v0, :cond_0

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeAnnotationName()V

    invoke-virtual {p0, v1, v2}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(II)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->isInImportStatement()Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    :cond_1
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthStack:[I

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    aget v3, v3, v4

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->identifierSubSet(I)[[C

    move-result-object v4

    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    sub-int/2addr v5, v2

    iput v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    sub-int/2addr v5, v3

    iput v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    new-array v6, v3, [J

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPositionStack:[J

    add-int/2addr v5, v2

    const/4 v8, 0x0

    invoke-static {v7, v5, v6, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->assistIdentifier()[C

    move-result-object v0

    aget-wide v3, v6, v8

    invoke-virtual {p0, v0, v3, v4}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->createSingleAssistTypeReference([CJ)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->assistIdentifier()[C

    move-result-object v0

    invoke-virtual {p0, v4, v0, v6}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->createQualifiedAssistTypeReference([[C[C[J)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object v0

    :goto_0
    new-instance v3, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnMarkerAnnotationName;

    iget v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-direct {v3, v0, v4}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnMarkerAnnotationName;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;I)V

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    sub-int/2addr v0, v2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    iget v0, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iput v0, v3, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->declarationSourceEnd:I

    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnExpressionStack(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)V

    iput-object v3, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isOrphanCompletionNode:Z

    iget v0, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    const/4 v0, 0x5

    invoke-virtual {p0, v1, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(II)V

    return-void
.end method

.method public consumeAnnotationTypeDeclarationHeaderName()V
    .locals 3

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeAnnotationTypeDeclarationHeaderName()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->hasUnusedModifiers:Z

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->pendingAnnotation:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnAnnotationOfType;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object v1, v1, v2

    iput-object v1, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnAnnotationOfType;->potentialAnnotatedNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->pendingAnnotation:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnAnnotationOfType;

    :cond_0
    return-void
.end method

.method public consumeAnnotationTypeDeclarationHeaderNameWithTypeParameters()V
    .locals 3

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeAnnotationTypeDeclarationHeaderNameWithTypeParameters()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->hasUnusedModifiers:Z

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->pendingAnnotation:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnAnnotationOfType;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object v1, v1, v2

    iput-object v1, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnAnnotationOfType;->potentialAnnotatedNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->pendingAnnotation:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnAnnotationOfType;

    :cond_0
    return-void
.end method

.method public consumeArrayCreationExpressionWithInitializer()V
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeArrayCreationExpressionWithInitializer()V

    const/16 v0, 0x40e

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    return-void
.end method

.method public consumeArrayCreationExpressionWithoutInitializer()V
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeArrayCreationExpressionWithoutInitializer()V

    const/16 v0, 0x40e

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    return-void
.end method

.method public consumeArrayCreationHeader()V
    .locals 0

    return-void
.end method

.method public consumeAssignment()V
    .locals 1

    const/16 v0, 0x411

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeAssignment()V

    return-void
.end method

.method public consumeAssignmentOperator(I)V
    .locals 1

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeAssignmentOperator(I)V

    const/16 v0, 0x411

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(II)V

    return-void
.end method

.method public consumeBinaryExpression(I)V
    .locals 2

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeBinaryExpression(I)V

    const/16 p1, 0x410

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    aget-object p1, p1, v0

    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    if-eqz v0, :cond_0

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->right:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-ne v1, v0, :cond_0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->assistNodeParent:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    :cond_0
    return-void
.end method

.method public consumeBinaryExpressionWithName(I)V
    .locals 2

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeBinaryExpressionWithName(I)V

    const/16 p1, 0x410

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    aget-object p1, p1, v0

    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    if-eqz v0, :cond_0

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->right:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-ne v1, v0, :cond_0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->assistNodeParent:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    :cond_0
    return-void
.end method

.method public consumeBlockStatement()V
    .locals 4

    invoke-super {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->consumeBlockStatement()V

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->shouldStackAssistNode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object v1, v1, v2

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    if-gt v2, v3, :cond_0

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    if-lt v1, v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->shouldStackAssistNode:Z

    :cond_0
    return-void
.end method

.method public consumeCaseLabel()V
    .locals 2

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeCaseLabel()V

    const/16 v0, 0x600

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementKind(I)I

    move-result v0

    const/16 v1, 0x419

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(I)V

    :cond_0
    return-void
.end method

.method public consumeCastExpressionLL1()V
    .locals 1

    const/16 v0, 0x40b

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeCastExpressionLL1()V

    return-void
.end method

.method public consumeCastExpressionWithGenericsArray()V
    .locals 6

    const/16 v0, 0x40b

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    new-instance v2, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    add-int/lit8 v5, v4, 0x1

    aget-object v5, v3, v5

    aget-object v3, v3, v4

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-direct {v2, v5, v3}, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V

    aput-object v2, v1, v0

    iget v0, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    add-int/lit8 v0, v0, -0x1

    iput v0, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v0, v5, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iput v0, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    return-void
.end method

.method public consumeCastExpressionWithNameArray()V
    .locals 6

    const/16 v0, 0x40b

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    new-instance v2, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    add-int/lit8 v5, v4, 0x1

    aget-object v5, v3, v5

    aget-object v3, v3, v4

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-direct {v2, v5, v3}, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V

    aput-object v2, v1, v0

    iget v0, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    add-int/lit8 v0, v0, -0x1

    iput v0, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v0, v5, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iput v0, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    return-void
.end method

.method public consumeCastExpressionWithPrimitiveType()V
    .locals 6

    const/16 v0, 0x40b

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    new-instance v2, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    add-int/lit8 v5, v4, 0x1

    aget-object v5, v3, v5

    aget-object v3, v3, v4

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-direct {v2, v5, v3}, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V

    aput-object v2, v1, v0

    iget v0, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    add-int/lit8 v0, v0, -0x1

    iput v0, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v0, v5, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iput v0, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    return-void
.end method

.method public consumeCastExpressionWithQualifiedGenericsArray()V
    .locals 6

    const/16 v0, 0x40b

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    new-instance v2, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    add-int/lit8 v5, v4, 0x1

    aget-object v5, v3, v5

    aget-object v3, v3, v4

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-direct {v2, v5, v3}, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V

    aput-object v2, v1, v0

    iget v0, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    add-int/lit8 v0, v0, -0x1

    iput v0, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v0, v5, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iput v0, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    return-void
.end method

.method public consumeCatchFormalParameter()V
    .locals 11

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->indexOfAssistIdentifier()I

    move-result v0

    if-gez v0, :cond_0

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeCatchFormalParameter()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->pendingAnnotation:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnAnnotationOfType;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object v1, v1, v2

    iput-object v1, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnAnnotationOfType;->potentialAnnotatedNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->pendingAnnotation:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnAnnotationOfType;

    goto/16 :goto_0

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierStack:[[C

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    aget-object v4, v0, v2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPositionStack:[J

    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    aget-wide v9, v0, v2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    add-int/lit8 v5, v3, -0x1

    iput v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object v2, v2, v3

    move-object v7, v2

    check-cast v7, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    add-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnArgumentName;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intStack:[I

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    add-int/2addr v3, v1

    aget v2, v2, v3

    const v3, -0x100001

    and-int v8, v2, v3

    move-object v3, v0

    move-wide v5, v9

    invoke-direct/range {v3 .. v8}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnArgumentName;-><init>([CJLorg/eclipse/jdt/internal/compiler/ast/TypeReference;I)V

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit8 v2, v2, -0x5

    iput v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthStack:[I

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    add-int/lit8 v4, v3, -0x1

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    aget v2, v2, v3

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    sub-int/2addr v5, v2

    iput v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    add-int/2addr v5, v1

    new-array v6, v2, [Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iput-object v6, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    invoke-static {v4, v5, v6, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    const/16 v2, 0x600

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementKind(I)I

    move-result v2

    const/16 v4, 0x404

    if-ne v2, v4, :cond_2

    move v3, v1

    :cond_2
    iput-boolean v3, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnArgumentName;->isCatchArgument:Z

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnAstStack(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    long-to-int v0, v9

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isOrphanCompletionNode:Z

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->listLength:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->listLength:I

    :cond_3
    :goto_0
    return-void
.end method

.method public consumeClassBodyDeclaration()V
    .locals 1

    const/16 v0, 0x401

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    invoke-super {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->consumeClassBodyDeclaration()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->pendingAnnotation:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnAnnotationOfType;

    return-void
.end method

.method public consumeClassBodyopt()V
    .locals 1

    const/16 v0, 0x403

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    const/16 v0, 0x402

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    invoke-super {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->consumeClassBodyopt()V

    return-void
.end method

.method public consumeClassDeclaration()V
    .locals 5

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    if-ltz v0, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astLengthStack:[I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astLengthPtr:I

    aget v1, v1, v2

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    sub-int/2addr v0, v1

    aget-object v0, v2, v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->javadoc:Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->javadocParser:Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;

    check-cast v1, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->allPossibleTags:Z

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->checkComment()V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->javadoc:Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;

    if-eqz v2, :cond_0

    iget v3, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->cursorLocation:I

    iget v4, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    if-le v3, v4, :cond_0

    iget v4, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    if-ge v3, v4, :cond_0

    iput-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->javadoc:Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, v1, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->allPossibleTags:Z

    :cond_1
    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeClassDeclaration()V

    return-void
.end method

.method public consumeClassHeaderExtends()V
    .locals 7

    const/16 v0, 0x405

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(I)V

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeClassHeaderExtends()V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->assistNodeParent:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object v2, v2, v3

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-eqz v2, :cond_0

    iget-object v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->superclass:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-ne v3, v1, :cond_0

    iput-object v2, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->assistNodeParent:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    :cond_0
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    const/16 v0, 0x41d

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentToken:I

    const/16 v1, 0x16

    if-ne v0, v1, :cond_1

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->cursorLocation:I

    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v3, v2, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    if-lt v1, v3, :cond_1

    iget v1, v2, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    if-ge v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushIdentifier()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->indexOfAssistIdentifier()I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthStack:[I

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    aget v2, v2, v3

    sub-int/2addr v1, v2

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    iget-boolean v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->foundOpeningBrace:Z

    if-nez v2, :cond_1

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->typeDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-nez v2, :cond_1

    new-instance v2, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnKeyword1;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierStack:[[C

    aget-object v3, v3, v1

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPositionStack:[J

    aget-wide v5, v4, v1

    sget-object v1, Lorg/eclipse/jdt/internal/codeassist/impl/Keywords;->IMPLEMENTS:[C

    invoke-direct {v2, v3, v5, v6, v1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnKeyword1;-><init>([CJ[C)V

    iput-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->superclass:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget v0, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/lit8 v0, v0, 0x10

    iput v0, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    iput-object v2, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v0, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    :cond_1
    return-void
.end method

.method public consumeClassHeaderImplements()V
    .locals 6

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeClassHeaderImplements()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->assistNodeParent:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object v0, v0, v1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-eqz v0, :cond_3

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    array-length v3, v1

    :goto_0
    if-lt v2, v3, :cond_1

    goto :goto_1

    :cond_1
    aget-object v4, v1, v2

    iget-object v5, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    if-ne v4, v5, :cond_2

    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->assistNodeParent:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public consumeClassHeaderName1()V
    .locals 4

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeClassHeaderName1()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->hasUnusedModifiers:Z

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->pendingAnnotation:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnAnnotationOfType;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object v2, v2, v3

    iput-object v2, v1, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnAnnotationOfType;->potentialAnnotatedNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->pendingAnnotation:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnAnnotationOfType;

    :cond_0
    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->classHeaderExtendsOrImplements(Z)V

    return-void
.end method

.method public consumeClassInstanceCreationExpressionName()V
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeClassInstanceCreationExpressionName()V

    const/4 v0, -0x5

    iput v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->invocationType:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    iput v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->qualifier:I

    return-void
.end method

.method public consumeClassTypeElt()V
    .locals 1

    const/16 v0, 0x407

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(I)V

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeClassTypeElt()V

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    return-void
.end method

.method public consumeCompilationUnit()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->javadoc:Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->checkComment()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->javadoc:Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;

    if-eqz v0, :cond_0

    iget v1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->cursorLocation:I

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    if-le v1, v2, :cond_0

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->compilationUnit:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iput-object v0, v1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->javadoc:Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;

    iget-object v0, v1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->types:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iput-object v0, v1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->types:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->compilationUnit:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;-><init>(Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V

    sget-object v1, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->FAKE_TYPE_NAME:[C

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->name:[C

    const/16 v1, 0x200

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->modifiers:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->compilationUnit:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->types:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    :cond_0
    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeCompilationUnit()V

    return-void
.end method

.method public consumeConditionalExpression(I)V
    .locals 1

    const/16 v0, 0x412

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeConditionalExpression(I)V

    return-void
.end method

.method public consumeConditionalExpressionWithName(I)V
    .locals 1

    const/16 v0, 0x412

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeConditionalExpressionWithName(I)V

    return-void
.end method

.method public consumeConstructorBody()V
    .locals 1

    const/16 v0, 0x401

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    invoke-super {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->consumeConstructorBody()V

    return-void
.end method

.method public consumeConstructorHeader()V
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->consumeConstructorHeader()V

    const/16 v0, 0x401

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(I)V

    return-void
.end method

.method public consumeConstructorHeaderName()V
    .locals 5

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->indexOfAssistIdentifier()I

    move-result v0

    if-gez v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPositionStack:[J

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    aget-wide v1, v0, v1

    long-to-int v0, v1

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    if-eqz v2, :cond_0

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastIgnoredToken:I

    const/16 v3, 0x24

    if-ne v2, v3, :cond_0

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeConstructorHeaderName()V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeConstructorHeaderName()V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->pendingAnnotation:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnAnnotationOfType;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object v3, v3, v4

    iput-object v3, v2, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnAnnotationOfType;->potentialAnnotatedNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->pendingAnnotation:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnAnnotationOfType;

    :cond_1
    :goto_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->sourceEnds:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;

    if-eqz v2, :cond_2

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    if-le v3, v1, :cond_2

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    aget-object v1, v1, v3

    invoke-virtual {v2, v1, v0}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;->put(Ljava/lang/Object;I)I

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    const/4 v1, 0x1

    if-nez v0, :cond_4

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->hasReportedError:Z

    :cond_4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthStack:[I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    aget v0, v0, v2

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnGenericsIdentifiersLengthStack(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnGenericsLengthStack(I)V

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->restartRecovery:Z

    return-void
.end method

.method public consumeConstructorHeaderNameWithTypeParameters()V
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPositionStack:[J

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    aget-wide v1, v0, v1

    long-to-int v0, v1

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    if-eqz v2, :cond_0

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastIgnoredToken:I

    const/16 v3, 0x24

    if-ne v2, v3, :cond_0

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeConstructorHeaderNameWithTypeParameters()V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeConstructorHeaderNameWithTypeParameters()V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->pendingAnnotation:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnAnnotationOfType;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object v3, v3, v4

    iput-object v3, v2, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnAnnotationOfType;->potentialAnnotatedNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->pendingAnnotation:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnAnnotationOfType;

    :cond_1
    :goto_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->sourceEnds:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;

    if-eqz v2, :cond_2

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    if-le v3, v1, :cond_2

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    aget-object v1, v1, v3

    invoke-virtual {v2, v1, v0}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;->put(Ljava/lang/Object;I)I

    :cond_2
    return-void
.end method

.method public consumeDefaultLabel()V
    .locals 2

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeDefaultLabel()V

    const/16 v0, 0x600

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementKind(I)I

    move-result v0

    const/16 v1, 0x419

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(II)V

    return-void
.end method

.method public consumeDimWithOrWithOutExpr()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnExpressionStack(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)V

    return-void
.end method

.method public consumeEmptyStatement()V
    .locals 5

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeEmptyStatement()V

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->shouldStackAssistNode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    iget-object v3, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->assistNodeParent:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    instance-of v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;

    if-eqz v4, :cond_0

    move-object v0, v3

    :cond_0
    aput-object v0, v1, v2

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->shouldStackAssistNode:Z

    return-void
.end method

.method public consumeEnhancedForStatement()V
    .locals 2

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeEnhancedForStatement()V

    const/16 v0, 0x600

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementKind(I)I

    move-result v0

    const/16 v1, 0x426

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    :cond_0
    return-void
.end method

.method public consumeEnhancedForStatementHeader()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->consumedEnhancedFor:Z

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeEnhancedForStatementHeader()V

    return-void
.end method

.method public consumeEnhancedForStatementHeaderInit(Z)V
    .locals 2

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->consumeEnhancedForStatementHeaderInit(Z)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->hasUnusedModifiers:Z

    iget-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->pendingAnnotation:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnAnnotationOfType;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object v0, v0, v1

    iput-object v0, p1, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnAnnotationOfType;->potentialAnnotatedNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->pendingAnnotation:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnAnnotationOfType;

    :cond_0
    return-void
.end method

.method public consumeEnterAnonymousClassBody(Z)V
    .locals 1

    const/16 v0, 0x403

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    const/16 v0, 0x402

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->consumeEnterAnonymousClassBody(Z)V

    return-void
.end method

.method public consumeEnterVariable()V
    .locals 8

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->nestedMethod:[I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->nestedType:I

    aget v0, v0, v2

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->variablesCounter:[I

    aget v2, v4, v2

    iput-boolean v3, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->hasUnusedModifiers:Z

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->indexOfAssistIdentifier()I

    move-result v0

    if-ltz v0, :cond_6

    if-eqz v2, :cond_1

    goto/16 :goto_1

    :cond_1
    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->restartRecovery:Z

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->checkKeyword()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    instance-of v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUnit;

    if-eqz v2, :cond_2

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUnit;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUnit;->typeCount:I

    if-eqz v0, :cond_8

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPositionStack:[J

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    aget-wide v4, v0, v2

    const/16 v0, 0x20

    ushr-long/2addr v4, v0

    long-to-int v0, v4

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    add-int/lit8 v4, v2, -0x1

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intStack:[I

    add-int/lit8 v2, v2, -0x2

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v2, v5, v4

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->getTypeReference(I)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object v2

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    sub-int/2addr v4, v1

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    instance-of v4, v4, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    if-nez v4, :cond_4

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentToken:I

    if-eq v4, v1, :cond_3

    iget v4, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget-object v6, v5, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->lineEnds:[I

    iget v5, v5, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->linePtr:I

    invoke-static {v4, v6, v3, v5}, Lorg/eclipse/jdt/internal/compiler/util/Util;->getLineNumber(I[III)I

    move-result v4

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget-object v6, v5, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->lineEnds:[I

    iget v5, v5, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->linePtr:I

    invoke-static {v0, v6, v3, v5}, Lorg/eclipse/jdt/internal/compiler/util/Util;->getLineNumber(I[III)I

    move-result v5

    if-eq v4, v5, :cond_4

    :cond_3
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->restartRecovery:Z

    return-void

    :cond_4
    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnFieldType;

    invoke-direct {v0, v2, v3}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnFieldType;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Z)V

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthStack:[I

    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    add-int/lit8 v6, v5, -0x1

    iput v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    aget v4, v4, v5

    if-eqz v4, :cond_5

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    sub-int/2addr v6, v4

    iput v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    add-int/2addr v6, v1

    new-array v7, v4, [Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iput-object v7, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    invoke-static {v5, v6, v7, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intStack:[I

    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    add-int/lit8 v6, v5, -0x1

    iput v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v4, v4, v5

    iput v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->modifiers:I

    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    invoke-virtual {v1, v0, v3}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastIgnoredToken:I

    goto :goto_2

    :cond_6
    :goto_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->pendingAnnotation:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnAnnotationOfType;

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    if-eqz v0, :cond_7

    instance-of v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;

    if-eqz v3, :cond_7

    iget-boolean v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->foundOpeningBrace:Z

    if-nez v3, :cond_7

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->methodDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->declarationSourceEnd:I

    if-nez v0, :cond_7

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeEnterVariable()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->pendingAnnotation:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnAnnotationOfType;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object v3, v3, v4

    iput-object v3, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnAnnotationOfType;->potentialAnnotatedNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iput-boolean v1, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnAnnotationOfType;->isParameter:Z

    iput-object v2, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->pendingAnnotation:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnAnnotationOfType;

    goto :goto_2

    :cond_7
    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeEnterVariable()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->pendingAnnotation:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnAnnotationOfType;

    if-eqz v0, :cond_8

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object v1, v1, v3

    iput-object v1, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnAnnotationOfType;->potentialAnnotatedNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iput-object v2, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->pendingAnnotation:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnAnnotationOfType;

    :cond_8
    :goto_2
    return-void
.end method

.method public consumeEnumConstantHeaderName()V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    if-eqz v0, :cond_2

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    if-nez v1, :cond_0

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;->fieldDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-nez v0, :cond_1

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastIgnoredToken:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    :cond_1
    invoke-super {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->consumeEnumConstantHeaderName()V

    return-void

    :cond_2
    invoke-super {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->consumeEnumConstantHeaderName()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->pendingAnnotation:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnAnnotationOfType;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object v1, v1, v2

    iput-object v1, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnAnnotationOfType;->potentialAnnotatedNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->pendingAnnotation:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnAnnotationOfType;

    :cond_3
    return-void
.end method

.method public consumeEnumConstantNoClassBody()V
    .locals 3

    invoke-super {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->consumeEnumConstantNoClassBody()V

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentToken:I

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object v0, v0, v1

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->sourceEnds:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v2, v2, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;->put(Ljava/lang/Object;I)I

    :cond_1
    return-void
.end method

.method public consumeEnumConstantWithClassBody()V
    .locals 3

    invoke-super {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->consumeEnumConstantWithClassBody()V

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentToken:I

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object v0, v0, v1

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->sourceEnds:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v2, v2, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;->put(Ljava/lang/Object;I)I

    :cond_1
    return-void
.end method

.method public consumeEnumHeaderName()V
    .locals 3

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeEnumHeaderName()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->hasUnusedModifiers:Z

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->pendingAnnotation:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnAnnotationOfType;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object v1, v1, v2

    iput-object v1, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnAnnotationOfType;->potentialAnnotatedNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->pendingAnnotation:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnAnnotationOfType;

    :cond_0
    return-void
.end method

.method public consumeEnumHeaderNameWithTypeParameters()V
    .locals 3

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeEnumHeaderNameWithTypeParameters()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->pendingAnnotation:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnAnnotationOfType;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object v1, v1, v2

    iput-object v1, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnAnnotationOfType;->potentialAnnotatedNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->pendingAnnotation:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnAnnotationOfType;

    :cond_0
    return-void
.end method

.method public consumeEqualityExpression(I)V
    .locals 2

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeEqualityExpression(I)V

    const/16 p1, 0x410

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    aget-object p1, p1, v0

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    if-eqz v0, :cond_0

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->right:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-ne v1, v0, :cond_0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->assistNodeParent:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    :cond_0
    return-void
.end method

.method public consumeEqualityExpressionWithName(I)V
    .locals 2

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeEqualityExpressionWithName(I)V

    const/16 p1, 0x410

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    aget-object p1, p1, v0

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    if-eqz v0, :cond_0

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->right:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-ne v1, v0, :cond_0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->assistNodeParent:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    :cond_0
    return-void
.end method

.method public consumeExitVariableWithInitialization()V
    .locals 6

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeExitVariableWithInitialization()V

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentToken:I

    const/16 v1, 0x20

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object v0, v0, v1

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->sourceEnds:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;

    if-eqz v1, :cond_1

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    sub-int/2addr v3, v2

    invoke-virtual {v1, v0, v3}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;->put(Ljava/lang/Object;I)I

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object v0, v0, v1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;

    iget v1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->cursorLocation:I

    add-int/lit8 v3, v1, 0x1

    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v5, v4, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    if-lt v3, v5, :cond_3

    iget v3, v4, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    if-le v1, v3, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    if-eqz v1, :cond_5

    if-ne v1, v4, :cond_5

    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->assistNodeParent:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    goto :goto_1

    :cond_3
    :goto_0
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->isTypeNameVar(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v1

    if-nez v1, :cond_5

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->compilationUnit:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    invoke-virtual {v1, v4}, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->isTypeNameVar(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    iput-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    :cond_5
    :goto_1
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->triggerRecoveryUponLambdaClosure(Lorg/eclipse/jdt/internal/compiler/ast/Statement;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    if-eqz v0, :cond_6

    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->restartRecovery:Z

    :cond_6
    return-void
.end method

.method public consumeExitVariableWithoutInitialization()V
    .locals 3

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeExitVariableWithoutInitialization()V

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentToken:I

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object v0, v0, v1

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->sourceEnds:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v2, v2, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;->put(Ljava/lang/Object;I)I

    :cond_1
    return-void
.end method

.method public consumeExplicitConstructorInvocation(II)V
    .locals 1

    const/16 v0, 0x403

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    const/16 v0, 0x402

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->consumeExplicitConstructorInvocation(II)V

    return-void
.end method

.method public consumeExportsStatement()V
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeExportsStatement()V

    const/16 v0, 0x430

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    const/16 v0, 0x42c

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    return-void
.end method

.method public consumeFieldAccess(Z)V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->invocationType:I

    iput v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->qualifier:I

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->indexOfAssistIdentifier()I

    move-result v0

    if-gez v0, :cond_0

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeFieldAccess(Z)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->pushCompletionOnMemberAccessOnExpressionStack(Z)V

    :goto_0
    return-void
.end method

.method public consumeForceNoDiet()V
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->consumeForceNoDiet()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isInsideMethod()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x40c

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(I)V

    :cond_0
    return-void
.end method

.method public consumeFormalParameter(Z)V
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, -0x1

    iput v1, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->invocationType:I

    iput v1, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->qualifier:I

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->indexOfAssistIdentifier()I

    move-result v1

    const/4 v2, 0x0

    if-gez v1, :cond_0

    invoke-super/range {p0 .. p1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeFormalParameter(Z)V

    iget-object v1, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->pendingAnnotation:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnAnnotationOfType;

    if-eqz v1, :cond_f

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object v3, v3, v4

    iput-object v3, v1, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnAnnotationOfType;->potentialAnnotatedNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iput-object v2, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->pendingAnnotation:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnAnnotationOfType;

    goto/16 :goto_6

    :cond_0
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intStack:[I

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    add-int/lit8 v4, v3, -0x1

    iput v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v5, v1, v3

    const/4 v6, 0x1

    if-nez v5, :cond_1

    iget v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    sub-int/2addr v5, v6

    iput v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    iget v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    sub-int/2addr v5, v6

    iput v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    :cond_1
    iget v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    sub-int/2addr v5, v6

    iput v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierStack:[[C

    iget v7, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    aget-object v9, v5, v7

    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPositionStack:[J

    add-int/lit8 v8, v7, -0x1

    iput v8, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    aget-wide v14, v5, v7

    add-int/lit8 v3, v3, -0x2

    iput v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v1, v1, v4

    if-nez v1, :cond_2

    move-object v3, v2

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->getAnnotationsOnDimensions(I)[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    move-result-object v3

    :goto_0
    const/4 v4, 0x0

    if-eqz p1, :cond_4

    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intStack:[I

    iget v7, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    add-int/lit8 v8, v7, -0x1

    iput v8, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v5, v5, v7

    iget-object v7, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->typeAnnotationLengthStack:[I

    iget v8, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->typeAnnotationLengthPtr:I

    add-int/lit8 v10, v8, -0x1

    iput v10, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->typeAnnotationLengthPtr:I

    aget v7, v7, v8

    if-eqz v7, :cond_3

    iget-object v8, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->typeAnnotationStack:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iget v10, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->typeAnnotationPtr:I

    sub-int/2addr v10, v7

    iput v10, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->typeAnnotationPtr:I

    add-int/2addr v10, v6

    new-array v11, v7, [Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    invoke-static {v8, v10, v11, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_3
    move-object v11, v2

    goto :goto_1

    :cond_4
    move-object v11, v2

    move v5, v4

    :goto_1
    iget-object v7, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intStack:[I

    iget v8, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    add-int/lit8 v10, v8, -0x1

    iput v10, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v7, v7, v8

    invoke-virtual {v0, v7}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->getTypeReference(I)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object v7

    if-nez p1, :cond_6

    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    :goto_2
    move-object v12, v7

    goto :goto_5

    :cond_6
    :goto_3
    if-eqz p1, :cond_8

    if-eqz v11, :cond_7

    new-array v2, v6, [[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    aput-object v11, v2, v4

    :cond_7
    invoke-virtual {v0, v7, v6, v2, v6}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->augmentTypeWithAdditionalDimensions(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;I[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Z)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object v7

    :cond_8
    if-eqz v1, :cond_9

    invoke-virtual {v0, v7, v1, v3, v4}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->augmentTypeWithAdditionalDimensions(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;I[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Z)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object v7

    :cond_9
    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->isParameterizedTypeReference()Z

    move-result v2

    if-eqz v2, :cond_a

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->endStatementPosition:I

    goto :goto_4

    :cond_a
    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->endPosition:I

    :goto_4
    iput v2, v7, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    goto :goto_2

    :goto_5
    if-eqz p1, :cond_c

    if-nez v1, :cond_b

    iput v5, v12, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    :cond_b
    iget v1, v12, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/lit16 v1, v1, 0x4000

    iput v1, v12, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    :cond_c
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    add-int/lit8 v1, v1, -0x2

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    new-instance v1, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnArgumentName;

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intStack:[I

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    add-int/2addr v3, v6

    aget v2, v2, v3

    const v3, -0x100001

    and-int v13, v2, v3

    move-object v8, v1

    move-wide v10, v14

    invoke-direct/range {v8 .. v13}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnArgumentName;-><init>([CJLorg/eclipse/jdt/internal/compiler/ast/TypeReference;I)V

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthStack:[I

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    add-int/lit8 v5, v3, -0x1

    iput v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    aget v2, v2, v3

    if-eqz v2, :cond_d

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    sub-int/2addr v5, v2

    iput v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    add-int/2addr v5, v6

    new-array v7, v2, [Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iput-object v7, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    invoke-static {v3, v5, v7, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentRecoveryType()Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    move-result-object v2

    if-eqz v2, :cond_d

    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->annotationsConsumed([Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)V

    :cond_d
    const/16 v2, 0x600

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementKind(I)I

    move-result v2

    const/16 v3, 0x404

    if-ne v2, v3, :cond_e

    move v4, v6

    :cond_e
    iput-boolean v4, v1, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnArgumentName;->isCatchArgument:Z

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnAstStack(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    iput-object v1, v0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    long-to-int v1, v14

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    iput-boolean v6, v0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isOrphanCompletionNode:Z

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->listLength:I

    add-int/2addr v1, v6

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->listLength:I

    :cond_f
    :goto_6
    return-void
.end method

.method public consumeGenericTypeWithDiamond()V
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeGenericTypeWithDiamond()V

    const/16 v0, 0x410

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    return-void
.end method

.method public consumeImportDeclaration()V
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeImportDeclaration()V

    const/16 v0, 0x42b

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    return-void
.end method

.method public consumeInsideCastExpression()V
    .locals 9

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsLengthStack:[I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsLengthPtr:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsLengthPtr:I

    aget v0, v0, v1

    const/4 v1, 0x1

    if-lez v0, :cond_0

    add-int/lit8 v2, v0, 0x1

    new-array v2, v2, [Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsPtr:I

    sub-int/2addr v3, v0

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsPtr:I

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    add-int/2addr v3, v1

    invoke-static {v4, v3, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intStack:[I

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    add-int/lit8 v5, v4, -0x1

    iput v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v3, v3, v4

    const/16 v4, 0x600

    invoke-virtual {p0, v4}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementKind(I)I

    move-result v4

    const/16 v5, 0x420

    const/4 v6, 0x0

    if-ne v4, v5, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v6

    :goto_1
    if-eqz v4, :cond_2

    invoke-virtual {p0, v5}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthStack:[I

    iget v7, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    aget v5, v5, v7

    if-lez v5, :cond_3

    invoke-virtual {p0, v5}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnGenericsIdentifiersLengthStack(I)V

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthStack:[I

    iget v7, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    aget v5, v5, v7

    if-lez v5, :cond_3

    invoke-virtual {p0, v5}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnGenericsIdentifiersLengthStack(I)V

    invoke-virtual {p0, v6}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnGenericsLengthStack(I)V

    :cond_3
    :goto_2
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intStack:[I

    iget v7, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    add-int/lit8 v8, v7, -0x1

    iput v8, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v5, v5, v7

    invoke-virtual {p0, v5}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->getTypeReference(I)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object v5

    if-lez v0, :cond_4

    aput-object v5, v2, v6

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->createIntersectionCastTypeReference([Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)Lorg/eclipse/jdt/internal/compiler/ast/IntersectionCastTypeReference;

    move-result-object v5

    :cond_4
    if-eqz v4, :cond_5

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    :cond_5
    sub-int/2addr v3, v1

    iput v3, v5, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intStack:[I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v0, v0, v2

    add-int/2addr v0, v1

    iput v0, v5, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {p0, v5}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnExpressionStack(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)V

    const/16 v0, 0x40b

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(I)V

    return-void
.end method

.method public consumeInsideCastExpressionLL1()V
    .locals 4

    const/16 v0, 0x600

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementKind(I)I

    move-result v0

    const/16 v1, 0x420

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    :cond_0
    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->record:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeInsideCastExpressionLL1()V

    goto :goto_1

    :cond_1
    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->skipRecord:Z

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->skipRecord:Z

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeInsideCastExpressionLL1()V

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->record:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    aget-object v1, v1, v2

    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-direct {p0, v2}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->isAlreadyPotentialName(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    const/4 v3, 0x0

    invoke-direct {p0, v3, v2, v1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->addPotentialName([CII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_2
    :goto_0
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->skipRecord:Z

    :goto_1
    const/16 v0, 0x40b

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(I)V

    return-void

    :goto_2
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->skipRecord:Z

    throw v1
.end method

.method public consumeInsideCastExpressionLL1WithBounds()V
    .locals 7

    const/16 v0, 0x600

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementKind(I)I

    move-result v0

    const/16 v1, 0x420

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    :cond_0
    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->record:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeInsideCastExpressionLL1WithBounds()V

    goto :goto_3

    :cond_1
    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->skipRecord:Z

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->skipRecord:Z

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeInsideCastExpressionLL1WithBounds()V

    iget-boolean v2, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->record:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthStack:[I

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    aget v2, v2, v3

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_2

    goto :goto_2

    :cond_2
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    sub-int/2addr v5, v2

    add-int/2addr v5, v3

    add-int/2addr v5, v1

    aget-object v4, v4, v5

    iget v5, v4, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-direct {p0, v5}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->isAlreadyPotentialName(I)Z

    move-result v5

    if-nez v5, :cond_3

    iget v5, v4, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v4, v4, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    const/4 v6, 0x0

    invoke-direct {p0, v6, v5, v4}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->addPotentialName([CII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_4

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->skipRecord:Z

    :goto_3
    const/16 v0, 0x40b

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(I)V

    return-void

    :goto_4
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->skipRecord:Z

    throw v1
.end method

.method public consumeInsideCastExpressionWithQualifiedGenerics()V
    .locals 8

    const/16 v0, 0x420

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intStack:[I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v3, v0, v1

    add-int/lit8 v1, v1, -0x2

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->getAnnotationsOnDimensions(I)[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    move-result-object v2

    :goto_0
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsLengthStack:[I

    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsLengthPtr:I

    add-int/lit8 v6, v5, -0x1

    iput v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsLengthPtr:I

    aget v4, v4, v5

    const/4 v5, 0x1

    if-lez v4, :cond_1

    add-int/lit8 v1, v4, 0x1

    new-array v1, v1, [Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsPtr:I

    sub-int/2addr v6, v4

    iput v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsPtr:I

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    add-int/2addr v6, v5

    invoke-static {v7, v6, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->getTypeReference(I)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object v7

    invoke-virtual {p0, v7, v0, v2}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->computeQualifiedGenericsFromRightSide(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;I[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;

    move-result-object v0

    if-lez v4, :cond_2

    aput-object v0, v1, v6

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->createIntersectionCastTypeReference([Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)Lorg/eclipse/jdt/internal/compiler/ast/IntersectionCastTypeReference;

    move-result-object v0

    :cond_2
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    sub-int/2addr v3, v5

    iput v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intStack:[I

    add-int/lit8 v1, v1, -0x2

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v1, v3, v2

    add-int/2addr v1, v5

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnExpressionStack(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)V

    const/16 v0, 0x40b

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(I)V

    return-void
.end method

.method public consumeInstanceOfExpression()V
    .locals 3

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeInstanceOfExpression()V

    const/16 v0, 0x410

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    const/16 v0, 0x600

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementKind(I)I

    move-result v0

    const/16 v1, 0x413

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    aget-object v0, v0, v1

    const/16 v1, 0x429

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(IILjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    aget-object v0, v0, v1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/InstanceOfExpression;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    if-eqz v1, :cond_1

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/InstanceOfExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-ne v2, v1, :cond_1

    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->assistNodeParent:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    :cond_1
    return-void
.end method

.method public consumeInstanceOfExpressionWithName()V
    .locals 3

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeInstanceOfExpressionWithName()V

    const/16 v0, 0x410

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    aget-object v0, v0, v1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/InstanceOfExpression;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    if-eqz v1, :cond_0

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/InstanceOfExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-ne v2, v1, :cond_0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->assistNodeParent:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    :cond_0
    return-void
.end method

.method public consumeInterfaceHeaderExtends()V
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeInterfaceHeaderExtends()V

    const/16 v0, 0x41d

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    return-void
.end method

.method public consumeInterfaceHeaderName1()V
    .locals 3

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeInterfaceHeaderName1()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->hasUnusedModifiers:Z

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->pendingAnnotation:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnAnnotationOfType;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object v1, v1, v2

    iput-object v1, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnAnnotationOfType;->potentialAnnotatedNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->pendingAnnotation:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnAnnotationOfType;

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->classHeaderExtendsOrImplements(Z)V

    return-void
.end method

.method public consumeInterfaceType()V
    .locals 1

    const/16 v0, 0x406

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(I)V

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeInterfaceType()V

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    return-void
.end method

.method public consumeInvocationExpression()V
    .locals 2

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeInvocationExpression()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->triggerRecoveryUponLambdaClosure(Lorg/eclipse/jdt/internal/compiler/ast/Statement;Z)Z

    return-void
.end method

.method public consumeLabel()V
    .locals 2

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeLabel()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierStack:[[C

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->pushOnLabelStack([C)V

    const/16 v0, 0x424

    iget v1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->labelPtr:I

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(II)V

    return-void
.end method

.method public consumeLambdaExpression()V
    .locals 4

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeLambdaExpression()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    if-eqz v1, :cond_0

    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    if-lt v2, v3, :cond_0

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    if-le v1, v0, :cond_1

    :cond_0
    const/16 v0, 0x207

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    :cond_1
    return-void
.end method

.method public consumeMarkerAnnotation(Z)V
    .locals 3

    const/16 v0, 0x600

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementKind(I)I

    move-result v1

    const/16 v2, 0x421

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementInfo(I)I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->restartRecovery:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeMarkerAnnotation(Z)V

    :goto_0
    return-void
.end method

.method public consumeMemberValueAsName()V
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->indexOfAssistIdentifier()I

    move-result v0

    if-gez v0, :cond_0

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeMemberValueAsName()V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeMemberValueAsName()V

    const/16 v0, 0x600

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementKind(I)I

    move-result v0

    const/16 v1, 0x421

    if-eq v0, v1, :cond_1

    const/16 v1, 0x425

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->restartRecovery:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public consumeMemberValuePair()V
    .locals 6

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->indexOfAssistIdentifier()I

    move-result v0

    if-gez v0, :cond_1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeMemberValuePair()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object v0, v0, v1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    if-eqz v1, :cond_0

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->value:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-ne v2, v1, :cond_0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->assistNodeParent:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierStack:[[C

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    aget-object v0, v0, v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPositionStack:[J

    add-int/lit8 v3, v1, -0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    aget-wide v1, v2, v1

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    long-to-int v3, v1

    const/16 v5, 0x20

    ushr-long/2addr v1, v5

    long-to-int v1, v1

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    sub-int/2addr v2, v4

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    sub-int/2addr v2, v4

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    new-instance v2, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnMemberValueName;

    invoke-direct {v2, v0, v1, v3}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnMemberValueName;-><init>([CII)V

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnAstStack(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    iput-object v2, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v0, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    add-int/2addr v0, v4

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    iput-boolean v4, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isOrphanCompletionNode:Z

    iput-boolean v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->restartRecovery:Z

    return-void
.end method

.method public consumeMethodBody()V
    .locals 1

    const/16 v0, 0x401

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    invoke-super {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->consumeMethodBody()V

    return-void
.end method

.method public consumeMethodDeclaration(ZZ)V
    .locals 1

    if-nez p1, :cond_0

    const/16 v0, 0x401

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->consumeMethodDeclaration(ZZ)V

    return-void
.end method

.method public consumeMethodHeader()V
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->consumeMethodHeader()V

    const/16 v0, 0x401

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(I)V

    return-void
.end method

.method public consumeMethodHeaderExtendedDims()V
    .locals 9

    const/4 v0, 0x1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeMethodHeaderExtendedDims()V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentToken:I

    const/16 v2, 0x16

    if-ne v1, v2, :cond_0

    iget v1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->cursorLocation:I

    add-int/lit8 v2, v1, 0x1

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v4, v3, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    if-lt v2, v4, :cond_0

    iget v2, v3, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    if-ge v1, v2, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushIdentifier()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->indexOfAssistIdentifier()I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthStack:[I

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    aget v3, v3, v4

    sub-int/2addr v2, v3

    add-int/2addr v2, v1

    add-int/2addr v2, v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;

    iget-boolean v3, v1, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->foundOpeningBrace:Z

    if-nez v3, :cond_0

    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->methodDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    iget-object v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-nez v4, :cond_0

    new-instance v4, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnKeyword1;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierStack:[[C

    aget-object v5, v5, v2

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPositionStack:[J

    aget-wide v7, v6, v2

    sget-object v2, Lorg/eclipse/jdt/internal/codeassist/impl/Keywords;->THROWS:[C

    invoke-direct {v4, v5, v7, v8, v2}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnKeyword1;-><init>([CJ[C)V

    new-array v2, v0, [Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    const/4 v5, 0x0

    aput-object v4, v2, v5

    iput-object v2, v3, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iput-boolean v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->foundOpeningBrace:Z

    iput-object v4, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v1, v4, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    :cond_0
    return-void
.end method

.method public consumeMethodHeaderName(Z)V
    .locals 13

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->indexOfAssistIdentifier()I

    move-result v0

    const/16 v1, 0x20

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-gez v0, :cond_6

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    sub-int/2addr v0, v5

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    sub-int/2addr v0, v5

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->indexOfAssistIdentifier()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthStack:[I

    iget v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    aget v0, v0, v6

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsIdentifiersLengthStack:[I

    iget v7, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsIdentifiersLengthPtr:I

    aget v6, v6, v7

    if-eq v0, v6, :cond_0

    goto/16 :goto_0

    :cond_0
    iput-boolean v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->restartRecovery:Z

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    if-eqz p1, :cond_a

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierStack:[[C

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    add-int/lit8 v6, v0, 0x1

    aget-object p1, p1, v6

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPositionStack:[J

    add-int/2addr v0, v5

    aget-wide v7, v6, v0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intStack:[I

    iget v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    add-int/lit8 v9, v6, -0x1

    iput v9, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v0, v0, v6

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->getTypeReference(I)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnSingleTypeReference;

    iput-boolean v4, v6, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnSingleTypeReference;->isCompletionNode:Z

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intStack:[I

    iget v9, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    add-int/lit8 v10, v9, -0x1

    iput v10, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v11, v6, v9

    add-int/lit8 v9, v9, -0x2

    iput v9, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v6, v6, v10

    iget v9, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget-object v10, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget-object v12, v10, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->lineEnds:[I

    iget v10, v10, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->linePtr:I

    invoke-static {v9, v12, v4, v10}, Lorg/eclipse/jdt/internal/compiler/util/Util;->getLineNumber(I[III)I

    move-result v9

    ushr-long/2addr v7, v1

    long-to-int v1, v7

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget-object v8, v7, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->lineEnds:[I

    iget v7, v7, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->linePtr:I

    invoke-static {v1, v8, v4, v7}, Lorg/eclipse/jdt/internal/compiler/util/Util;->getLineNumber(I[III)I

    move-result v1

    if-eq v9, v1, :cond_2

    new-instance p1, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnFieldType;

    invoke-direct {p1, v0, v4}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnFieldType;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Z)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthStack:[I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    add-int/lit8 v7, v2, -0x1

    iput v7, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    aget v1, v1, v2

    if-eqz v1, :cond_1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v7, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    sub-int/2addr v7, v1

    iput v7, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    add-int/2addr v7, v5

    new-array v8, v1, [Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iput-object v8, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    invoke-static {v2, v7, v8, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iput v6, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->modifiers:I

    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    add-int/2addr v0, v5

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    invoke-virtual {v0, p1, v4}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastIgnoredToken:I

    goto/16 :goto_2

    :cond_2
    new-instance v1, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnMethodReturnType;

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->compilationUnit:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iget-object v7, v7, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    invoke-direct {v1, v0, v7}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnMethodReturnType;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthStack:[I

    iget v7, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    add-int/lit8 v8, v7, -0x1

    iput v8, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    aget v0, v0, v7

    if-eqz v0, :cond_3

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v8, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    sub-int/2addr v8, v0

    iput v8, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    add-int/2addr v8, v5

    new-array v9, v0, [Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iput-object v9, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    invoke-static {v7, v8, v9, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    iput-object p1, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->selector:[C

    iput v11, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->declarationSourceStart:I

    iput v6, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->modifiers:I

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lParenPos:I

    add-int/2addr p1, v5

    iput p1, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->bodyStart:I

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->listLength:I

    iput-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    invoke-virtual {p1, v1, v4}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastIgnoredToken:I

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->javadoc:Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;

    iput-object p1, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->javadoc:Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->javadoc:Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;

    goto/16 :goto_2

    :cond_4
    :goto_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    add-int/2addr v0, v5

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    add-int/2addr v1, v5

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPositionStack:[J

    aget-wide v0, v1, v0

    long-to-int v0, v0

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeMethodHeaderName(Z)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->sourceEnds:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;

    if-eqz p1, :cond_5

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    if-le v3, v1, :cond_5

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    aget-object v1, v1, v3

    invoke-virtual {p1, v1, v0}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;->put(Ljava/lang/Object;I)I

    :cond_5
    iget-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->pendingAnnotation:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnAnnotationOfType;

    if-eqz p1, :cond_a

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object v0, v0, v1

    iput-object v0, p1, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnAnnotationOfType;->potentialAnnotatedNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iput-object v2, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->pendingAnnotation:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnAnnotationOfType;

    goto/16 :goto_2

    :cond_6
    new-instance p1, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnMethodName;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->compilationUnit:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    invoke-direct {p1, v0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnMethodName;-><init>(Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierStack:[[C

    iget v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    aget-object v0, v0, v6

    iput-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->selector:[C

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPositionStack:[J

    add-int/lit8 v7, v6, -0x1

    iput v7, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    aget-wide v6, v0, v6

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    sub-int/2addr v0, v5

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intStack:[I

    iget v8, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    add-int/lit8 v9, v8, -0x1

    iput v9, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v0, v0, v8

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->getTypeReference(I)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object v0

    iput-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;->returnType:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget v8, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v9, 0x100000

    and-int/2addr v0, v9

    or-int/2addr v0, v8

    iput v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intStack:[I

    iget v8, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    add-int/lit8 v9, v8, -0x1

    iput v9, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v10, v0, v8

    iput v10, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->declarationSourceStart:I

    add-int/lit8 v8, v8, -0x2

    iput v8, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v0, v0, v9

    iput v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->modifiers:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthStack:[I

    iget v8, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    add-int/lit8 v9, v8, -0x1

    iput v9, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    aget v0, v0, v8

    if-eqz v0, :cond_7

    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v9, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    sub-int/2addr v9, v0

    iput v9, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    add-int/2addr v9, v5

    new-array v10, v0, [Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iput-object v10, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    invoke-static {v8, v9, v10, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->javadoc:Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;

    iput-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->javadoc:Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->javadoc:Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;

    ushr-long v0, v6, v1

    long-to-int v0, v0

    iput v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    long-to-int v0, v6

    iput v0, p1, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnMethodName;->selectorEnd:I

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnAstStack(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lParenPos:I

    iput v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->bodyStart:I

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->listLength:I

    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    if-eqz v0, :cond_a

    instance-of v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    if-nez v0, :cond_9

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;->returnType:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->lineEnds:[I

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->linePtr:I

    invoke-static {v0, v2, v4, v1}, Lorg/eclipse/jdt/internal/compiler/util/Util;->getLineNumber(I[III)I

    move-result v0

    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget-object v6, v2, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->lineEnds:[I

    iget v2, v2, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->linePtr:I

    invoke-static {v1, v6, v4, v2}, Lorg/eclipse/jdt/internal/compiler/util/Util;->getLineNumber(I[III)I

    move-result v1

    if-ne v0, v1, :cond_8

    goto :goto_1

    :cond_8
    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    iput-boolean v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->restartRecovery:Z

    goto :goto_2

    :cond_9
    :goto_1
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->bodyStart:I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    invoke-virtual {v0, p1, v4}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastIgnoredToken:I

    :cond_a
    :goto_2
    return-void
.end method

.method public consumeMethodHeaderNameWithTypeParameters(Z)V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPositionStack:[J

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    aget-wide v1, v0, v1

    long-to-int v0, v1

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeMethodHeaderNameWithTypeParameters(Z)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->sourceEnds:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;

    if-eqz p1, :cond_0

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    if-le v2, v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    aget-object v1, v1, v2

    invoke-virtual {p1, v1, v0}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;->put(Ljava/lang/Object;I)I

    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->pendingAnnotation:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnAnnotationOfType;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object v0, v0, v1

    iput-object v0, p1, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnAnnotationOfType;->potentialAnnotatedNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->pendingAnnotation:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnAnnotationOfType;

    :cond_1
    return-void
.end method

.method public consumeMethodHeaderRightParen()V
    .locals 9

    const/4 v0, 0x1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeMethodHeaderRightParen()V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentToken:I

    const/16 v2, 0x16

    if-ne v1, v2, :cond_0

    iget v1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->cursorLocation:I

    add-int/lit8 v2, v1, 0x1

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v4, v3, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    if-lt v2, v4, :cond_0

    iget v2, v3, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    if-ge v1, v2, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushIdentifier()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->indexOfAssistIdentifier()I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthStack:[I

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    aget v3, v3, v4

    sub-int/2addr v2, v3

    add-int/2addr v2, v1

    add-int/2addr v2, v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    instance-of v3, v1, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;

    if-eqz v3, :cond_0

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;

    iget-boolean v3, v1, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->foundOpeningBrace:Z

    if-nez v3, :cond_0

    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->methodDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    iget-object v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-nez v4, :cond_0

    new-instance v4, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnKeyword1;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierStack:[[C

    aget-object v5, v5, v2

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPositionStack:[J

    aget-wide v7, v6, v2

    sget-object v2, Lorg/eclipse/jdt/internal/codeassist/impl/Keywords;->THROWS:[C

    invoke-direct {v4, v5, v7, v8, v2}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnKeyword1;-><init>([CJ[C)V

    new-array v2, v0, [Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    const/4 v5, 0x0

    aput-object v4, v2, v5

    iput-object v2, v3, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iput-boolean v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->foundOpeningBrace:Z

    iput-object v4, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v1, v4, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    :cond_0
    return-void
.end method

.method public consumeMethodInvocationName()V
    .locals 1

    const/16 v0, 0x403

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    const/16 v0, 0x402

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    invoke-super {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->consumeMethodInvocationName()V

    return-void
.end method

.method public consumeMethodInvocationNameWithTypeArguments()V
    .locals 1

    const/16 v0, 0x403

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    const/16 v0, 0x402

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    invoke-super {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->consumeMethodInvocationNameWithTypeArguments()V

    return-void
.end method

.method public consumeMethodInvocationPrimary()V
    .locals 1

    const/16 v0, 0x403

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    const/16 v0, 0x402

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    invoke-super {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->consumeMethodInvocationPrimary()V

    return-void
.end method

.method public consumeMethodInvocationPrimaryWithTypeArguments()V
    .locals 1

    const/16 v0, 0x403

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    const/16 v0, 0x402

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    invoke-super {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->consumeMethodInvocationPrimaryWithTypeArguments()V

    return-void
.end method

.method public consumeMethodInvocationSuper()V
    .locals 1

    const/16 v0, 0x403

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    const/16 v0, 0x402

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    invoke-super {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->consumeMethodInvocationSuper()V

    return-void
.end method

.method public consumeMethodInvocationSuperWithTypeArguments()V
    .locals 1

    const/16 v0, 0x403

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    const/16 v0, 0x402

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    invoke-super {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->consumeMethodInvocationSuperWithTypeArguments()V

    return-void
.end method

.method public consumeModifiers()V
    .locals 3

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeModifiers()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intStack:[I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v2, v0, v1

    iput v2, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->lastModifiersStart:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->lastModifiers:I

    return-void
.end method

.method public consumeModuleHeader()V
    .locals 0

    invoke-super {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->consumeModuleHeader()V

    return-void
.end method

.method public consumeNestedMethod()V
    .locals 2

    invoke-super {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->consumeNestedMethod()V

    const/16 v0, 0x600

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementKind(I)I

    move-result v0

    const/16 v1, 0x401

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(I)V

    :cond_0
    return-void
.end method

.method public consumeNormalAnnotation(Z)V
    .locals 7

    const/16 v0, 0x600

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementKind(I)I

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0x421

    if-ne v1, v3, :cond_0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementInfo(I)I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->restartRecovery:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    if-ltz v0, :cond_3

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    aget-object v0, v1, v0

    instance-of v1, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnMarkerAnnotationName;

    if-eqz v1, :cond_3

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    if-eqz p1, :cond_1

    iget p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->declarationSourceEnd:I

    invoke-virtual {p0, p1, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->annotationRecoveryCheckPoint(II)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    instance-of v1, p1, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;

    if-eqz v1, :cond_1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;->addAnnotation(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    :cond_1
    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->statementRecoveryActivated:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-wide v3, p1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    const-wide/32 v5, 0x310000

    cmp-long p1, v3, v5

    if-gez p1, :cond_2

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastErrorEndPositionBeforeRecovery:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    if-ge p1, v1, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->invalidUsageOfAnnotation(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)V

    :cond_2
    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->recordStringLiterals:Z

    return-void

    :cond_3
    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeNormalAnnotation(Z)V

    :goto_0
    return-void
.end method

.method public consumeOnlySynchronized()V
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeOnlySynchronized()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->hasUnusedModifiers:Z

    return-void
.end method

.method public consumeOnlyTypeArguments()V
    .locals 2

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeOnlyTypeArguments()V

    const/16 v0, 0x410

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    const/16 v0, 0x600

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementKind(I)I

    move-result v0

    const/16 v1, 0x41e

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(II)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x41f

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    :goto_0
    return-void
.end method

.method public consumeOnlyTypeArgumentsForCastExpression()V
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeOnlyTypeArgumentsForCastExpression()V

    const/16 v0, 0x420

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(I)V

    return-void
.end method

.method public consumeOpenFakeBlock()V
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->consumeOpenFakeBlock()V

    const/16 v0, 0x401

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(I)V

    return-void
.end method

.method public consumeOpensStatement()V
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeOpensStatement()V

    const/16 v0, 0x430

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    const/16 v0, 0x433

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    return-void
.end method

.method public consumePackageDeclarationName()V
    .locals 2

    invoke-super {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->consumePackageDeclarationName()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->pendingAnnotation:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnAnnotationOfType;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->compilationUnit:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->currentPackage:Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    iput-object v1, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnAnnotationOfType;->potentialAnnotatedNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->pendingAnnotation:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnAnnotationOfType;

    :cond_0
    return-void
.end method

.method public consumePackageDeclarationNameWithModifiers()V
    .locals 2

    invoke-super {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->consumePackageDeclarationNameWithModifiers()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->pendingAnnotation:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnAnnotationOfType;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->compilationUnit:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->currentPackage:Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    iput-object v1, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnAnnotationOfType;->potentialAnnotatedNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->pendingAnnotation:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnAnnotationOfType;

    :cond_0
    return-void
.end method

.method public consumePostfixExpression()V
    .locals 2

    const/16 v0, 0x600

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementKind(I)I

    move-result v0

    const/16 v1, 0x422

    if-eq v0, v1, :cond_0

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumePostfixExpression()V

    :cond_0
    return-void
.end method

.method public consumePrimaryNoNewArrayName()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->invocationType:I

    iput v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->qualifier:I

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumePrimaryNoNewArrayName()V

    return-void
.end method

.method public consumePrimaryNoNewArrayNameThis()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->invocationType:I

    iput v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->qualifier:I

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumePrimaryNoNewArrayNameThis()V

    return-void
.end method

.method public consumeProvidesInterface()V
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeProvidesInterface()V

    const/16 v0, 0x431

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(I)V

    return-void
.end method

.method public consumeProvidesStatement()V
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeProvidesStatement()V

    const/16 v0, 0x42f

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    return-void
.end method

.method public consumePushCombineModifiers()V
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumePushCombineModifiers()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isInsideMethod()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->hasUnusedModifiers:Z

    :cond_0
    return-void
.end method

.method public consumePushPosition()V
    .locals 3

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumePushPosition()V

    const/16 v0, 0x600

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementKind(I)I

    move-result v1

    const/16 v2, 0x410

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementInfo(I)I

    move-result v0

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    const/16 v1, 0x40f

    invoke-virtual {p0, v1, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(II)V

    :cond_0
    return-void
.end method

.method public consumeQualifiedSuperReceiver()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->invocationType:I

    iput v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->qualifier:I

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeQualifiedSuperReceiver()V

    return-void
.end method

.method public consumeReferenceExpression(Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->inReferenceExpression:Z

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeReferenceExpression(Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;)V

    return-void
.end method

.method public consumeReferenceType()V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthStack:[I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    aget v0, v0, v1

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->invocationType:I

    iput v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->qualifier:I

    :cond_0
    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeReferenceType()V

    return-void
.end method

.method public consumeReferenceType1()V
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeReferenceType1()V

    const/16 v0, 0x410

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    return-void
.end method

.method public consumeReferenceType2()V
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeReferenceType2()V

    const/16 v0, 0x410

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    return-void
.end method

.method public consumeReferenceType3()V
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeReferenceType3()V

    const/16 v0, 0x410

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    return-void
.end method

.method public consumeRequiresStatement()V
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeRequiresStatement()V

    const/16 v0, 0x42d

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    return-void
.end method

.method public consumeRestoreDiet()V
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->consumeRestoreDiet()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isInsideMethod()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x40c

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    :cond_0
    return-void
.end method

.method public consumeRightParen()V
    .locals 0

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeRightParen()V

    return-void
.end method

.method public consumeSingleMemberAnnotation(Z)V
    .locals 3

    const/16 v0, 0x600

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementKind(I)I

    move-result v1

    const/16 v2, 0x421

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementInfo(I)I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->restartRecovery:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeSingleMemberAnnotation(Z)V

    :goto_0
    return-void
.end method

.method public consumeSinglePkgName()V
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->consumeSinglePkgName()V

    const/16 v0, 0x430

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(I)V

    return-void
.end method

.method public consumeSingleStaticImportDeclarationName()V
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->consumeSingleStaticImportDeclarationName()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->pendingAnnotation:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnAnnotationOfType;

    return-void
.end method

.method public consumeSingleTypeImportDeclarationName()V
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->consumeSingleTypeImportDeclarationName()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->pendingAnnotation:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnAnnotationOfType;

    return-void
.end method

.method public consumeStatementBreakWithLabel()V
    .locals 3

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeStatementBreakWithLabel()V

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->record:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object v0, v0, v1

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->isAlreadyPotentialName(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    const/4 v2, 0x0

    invoke-direct {p0, v2, v1, v0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->addPotentialName([CII)V

    :cond_0
    return-void
.end method

.method public consumeStatementFor()V
    .locals 2

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeStatementFor()V

    const/16 v0, 0x600

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementKind(I)I

    move-result v0

    const/16 v1, 0x426

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    :cond_0
    return-void
.end method

.method public consumeStatementIfNoElse()V
    .locals 2

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeStatementIfNoElse()V

    const/16 v0, 0x600

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementKind(I)I

    move-result v0

    const/16 v1, 0x426

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    :cond_0
    return-void
.end method

.method public consumeStatementIfWithElse()V
    .locals 2

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeStatementIfWithElse()V

    const/16 v0, 0x600

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementKind(I)I

    move-result v0

    const/16 v1, 0x426

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    :cond_0
    return-void
.end method

.method public consumeStatementLabel()V
    .locals 1

    const/16 v0, 0x424

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeStatementLabel()V

    return-void
.end method

.method public consumeStatementSwitch()V
    .locals 2

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeStatementSwitch()V

    const/16 v0, 0x600

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementKind(I)I

    move-result v0

    const/16 v1, 0x419

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    const/16 v0, 0x401

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    :cond_0
    return-void
.end method

.method public consumeStatementWhile()V
    .locals 2

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeStatementWhile()V

    const/16 v0, 0x600

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementKind(I)I

    move-result v0

    const/16 v1, 0x426

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    :cond_0
    return-void
.end method

.method public consumeStaticImportOnDemandDeclarationName()V
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->consumeStaticImportOnDemandDeclarationName()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->pendingAnnotation:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnAnnotationOfType;

    return-void
.end method

.method public consumeStaticInitializer()V
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->consumeStaticInitializer()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->pendingAnnotation:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnAnnotationOfType;

    return-void
.end method

.method public consumeSwitchExpression()V
    .locals 2

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeSwitchExpression()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    aget-object v0, v0, v1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->resolveAll:Z

    :cond_0
    return-void
.end method

.method public consumeToken(I)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-boolean v2, v0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isFirst:Z

    if-eqz v2, :cond_0

    invoke-super/range {p0 .. p1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->consumeToken(I)V

    return-void

    :cond_0
    iget v2, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->canBeExplicitConstructor:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v5, :cond_1

    iput v3, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->canBeExplicitConstructor:I

    goto :goto_0

    :cond_1
    iput v4, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->canBeExplicitConstructor:I

    :goto_0
    iget v2, v0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->previousToken:I

    iget v6, v0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->previousIdentifierPtr:I

    invoke-direct/range {p0 .. p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->isInsideEnhancedForLoopWithoutBlock(I)V

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isInsideMethod()Z

    move-result v7

    const/16 v8, 0x41e

    const/16 v9, 0x425

    const/16 v10, 0x16

    const/4 v11, 0x6

    const/16 v12, 0x408

    const/16 v13, 0x401

    const/16 v14, 0x600

    if-nez v7, :cond_2

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isInsideFieldInitialization()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->isInsideAnnotation()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isInsideEnumConstantnitialization()Z

    move-result v7

    if-eqz v7, :cond_b

    :cond_2
    if-eq v1, v11, :cond_a

    const/16 v7, 0x17

    if-eq v1, v7, :cond_8

    const/16 v7, 0x21

    if-eq v1, v7, :cond_5

    const/16 v7, 0x31

    if-eq v1, v7, :cond_4

    const/16 v7, 0x42

    if-eq v1, v7, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v14}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementKind(I)I

    move-result v7

    const/16 v15, 0x41c

    if-ne v7, v15, :cond_b

    const/16 v7, 0x41c

    invoke-virtual {v0, v7}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v12}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    goto :goto_1

    :cond_5
    invoke-virtual {v0, v14}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementKind(I)I

    move-result v7

    const/16 v15, 0x207

    if-eq v7, v15, :cond_b

    if-eq v7, v13, :cond_7

    if-eq v7, v9, :cond_6

    const/16 v7, 0x40d

    invoke-virtual {v0, v7}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    goto :goto_1

    :cond_6
    invoke-virtual {v0, v9}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    goto :goto_1

    :cond_7
    invoke-virtual {v0, v13}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    goto :goto_1

    :cond_8
    if-ne v2, v10, :cond_9

    invoke-virtual {v0, v14}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementKind(I)I

    move-result v7

    if-ne v7, v8, :cond_9

    invoke-virtual {v0, v8}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    goto :goto_1

    :cond_9
    invoke-virtual {v0, v12}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    goto :goto_1

    :cond_a
    invoke-virtual {v0, v14}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementKind(I)I

    move-result v7

    if-ne v7, v12, :cond_b

    invoke-virtual {v0, v12}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    const/16 v7, 0x40e

    invoke-virtual {v0, v7}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(I)V

    :cond_b
    :goto_1
    invoke-super/range {p0 .. p1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->consumeToken(I)V

    if-ne v1, v10, :cond_f

    iget-object v7, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierStack:[[C

    iget v15, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    aget-object v7, v7, v15

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->assistIdentifier()[C

    move-result-object v15

    if-ne v7, v15, :cond_f

    iget-object v7, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    if-nez v7, :cond_f

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isIndirectlyInsideLambdaExpression()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isIndirectlyInsideLambdaBlock()Z

    move-result v7

    if-eqz v7, :cond_f

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isIndirectlyInsideFieldInitialization()Z

    move-result v7

    if-nez v7, :cond_d

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isIndirectlyInsideEnumConstantnitialization()Z

    move-result v7

    if-eqz v7, :cond_f

    :cond_d
    iget-object v7, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v15, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->cursorLocation:I

    const v8, 0x7fffffff

    if-ge v15, v8, :cond_e

    add-int/lit8 v15, v15, 0x1

    :cond_e
    iput v15, v7, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->eofPosition:I

    :cond_f
    const/16 v7, 0x6a

    if-ne v1, v7, :cond_10

    const/16 v7, 0x42b

    invoke-virtual {v0, v7}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(I)V

    goto :goto_2

    :cond_10
    const/16 v7, 0x74

    if-ne v1, v7, :cond_11

    const/16 v7, 0x42c

    invoke-virtual {v0, v7}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(I)V

    goto :goto_2

    :cond_11
    const/16 v7, 0x75

    if-ne v1, v7, :cond_12

    const/16 v7, 0x433

    invoke-virtual {v0, v7}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(I)V

    goto :goto_2

    :cond_12
    const/16 v7, 0x7c

    if-ne v1, v7, :cond_13

    const/16 v7, 0x430

    invoke-virtual {v0, v7}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    goto :goto_2

    :cond_13
    const/16 v7, 0x73

    if-ne v1, v7, :cond_14

    const/16 v7, 0x42d

    invoke-virtual {v0, v7}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(I)V

    goto :goto_2

    :cond_14
    const/16 v7, 0x77

    if-ne v1, v7, :cond_15

    const/16 v7, 0x42f

    invoke-virtual {v0, v7}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(I)V

    goto :goto_2

    :cond_15
    const/16 v7, 0x76

    if-ne v1, v7, :cond_16

    const/16 v7, 0x42e

    invoke-virtual {v0, v7}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(I)V

    goto :goto_2

    :cond_16
    const/16 v7, 0x7d

    if-ne v1, v7, :cond_17

    const/16 v7, 0x431

    invoke-virtual {v0, v7}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    const/16 v7, 0x432

    invoke-virtual {v0, v7}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(I)V

    :cond_17
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isInsideMethod()Z

    move-result v7

    const/16 v8, 0x421

    const/16 v15, 0x410

    if-nez v7, :cond_1d

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isInsideFieldInitialization()Z

    move-result v7

    if-nez v7, :cond_1d

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isInsideAttributeValue()Z

    move-result v7

    if-nez v7, :cond_1d

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isInsideEnumConstantnitialization()Z

    move-result v7

    if-eqz v7, :cond_18

    goto :goto_3

    :cond_18
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->isInsideAnnotation()Z

    move-result v2

    if-eqz v2, :cond_1a

    const/16 v2, 0x31

    if-eq v1, v2, :cond_19

    goto/16 :goto_e

    :cond_19
    iget v1, v0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->bracketDepth:I

    add-int/2addr v1, v5

    iput v1, v0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->bracketDepth:I

    invoke-virtual {v0, v14}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementKind(I)I

    move-result v1

    if-ne v1, v8, :cond_5c

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->endPosition:I

    invoke-virtual {v0, v9, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(II)V

    goto/16 :goto_e

    :cond_1a
    const/16 v2, 0xb

    if-eq v1, v2, :cond_1c

    const/16 v2, 0x56

    if-eq v1, v2, :cond_1b

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_e

    :pswitch_0
    const/16 v1, 0x13

    invoke-virtual {v0, v15, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(II)V

    goto/16 :goto_e

    :pswitch_1
    invoke-virtual {v0, v15, v11}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(II)V

    goto/16 :goto_e

    :pswitch_2
    const/16 v1, 0x11

    invoke-virtual {v0, v15, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(II)V

    goto/16 :goto_e

    :cond_1b
    const/16 v1, 0x41d

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(I)V

    goto/16 :goto_e

    :cond_1c
    const/4 v1, 0x4

    invoke-virtual {v0, v15, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(II)V

    goto/16 :goto_e

    :cond_1d
    :goto_3
    const/16 v7, 0x56

    if-eq v1, v7, :cond_5b

    const/16 v7, 0x62

    const/16 v10, 0x41b

    const/16 v11, 0x41a

    if-eq v1, v7, :cond_58

    const/16 v7, 0x70

    const/16 v4, 0x426

    if-eq v1, v7, :cond_56

    const/16 v7, 0x65

    if-eq v1, v7, :cond_55

    const/16 v7, 0x66

    const/16 v15, 0x404

    if-eq v1, v7, :cond_54

    const/16 v7, 0x418

    const/16 v12, 0x415

    const/4 v9, -0x5

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    packed-switch v1, :pswitch_data_3

    packed-switch v1, :pswitch_data_4

    packed-switch v1, :pswitch_data_5

    packed-switch v1, :pswitch_data_6

    packed-switch v1, :pswitch_data_7

    goto/16 :goto_e

    :pswitch_3
    const/16 v1, 0x40a

    iget v2, v0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->bracketDepth:I

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(II)V

    goto/16 :goto_e

    :pswitch_4
    const/16 v1, 0x413

    iget v2, v0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->bracketDepth:I

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(II)V

    goto/16 :goto_e

    :pswitch_5
    iget v1, v0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->bracketDepth:I

    invoke-virtual {v0, v12, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(II)V

    goto/16 :goto_e

    :pswitch_6
    const/16 v1, 0x423

    iget v2, v0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->bracketDepth:I

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(II)V

    goto/16 :goto_e

    :pswitch_7
    const/16 v1, 0x422

    iget v2, v0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->bracketDepth:I

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(II)V

    goto/16 :goto_e

    :pswitch_8
    iget v1, v0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->bracketDepth:I

    invoke-virtual {v0, v7, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(II)V

    goto/16 :goto_e

    :pswitch_9
    const/16 v1, 0x414

    iget v2, v0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->bracketDepth:I

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(II)V

    goto/16 :goto_e

    :pswitch_a
    const/16 v1, 0x409

    iget v2, v0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->bracketDepth:I

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(II)V

    goto/16 :goto_e

    :pswitch_b
    invoke-virtual {v0, v10}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(I)V

    goto/16 :goto_e

    :pswitch_c
    const/16 v1, 0x40f

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(II)V

    goto/16 :goto_e

    :pswitch_d
    const/16 v1, 0x40f

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(II)V

    goto/16 :goto_e

    :pswitch_e
    invoke-virtual {v0, v14}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementKind(I)I

    move-result v1

    const/16 v2, 0x412

    if-eq v1, v2, :cond_21

    if-eq v1, v7, :cond_20

    if-eq v1, v11, :cond_1f

    if-eq v1, v10, :cond_1e

    goto/16 :goto_e

    :cond_1e
    invoke-virtual {v0, v10}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    goto/16 :goto_e

    :cond_1f
    invoke-virtual {v0, v11}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    goto/16 :goto_e

    :cond_20
    const/16 v1, 0x427

    iget v2, v0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->bracketDepth:I

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(II)V

    goto/16 :goto_e

    :cond_21
    invoke-virtual {v0, v14}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementInfo(I)I

    move-result v1

    if-ne v1, v5, :cond_5c

    const/16 v1, 0x412

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    invoke-virtual {v0, v1, v3}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(II)V

    goto/16 :goto_e

    :pswitch_f
    const/16 v1, 0x416

    iget v2, v0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->bracketDepth:I

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(II)V

    goto/16 :goto_e

    :pswitch_10
    const/16 v1, 0x417

    iget v2, v0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->bracketDepth:I

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(II)V

    goto/16 :goto_e

    :pswitch_11
    invoke-virtual {v0, v14}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementKind(I)I

    move-result v1

    const/16 v6, 0x204

    if-eq v1, v6, :cond_2d

    const/16 v6, 0x40c

    if-eq v1, v6, :cond_2d

    const/16 v6, 0x40e

    if-ne v1, v6, :cond_22

    goto/16 :goto_5

    :cond_22
    if-eq v1, v8, :cond_2c

    const/16 v6, 0x205

    if-ne v1, v6, :cond_23

    goto :goto_4

    :cond_23
    if-ne v1, v4, :cond_25

    invoke-virtual {v0, v14}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementInfo(I)I

    move-result v1

    invoke-virtual {v0, v4}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    if-ne v1, v5, :cond_24

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v13, v5, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(IILjava/lang/Object;)V

    goto/16 :goto_e

    :cond_24
    invoke-virtual {v0, v13, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(II)V

    goto/16 :goto_e

    :cond_25
    const/16 v1, 0x19

    if-eq v2, v1, :cond_28

    const/16 v1, 0x4f

    if-eq v2, v1, :cond_27

    const/16 v1, 0x53

    if-eq v2, v1, :cond_26

    const/16 v1, 0x62

    if-eq v2, v1, :cond_5c

    invoke-virtual {v0, v13}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(I)V

    goto/16 :goto_e

    :cond_26
    invoke-virtual {v0, v13, v3}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(II)V

    goto/16 :goto_e

    :cond_27
    const/4 v1, 0x7

    invoke-virtual {v0, v13, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(II)V

    goto/16 :goto_e

    :cond_28
    iget v1, v0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->previousKind:I

    if-eq v1, v15, :cond_2b

    const/16 v2, 0x416

    if-eq v1, v2, :cond_2a

    const/16 v2, 0x417

    if-eq v1, v2, :cond_29

    invoke-virtual {v0, v13}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(I)V

    goto/16 :goto_e

    :cond_29
    const/16 v1, 0x8

    invoke-virtual {v0, v13, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(II)V

    goto/16 :goto_e

    :cond_2a
    const/4 v1, 0x5

    invoke-virtual {v0, v13, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(II)V

    goto/16 :goto_e

    :cond_2b
    const/4 v1, 0x3

    invoke-virtual {v0, v13, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(II)V

    goto/16 :goto_e

    :cond_2c
    :goto_4
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->endPosition:I

    const/16 v2, 0x425

    invoke-virtual {v0, v2, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(II)V

    goto/16 :goto_e

    :cond_2d
    :goto_5
    const/16 v1, 0x40d

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->endPosition:I

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(II)V

    goto/16 :goto_e

    :pswitch_12
    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->inReferenceExpression:Z

    if-eqz v1, :cond_2e

    goto/16 :goto_e

    :cond_2e
    const/16 v1, 0x408

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(I)V

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    iput v1, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->qualifier:I

    if-ne v2, v5, :cond_2f

    iput v9, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->invocationType:I

    goto/16 :goto_e

    :cond_2f
    const/4 v1, -0x4

    iput v1, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->invocationType:I

    goto/16 :goto_e

    :pswitch_13
    if-ne v2, v5, :cond_5c

    iput v9, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->invocationType:I

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    iput v1, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->qualifier:I

    goto/16 :goto_e

    :pswitch_14
    if-ne v2, v5, :cond_5c

    iput v9, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->invocationType:I

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    iput v1, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->qualifier:I

    goto/16 :goto_e

    :pswitch_15
    invoke-virtual {v0, v14}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementKind(I)I

    move-result v1

    if-eq v1, v11, :cond_30

    goto/16 :goto_e

    :cond_30
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    sub-int/2addr v1, v5

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthStack:[I

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    aget v3, v1, v2

    sub-int/2addr v3, v5

    aput v3, v1, v2

    goto/16 :goto_e

    :pswitch_16
    const/16 v1, 0x410

    invoke-virtual {v0, v1, v5}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(II)V

    goto/16 :goto_e

    :pswitch_17
    const/16 v1, 0x410

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(II)V

    goto/16 :goto_e

    :pswitch_18
    const/16 v1, 0xb

    if-eq v2, v1, :cond_5c

    const/16 v1, 0x20

    if-eq v2, v1, :cond_5c

    const/16 v1, 0x412

    invoke-virtual {v0, v1, v5}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(II)V

    goto/16 :goto_e

    :pswitch_19
    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementKind(I)I

    move-result v1

    if-eq v1, v15, :cond_5c

    const/4 v1, 0x3

    const/16 v2, 0x410

    invoke-virtual {v0, v2, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(II)V

    goto/16 :goto_e

    :pswitch_1a
    invoke-virtual {v0, v14}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementKind(I)I

    move-result v1

    const/16 v2, 0x409

    if-eq v1, v2, :cond_38

    const/16 v2, 0x40a

    if-eq v1, v2, :cond_37

    if-eq v1, v12, :cond_36

    if-eq v1, v7, :cond_35

    const/16 v2, 0x422

    if-eq v1, v2, :cond_34

    const/16 v2, 0x423

    if-eq v1, v2, :cond_33

    const/16 v2, 0x427

    if-eq v1, v2, :cond_32

    const/16 v2, 0x428

    if-eq v1, v2, :cond_31

    goto/16 :goto_e

    :cond_31
    invoke-virtual {v0, v14}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementInfo(I)I

    move-result v1

    iget v2, v0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->bracketDepth:I

    sub-int/2addr v2, v5

    if-ne v1, v2, :cond_5c

    const/16 v1, 0x428

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    iget v1, v0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->bracketDepth:I

    sub-int/2addr v1, v5

    invoke-virtual {v0, v12, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(II)V

    goto/16 :goto_e

    :cond_32
    invoke-virtual {v0, v14}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementInfo(I)I

    move-result v1

    iget v2, v0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->bracketDepth:I

    if-ne v1, v2, :cond_5c

    const/16 v1, 0x427

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    invoke-virtual {v0, v7}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    goto/16 :goto_e

    :cond_33
    invoke-virtual {v0, v14}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementInfo(I)I

    move-result v1

    iget v2, v0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->bracketDepth:I

    if-ne v1, v2, :cond_5c

    const/16 v1, 0x423

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    goto/16 :goto_e

    :cond_34
    invoke-virtual {v0, v14}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementInfo(I)I

    move-result v1

    iget v2, v0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->bracketDepth:I

    if-ne v1, v2, :cond_5c

    const/16 v1, 0x422

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    goto/16 :goto_e

    :cond_35
    invoke-virtual {v0, v14}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementInfo(I)I

    move-result v1

    iget v2, v0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->bracketDepth:I

    if-ne v1, v2, :cond_5c

    invoke-virtual {v0, v7}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    goto/16 :goto_e

    :cond_36
    invoke-virtual {v0, v14}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementInfo(I)I

    move-result v1

    iget v2, v0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->bracketDepth:I

    sub-int/2addr v2, v5

    if-ne v1, v2, :cond_5c

    invoke-virtual {v0, v12}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    iget v1, v0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->bracketDepth:I

    sub-int/2addr v1, v5

    const/16 v2, 0x428

    invoke-virtual {v0, v2, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(II)V

    goto/16 :goto_e

    :cond_37
    invoke-virtual {v0, v14}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementInfo(I)I

    move-result v1

    iget v2, v0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->bracketDepth:I

    if-ne v1, v2, :cond_5c

    const/16 v1, 0x40a

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    goto/16 :goto_e

    :cond_38
    invoke-virtual {v0, v14}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementInfo(I)I

    move-result v1

    iget v2, v0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->bracketDepth:I

    if-ne v1, v2, :cond_5c

    const/16 v1, 0x409

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    goto/16 :goto_e

    :pswitch_1b
    invoke-virtual {v0, v14}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementKind(I)I

    move-result v1

    if-eq v1, v15, :cond_3a

    const/16 v2, 0x429

    if-eq v1, v2, :cond_39

    packed-switch v1, :pswitch_data_8

    goto/16 :goto_e

    :pswitch_1c
    invoke-virtual {v0, v14}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementInfo(I)I

    move-result v1

    iget v2, v0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->bracketDepth:I

    if-ne v1, v2, :cond_5c

    const/16 v1, 0x417

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    goto/16 :goto_e

    :pswitch_1d
    invoke-virtual {v0, v14}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementInfo(I)I

    move-result v1

    iget v2, v0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->bracketDepth:I

    if-ne v1, v2, :cond_5c

    const/16 v1, 0x416

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    goto/16 :goto_e

    :pswitch_1e
    invoke-virtual {v0, v14}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementInfo(I)I

    move-result v1

    iget v2, v0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->bracketDepth:I

    if-ne v1, v2, :cond_5c

    invoke-virtual {v0, v12}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    const/4 v1, 0x6

    invoke-virtual {v0, v4, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(II)V

    goto/16 :goto_e

    :pswitch_1f
    invoke-virtual {v0, v14}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementInfo(I)I

    move-result v1

    iget v2, v0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->bracketDepth:I

    if-ne v1, v2, :cond_5c

    const/16 v1, 0x414

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    const/4 v1, 0x4

    invoke-virtual {v0, v4, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(II)V

    goto/16 :goto_e

    :cond_39
    const/16 v1, 0x429

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    :pswitch_20
    invoke-virtual {v0, v14}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementInfo(I)I

    move-result v1

    iget v2, v0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->bracketDepth:I

    if-ne v1, v2, :cond_5c

    const/16 v1, 0x413

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v4, v5, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(IILjava/lang/Object;)V

    goto/16 :goto_e

    :cond_3a
    invoke-virtual {v0, v15}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    goto/16 :goto_e

    :pswitch_21
    const/16 v1, 0x8

    const/16 v2, 0x410

    invoke-virtual {v0, v2, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(II)V

    goto/16 :goto_e

    :pswitch_22
    iget v1, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->invocationType:I

    const/4 v4, -0x1

    if-eq v1, v4, :cond_3b

    const/4 v4, -0x3

    if-eq v1, v4, :cond_3b

    const/4 v4, -0x2

    if-ne v1, v4, :cond_3c

    :cond_3b
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    iput v1, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->qualifier:I

    :cond_3c
    const/16 v1, 0x201

    const/16 v4, 0x16

    if-eq v2, v4, :cond_47

    const/16 v3, 0x22

    if-eq v2, v3, :cond_44

    const/16 v3, 0x23

    if-eq v2, v3, :cond_41

    packed-switch v2, :pswitch_data_9

    goto/16 :goto_e

    :pswitch_23
    invoke-virtual {v0, v14}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementKind(I)I

    move-result v2

    if-ne v2, v1, :cond_3e

    invoke-virtual {v0, v14, v5}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementKind(II)I

    move-result v2

    const/16 v3, 0x410

    if-ne v2, v3, :cond_3f

    invoke-virtual {v0, v14, v5}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementInfo(II)I

    move-result v2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_3d

    const/16 v3, 0x11

    if-eq v2, v3, :cond_3d

    const/16 v3, 0x13

    if-ne v2, v3, :cond_3f

    :cond_3d
    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    :cond_3e
    :goto_6
    const/4 v1, -0x1

    goto :goto_8

    :cond_3f
    iget v1, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->invocationType:I

    if-ne v1, v9, :cond_40

    goto :goto_7

    :cond_40
    const/4 v9, -0x4

    :goto_7
    const/16 v1, 0x402

    invoke-virtual {v0, v1, v9}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(II)V

    const/16 v1, 0x403

    iget v2, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->qualifier:I

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(II)V

    goto :goto_6

    :goto_8
    iput v1, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->qualifier:I

    iput v1, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->invocationType:I

    goto/16 :goto_e

    :cond_41
    invoke-virtual {v0, v14}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementKind(I)I

    move-result v2

    if-ne v2, v1, :cond_43

    iget v1, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->invocationType:I

    if-ne v1, v9, :cond_42

    goto :goto_9

    :cond_42
    const/4 v9, -0x4

    :goto_9
    const/16 v1, 0x402

    invoke-virtual {v0, v1, v9}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(II)V

    const/16 v1, 0x403

    iget v2, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->qualifier:I

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(II)V

    :cond_43
    const/4 v1, -0x1

    iput v1, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->qualifier:I

    iput v1, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->invocationType:I

    goto/16 :goto_e

    :cond_44
    invoke-virtual {v0, v14}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementKind(I)I

    move-result v2

    if-ne v2, v1, :cond_46

    iget v1, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->invocationType:I

    if-ne v1, v9, :cond_45

    goto :goto_a

    :cond_45
    const/4 v9, -0x4

    :goto_a
    const/16 v1, 0x402

    invoke-virtual {v0, v1, v9}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(II)V

    const/16 v1, 0x403

    iget v2, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->qualifier:I

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(II)V

    :cond_46
    const/4 v1, -0x1

    iput v1, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->qualifier:I

    iput v1, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->invocationType:I

    goto/16 :goto_e

    :cond_47
    invoke-virtual {v0, v14}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementKind(I)I

    move-result v2

    if-ne v2, v1, :cond_48

    invoke-virtual {v0, v14, v5}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementKind(II)I

    move-result v2

    if-ne v2, v8, :cond_49

    invoke-virtual {v0, v14, v5}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementInfo(II)I

    move-result v2

    and-int/2addr v2, v5

    if-eqz v2, :cond_49

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    invoke-virtual {v0, v8}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    invoke-virtual {v0, v8, v3}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(II)V

    :cond_48
    :goto_b
    const/4 v1, -0x1

    goto :goto_c

    :cond_49
    const/16 v1, 0x402

    iget v2, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->invocationType:I

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(II)V

    const/16 v1, 0x403

    iget v2, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->qualifier:I

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(II)V

    goto :goto_b

    :goto_c
    iput v1, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->qualifier:I

    iput v1, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->invocationType:I

    goto/16 :goto_e

    :pswitch_24
    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->inReferenceExpression:Z

    if-eqz v1, :cond_4a

    goto/16 :goto_e

    :cond_4a
    if-ne v2, v5, :cond_4b

    iget v1, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->invocationType:I

    const/4 v3, -0x2

    if-eq v1, v3, :cond_4b

    const/4 v3, -0x3

    if-eq v1, v3, :cond_4b

    const/4 v3, -0x4

    if-eq v1, v3, :cond_4b

    if-eq v1, v9, :cond_4b

    const/4 v1, 0x0

    iput v1, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->invocationType:I

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    iput v1, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->qualifier:I

    :cond_4b
    const/16 v1, 0xf

    if-ne v2, v1, :cond_5c

    iget v1, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->invocationType:I

    const/4 v2, -0x2

    if-eq v1, v2, :cond_5c

    const/4 v2, -0x3

    if-eq v1, v2, :cond_5c

    const/4 v2, -0x4

    if-eq v1, v2, :cond_5c

    if-eq v1, v9, :cond_5c

    invoke-virtual {v0, v14}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementKind(I)I

    move-result v1

    const/16 v2, 0x41e

    if-ne v1, v2, :cond_5c

    const/4 v1, 0x0

    iput v1, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->invocationType:I

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    iput v1, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->qualifier:I

    goto/16 :goto_e

    :pswitch_25
    const/16 v1, 0x410

    invoke-virtual {v0, v1, v3}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(II)V

    goto/16 :goto_e

    :pswitch_26
    const/16 v1, 0x410

    const/16 v2, 0x1d

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(II)V

    goto/16 :goto_e

    :pswitch_27
    const/16 v1, 0x410

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(II)V

    goto/16 :goto_e

    :pswitch_28
    const/16 v1, 0x410

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(II)V

    goto/16 :goto_e

    :pswitch_29
    const/16 v1, 0x410

    const/16 v2, 0x1f

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(II)V

    goto/16 :goto_e

    :pswitch_2a
    const/16 v1, 0x410

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(II)V

    goto/16 :goto_e

    :pswitch_2b
    const/16 v1, 0x410

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(II)V

    goto/16 :goto_e

    :pswitch_2c
    const/16 v1, 0x410

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(II)V

    goto/16 :goto_e

    :pswitch_2d
    const/16 v1, 0x410

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(II)V

    goto/16 :goto_e

    :pswitch_2e
    const/16 v1, 0x410

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(II)V

    goto/16 :goto_e

    :pswitch_2f
    if-eq v2, v5, :cond_4d

    const/16 v1, 0x24

    if-eq v2, v1, :cond_4c

    goto :goto_d

    :cond_4c
    const/16 v1, 0x41f

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(I)V

    goto :goto_d

    :cond_4d
    const/16 v1, 0x41e

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(I)V

    :goto_d
    const/4 v1, 0x4

    const/16 v2, 0x410

    invoke-virtual {v0, v2, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(II)V

    goto/16 :goto_e

    :pswitch_30
    const/16 v2, 0x410

    const/16 v1, 0x9

    invoke-virtual {v0, v2, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(II)V

    goto/16 :goto_e

    :pswitch_31
    const/16 v2, 0x410

    const/16 v1, 0x10

    invoke-virtual {v0, v2, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(II)V

    goto/16 :goto_e

    :pswitch_32
    const/16 v2, 0x410

    const/16 v1, 0xf

    invoke-virtual {v0, v2, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(II)V

    goto/16 :goto_e

    :pswitch_33
    iput-boolean v5, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->inReferenceExpression:Z

    goto/16 :goto_e

    :pswitch_34
    invoke-virtual {v0, v14}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementKind(I)I

    move-result v1

    const/16 v3, 0x40e

    if-eq v1, v3, :cond_4e

    const/16 v1, 0x41c

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(I)V

    goto/16 :goto_e

    :cond_4e
    const/16 v1, 0x16

    if-eq v2, v1, :cond_4f

    const/16 v1, 0x63

    if-eq v2, v1, :cond_4f

    const/16 v1, 0x64

    if-eq v2, v1, :cond_4f

    packed-switch v2, :pswitch_data_a

    packed-switch v2, :pswitch_data_b

    packed-switch v2, :pswitch_data_c

    goto/16 :goto_e

    :cond_4f
    :pswitch_35
    const/4 v1, -0x1

    iput v1, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->invocationType:I

    iput v1, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->qualifier:I

    goto/16 :goto_e

    :pswitch_36
    const/16 v1, 0xd

    const/16 v2, 0x410

    invoke-virtual {v0, v2, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(II)V

    goto/16 :goto_e

    :pswitch_37
    const/16 v2, 0x410

    const/16 v1, 0xe

    invoke-virtual {v0, v2, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(II)V

    goto/16 :goto_e

    :pswitch_38
    const/16 v1, 0x40f

    const/16 v2, 0x21

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(II)V

    goto :goto_e

    :pswitch_39
    const/16 v1, 0x40f

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(II)V

    goto :goto_e

    :pswitch_3a
    const/16 v1, 0x16

    if-eq v2, v1, :cond_52

    const/16 v1, 0x22

    if-eq v2, v1, :cond_51

    const/16 v1, 0x23

    if-eq v2, v1, :cond_50

    goto :goto_e

    :cond_50
    const/4 v1, 0x0

    iput v1, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->invocationType:I

    goto :goto_e

    :cond_51
    const/4 v1, -0x2

    iput v1, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->invocationType:I

    goto :goto_e

    :cond_52
    const/4 v1, 0x0

    invoke-virtual {v0, v14}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementKind(I)I

    move-result v2

    const/16 v3, 0x408

    if-eq v2, v3, :cond_5c

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    if-eq v2, v6, :cond_53

    iput v1, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->invocationType:I

    goto :goto_e

    :cond_53
    const/4 v1, -0x3

    iput v1, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->invocationType:I

    goto :goto_e

    :cond_54
    invoke-virtual {v0, v15}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(I)V

    goto :goto_e

    :cond_55
    invoke-virtual {v0, v11}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(I)V

    goto :goto_e

    :cond_56
    invoke-virtual {v0, v14}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementKind(I)I

    move-result v1

    if-ne v1, v4, :cond_57

    invoke-virtual {v0, v4}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    :cond_57
    invoke-virtual {v0, v4}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(I)V

    goto :goto_e

    :cond_58
    invoke-virtual {v0, v14}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementKind(I)I

    move-result v1

    if-eq v1, v11, :cond_5a

    if-eq v1, v10, :cond_59

    goto :goto_e

    :cond_59
    invoke-virtual {v0, v10}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    goto :goto_e

    :cond_5a
    invoke-virtual {v0, v11}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    goto :goto_e

    :cond_5b
    const/16 v1, 0x41d

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(I)V

    :cond_5c
    :goto_e
    return-void

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_22
        :pswitch_21
        :pswitch_1b
        :pswitch_1a
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1c
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x22
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x31
        :pswitch_11
        :pswitch_10
        :pswitch_f
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x3e
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x49
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x50
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x413
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0xe
        :pswitch_23
        :pswitch_23
        :pswitch_23
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0xe
        :pswitch_35
        :pswitch_35
        :pswitch_35
    .end packed-switch

    :pswitch_data_b
    .packed-switch 0x67
        :pswitch_35
        :pswitch_35
        :pswitch_35
    .end packed-switch

    :pswitch_data_c
    .packed-switch 0x6b
        :pswitch_35
        :pswitch_35
        :pswitch_35
    .end packed-switch
.end method

.method public consumeTypeArgumentReferenceType1()V
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeTypeArgumentReferenceType1()V

    const/16 v0, 0x410

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    return-void
.end method

.method public consumeTypeArgumentReferenceType2()V
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeTypeArgumentReferenceType2()V

    const/16 v0, 0x410

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    return-void
.end method

.method public consumeTypeArguments()V
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeTypeArguments()V

    const/16 v0, 0x410

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    return-void
.end method

.method public consumeTypeHeaderNameWithTypeParameters()V
    .locals 2

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeTypeHeaderNameWithTypeParameters()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object v0, v0, v1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->modifiers:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->classHeaderExtendsOrImplements(Z)V

    return-void
.end method

.method public consumeTypeImportOnDemandDeclarationName()V
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->consumeTypeImportOnDemandDeclarationName()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->pendingAnnotation:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnAnnotationOfType;

    return-void
.end method

.method public consumeTypeParameter1()V
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeTypeParameter1()V

    const/16 v0, 0x410

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    return-void
.end method

.method public consumeTypeParameter1WithExtends()V
    .locals 3

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeTypeParameter1WithExtends()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->assistNodeParent:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsPtr:I

    aget-object v1, v1, v2

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-ne v2, v0, :cond_0

    iput-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->assistNodeParent:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    :cond_0
    const/16 v0, 0x41d

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    return-void
.end method

.method public consumeTypeParameter1WithExtendsAndBounds()V
    .locals 3

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeTypeParameter1WithExtendsAndBounds()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->assistNodeParent:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsPtr:I

    aget-object v1, v1, v2

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-ne v2, v0, :cond_0

    iput-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->assistNodeParent:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    :cond_0
    const/16 v0, 0x41d

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    return-void
.end method

.method public consumeTypeParameterHeader()V
    .locals 6

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeTypeParameterHeader()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsPtr:I

    aget-object v0, v0, v1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-nez v1, :cond_2

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;->bounds:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v1, :cond_0

    array-length v1, v1

    if-lez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->assistIdentifier()[C

    move-result-object v1

    if-nez v1, :cond_2

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentToken:I

    const/16 v2, 0x16

    if-ne v1, v2, :cond_2

    iget v1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->cursorLocation:I

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v3, v2, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    if-ge v1, v3, :cond_1

    iget v4, v2, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    if-ne v4, v3, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushIdentifier()V

    goto :goto_0

    :cond_1
    add-int/lit8 v4, v1, 0x1

    if-lt v4, v3, :cond_2

    iget v2, v2, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    if-ge v1, v2, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushIdentifier()V

    :goto_0
    new-instance v1, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnKeyword1;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierStack:[[C

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    aget-object v2, v2, v3

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPositionStack:[J

    aget-wide v3, v4, v3

    sget-object v5, Lorg/eclipse/jdt/internal/codeassist/impl/Keywords;->EXTENDS:[C

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnKeyword1;-><init>([CJ[C)V

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    iput-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v0, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    :cond_2
    :goto_1
    return-void
.end method

.method public consumeTypeParameterWithExtends()V
    .locals 3

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeTypeParameterWithExtends()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->assistNodeParent:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsPtr:I

    aget-object v1, v1, v2

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-ne v2, v0, :cond_0

    iput-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->assistNodeParent:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    :cond_0
    const/16 v0, 0x41d

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    return-void
.end method

.method public consumeTypeParameterWithExtendsAndBounds()V
    .locals 3

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeTypeParameterWithExtendsAndBounds()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->assistNodeParent:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsPtr:I

    aget-object v1, v1, v2

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-ne v2, v0, :cond_0

    iput-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->assistNodeParent:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    :cond_0
    const/16 v0, 0x41d

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    return-void
.end method

.method public consumeTypeParameters()V
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeTypeParameters()V

    const/16 v0, 0x410

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    return-void
.end method

.method public consumeUnaryExpression(I)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeUnaryExpression(I)V

    const/16 p1, 0x40f

    .line 2
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    .line 3
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    aget-object p1, p1, v0

    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/UnaryExpression;

    if-eqz v0, :cond_0

    .line 4
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/UnaryExpression;

    .line 5
    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    if-eqz v0, :cond_0

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/UnaryExpression;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-ne v1, v0, :cond_0

    .line 6
    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->assistNodeParent:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    :cond_0
    return-void
.end method

.method public consumeUnaryExpression(IZ)V
    .locals 1

    .line 7
    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeUnaryExpression(IZ)V

    const/16 p1, 0x40f

    .line 8
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    .line 9
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    aget-object p1, p1, p2

    instance-of p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/UnaryExpression;

    if-eqz p2, :cond_0

    .line 10
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/UnaryExpression;

    .line 11
    iget-object p2, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    if-eqz p2, :cond_0

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/UnaryExpression;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-ne v0, p2, :cond_0

    .line 12
    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->assistNodeParent:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    :cond_0
    return-void
.end method

.method public consumeUnionType()V
    .locals 1

    const/16 v0, 0x407

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(I)V

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeUnionType()V

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    return-void
.end method

.method public consumeUnionTypeAsClassType()V
    .locals 1

    const/16 v0, 0x407

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(I)V

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeUnionTypeAsClassType()V

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    return-void
.end method

.method public consumeUsesStatement()V
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeUsesStatement()V

    const/16 v0, 0x42e

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    return-void
.end method

.method public consumeWildcard()V
    .locals 7

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeWildcard()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->assistIdentifier()[C

    move-result-object v0

    if-nez v0, :cond_1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentToken:I

    const/16 v1, 0x16

    if-ne v0, v1, :cond_1

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->cursorLocation:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    if-ge v0, v2, :cond_0

    iget v3, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    if-ne v3, v2, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushIdentifier()V

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v0, 0x1

    if-lt v3, v2, :cond_1

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    if-ge v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushIdentifier()V

    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsPtr:I

    aget-object v0, v0, v1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;

    new-instance v1, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnKeyword1;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierStack:[[C

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    aget-object v2, v2, v3

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPositionStack:[J

    aget-wide v3, v4, v3

    sget-object v5, Lorg/eclipse/jdt/internal/codeassist/impl/Keywords;->EXTENDS:[C

    sget-object v6, Lorg/eclipse/jdt/internal/codeassist/impl/Keywords;->SUPER:[C

    filled-new-array {v5, v6}, [[C

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnKeyword1;-><init>([CJ[[C)V

    const/4 v2, 0x1

    iput v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;->kind:I

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;->bound:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    sub-int/2addr v0, v2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    sub-int/2addr v0, v2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    iput-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v0, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    :cond_1
    return-void
.end method

.method public consumeWildcard1()V
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeWildcard1()V

    const/16 v0, 0x410

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    return-void
.end method

.method public consumeWildcard2()V
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeWildcard2()V

    const/16 v0, 0x410

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    return-void
.end method

.method public consumeWildcard3()V
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeWildcard3()V

    const/16 v0, 0x410

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    return-void
.end method

.method public consumeWildcardBounds1Extends()V
    .locals 3

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeWildcardBounds1Extends()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->assistNodeParent:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsPtr:I

    aget-object v1, v1, v2

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;->bound:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-ne v2, v0, :cond_0

    iput-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->assistNodeParent:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    :cond_0
    const/16 v0, 0x41d

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    return-void
.end method

.method public consumeWildcardBounds2Extends()V
    .locals 3

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeWildcardBounds2Extends()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->assistNodeParent:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsPtr:I

    aget-object v1, v1, v2

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;->bound:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-ne v2, v0, :cond_0

    iput-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->assistNodeParent:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    :cond_0
    const/16 v0, 0x41d

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    return-void
.end method

.method public consumeWildcardBounds3Extends()V
    .locals 3

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeWildcardBounds3Extends()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->assistNodeParent:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsPtr:I

    aget-object v1, v1, v2

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;->bound:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-ne v2, v0, :cond_0

    iput-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->assistNodeParent:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    :cond_0
    const/16 v0, 0x41d

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    return-void
.end method

.method public consumeWildcardBoundsExtends()V
    .locals 3

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeWildcardBoundsExtends()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->assistNodeParent:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsPtr:I

    aget-object v1, v1, v2

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;->bound:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-ne v2, v0, :cond_0

    iput-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->assistNodeParent:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    :cond_0
    const/16 v0, 0x41d

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    return-void
.end method

.method public consumeWithClause()V
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeWithClause()V

    const/16 v0, 0x432

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    return-void
.end method

.method public convertToMethodDeclaration(Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;
    .locals 1

    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->convertToMethodDeclaration(Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;

    move-result-object p2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->sourceEnds:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;->removeKey(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->sourceEnds:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;

    invoke-virtual {v0, p2, p1}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;->put(Ljava/lang/Object;I)I

    :cond_0
    return-object p2
.end method

.method public copyState(Lorg/eclipse/jdt/internal/compiler/parser/Parser;)V
    .locals 1

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->copyState(Lorg/eclipse/jdt/internal/compiler/parser/Parser;)V

    check-cast p1, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;

    iget v0, p1, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->invocationType:I

    iput v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->invocationType:I

    iget v0, p1, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->qualifier:I

    iput v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->qualifier:I

    iget-boolean v0, p1, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->inReferenceExpression:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->inReferenceExpression:Z

    iget-boolean v0, p1, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->hasUnusedModifiers:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->hasUnusedModifiers:Z

    iget p1, p1, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->canBeExplicitConstructor:I

    iput p1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->canBeExplicitConstructor:I

    return-void
.end method

.method public createAssistImportReference([[C[JI)Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnImportReference;

    invoke-direct {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnImportReference;-><init>([[C[JI)V

    return-object v0
.end method

.method public createAssistModuleDeclaration(Lorg/eclipse/jdt/internal/compiler/CompilationResult;[[C[J)Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnModuleDeclaration;

    invoke-direct {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnModuleDeclaration;-><init>(Lorg/eclipse/jdt/internal/compiler/CompilationResult;[[C[J)V

    return-object v0
.end method

.method public createAssistModuleReference(I)Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthStack:[I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    aget v0, v0, v1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->identifierSubSet(I)[[C

    move-result-object p1

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    new-array v2, v0, [J

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPositionStack:[J

    add-int/lit8 v1, v1, 0x1

    const/4 v4, 0x0

    invoke-static {v3, v1, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnModuleReference;

    invoke-direct {v0, p1, v2}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnModuleReference;-><init>([[C[J)V

    return-object v0
.end method

.method public createAssistPackageReference([[C[J)Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnPackageReference;

    invoke-direct {v0, p1, p2}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnPackageReference;-><init>([[C[J)V

    return-object v0
.end method

.method public createAssistPackageVisibilityReference([[C[J)Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnPackageVisibilityReference;

    invoke-direct {v0, p1, p2}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnPackageVisibilityReference;-><init>([[C[J)V

    return-object v0
.end method

.method public createFieldDeclaration([CII)Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->indexOfAssistIdentifier()I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUnit;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUnit;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUnit;->typeCount:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnFieldName;

    invoke-direct {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnFieldName;-><init>([CII)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    add-int/lit8 p3, p3, 0x1

    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    return-object v0

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->createFieldDeclaration([CII)Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    move-result-object p1

    return-object p1
.end method

.method public createJavadocParser()Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;-><init>(Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;)V

    return-object v0
.end method

.method public createLocalDeclaration([CII)Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->indexOfAssistIdentifier()I

    move-result v0

    if-gez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->createLocalDeclaration([CII)Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnLocalName;

    invoke-direct {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnLocalName;-><init>([CII)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    add-int/lit8 p3, p3, 0x1

    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    return-object v0
.end method

.method public createParameterizedQualifiedAssistTypeReference([[C[[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;[C[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;[J)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;
    .locals 8

    const/4 v0, 0x0

    move v5, v0

    :goto_0
    array-length v6, p2

    const/4 v7, 0x1

    if-lt v0, v6, :cond_2

    if-nez v5, :cond_0

    invoke-virtual {p0, p1, p3, p5}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->createQualifiedAssistTypeReference([[C[C[J)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object v0

    return-object v0

    :cond_0
    const/16 v0, 0x600

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementKind(I)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnParameterizedQualifiedTypeReference;

    invoke-direct {v0, p1, p2, p3, p5}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnParameterizedQualifiedTypeReference;-><init>([[C[[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;[C[J)V

    return-object v0

    :pswitch_0
    invoke-virtual {p0, v0, v7}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementKind(II)I

    move-result v0

    const/16 v5, 0x404

    if-ne v0, v5, :cond_1

    iput-boolean v7, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isOrphanCompletionNode:Z

    :cond_1
    new-instance v6, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnParameterizedQualifiedTypeReference;

    const/4 v5, 0x3

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnParameterizedQualifiedTypeReference;-><init>([[C[[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;[C[JI)V

    return-object v6

    :pswitch_1
    new-instance v6, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnParameterizedQualifiedTypeReference;

    const/4 v5, 0x2

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnParameterizedQualifiedTypeReference;-><init>([[C[[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;[C[JI)V

    return-object v6

    :pswitch_2
    new-instance v6, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnParameterizedQualifiedTypeReference;

    const/4 v5, 0x1

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnParameterizedQualifiedTypeReference;-><init>([[C[[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;[C[JI)V

    return-object v6

    :cond_2
    aget-object v6, p2, v0

    if-eqz v6, :cond_3

    move v5, v7

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x405
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public createParameterizedSingleAssistTypeReference([Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;[CJ)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;
    .locals 0

    invoke-virtual {p0, p2, p3, p4}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->createSingleAssistTypeReference([CJ)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object p1

    return-object p1
.end method

.method public createQualifiedAssistNameReference([[C[C[J)Lorg/eclipse/jdt/internal/compiler/ast/NameReference;
    .locals 2

    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnQualifiedNameReference;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isInsideAttributeValue()Z

    move-result v1

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnQualifiedNameReference;-><init>([[C[C[JZ)V

    return-object v0
.end method

.method public createQualifiedAssistTypeReference([[C[C[J)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;
    .locals 3

    const/16 v0, 0x600

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementKind(I)I

    move-result v1

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->checkAndCreateModuleQualifiedAssistTypeReference([[C[C[J)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object p1

    return-object p1

    :pswitch_0
    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementKind(II)I

    move-result v0

    const/16 v1, 0x404

    if-ne v0, v1, :cond_0

    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isOrphanCompletionNode:Z

    :cond_0
    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnQualifiedTypeReference;

    const/4 v1, 0x3

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnQualifiedTypeReference;-><init>([[C[C[JI)V

    return-object v0

    :pswitch_1
    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnQualifiedTypeReference;

    const/4 v1, 0x2

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnQualifiedTypeReference;-><init>([[C[C[JI)V

    return-object v0

    :pswitch_2
    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnQualifiedTypeReference;

    invoke-direct {v0, p1, p2, p3, v2}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnQualifiedTypeReference;-><init>([[C[C[JI)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x405
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public createSingleAssistNameReference([CJ)Lorg/eclipse/jdt/internal/compiler/ast/NameReference;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    const/16 v1, 0x600

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementKind(I)I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isInsideMethod()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isInsideFieldInitialization()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v8, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnSingleNameReference;

    sget-object v1, Lorg/eclipse/jdt/internal/codeassist/impl/Keywords;->FALSE:[C

    sget-object v5, Lorg/eclipse/jdt/internal/codeassist/impl/Keywords;->TRUE:[C

    filled-new-array {v1, v5}, [[C

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isInsideAttributeValue()Z

    move-result v7

    move-object v1, v8

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    invoke-direct/range {v1 .. v7}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnSingleNameReference;-><init>([CJ[[CZZ)V

    return-object v8

    :cond_0
    new-instance v1, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnSingleNameReference;

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isInsideAttributeValue()Z

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnSingleNameReference;-><init>([CJZ)V

    return-object v1

    :cond_1
    const/16 v6, 0x207

    const/16 v7, 0x401

    if-eq v5, v7, :cond_2

    if-ne v5, v6, :cond_3

    :cond_2
    iget v8, v0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->previousKind:I

    if-ne v8, v7, :cond_3

    iget v8, v0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->previousInfo:I

    const/4 v9, 0x7

    if-ne v8, v9, :cond_3

    new-instance v1, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnKeyword3;

    sget-object v5, Lorg/eclipse/jdt/internal/codeassist/impl/Keywords;->WHILE:[C

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnKeyword3;-><init>([CJ[C)V

    return-object v1

    :cond_3
    const/4 v8, 0x2

    if-eq v5, v7, :cond_4

    if-ne v5, v6, :cond_5

    :cond_4
    iget v9, v0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->previousKind:I

    if-ne v9, v7, :cond_5

    iget v9, v0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->previousInfo:I

    if-ne v9, v8, :cond_5

    new-instance v7, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnKeyword3;

    sget-object v1, Lorg/eclipse/jdt/internal/codeassist/impl/Keywords;->CATCH:[C

    sget-object v5, Lorg/eclipse/jdt/internal/codeassist/impl/Keywords;->FINALLY:[C

    filled-new-array {v1, v5}, [[C

    move-result-object v5

    const/4 v6, 0x1

    move-object v1, v7

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnKeyword3;-><init>([CJ[[CZ)V

    return-object v7

    :cond_5
    if-ne v5, v7, :cond_6

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementInfo(I)I

    move-result v9

    const/4 v10, 0x5

    if-ne v9, v10, :cond_6

    new-instance v7, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnKeyword3;

    sget-object v1, Lorg/eclipse/jdt/internal/codeassist/impl/Keywords;->CASE:[C

    sget-object v5, Lorg/eclipse/jdt/internal/codeassist/impl/Keywords;->DEFAULT:[C

    filled-new-array {v1, v5}, [[C

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, v7

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnKeyword3;-><init>([CJ[[CZ)V

    return-object v7

    :cond_6
    const/16 v9, 0x32

    new-array v9, v9, [[C

    iget v10, v0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->lastModifiers:I

    and-int/lit8 v10, v10, 0x8

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-nez v10, :cond_7

    sget-object v10, Lorg/eclipse/jdt/internal/codeassist/impl/Keywords;->SUPER:[C

    aput-object v10, v9, v11

    sget-object v10, Lorg/eclipse/jdt/internal/codeassist/impl/Keywords;->THIS:[C

    aput-object v10, v9, v12

    move v10, v8

    goto :goto_0

    :cond_7
    move v10, v11

    :goto_0
    add-int/lit8 v13, v10, 0x1

    sget-object v14, Lorg/eclipse/jdt/internal/codeassist/impl/Keywords;->NEW:[C

    aput-object v14, v9, v10

    const/16 v11, 0x426

    const-wide/32 v16, 0x360000

    const/4 v14, 0x3

    if-eq v5, v7, :cond_11

    if-eq v5, v11, :cond_11

    if-ne v5, v6, :cond_8

    goto/16 :goto_3

    :cond_8
    const/16 v6, 0x415

    if-ne v5, v6, :cond_a

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-wide v5, v1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->complianceLevel:J

    cmp-long v1, v5, v16

    if-ltz v1, :cond_9

    add-int/2addr v10, v8

    sget-object v1, Lorg/eclipse/jdt/internal/codeassist/impl/Keywords;->VAR:[C

    aput-object v1, v9, v13

    move v13, v10

    :cond_9
    :goto_1
    const/4 v6, 0x0

    goto/16 :goto_8

    :cond_a
    const/16 v6, 0x41a

    if-eq v5, v6, :cond_9

    const/16 v6, 0x41b

    if-eq v5, v6, :cond_9

    const/16 v6, 0x40c

    if-ne v5, v6, :cond_b

    iget-object v6, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-wide v6, v6, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->complianceLevel:J

    const-wide/32 v20, 0x370000

    cmp-long v6, v6, v20

    if-ltz v6, :cond_b

    add-int/2addr v10, v8

    sget-object v6, Lorg/eclipse/jdt/internal/codeassist/impl/Keywords;->VAR:[C

    aput-object v6, v9, v13

    move v13, v10

    :cond_b
    const/16 v6, 0x403

    if-ne v5, v6, :cond_c

    iget-object v6, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-wide v6, v6, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->complianceLevel:J

    const-wide/32 v10, 0x380000

    cmp-long v6, v6, v10

    if-ltz v6, :cond_c

    add-int/lit8 v6, v13, 0x1

    sget-object v7, Lorg/eclipse/jdt/internal/codeassist/impl/Keywords;->SWITCH:[C

    aput-object v7, v9, v13

    move v13, v6

    :cond_c
    add-int/lit8 v6, v13, 0x1

    sget-object v7, Lorg/eclipse/jdt/internal/codeassist/impl/Keywords;->TRUE:[C

    aput-object v7, v9, v13

    add-int/lit8 v7, v13, 0x2

    sget-object v8, Lorg/eclipse/jdt/internal/codeassist/impl/Keywords;->FALSE:[C

    aput-object v8, v9, v6

    add-int/lit8 v6, v13, 0x3

    sget-object v8, Lorg/eclipse/jdt/internal/codeassist/impl/Keywords;->NULL:[C

    aput-object v8, v9, v7

    const/16 v7, 0x419

    if-ne v5, v7, :cond_10

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementInfo(I)I

    move-result v1

    if-eq v1, v12, :cond_d

    add-int/lit8 v13, v13, 0x4

    sget-object v1, Lorg/eclipse/jdt/internal/codeassist/impl/Keywords;->DEFAULT:[C

    aput-object v1, v9, v6

    move v6, v13

    :cond_d
    add-int/lit8 v1, v6, 0x1

    sget-object v5, Lorg/eclipse/jdt/internal/codeassist/impl/Keywords;->BREAK:[C

    aput-object v5, v9, v6

    add-int/lit8 v5, v6, 0x2

    sget-object v7, Lorg/eclipse/jdt/internal/codeassist/impl/Keywords;->CASE:[C

    aput-object v7, v9, v1

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-wide v7, v1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->complianceLevel:J

    const-wide/32 v10, 0x300000

    cmp-long v1, v7, v10

    if-ltz v1, :cond_e

    add-int/2addr v6, v14

    sget-object v1, Lorg/eclipse/jdt/internal/codeassist/impl/Keywords;->ASSERT:[C

    aput-object v1, v9, v5

    move v5, v6

    :cond_e
    add-int/lit8 v1, v5, 0x1

    sget-object v6, Lorg/eclipse/jdt/internal/codeassist/impl/Keywords;->DO:[C

    aput-object v6, v9, v5

    add-int/lit8 v6, v5, 0x2

    sget-object v10, Lorg/eclipse/jdt/internal/codeassist/impl/Keywords;->FOR:[C

    aput-object v10, v9, v1

    add-int/lit8 v1, v5, 0x3

    sget-object v10, Lorg/eclipse/jdt/internal/codeassist/impl/Keywords;->IF:[C

    aput-object v10, v9, v6

    add-int/lit8 v6, v5, 0x4

    sget-object v10, Lorg/eclipse/jdt/internal/codeassist/impl/Keywords;->RETURN:[C

    aput-object v10, v9, v1

    add-int/lit8 v1, v5, 0x5

    sget-object v10, Lorg/eclipse/jdt/internal/codeassist/impl/Keywords;->SWITCH:[C

    aput-object v10, v9, v6

    add-int/lit8 v6, v5, 0x6

    sget-object v10, Lorg/eclipse/jdt/internal/codeassist/impl/Keywords;->SYNCHRONIZED:[C

    aput-object v10, v9, v1

    add-int/lit8 v1, v5, 0x7

    sget-object v10, Lorg/eclipse/jdt/internal/codeassist/impl/Keywords;->THROW:[C

    aput-object v10, v9, v6

    add-int/lit8 v6, v5, 0x8

    sget-object v10, Lorg/eclipse/jdt/internal/codeassist/impl/Keywords;->TRY:[C

    aput-object v10, v9, v1

    add-int/lit8 v1, v5, 0x9

    sget-object v10, Lorg/eclipse/jdt/internal/codeassist/impl/Keywords;->WHILE:[C

    aput-object v10, v9, v6

    add-int/lit8 v6, v5, 0xa

    sget-object v10, Lorg/eclipse/jdt/internal/codeassist/impl/Keywords;->FINAL:[C

    aput-object v10, v9, v1

    add-int/lit8 v1, v5, 0xb

    sget-object v10, Lorg/eclipse/jdt/internal/codeassist/impl/Keywords;->CLASS:[C

    aput-object v10, v9, v6

    cmp-long v6, v7, v16

    if-ltz v6, :cond_f

    add-int/lit8 v5, v5, 0xc

    sget-object v6, Lorg/eclipse/jdt/internal/codeassist/impl/Keywords;->VAR:[C

    aput-object v6, v9, v1

    move v13, v5

    goto :goto_2

    :cond_f
    move v13, v1

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->isInsideLoop()Z

    move-result v1

    if-eqz v1, :cond_9

    add-int/lit8 v1, v13, 0x1

    sget-object v5, Lorg/eclipse/jdt/internal/codeassist/impl/Keywords;->CONTINUE:[C

    aput-object v5, v9, v13

    move v13, v1

    goto/16 :goto_1

    :cond_10
    move v13, v6

    goto/16 :goto_1

    :cond_11
    :goto_3
    iget v1, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->canBeExplicitConstructor:I

    if-ne v1, v8, :cond_12

    move v1, v12

    goto :goto_4

    :cond_12
    const/4 v1, 0x0

    :goto_4
    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-wide v5, v5, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->complianceLevel:J

    const-wide/32 v18, 0x300000

    cmp-long v15, v5, v18

    if-ltz v15, :cond_13

    add-int/2addr v10, v8

    sget-object v8, Lorg/eclipse/jdt/internal/codeassist/impl/Keywords;->ASSERT:[C

    aput-object v8, v9, v13

    move v13, v10

    :cond_13
    add-int/lit8 v8, v13, 0x1

    sget-object v10, Lorg/eclipse/jdt/internal/codeassist/impl/Keywords;->DO:[C

    aput-object v10, v9, v13

    add-int/lit8 v10, v13, 0x2

    sget-object v15, Lorg/eclipse/jdt/internal/codeassist/impl/Keywords;->FOR:[C

    aput-object v15, v9, v8

    add-int/lit8 v8, v13, 0x3

    sget-object v15, Lorg/eclipse/jdt/internal/codeassist/impl/Keywords;->IF:[C

    aput-object v15, v9, v10

    add-int/lit8 v10, v13, 0x4

    sget-object v15, Lorg/eclipse/jdt/internal/codeassist/impl/Keywords;->RETURN:[C

    aput-object v15, v9, v8

    add-int/lit8 v8, v13, 0x5

    sget-object v15, Lorg/eclipse/jdt/internal/codeassist/impl/Keywords;->SWITCH:[C

    aput-object v15, v9, v10

    add-int/lit8 v10, v13, 0x6

    sget-object v15, Lorg/eclipse/jdt/internal/codeassist/impl/Keywords;->SYNCHRONIZED:[C

    aput-object v15, v9, v8

    add-int/lit8 v8, v13, 0x7

    sget-object v15, Lorg/eclipse/jdt/internal/codeassist/impl/Keywords;->THROW:[C

    aput-object v15, v9, v10

    add-int/lit8 v10, v13, 0x8

    sget-object v15, Lorg/eclipse/jdt/internal/codeassist/impl/Keywords;->TRY:[C

    aput-object v15, v9, v8

    add-int/lit8 v8, v13, 0x9

    sget-object v15, Lorg/eclipse/jdt/internal/codeassist/impl/Keywords;->WHILE:[C

    aput-object v15, v9, v10

    add-int/lit8 v10, v13, 0xa

    sget-object v15, Lorg/eclipse/jdt/internal/codeassist/impl/Keywords;->FINAL:[C

    aput-object v15, v9, v8

    add-int/lit8 v8, v13, 0xb

    sget-object v15, Lorg/eclipse/jdt/internal/codeassist/impl/Keywords;->CLASS:[C

    aput-object v15, v9, v10

    cmp-long v5, v5, v16

    if-ltz v5, :cond_14

    add-int/lit8 v13, v13, 0xc

    sget-object v5, Lorg/eclipse/jdt/internal/codeassist/impl/Keywords;->VAR:[C

    aput-object v5, v9, v8

    move v8, v13

    :cond_14
    iget v5, v0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->previousKind:I

    if-ne v5, v7, :cond_17

    iget v5, v0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->previousInfo:I

    if-eq v5, v12, :cond_16

    if-eq v5, v14, :cond_15

    goto :goto_6

    :cond_15
    add-int/lit8 v5, v8, 0x1

    sget-object v6, Lorg/eclipse/jdt/internal/codeassist/impl/Keywords;->CATCH:[C

    aput-object v6, v9, v8

    add-int/lit8 v8, v8, 0x2

    sget-object v6, Lorg/eclipse/jdt/internal/codeassist/impl/Keywords;->FINALLY:[C

    aput-object v6, v9, v5

    goto :goto_6

    :cond_16
    add-int/lit8 v5, v8, 0x1

    sget-object v6, Lorg/eclipse/jdt/internal/codeassist/impl/Keywords;->ELSE:[C

    aput-object v6, v9, v8

    :goto_5
    move v8, v5

    goto :goto_6

    :cond_17
    if-ne v5, v11, :cond_18

    iget v5, v0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->previousInfo:I

    if-ne v5, v12, :cond_18

    add-int/lit8 v5, v8, 0x1

    sget-object v6, Lorg/eclipse/jdt/internal/codeassist/impl/Keywords;->ELSE:[C

    aput-object v6, v9, v8

    goto :goto_5

    :cond_18
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->isInsideLoop()Z

    move-result v5

    if-eqz v5, :cond_19

    add-int/lit8 v5, v8, 0x1

    sget-object v6, Lorg/eclipse/jdt/internal/codeassist/impl/Keywords;->CONTINUE:[C

    aput-object v6, v9, v8

    move v13, v5

    goto :goto_7

    :cond_19
    move v13, v8

    :goto_7
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->isInsideBreakable()Z

    move-result v5

    if-eqz v5, :cond_1a

    add-int/lit8 v5, v13, 0x1

    sget-object v6, Lorg/eclipse/jdt/internal/codeassist/impl/Keywords;->BREAK:[C

    aput-object v6, v9, v13

    move v6, v1

    move v13, v5

    goto :goto_8

    :cond_1a
    move v6, v1

    :goto_8
    new-array v5, v13, [[C

    const/4 v1, 0x0

    invoke-static {v9, v1, v5, v1, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v8, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnSingleNameReference;

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isInsideAttributeValue()Z

    move-result v7

    move-object v1, v8

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    invoke-direct/range {v1 .. v7}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnSingleNameReference;-><init>([CJ[[CZZ)V

    return-object v8
.end method

.method public createSingleAssistTypeReference([CJ)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;
    .locals 3

    const/16 v0, 0x600

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementKind(I)I

    move-result v1

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->checkAndCreateModuleSingleAssistTypeReference([CJ)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object p1

    return-object p1

    :pswitch_0
    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementKind(II)I

    move-result v0

    const/16 v1, 0x404

    if-ne v0, v1, :cond_0

    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isOrphanCompletionNode:Z

    :cond_0
    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnSingleTypeReference;

    const/4 v1, 0x3

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnSingleTypeReference;-><init>([CJI)V

    return-object v0

    :pswitch_1
    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnSingleTypeReference;

    const/4 v1, 0x2

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnSingleTypeReference;-><init>([CJI)V

    return-object v0

    :pswitch_2
    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnSingleTypeReference;

    invoke-direct {v0, p1, p2, p3, v2}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnSingleTypeReference;-><init>([CJI)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x405
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public createSnapShotParser()Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;
    .locals 3

    .line 2
    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->problemReporter:Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    iget-boolean v2, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->storeSourceEnds:Z

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;-><init>(Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;Z)V

    return-object v0
.end method

.method public bridge synthetic createSnapShotParser()Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->createSnapShotParser()Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;

    move-result-object v0

    return-object v0
.end method

.method public createStringLiteral([CIII)Lorg/eclipse/jdt/internal/compiler/ast/StringLiteral;
    .locals 12

    move-object v0, p0

    move v3, p2

    move v8, p3

    iget v1, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->cursorLocation:I

    if-gt v3, v1, :cond_9

    if-gt v1, v8, :cond_9

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    aget-char v2, v1, v3

    const/16 v4, 0x5c

    const/16 v5, 0x22

    const/16 v6, 0x75

    const/4 v7, 0x2

    if-ne v2, v5, :cond_0

    add-int/lit8 v2, v3, 0x1

    :goto_0
    move v9, v2

    goto :goto_2

    :cond_0
    if-ne v2, v4, :cond_2

    add-int/lit8 v2, v3, 0x1

    aget-char v2, v1, v2

    if-ne v2, v6, :cond_2

    add-int/lit8 v2, v3, 0x2

    :goto_1
    aget-char v9, v1, v2

    if-eq v9, v6, :cond_1

    if-nez v9, :cond_2

    add-int/lit8 v9, v2, 0x1

    aget-char v9, v1, v9

    if-nez v9, :cond_2

    add-int/lit8 v9, v2, 0x2

    aget-char v9, v1, v9

    if-ne v9, v7, :cond_2

    add-int/lit8 v9, v2, 0x3

    aget-char v9, v1, v9

    if-ne v9, v7, :cond_2

    add-int/lit8 v2, v2, 0x4

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move v9, v3

    :goto_2
    aget-char v2, v1, v8

    const/4 v10, 0x1

    if-ne v2, v5, :cond_3

    add-int/lit8 v1, v8, -0x1

    goto :goto_5

    :cond_3
    array-length v5, v1

    const/4 v11, 0x5

    if-le v5, v11, :cond_6

    add-int/lit8 v5, v8, -0x4

    aget-char v5, v1, v5

    if-ne v5, v6, :cond_6

    add-int/lit8 v5, v8, -0x3

    aget-char v5, v1, v5

    if-nez v5, :cond_6

    add-int/lit8 v5, v8, -0x2

    aget-char v5, v1, v5

    if-nez v5, :cond_6

    add-int/lit8 v5, v8, -0x1

    aget-char v5, v1, v5

    if-ne v5, v7, :cond_6

    if-ne v2, v7, :cond_6

    add-int/lit8 v2, v8, -0x5

    :goto_3
    const/4 v5, -0x1

    if-le v2, v5, :cond_5

    aget-char v7, v1, v2

    if-eq v7, v6, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    :cond_5
    :goto_4
    if-le v2, v5, :cond_6

    aget-char v1, v1, v2

    if-ne v1, v4, :cond_6

    add-int/lit8 v1, v2, -0x1

    goto :goto_5

    :cond_6
    move v1, v8

    :goto_5
    if-ge v1, v3, :cond_7

    move v6, v8

    goto :goto_6

    :cond_7
    move v6, v1

    :goto_6
    iget v1, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->cursorLocation:I

    if-ne v1, v8, :cond_8

    if-ne v8, v6, :cond_9

    :cond_8
    new-instance v11, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnStringLiteral;

    move-object v1, v11

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, v9

    move/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnStringLiteral;-><init>([CIIIII)V

    iput-object v11, v0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iput-boolean v10, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->restartRecovery:Z

    iput v8, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    return-object v11

    :cond_9
    invoke-super/range {p0 .. p4}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->createStringLiteral([CIII)Lorg/eclipse/jdt/internal/compiler/ast/StringLiteral;

    move-result-object v1

    return-object v1
.end method

.method public dietParse(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;Lorg/eclipse/jdt/internal/compiler/CompilationResult;I)Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;
    .locals 2

    iput p3, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->cursorLocation:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    check-cast v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;->completionIdentifier:[C

    iput p3, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;->cursorLocation:I

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->dietParse(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object p1

    return-object p1
.end method

.method public enclosingNode()Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->enclosingNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    return-object v0
.end method

.method public flushAssistState()V
    .locals 2

    invoke-super {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->flushAssistState()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isOrphanCompletionNode:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->isAlreadyAttached:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->assistNodeParent:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    check-cast v1, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;

    iput v0, v1, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;->completedIdentifierStart:I

    const/4 v0, -0x1

    iput v0, v1, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;->completedIdentifierEnd:I

    return-void
.end method

.method public getTypeReferenceForGenericType(III)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;
    .locals 4

    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->getTypeReferenceForGenericType(III)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->checkForDiamond(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    if-ne p3, v1, :cond_2

    move-object p2, p1

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    :goto_0
    array-length p3, p2

    if-lt v0, p3, :cond_0

    goto :goto_4

    :cond_0
    aget-object p3, p2, v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    if-ne p3, v1, :cond_1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->assistNodeParent:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    return-object p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move-object p2, p1

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;->typeArguments:[[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move p3, v0

    :goto_1
    array-length v1, p2

    if-lt p3, v1, :cond_3

    goto :goto_4

    :cond_3
    aget-object v1, p2, p3

    if-eqz v1, :cond_6

    move v1, v0

    :goto_2
    aget-object v2, p2, p3

    array-length v3, v2

    if-lt v1, v3, :cond_4

    goto :goto_3

    :cond_4
    aget-object v2, v2, v1

    iget-object v3, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    if-ne v2, v3, :cond_5

    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->assistNodeParent:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    return-object p1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_7
    :goto_4
    return-object p1
.end method

.method public getUnspecifiedReference(Z)Lorg/eclipse/jdt/internal/compiler/ast/NameReference;
    .locals 1

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->getUnspecifiedReference(Z)Lorg/eclipse/jdt/internal/compiler/ast/NameReference;

    move-result-object p1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->record:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->recordReference(Lorg/eclipse/jdt/internal/compiler/ast/NameReference;)V

    :cond_0
    return-object p1
.end method

.method public getUnspecifiedReferenceOptimized()Lorg/eclipse/jdt/internal/compiler/ast/NameReference;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthStack:[I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    aget v0, v0, v1

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->invocationType:I

    iput v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->qualifier:I

    :cond_0
    invoke-super {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->getUnspecifiedReferenceOptimized()Lorg/eclipse/jdt/internal/compiler/ast/NameReference;

    move-result-object v0

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->record:Z

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->recordReference(Lorg/eclipse/jdt/internal/compiler/ast/NameReference;)V

    :cond_1
    return-object v0
.end method

.method public indexOfAssistIdentifier(Z)I
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->record:Z

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->indexOfAssistIdentifier(Z)I

    move-result p1

    return p1
.end method

.method public initialize()V
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->initialize()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->labelPtr:I

    .line 3
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->initializeForBlockStatements()V

    return-void
.end method

.method public initialize(Z)V
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->initialize(Z)V

    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->labelPtr:I

    .line 6
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->initializeForBlockStatements()V

    return-void
.end method

.method public initializeScanner()V
    .locals 3

    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-wide v1, v1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;-><init>(J)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    return-void
.end method

.method public isAfterWithClause()Z
    .locals 1

    const/16 v0, 0x432

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->foundToken(I)Z

    move-result v0

    return v0
.end method

.method public isInExportsStatement()Z
    .locals 1

    const/16 v0, 0x42c

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->foundToken(I)Z

    move-result v0

    return v0
.end method

.method public isInImportStatement()Z
    .locals 1

    const/16 v0, 0x42b

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->foundToken(I)Z

    move-result v0

    return v0
.end method

.method public isInModuleStatements()Z
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->isInExportsStatement()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->isInOpensStatement()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->isInRequiresStatement()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->isInProvidesStatement()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->isInUsesStatement()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isInOpensStatement()Z
    .locals 1

    const/16 v0, 0x433

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->foundToken(I)Z

    move-result v0

    return v0
.end method

.method public isInProvidesStatement()Z
    .locals 1

    const/16 v0, 0x42f

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->foundToken(I)Z

    move-result v0

    return v0
.end method

.method public isInRequiresStatement()Z
    .locals 1

    const/16 v0, 0x42d

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->foundToken(I)Z

    move-result v0

    return v0
.end method

.method public isInUsesStatement()Z
    .locals 1

    const/16 v0, 0x42e

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->foundToken(I)Z

    move-result v0

    return v0
.end method

.method public isIndirectlyInsideBlock()Z
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

    const/16 v2, 0x401

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public isInsideAnnotation()Z
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

    const/16 v2, 0x421

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public isInsideArrayInitializer()Z
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementPtr:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementKindStack:[I

    aget v0, v1, v0

    const/16 v1, 0x40d

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isInsideBlock()Z
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

    const/16 v3, 0x401

    if-eq v1, v3, :cond_1

    packed-switch v1, :pswitch_data_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :pswitch_0
    return v2

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

.method public isInsideBreakable()Z
    .locals 5

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementPtr:I

    :goto_0
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-gt v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementKindStack:[I

    aget v1, v1, v0

    const/16 v3, 0x401

    const/4 v4, 0x1

    if-eq v1, v3, :cond_2

    const/16 v3, 0x419

    if-eq v1, v3, :cond_1

    const/16 v3, 0x426

    if-eq v1, v3, :cond_2

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return v2

    :cond_1
    return v4

    :cond_2
    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementInfoStack:[I

    aget v1, v1, v0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3

    const/4 v2, 0x6

    if-eq v1, v2, :cond_3

    const/4 v2, 0x7

    if-eq v1, v2, :cond_3

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x202
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isInsideLoop()Z
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

    const/16 v3, 0x401

    if-eq v1, v3, :cond_1

    const/16 v3, 0x426

    if-eq v1, v3, :cond_1

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return v2

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementInfoStack:[I

    aget v1, v1, v0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2

    const/4 v2, 0x7

    if-eq v1, v2, :cond_2

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x202
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isInsideReturn()Z
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

    const/16 v3, 0x401

    if-eq v1, v3, :cond_3

    const/16 v3, 0x40a

    if-eq v1, v3, :cond_2

    const/16 v3, 0x426

    if-eq v1, v3, :cond_1

    packed-switch v1, :pswitch_data_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :pswitch_0
    return v2

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x202
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public newReferenceExpression()Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierStack:[[C

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    aget-object v0, v0, v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->assistIdentifier()[C

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->newReferenceExpression()Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnReferenceExpressionName;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnReferenceExpressionName;-><init>(Lorg/eclipse/jdt/internal/compiler/parser/Scanner;)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    return-object v0
.end method

.method public parse(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;Lorg/eclipse/jdt/internal/compiler/CompilationResult;I)Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;
    .locals 2

    iput p3, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->cursorLocation:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    check-cast v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;->completionIdentifier:[C

    iput p3, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;->cursorLocation:I

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->parse(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object p1

    return-object p1
.end method

.method public parseBlockStatements(Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->canBeExplicitConstructor:I

    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->parseBlockStatements(Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)V

    return-void
.end method

.method public parseSomeStatements(IIILorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->methodRecoveryActivated:Z

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->initialize()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->goForBlockStatementsopt()V

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;

    invoke-virtual {p4}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult()Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;-><init>(Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V

    sget-object v2, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->FAKE_METHOD_NAME:[C

    iput-object v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->selector:[C

    iput p1, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->bodyStart:I

    iput p2, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->bodyEnd:I

    iput p1, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->declarationSourceStart:I

    iput p2, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->declarationSourceEnd:I

    iput p1, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iput p1, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->referenceContext:Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    iput-object p4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->compilationUnit:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    const/4 p4, 0x0

    iput-boolean p4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->diet:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->restartRecovery:Z

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v2, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->resetTo(II)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->consumeNestedMethod()V

    move p1, p4

    :goto_0
    if-lt p1, p3, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->parse()V
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->nestedMethod:[I

    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->nestedType:I

    aget p3, p1, p2

    sub-int/2addr p3, v0

    aput p3, p1, p2

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    const/16 p1, 0x4246

    :try_start_1
    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastAct:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->nestedMethod:[I

    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->nestedType:I

    aget p3, p1, p2

    sub-int/2addr p3, v0

    aput p3, p1, p2

    :goto_1
    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->hasError:Z

    if-nez p1, :cond_0

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astLengthPtr:I

    const/4 p2, -0x1

    if-le p1, p2, :cond_0

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astLengthStack:[I

    add-int/lit8 p3, p1, -0x1

    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astLengthPtr:I

    aget p1, p2, p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget p3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    sub-int/2addr p3, p1

    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    add-int/2addr p3, v0

    new-array v0, p1, [Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    iput-object v0, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    invoke-static {p2, p3, v0, p4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-object v1

    :goto_2
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->nestedMethod:[I

    iget p3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->nestedType:I

    aget p4, p2, p3

    sub-int/2addr p4, v0

    aput p4, p2, p3

    throw p1

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->consumeOpenFakeBlock()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method public popUntilCompletedAnnotationIfNecessary()V
    .locals 4

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementPtr:I

    if-gez v0, :cond_0

    return-void

    :cond_0
    :goto_0
    const/4 v1, -0x1

    if-le v0, v1, :cond_2

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementKindStack:[I

    aget v1, v1, v0

    const/16 v2, 0x421

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementInfoStack:[I

    aget v1, v1, v0

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-ltz v0, :cond_4

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementKindStack:[I

    aget v1, v1, v0

    iput v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->previousKind:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementInfoStack:[I

    aget v1, v1, v0

    iput v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->previousInfo:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementObjectInfoStack:[Ljava/lang/Object;

    aget-object v1, v1, v0

    iput-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->previousObjectInfo:Ljava/lang/Object;

    move v1, v0

    :goto_2
    iget v2, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementPtr:I

    if-le v1, v2, :cond_3

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementPtr:I

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementObjectInfoStack:[Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    return-void
.end method

.method public prepareForBlockStatements()V
    .locals 3

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

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->initializeForBlockStatements()V

    return-void
.end method

.method public pushOnLabelStack([C)V
    .locals 4

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->labelPtr:I

    const/4 v1, -0x1

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->labelStack:[[C

    array-length v2, v1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->labelPtr:I

    if-lt v0, v2, :cond_1

    add-int/lit8 v0, v2, 0xa

    new-array v0, v0, [[C

    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->labelStack:[[C

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->labelStack:[[C

    iget v1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->labelPtr:I

    aput-object p1, v0, v1

    return-void
.end method

.method public recoveryExitFromVariable()V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredLocalVariable;

    if-eqz v1, :cond_0

    invoke-super {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->recoveryExitFromVariable()V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    if-eq v0, v1, :cond_2

    const/16 v0, 0x40c

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;

    if-eqz v1, :cond_1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->recoveryExitFromVariable()V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    if-eq v0, v1, :cond_2

    const/16 v0, 0x600

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementKind(I)I

    move-result v0

    const/16 v1, 0x40d

    if-ne v0, v1, :cond_2

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    const/16 v0, 0x204

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    goto :goto_0

    :cond_1
    invoke-super {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->recoveryExitFromVariable()V

    :cond_2
    :goto_0
    return-void
.end method

.method public recoveryTokenCheck()V
    .locals 6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentToken:I

    const/16 v2, 0x21

    const/16 v3, 0x401

    const/16 v4, 0x600

    if-eq v1, v2, :cond_5

    const/16 v0, 0x31

    if-eq v1, v0, :cond_3

    const/16 v0, 0x49

    const/4 v2, 0x5

    const/16 v5, 0x419

    if-eq v1, v0, :cond_1

    const/16 v0, 0x65

    if-eq v1, v0, :cond_0

    invoke-super {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->recoveryTokenCheck()V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->recoveryTokenCheck()V

    invoke-virtual {p0, v4}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementKind(I)I

    move-result v0

    if-ne v0, v3, :cond_7

    invoke-virtual {p0, v4}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementInfo(I)I

    move-result v0

    if-ne v0, v2, :cond_7

    invoke-virtual {p0, v5}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(I)V

    goto :goto_0

    :cond_1
    invoke-super {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->recoveryTokenCheck()V

    invoke-virtual {p0, v4}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementKind(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v3, :cond_2

    invoke-virtual {p0, v4}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementInfo(I)I

    move-result v0

    if-ne v0, v2, :cond_2

    invoke-virtual {p0, v5, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(II)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v4}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementKind(I)I

    move-result v0

    if-ne v0, v5, :cond_7

    invoke-virtual {p0, v5}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    invoke-virtual {p0, v5, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(II)V

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->ignoreNextOpeningBrace:Z

    if-nez v0, :cond_4

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->pendingAnnotation:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnAnnotationOfType;

    :cond_4
    invoke-super {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->recoveryTokenCheck()V

    goto :goto_0

    :cond_5
    invoke-super {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->recoveryTokenCheck()V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    if-eq v1, v0, :cond_7

    instance-of v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;

    if-eqz v0, :cond_7

    invoke-virtual {p0, v4}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementKind(I)I

    move-result v0

    const/16 v1, 0x40d

    if-ne v0, v1, :cond_6

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    goto :goto_0

    :cond_6
    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    :cond_7
    :goto_0
    return-void
.end method

.method public reset()V
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->reset()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->cursorLocation:I

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->storeSourceEnds:Z

    if-eqz v0, :cond_0

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->sourceEnds:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;

    :cond_0
    return-void
.end method

.method public resetAfterCompletion()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->cursorLocation:I

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->flushAssistState()V

    return-void
.end method

.method public restoreAssistParser(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser$SavedState;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    check-cast v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;

    iget v1, p1, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser$SavedState;->parserCursorLocation:I

    iput v1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->cursorLocation:I

    iget v1, p1, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser$SavedState;->scannerCursorLocation:I

    iput v1, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;->cursorLocation:I

    iget-object p1, p1, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser$SavedState;->assistNodeParent:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->assistNodeParent:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    return-void
.end method

.method public resumeAfterRecovery()I
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->hasUnusedModifiers:Z

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->requireExtendedRecovery()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->unstackedAct:I

    const/16 v1, 0x4246

    if-eq v0, v1, :cond_0

    const/4 v0, 0x2

    return v0

    :cond_0
    invoke-super {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->resumeAfterRecovery()I

    move-result v0

    return v0

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->eofPosition:I

    iget v2, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->cursorLocation:I

    add-int/lit8 v2, v2, 0x1

    if-lt v1, v2, :cond_7

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->referenceContext:Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    instance-of v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isIndirectlyInsideFieldInitialization()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->assistNodeParent:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    instance-of v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    if-eqz v2, :cond_7

    instance-of v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/Initializer;

    if-nez v1, :cond_7

    :cond_2
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    instance-of v2, v1, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    if-nez v2, :cond_4

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->enclosingType()Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    move-result-object v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->resetStacks()V

    return v0

    :cond_4
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->pendingAnnotation:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnAnnotationOfType;

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    if-gt v0, v1, :cond_5

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    :cond_5
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->topElement()Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->sourceEnd()I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    const v2, 0x7fffffff

    if-ge v0, v2, :cond_6

    add-int/lit8 v0, v0, 0x1

    :cond_6
    iput v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->eofPosition:I

    :cond_7
    invoke-super {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->resumeAfterRecovery()I

    move-result v0

    return v0
.end method

.method public resumeOnSyntaxError()I
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->monitor:Lorg/eclipse/core/runtime/IProgressMonitor;

    if-eqz v0, :cond_0

    iget v1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->resumeOnSyntaxError:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->resumeOnSyntaxError:I

    const/16 v2, 0x64

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->resumeOnSyntaxError:I

    invoke-interface {v0}, Lorg/eclipse/core/runtime/IProgressMonitor;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->resumeOnSyntaxError()I

    move-result v0

    return v0
.end method

.method public setAssistIdentifier([C)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    check-cast v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;

    iput-object p1, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;->completionIdentifier:[C

    return-void
.end method

.method public shouldStackAssistNode()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->shouldStackAssistNode:Z

    return-void
.end method

.method public startRecordingIdentifiers(II)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->record:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->skipRecord:Z

    iput p1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->recordFrom:I

    iput p2, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->recordTo:I

    const/4 p1, -0x1

    iput p1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->potentialVariableNamesPtr:I

    const/16 p1, 0xa

    new-array p2, p1, [[C

    iput-object p2, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->potentialVariableNames:[[C

    new-array p2, p1, [I

    iput-object p2, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->potentialVariableNameStarts:[I

    new-array p1, p1, [I

    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->potentialVariableNameEnds:[I

    return-void
.end method

.method public stopRecordingIdentifiers()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->record:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->skipRecord:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "elementKindStack : int[] = {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementPtr:I

    const/16 v4, 0x2c

    if-le v2, v3, :cond_1

    const-string v3, "}\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "elementInfoStack : int[] = {"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    iget v2, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementPtr:I

    if-le v1, v2, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementInfoStack:[I

    aget v2, v2, v1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementKindStack:[I

    aget v3, v3, v2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public updateRecoveryState()V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->updateFromParserState()V

    const/16 v0, 0x207

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->lastIndexOfElement(I)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->createSnapShotParser()Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->copyState(Lorg/eclipse/jdt/internal/compiler/parser/Parser;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->completionIdentifierCheck()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->attachOrphanCompletionNode()V

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->copyState(Lorg/eclipse/jdt/internal/compiler/parser/Parser;)V

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->preserveEnclosingBlocks()V

    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->recoveryTokenCheck()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->recoveryExitFromVariable()V

    return-void
.end method
