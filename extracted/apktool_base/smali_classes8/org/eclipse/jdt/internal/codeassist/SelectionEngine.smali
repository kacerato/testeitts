.class public final Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;
.super Lorg/eclipse/jdt/internal/codeassist/impl/Engine;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/codeassist/ISearchRequestor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$InheritDocVisitor;,
        Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$SelectionTypeNameMatchRequestorWrapper;
    }
.end annotation


# static fields
.field public static DEBUG:Z = false

.field public static PERF:Z = false


# instance fields
.field private acceptedAnnotations:[[[C

.field acceptedAnnotationsCount:I

.field private acceptedAnnotationsModifiers:[I

.field acceptedAnswer:Z

.field private acceptedClasses:[[[C

.field acceptedClassesCount:I

.field private acceptedClassesModifiers:[I

.field private acceptedEnums:[[[C

.field acceptedEnumsCount:I

.field private acceptedEnumsModifiers:[I

.field private acceptedInterfaces:[[[C

.field acceptedInterfacesCount:I

.field private acceptedInterfacesModifiers:[I

.field private actualSelectionEnd:I

.field private actualSelectionStart:I

.field noProposal:Z

.field owner:Lorg/eclipse/jdt/core/WorkingCopyOwner;

.field parser:Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;

.field problem:Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

.field requestor:Lorg/eclipse/jdt/internal/codeassist/ISelectionRequestor;

.field private selectedIdentifier:[C


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/core/SearchableEnvironment;Lorg/eclipse/jdt/internal/codeassist/ISelectionRequestor;Ljava/util/Map;Lorg/eclipse/jdt/core/WorkingCopyOwner;)V
    .locals 3

    invoke-direct {p0, p3}, Lorg/eclipse/jdt/internal/codeassist/impl/Engine;-><init>(Ljava/util/Map;)V

    const/4 p3, 0x1

    iput-boolean p3, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->noProposal:Z

    const/4 p3, 0x0

    iput-object p3, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->problem:Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->requestor:Lorg/eclipse/jdt/internal/codeassist/ISelectionRequestor;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/Engine;->nameEnvironment:Lorg/eclipse/jdt/internal/core/SearchableEnvironment;

    new-instance p2, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$1;

    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/DefaultErrorHandlingPolicies;->proceedWithAllProblems()Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;

    move-result-object p3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/Engine;->compilerOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblemFactory;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblemFactory;-><init>(Ljava/util/Locale;)V

    invoke-direct {p2, p0, p3, v0, v1}, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$1;-><init>(Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;Lorg/eclipse/jdt/internal/compiler/IProblemFactory;)V

    new-instance p3, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/Engine;->compilerOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    invoke-direct {p3, p0, v0, p2, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;-><init>(Lorg/eclipse/jdt/internal/compiler/impl/ITypeRequestor;Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;)V

    iput-object p3, p0, Lorg/eclipse/jdt/internal/codeassist/impl/Engine;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    new-instance p1, Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;

    invoke-direct {p1, p2}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;-><init>(Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->parser:Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;

    iput-object p4, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->owner:Lorg/eclipse/jdt/core/WorkingCopyOwner;

    return-void
.end method

.method private acceptPackageVisibilityStatements([Lorg/eclipse/jdt/internal/compiler/ast/PackageVisibilityStatement;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V
    .locals 5

    if-eqz p1, :cond_2

    array-length p2, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, p2, :cond_0

    goto :goto_1

    :cond_0
    aget-object v2, p1, v1

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/PackageVisibilityStatement;->pkgRef:Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    instance-of v3, v2, Lorg/eclipse/jdt/internal/codeassist/select/SelectionOnPackageVisibilityReference;

    if-eqz v3, :cond_1

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->noProposal:Z

    iget-object v3, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->requestor:Lorg/eclipse/jdt/internal/codeassist/ISelectionRequestor;

    check-cast v2, Lorg/eclipse/jdt/internal/codeassist/select/SelectionOnPackageVisibilityReference;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->tokens:[[C

    const/16 v4, 0x2e

    invoke-static {v2, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v2

    invoke-interface {v3, v2}, Lorg/eclipse/jdt/internal/codeassist/ISelectionRequestor;->acceptPackage([C)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private acceptQualifiedTypes()V
    .locals 13

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptedClasses:[[[C

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptedAnswer:Z

    move v0, v3

    :goto_0
    iget v4, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptedClassesCount:I

    if-lt v0, v4, :cond_0

    iput-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptedClasses:[[[C

    iput-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptedClassesModifiers:[I

    iput v3, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptedClassesCount:I

    goto :goto_1

    :cond_0
    iput-boolean v3, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->noProposal:Z

    iget-object v5, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->requestor:Lorg/eclipse/jdt/internal/codeassist/ISelectionRequestor;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptedClasses:[[[C

    aget-object v4, v4, v0

    aget-object v6, v4, v3

    aget-object v7, v4, v2

    iget-object v4, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptedClassesModifiers:[I

    aget v8, v4, v0

    iget v11, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->actualSelectionStart:I

    iget v12, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->actualSelectionEnd:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v5 .. v12}, Lorg/eclipse/jdt/internal/codeassist/ISelectionRequestor;->acceptType([C[CIZ[CII)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptedInterfaces:[[[C

    if-eqz v0, :cond_3

    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptedAnswer:Z

    move v0, v3

    :goto_2
    iget v4, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptedInterfacesCount:I

    if-lt v0, v4, :cond_2

    iput-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptedInterfaces:[[[C

    iput-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptedInterfacesModifiers:[I

    iput v3, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptedInterfacesCount:I

    goto :goto_3

    :cond_2
    iput-boolean v3, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->noProposal:Z

    iget-object v5, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->requestor:Lorg/eclipse/jdt/internal/codeassist/ISelectionRequestor;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptedInterfaces:[[[C

    aget-object v4, v4, v0

    aget-object v6, v4, v3

    aget-object v7, v4, v2

    iget-object v4, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptedInterfacesModifiers:[I

    aget v8, v4, v0

    iget v11, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->actualSelectionStart:I

    iget v12, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->actualSelectionEnd:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v5 .. v12}, Lorg/eclipse/jdt/internal/codeassist/ISelectionRequestor;->acceptType([C[CIZ[CII)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptedAnnotations:[[[C

    if-eqz v0, :cond_5

    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptedAnswer:Z

    move v0, v3

    :goto_4
    iget v4, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptedAnnotationsCount:I

    if-lt v0, v4, :cond_4

    iput-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptedAnnotations:[[[C

    iput-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptedAnnotationsModifiers:[I

    iput v3, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptedAnnotationsCount:I

    goto :goto_5

    :cond_4
    iput-boolean v3, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->noProposal:Z

    iget-object v5, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->requestor:Lorg/eclipse/jdt/internal/codeassist/ISelectionRequestor;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptedAnnotations:[[[C

    aget-object v4, v4, v0

    aget-object v6, v4, v3

    aget-object v7, v4, v2

    iget-object v4, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptedAnnotationsModifiers:[I

    aget v8, v4, v0

    iget v11, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->actualSelectionStart:I

    iget v12, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->actualSelectionEnd:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v5 .. v12}, Lorg/eclipse/jdt/internal/codeassist/ISelectionRequestor;->acceptType([C[CIZ[CII)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    :goto_5
    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptedEnums:[[[C

    if-eqz v0, :cond_7

    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptedAnswer:Z

    move v0, v3

    :goto_6
    iget v4, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptedEnumsCount:I

    if-lt v0, v4, :cond_6

    iput-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptedEnums:[[[C

    iput-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptedEnumsModifiers:[I

    iput v3, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptedEnumsCount:I

    goto :goto_7

    :cond_6
    iput-boolean v3, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->noProposal:Z

    iget-object v5, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->requestor:Lorg/eclipse/jdt/internal/codeassist/ISelectionRequestor;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptedEnums:[[[C

    aget-object v4, v4, v0

    aget-object v6, v4, v3

    aget-object v7, v4, v2

    iget-object v4, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptedEnumsModifiers:[I

    aget v8, v4, v0

    iget v11, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->actualSelectionStart:I

    iget v12, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->actualSelectionEnd:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v5 .. v12}, Lorg/eclipse/jdt/internal/codeassist/ISelectionRequestor;->acceptType([C[CIZ[CII)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_7
    :goto_7
    return-void
.end method

.method private checkSelection([CIIZ)Z
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    new-instance v15, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget-object v5, v0, Lorg/eclipse/jdt/internal/codeassist/impl/Engine;->compilerOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-wide v9, v5, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    iget-wide v11, v5, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->complianceLevel:J

    const/4 v14, 0x0

    const/16 v16, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v13, 0x0

    move-object v5, v15

    move-object v0, v15

    move/from16 v15, v16

    invoke-direct/range {v5 .. v15}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;-><init>(ZZZJJ[[C[[CZ)V

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->setSource([C)V

    const/4 v7, 0x7

    const/16 v9, 0x3e

    const/16 v10, 0x2d

    const/16 v11, 0x3a

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-le v2, v3, :cond_11

    array-length v3, v1

    sub-int/2addr v3, v13

    add-int/lit8 v16, v2, -0x1

    move/from16 v17, v2

    :goto_0
    if-gtz v16, :cond_0

    move/from16 v1, v17

    goto/16 :goto_7

    :cond_0
    :try_start_0
    aget-char v14, v1, v16

    const/16 v15, 0x5c

    if-ne v14, v15, :cond_6

    add-int/lit8 v15, v16, 0x1

    aget-char v15, v1, v15

    const/16 v8, 0x75

    if-ne v15, v8, :cond_6

    add-int/lit8 v14, v16, 0x2

    :goto_1
    aget-char v15, v1, v14

    if-eq v15, v8, :cond_5

    add-int/lit8 v8, v14, 0x3

    if-ge v3, v8, :cond_2

    array-length v3, v1

    if-ge v8, v3, :cond_1

    move v3, v8

    goto :goto_2

    :cond_1
    return v12

    :cond_2
    :goto_2
    add-int/lit8 v8, v14, 0x1

    invoke-static {v15}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->getHexadecimalValue(C)I

    move-result v15

    const/16 v13, 0xf

    if-gt v15, v13, :cond_4

    if-ltz v15, :cond_4

    add-int/lit8 v18, v14, 0x2

    aget-char v8, v1, v8

    invoke-static {v8}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->getHexadecimalValue(C)I

    move-result v8

    if-gt v8, v13, :cond_4

    if-ltz v8, :cond_4

    add-int/lit8 v19, v14, 0x3

    aget-char v18, v1, v18

    invoke-static/range {v18 .. v18}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->getHexadecimalValue(C)I

    move-result v5

    if-gt v5, v13, :cond_4

    if-ltz v5, :cond_4

    add-int/lit8 v14, v14, 0x4

    aget-char v18, v1, v19

    invoke-static/range {v18 .. v18}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->getHexadecimalValue(C)I

    move-result v6

    if-gt v6, v13, :cond_4

    if-gez v6, :cond_3

    goto :goto_3

    :cond_3
    mul-int/lit8 v15, v15, 0x10

    add-int/2addr v15, v8

    mul-int/lit8 v15, v15, 0x10

    add-int/2addr v15, v5

    mul-int/lit8 v15, v15, 0x10

    add-int/2addr v15, v6

    int-to-char v5, v15

    move/from16 v20, v14

    move v14, v5

    move/from16 v5, v20

    goto :goto_4

    :cond_4
    :goto_3
    return v12

    :cond_5
    add-int/lit8 v14, v14, 0x1

    const/4 v13, 0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v5, v16, 0x1

    :goto_4
    const/16 v6, 0xa

    if-eq v14, v6, :cond_a

    const/16 v6, 0xd

    if-eq v14, v6, :cond_a

    const/16 v6, 0x22

    if-eq v14, v6, :cond_a

    const/16 v6, 0x27

    if-eq v14, v6, :cond_a

    if-eq v14, v10, :cond_8

    const/16 v6, 0x2f

    if-eq v14, v6, :cond_a

    if-eq v14, v11, :cond_7

    goto :goto_6

    :cond_7
    aget-char v6, v1, v5

    if-ne v6, v11, :cond_9

    :goto_5
    add-int/lit8 v1, v5, -0x1

    goto :goto_7

    :cond_8
    aget-char v6, v1, v5
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v6, v9, :cond_9

    goto :goto_5

    :cond_9
    :goto_6
    add-int/lit8 v16, v16, -0x1

    move/from16 v17, v5

    const/4 v13, 0x1

    goto/16 :goto_0

    :cond_a
    move v1, v5

    :goto_7
    invoke-virtual {v0, v1, v3, v4}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->resetTo(IIZ)V

    :cond_b
    :try_start_1
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextToken()I

    move-result v1
    :try_end_1
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_1 .. :try_end_1} :catch_0

    if-eq v1, v7, :cond_d

    const/16 v3, 0x16

    if-eq v1, v3, :cond_e

    const/16 v3, 0x62

    if-eq v1, v3, :cond_d

    packed-switch v1, :pswitch_data_0

    :cond_c
    const/16 v3, 0x3d

    goto :goto_a

    :cond_d
    const/4 v3, 0x1

    goto :goto_9

    :cond_e
    :pswitch_0
    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    if-gt v3, v2, :cond_c

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    if-gt v2, v3, :cond_c

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->eofPosition:I

    if-ne v3, v1, :cond_10

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    array-length v2, v2

    iput v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->eofPosition:I

    :cond_f
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextCharAsJavaIdentifierPart()Z

    move-result v2

    if-nez v2, :cond_f

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->eofPosition:I

    :cond_10
    iget v14, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenSource()[C

    move-result-object v15

    :goto_8
    move-object/from16 v0, p0

    goto/16 :goto_12

    :goto_9
    iget v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    if-gt v4, v2, :cond_c

    iget v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    if-gt v2, v5, :cond_c

    add-int/lit8 v14, v5, -0x1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenSource()[C

    move-result-object v15

    move-object/from16 v0, p0

    move v1, v14

    move v14, v4

    goto/16 :goto_12

    :goto_a
    if-ne v1, v3, :cond_b

    const/4 v1, -0x1

    const/4 v14, -0x1

    const/4 v15, 0x0

    goto :goto_8

    :catch_0
    return v12

    :cond_11
    if-ne v2, v3, :cond_17

    if-lez v2, :cond_17

    array-length v5, v1

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    if-ge v3, v5, :cond_17

    aget-char v5, v1, v2

    if-ne v5, v9, :cond_12

    add-int/lit8 v6, v2, -0x1

    aget-char v6, v1, v6

    if-eq v6, v10, :cond_13

    :cond_12
    if-ne v5, v11, :cond_14

    add-int/lit8 v6, v2, -0x1

    aget-char v6, v1, v6

    if-ne v6, v11, :cond_14

    :cond_13
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_b

    :cond_14
    if-ne v5, v10, :cond_15

    add-int/lit8 v6, v3, 0x1

    aget-char v6, v1, v6

    if-eq v6, v9, :cond_16

    :cond_15
    if-ne v5, v11, :cond_17

    add-int/lit8 v5, v3, 0x1

    aget-char v1, v1, v5

    if-ne v1, v11, :cond_17

    :cond_16
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    :cond_17
    :goto_b
    invoke-virtual {v0, v2, v3, v4}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->resetTo(IIZ)V

    const/4 v1, 0x1

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/16 v17, -0x1

    :goto_c
    :try_start_2
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextToken()I

    move-result v4
    :try_end_2
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v5, 0x1

    if-eq v4, v5, :cond_22

    if-eq v4, v7, :cond_21

    const/16 v5, 0xb

    if-eq v4, v5, :cond_20

    const/16 v5, 0x16

    if-eq v4, v5, :cond_1c

    const/16 v6, 0x3d

    if-eq v4, v6, :cond_1b

    const/16 v6, 0x62

    if-eq v4, v6, :cond_19

    packed-switch v4, :pswitch_data_1

    return v12

    :pswitch_1
    iget v8, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    iget v9, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->initialPosition:I

    if-eq v8, v9, :cond_18

    return v12

    :cond_18
    move-object v8, v0

    move-object/from16 v0, p0

    goto :goto_10

    :goto_d
    :pswitch_2
    move-object v8, v0

    move-object/from16 v0, p0

    goto :goto_f

    :cond_19
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    if-lt v2, v1, :cond_1a

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    if-ge v3, v0, :cond_1a

    move-object/from16 v0, p0

    iput v2, v0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->actualSelectionStart:I

    iput v3, v0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->actualSelectionEnd:I

    sget-object v1, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    iput-object v1, v0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->selectedIdentifier:[C

    :goto_e
    const/4 v1, 0x1

    return v1

    :cond_1a
    move-object/from16 v0, p0

    return v12

    :cond_1b
    const/16 v6, 0x62

    move-object v8, v0

    move-object/from16 v0, p0

    if-eqz v1, :cond_1f

    return v12

    :cond_1c
    const/16 v6, 0x62

    goto :goto_d

    :goto_f
    if-nez v1, :cond_1d

    return v12

    :cond_1d
    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenSource()[C

    move-result-object v1

    iget v9, v8, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    iget v10, v8, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    if-le v10, v3, :cond_1e

    sub-int v10, v3, v9

    add-int/2addr v10, v11

    invoke-static {v1, v12, v10}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v1

    move v10, v3

    :cond_1e
    move-object v15, v1

    move v14, v9

    move/from16 v17, v10

    move v1, v12

    :cond_1f
    :goto_10
    const/16 v9, 0x3d

    goto :goto_11

    :cond_20
    const/16 v5, 0x16

    const/16 v6, 0x62

    move-object v8, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->checkTypeArgument(Lorg/eclipse/jdt/internal/compiler/parser/Scanner;)Z

    move-result v9

    if-nez v9, :cond_1f

    return v12

    :cond_21
    const/16 v5, 0x16

    const/16 v6, 0x62

    move-object v8, v0

    move-object/from16 v0, p0

    iget v9, v8, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    if-lt v2, v9, :cond_23

    iget v9, v8, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    if-ge v3, v9, :cond_23

    iput v2, v0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->actualSelectionStart:I

    iput v3, v0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->actualSelectionEnd:I

    sget-object v1, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    iput-object v1, v0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->selectedIdentifier:[C

    goto :goto_e

    :cond_22
    const/16 v5, 0x16

    const/16 v6, 0x62

    move-object v8, v0

    move-object/from16 v0, p0

    :cond_23
    if-eqz v1, :cond_24

    return v12

    :cond_24
    const/4 v1, 0x1

    goto :goto_10

    :goto_11
    if-ne v4, v9, :cond_26

    move/from16 v1, v17

    :goto_12
    if-lez v14, :cond_25

    iput v14, v0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->actualSelectionStart:I

    iput v1, v0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->actualSelectionEnd:I

    iput-object v15, v0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->selectedIdentifier:[C

    const/4 v4, 0x1

    return v4

    :cond_25
    return v12

    :cond_26
    move-object v0, v8

    goto/16 :goto_c

    :catch_1
    move-object/from16 v0, p0

    return v12

    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x22
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private checkTypeArgument(Lorg/eclipse/jdt/internal/compiler/parser/Scanner;)Z
    .locals 7

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x1

    move v2, v1

    :cond_0
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextToken()I

    move-result v4
    :try_end_0
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v5, 0xb

    if-eq v4, v5, :cond_3

    const/16 v5, 0x20

    if-eq v4, v5, :cond_2

    const/16 v6, 0x22

    if-eq v4, v6, :cond_1

    const/16 v6, 0x56

    if-eq v4, v6, :cond_1

    packed-switch v4, :pswitch_data_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenSource()[C

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_0
    add-int/lit8 v2, v2, -0x3

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenSource()[C

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_1
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenSource()[C

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_2
    add-int/lit8 v2, v2, -0x2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenSource()[C

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenSource()[C

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    if-ne v2, v1, :cond_4

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    new-array v6, v5, [C

    invoke-virtual {v0, v3, v5, v6, v3}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    :try_start_1
    invoke-static {v6, v1}, Lorg/eclipse/jdt/core/Signature;->createTypeSignature([CZ)Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    return v3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenSource()[C

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    :cond_4
    :goto_0
    if-gez v2, :cond_5

    return v3

    :cond_5
    if-eqz v2, :cond_6

    const/16 v5, 0x3d

    if-ne v4, v5, :cond_0

    :cond_6
    if-nez v2, :cond_7

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    sub-int/2addr p1, v1

    new-array v2, p1, [C

    invoke-virtual {v0, v3, p1, v2, v3}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    :try_start_2
    invoke-static {v2, v1}, Lorg/eclipse/jdt/core/Signature;->createTypeSignature([CZ)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    return v1

    :catch_1
    :cond_7
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private findAllTypes([C)V
    .locals 11

    :try_start_0
    new-instance v9, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$2;

    invoke-direct {v9, p0}, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$2;-><init>(Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;)V

    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$3;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$3;-><init>(Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;)V

    invoke-static {}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->createWorkspaceScope()Lorg/eclipse/jdt/core/search/IJavaSearchScope;

    move-result-object v6

    new-instance v10, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$SelectionTypeNameMatchRequestorWrapper;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/Engine;->unitScope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->imports:[Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    :goto_0
    invoke-direct {v10, v0, v6, v1}, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$SelectionTypeNameMatchRequestorWrapper;-><init>(Lorg/eclipse/jdt/core/search/TypeNameMatchRequestor;Lorg/eclipse/jdt/core/search/IJavaSearchScope;[Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->owner:Lorg/eclipse/jdt/core/WorkingCopyOwner;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->owner:Lorg/eclipse/jdt/core/WorkingCopyOwner;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getWorkingCopies(Lorg/eclipse/jdt/core/WorkingCopyOwner;Z)[Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object v2
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    new-instance v0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;

    invoke-direct {v0, v2}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;-><init>([Lorg/eclipse/jdt/core/ICompilationUnit;)V

    const/4 v5, 0x0

    const/4 v8, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v4, 0x8

    move-object v3, p1

    move-object v7, v10

    invoke-virtual/range {v0 .. v9}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->searchAllTypeNames([CI[CIILorg/eclipse/jdt/core/search/IJavaSearchScope;Lorg/eclipse/jdt/internal/core/search/IRestrictedAccessTypeRequestor;ILorg/eclipse/core/runtime/IProgressMonitor;)V
    :try_end_1
    .catch Lorg/eclipse/core/runtime/OperationCanceledException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_0
    :try_start_2
    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$SelectionTypeNameMatchRequestorWrapper;->acceptNotImported()V
    :try_end_2
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    return-void
.end method

.method private findMethodWithAttachedDocInHierarchy(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->requestor:Lorg/eclipse/jdt/internal/codeassist/ISelectionRequestor;

    check-cast v1, Lorg/eclipse/jdt/internal/core/SelectionRequestor;

    new-instance v2, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$4;

    invoke-direct {v2, p0, p1, v1}, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$4;-><init>(Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/core/SelectionRequestor;)V

    invoke-virtual {v2, v0}, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$InheritDocVisitor;->visitInheritDoc(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private getCorrectMethodBinding(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->parser:Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->javadocParser:Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionJavadocParser;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionJavadocParser;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionJavadocParser;->inheritDocTagSelected:Z

    if-eqz v0, :cond_0

    :try_start_0
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->findMethodWithAttachedDocInHierarchy(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 p1, 0x0

    :cond_0
    return-object p1
.end method

.method private isLocal(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Z
    .locals 2

    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->genericType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->isLocal(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Z

    move-result p1

    return p1

    :cond_0
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MemberTypeBinding;

    if-eqz v0, :cond_3

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/MemberTypeBinding;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;->enclosingType:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->isLocal(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Z

    move-result p1

    return p1

    :cond_3
    return v1
.end method

.method private selectDeclaration(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->getParser()Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistIdentifier()[C

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->currentPackage:Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    if-nez v2, :cond_1

    .line 3
    sget-object v2, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    goto :goto_0

    :cond_1
    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->tokens:[[C

    const/16 v3, 0x2e

    invoke-static {v2, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v2

    .line 4
    :goto_0
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->types:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-nez p1, :cond_2

    move v3, v1

    goto :goto_1

    .line 5
    :cond_2
    array-length v3, p1

    :goto_1
    move v4, v1

    :goto_2
    if-lt v4, v3, :cond_3

    return v1

    .line 6
    :cond_3
    aget-object v5, p1, v4

    invoke-direct {p0, v5, v0, v2}, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->selectDeclaration(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;[C[C)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method private selectDeclaration(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;[C[C)Z
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 7
    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->name:[C

    const/16 v4, 0x2e

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ne v3, v2, :cond_2

    move-object v2, v1

    move-object v10, v5

    :goto_0
    if-nez v2, :cond_1

    .line 8
    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->computeUniqueKey()[C

    move-result-object v5

    :cond_0
    move-object v13, v5

    .line 9
    iget-object v8, v0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->requestor:Lorg/eclipse/jdt/internal/codeassist/ISelectionRequestor;

    .line 10
    iget v11, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->modifiers:I

    .line 11
    iget v14, v0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->actualSelectionStart:I

    .line 12
    iget v15, v0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->actualSelectionEnd:I

    const/4 v12, 0x1

    move-object/from16 v9, p3

    .line 13
    invoke-interface/range {v8 .. v15}, Lorg/eclipse/jdt/internal/codeassist/ISelectionRequestor;->acceptType([C[CIZ[CII)V

    .line 14
    iput-boolean v7, v0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->noProposal:Z

    return v6

    .line 15
    :cond_1
    iget-object v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->name:[C

    invoke-static {v3, v10, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[CC)[C

    move-result-object v10

    .line 16
    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->enclosingType:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    goto :goto_0

    .line 17
    :cond_2
    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-nez v3, :cond_3

    move v8, v7

    goto :goto_1

    .line 18
    :cond_3
    array-length v8, v3

    :goto_1
    move v9, v7

    :goto_2
    if-lt v9, v8, :cond_16

    .line 19
    iget-object v10, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->fields:[Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    if-nez v10, :cond_4

    move v11, v7

    goto :goto_3

    .line 20
    :cond_4
    array-length v3, v10

    move v11, v3

    :goto_3
    move v3, v7

    :goto_4
    if-lt v3, v11, :cond_12

    .line 21
    iget-object v8, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->methods:[Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    if-nez v8, :cond_5

    move v9, v7

    goto :goto_5

    .line 22
    :cond_5
    array-length v3, v8

    move v9, v3

    :goto_5
    move v12, v7

    :goto_6
    if-lt v12, v9, :cond_a

    .line 23
    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->typeParameters:[Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    if-nez v3, :cond_6

    move v10, v7

    goto :goto_7

    .line 24
    :cond_6
    array-length v8, v3

    move v10, v8

    :goto_7
    move v8, v7

    :goto_8
    if-lt v8, v10, :cond_7

    return v7

    .line 25
    :cond_7
    aget-object v9, v3, v8

    .line 26
    iget-object v11, v9, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->name:[C

    if-ne v11, v2, :cond_9

    move-object v12, v5

    :goto_9
    if-nez v1, :cond_8

    .line 27
    iget-object v10, v0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->requestor:Lorg/eclipse/jdt/internal/codeassist/ISelectionRequestor;

    .line 28
    iget-object v13, v9, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->name:[C

    .line 29
    iget v15, v0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->actualSelectionStart:I

    .line 30
    iget v1, v0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->actualSelectionEnd:I

    const/4 v14, 0x1

    move-object/from16 v11, p3

    move/from16 v16, v1

    .line 31
    invoke-interface/range {v10 .. v16}, Lorg/eclipse/jdt/internal/codeassist/ISelectionRequestor;->acceptTypeParameter([C[C[CZII)V

    .line 32
    iput-boolean v7, v0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->noProposal:Z

    return v6

    .line 33
    :cond_8
    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->name:[C

    invoke-static {v2, v12, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[CC)[C

    move-result-object v12

    .line 34
    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->enclosingType:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    goto :goto_9

    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    .line 35
    :cond_a
    aget-object v13, v8, v12

    .line 36
    iget-object v3, v13, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->selector:[C

    if-ne v3, v2, :cond_d

    move-object v2, v5

    :goto_a
    if-nez v1, :cond_c

    .line 37
    iget-object v14, v0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->requestor:Lorg/eclipse/jdt/internal/codeassist/ISelectionRequestor;

    .line 38
    iget-object v1, v13, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->selector:[C

    .line 39
    invoke-virtual {v13}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->isConstructor()Z

    move-result v24

    .line 40
    iget-object v3, v13, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->computeUniqueKey()[C

    move-result-object v5

    :cond_b
    move-object/from16 v26, v5

    .line 41
    iget v3, v0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->actualSelectionStart:I

    .line 42
    iget v4, v0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->actualSelectionEnd:I

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x1

    move-object/from16 v15, p3

    move-object/from16 v16, v2

    move-object/from16 v18, v1

    move/from16 v27, v3

    move/from16 v28, v4

    .line 43
    invoke-interface/range {v14 .. v28}, Lorg/eclipse/jdt/internal/codeassist/ISelectionRequestor;->acceptMethod([C[CLjava/lang/String;[C[[C[[C[Ljava/lang/String;[[C[[[CZZ[CII)V

    .line 44
    iput-boolean v7, v0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->noProposal:Z

    return v6

    .line 45
    :cond_c
    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->name:[C

    invoke-static {v3, v2, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[CC)[C

    move-result-object v2

    .line 46
    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->enclosingType:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    goto :goto_a

    .line 47
    :cond_d
    invoke-virtual {v13}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->typeParameters()[Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    move-result-object v14

    if-nez v14, :cond_e

    move v15, v7

    goto :goto_b

    .line 48
    :cond_e
    array-length v3, v14

    move v15, v3

    :goto_b
    move v3, v7

    :goto_c
    if-lt v3, v15, :cond_f

    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_6

    .line 49
    :cond_f
    aget-object v10, v14, v3

    .line 50
    iget-object v11, v10, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->name:[C

    if-ne v11, v2, :cond_11

    :goto_d
    if-nez v1, :cond_10

    .line 51
    iget-object v14, v0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->requestor:Lorg/eclipse/jdt/internal/codeassist/ISelectionRequestor;

    .line 52
    iget-object v1, v13, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->selector:[C

    .line 53
    iget v2, v13, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    .line 54
    iget v3, v13, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    .line 55
    iget-object v4, v10, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->name:[C

    .line 56
    iget v8, v0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->actualSelectionStart:I

    .line 57
    iget v9, v0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->actualSelectionEnd:I

    const/16 v21, 0x1

    move-object/from16 v15, p3

    move-object/from16 v16, v5

    move-object/from16 v17, v1

    move/from16 v18, v2

    move/from16 v19, v3

    move-object/from16 v20, v4

    move/from16 v22, v8

    move/from16 v23, v9

    .line 58
    invoke-interface/range {v14 .. v23}, Lorg/eclipse/jdt/internal/codeassist/ISelectionRequestor;->acceptMethodTypeParameter([C[C[CII[CZII)V

    .line 59
    iput-boolean v7, v0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->noProposal:Z

    return v6

    .line 60
    :cond_10
    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->name:[C

    invoke-static {v2, v5, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[CC)[C

    move-result-object v5

    .line 61
    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->enclosingType:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    goto :goto_d

    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 62
    :cond_12
    aget-object v8, v10, v3

    iget-object v8, v8, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->name:[C

    if-ne v8, v2, :cond_15

    move-object v13, v5

    :goto_e
    if-nez v1, :cond_14

    .line 63
    aget-object v1, v10, v3

    .line 64
    iget-object v11, v0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->requestor:Lorg/eclipse/jdt/internal/codeassist/ISelectionRequestor;

    .line 65
    iget-object v14, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->name:[C

    .line 66
    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->computeUniqueKey()[C

    move-result-object v5

    :cond_13
    move-object/from16 v16, v5

    .line 67
    iget v1, v0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->actualSelectionStart:I

    .line 68
    iget v2, v0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->actualSelectionEnd:I

    const/4 v15, 0x1

    move-object/from16 v12, p3

    move/from16 v17, v1

    move/from16 v18, v2

    .line 69
    invoke-interface/range {v11 .. v18}, Lorg/eclipse/jdt/internal/codeassist/ISelectionRequestor;->acceptField([C[C[CZ[CII)V

    .line 70
    iput-boolean v7, v0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->noProposal:Z

    return v6

    .line 71
    :cond_14
    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->name:[C

    invoke-static {v2, v13, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[CC)[C

    move-result-object v13

    .line 72
    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->enclosingType:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    goto :goto_e

    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_4

    .line 73
    :cond_16
    aget-object v10, v3, v9

    move-object/from16 v11, p3

    invoke-direct {v0, v10, v2, v11}, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->selectDeclaration(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;[C[C)Z

    move-result v10

    if-eqz v10, :cond_17

    return v6

    :cond_17
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2
.end method

.method private selectFrom(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;Z)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 2
    instance-of v3, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_5

    .line 3
    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    .line 4
    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->declaringElement:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    .line 5
    iput-boolean v5, v0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->noProposal:Z

    .line 6
    instance-of v3, v2, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    if-eqz v3, :cond_1

    .line 7
    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    .line 8
    invoke-direct {v0, v2}, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->isLocal(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->requestor:Lorg/eclipse/jdt/internal/codeassist/ISelectionRequestor;

    instance-of v5, v3, Lorg/eclipse/jdt/internal/core/SelectionRequestor;

    if-eqz v5, :cond_0

    .line 9
    check-cast v3, Lorg/eclipse/jdt/internal/core/SelectionRequestor;

    invoke-virtual {v3, v1}, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->acceptLocalTypeParameter(Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;)V

    goto :goto_2

    .line 10
    :cond_0
    iget-object v5, v0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->requestor:Lorg/eclipse/jdt/internal/codeassist/ISelectionRequestor;

    .line 11
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->qualifiedPackageName()[C

    move-result-object v6

    .line 12
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->qualifiedSourceName()[C

    move-result-object v7

    .line 13
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName()[C

    move-result-object v8

    .line 14
    iget v10, v0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->actualSelectionStart:I

    .line 15
    iget v11, v0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->actualSelectionEnd:I

    const/4 v9, 0x0

    .line 16
    invoke-interface/range {v5 .. v11}, Lorg/eclipse/jdt/internal/codeassist/ISelectionRequestor;->acceptTypeParameter([C[C[CZII)V

    goto :goto_2

    .line 17
    :cond_1
    instance-of v3, v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v3, :cond_4

    .line 18
    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    .line 19
    iget-object v3, v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-direct {v0, v3}, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->isLocal(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->requestor:Lorg/eclipse/jdt/internal/codeassist/ISelectionRequestor;

    instance-of v5, v3, Lorg/eclipse/jdt/internal/core/SelectionRequestor;

    if-eqz v5, :cond_2

    .line 20
    check-cast v3, Lorg/eclipse/jdt/internal/core/SelectionRequestor;

    invoke-virtual {v3, v1}, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->acceptLocalMethodTypeParameter(Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;)V

    goto :goto_2

    .line 21
    :cond_2
    iget-object v5, v0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->requestor:Lorg/eclipse/jdt/internal/codeassist/ISelectionRequestor;

    .line 22
    iget-object v3, v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->qualifiedPackageName()[C

    move-result-object v6

    .line 23
    iget-object v3, v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->qualifiedSourceName()[C

    move-result-object v7

    .line 24
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isConstructor()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 25
    iget-object v3, v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName()[C

    move-result-object v3

    :goto_0
    move-object v8, v3

    goto :goto_1

    .line 26
    :cond_3
    iget-object v3, v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    goto :goto_0

    .line 27
    :goto_1
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->sourceStart()I

    move-result v9

    .line 28
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->sourceEnd()I

    move-result v10

    .line 29
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName()[C

    move-result-object v11

    .line 30
    iget v13, v0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->actualSelectionStart:I

    .line 31
    iget v14, v0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->actualSelectionEnd:I

    const/4 v12, 0x0

    .line 32
    invoke-interface/range {v5 .. v14}, Lorg/eclipse/jdt/internal/codeassist/ISelectionRequestor;->acceptMethodTypeParameter([C[C[CII[CZII)V

    .line 33
    :cond_4
    :goto_2
    iput-boolean v4, v0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptedAnswer:Z

    goto/16 :goto_15

    .line 34
    :cond_5
    instance-of v3, v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v3, :cond_c

    .line 35
    move-object v3, v1

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 36
    instance-of v7, v3, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    if-eqz v7, :cond_7

    .line 37
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->closestMatch()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v3

    .line 38
    instance-of v7, v3, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v7, :cond_6

    .line 39
    move-object v6, v3

    check-cast v6, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    goto :goto_3

    :cond_6
    const/4 v6, 0x0

    goto :goto_3

    :cond_7
    move-object v6, v3

    :goto_3
    if-nez v6, :cond_8

    return-void

    .line 40
    :cond_8
    invoke-direct {v0, v6}, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->isLocal(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, v0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->requestor:Lorg/eclipse/jdt/internal/codeassist/ISelectionRequestor;

    instance-of v7, v3, Lorg/eclipse/jdt/internal/core/SelectionRequestor;

    if-eqz v7, :cond_9

    .line 41
    iput-boolean v5, v0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->noProposal:Z

    .line 42
    check-cast v3, Lorg/eclipse/jdt/internal/core/SelectionRequestor;

    invoke-virtual {v3, v6}, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->acceptLocalType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_5

    .line 43
    :cond_9
    instance-of v3, v1, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;

    if-eqz v3, :cond_b

    .line 44
    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;

    .line 45
    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;->intersectingTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 46
    array-length v3, v1

    :goto_4
    if-lt v5, v3, :cond_a

    goto :goto_5

    :cond_a
    aget-object v6, v1, v5

    move/from16 v15, p4

    .line 47
    invoke-direct {v0, v6, v2, v15}, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->selectFrom(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Z)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 48
    :cond_b
    iput-boolean v5, v0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->noProposal:Z

    .line 49
    iget-object v1, v0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->requestor:Lorg/eclipse/jdt/internal/codeassist/ISelectionRequestor;

    .line 50
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->qualifiedPackageName()[C

    move-result-object v7

    .line 51
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->qualifiedSourceName()[C

    move-result-object v8

    .line 52
    iget v9, v6, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    .line 53
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->computeUniqueKey()[C

    move-result-object v11

    .line 54
    iget v12, v0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->actualSelectionStart:I

    .line 55
    iget v13, v0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->actualSelectionEnd:I

    const/4 v10, 0x0

    move-object v6, v1

    .line 56
    invoke-interface/range {v6 .. v13}, Lorg/eclipse/jdt/internal/codeassist/ISelectionRequestor;->acceptType([C[CIZ[CII)V

    .line 57
    :goto_5
    iput-boolean v4, v0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptedAnswer:Z

    goto/16 :goto_15

    :cond_c
    move/from16 v15, p4

    .line 58
    instance-of v3, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v3, :cond_1b

    .line 59
    move-object v2, v1

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-direct {v0, v2}, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->getCorrectMethodBinding(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v2

    .line 60
    iput-boolean v5, v0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->noProposal:Z

    .line 61
    instance-of v3, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    if-eqz v3, :cond_d

    .line 62
    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    .line 63
    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->purpose:I

    const/16 v3, 0x9

    if-eq v1, v3, :cond_1a

    const/16 v3, 0xa

    if-ne v1, v3, :cond_d

    goto/16 :goto_11

    .line 64
    :cond_d
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isSynthetic()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 65
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 66
    array-length v3, v1

    .line 67
    new-array v12, v3, [[C

    .line 68
    new-array v13, v3, [[C

    .line 69
    new-array v14, v3, [Ljava/lang/String;

    move v7, v5

    :goto_6
    if-lt v7, v3, :cond_19

    .line 70
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v1

    iget-object v8, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    if-nez v8, :cond_e

    move v9, v5

    goto :goto_7

    .line 71
    :cond_e
    array-length v1, v8

    move v9, v1

    .line 72
    :goto_7
    new-array v1, v9, [[C

    .line 73
    new-array v3, v9, [[[C

    move v10, v5

    :goto_8
    if-lt v10, v9, :cond_12

    .line 74
    iget-object v5, v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 75
    invoke-direct {v0, v5}, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->isLocal(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Z

    move-result v7

    if-eqz v7, :cond_f

    iget-object v7, v0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->requestor:Lorg/eclipse/jdt/internal/codeassist/ISelectionRequestor;

    instance-of v8, v7, Lorg/eclipse/jdt/internal/core/SelectionRequestor;

    if-eqz v8, :cond_f

    .line 76
    check-cast v7, Lorg/eclipse/jdt/internal/core/SelectionRequestor;

    invoke-virtual {v7, v2}, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->acceptLocalMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    goto/16 :goto_11

    .line 77
    :cond_f
    iget-object v7, v0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->requestor:Lorg/eclipse/jdt/internal/codeassist/ISelectionRequestor;

    .line 78
    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->qualifiedPackageName()[C

    move-result-object v8

    .line 79
    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->qualifiedSourceName()[C

    move-result-object v9

    .line 80
    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v10

    if-nez v10, :cond_10

    const/4 v10, 0x0

    goto :goto_9

    :cond_10
    new-instance v6, Ljava/lang/String;

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v10

    invoke-static {v10}, Lorg/eclipse/jdt/internal/codeassist/impl/Engine;->getSignature(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)[C

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/lang/String;-><init>([C)V

    move-object v10, v6

    .line 81
    :goto_9
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isConstructor()Z

    move-result v6

    if-eqz v6, :cond_11

    .line 82
    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName()[C

    move-result-object v5

    :goto_a
    move-object v11, v5

    goto :goto_b

    .line 83
    :cond_11
    iget-object v5, v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    goto :goto_a

    .line 84
    :goto_b
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isConstructor()Z

    move-result v17

    .line 85
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->computeUniqueKey()[C

    move-result-object v19

    .line 86
    iget v2, v0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->actualSelectionStart:I

    .line 87
    iget v5, v0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->actualSelectionEnd:I

    move-object v15, v1

    move-object/from16 v16, v3

    move/from16 v18, p4

    move/from16 v20, v2

    move/from16 v21, v5

    .line 88
    invoke-interface/range {v7 .. v21}, Lorg/eclipse/jdt/internal/codeassist/ISelectionRequestor;->acceptMethod([C[CLjava/lang/String;[C[[C[[C[Ljava/lang/String;[[C[[[CZZ[CII)V

    goto/16 :goto_11

    .line 89
    :cond_12
    aget-object v7, v8, v10

    .line 90
    iget-object v11, v7, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    aput-object v11, v1, v10

    .line 91
    iget-object v11, v7, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->firstBound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez v11, :cond_13

    .line 92
    new-array v7, v5, [[C

    aput-object v7, v3, v10

    goto :goto_10

    .line 93
    :cond_13
    iget-object v15, v7, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v11, v15}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v11

    if-eqz v11, :cond_16

    .line 94
    iget-object v11, v7, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-nez v11, :cond_14

    move v11, v5

    goto :goto_c

    :cond_14
    array-length v11, v11

    :goto_c
    add-int/2addr v11, v4

    .line 95
    new-array v15, v11, [[C

    aput-object v15, v3, v10

    .line 96
    iget-object v7, v7, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v7, v7, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    aput-object v7, v15, v5

    move v7, v4

    :goto_d
    if-lt v7, v11, :cond_15

    goto :goto_10

    .line 97
    :cond_15
    aget-object v15, v3, v10

    aget-object v6, v8, v10

    iget-object v6, v6, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    add-int/lit8 v17, v7, -0x1

    aget-object v6, v6, v17

    iget-object v6, v6, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    aput-object v6, v15, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    .line 98
    :cond_16
    iget-object v6, v7, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-nez v6, :cond_17

    move v6, v5

    goto :goto_e

    :cond_17
    array-length v6, v6

    .line 99
    :goto_e
    new-array v7, v6, [[C

    aput-object v7, v3, v10

    move v7, v5

    :goto_f
    if-lt v7, v6, :cond_18

    :goto_10
    add-int/lit8 v10, v10, 0x1

    move/from16 v15, p4

    goto/16 :goto_8

    .line 100
    :cond_18
    aget-object v11, v3, v10

    aget-object v15, v8, v10

    iget-object v15, v15, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aget-object v15, v15, v7

    iget-object v15, v15, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    aput-object v15, v11, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_f

    .line 101
    :cond_19
    aget-object v6, v1, v7

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->qualifiedPackageName()[C

    move-result-object v6

    aput-object v6, v12, v7

    .line 102
    aget-object v6, v1, v7

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->qualifiedSourceName()[C

    move-result-object v6

    aput-object v6, v13, v7

    .line 103
    new-instance v6, Ljava/lang/String;

    aget-object v8, v1, v7

    invoke-static {v8}, Lorg/eclipse/jdt/internal/codeassist/impl/Engine;->getSignature(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)[C

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/String;-><init>([C)V

    const/16 v8, 0x2f

    const/16 v9, 0x2e

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v14, v7

    add-int/lit8 v7, v7, 0x1

    move/from16 v15, p4

    goto/16 :goto_6

    .line 104
    :cond_1a
    :goto_11
    iput-boolean v4, v0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptedAnswer:Z

    goto/16 :goto_15

    .line 105
    :cond_1b
    instance-of v3, v1, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-eqz v3, :cond_20

    .line 106
    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    .line 107
    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v2, :cond_26

    .line 108
    iput-boolean v5, v0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->noProposal:Z

    .line 109
    invoke-direct {v0, v2}, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->isLocal(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Z

    move-result v3

    if-eqz v3, :cond_1c

    iget-object v3, v0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->requestor:Lorg/eclipse/jdt/internal/codeassist/ISelectionRequestor;

    instance-of v5, v3, Lorg/eclipse/jdt/internal/core/SelectionRequestor;

    if-eqz v5, :cond_1c

    .line 110
    check-cast v3, Lorg/eclipse/jdt/internal/core/SelectionRequestor;

    invoke-virtual {v3, v1}, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->acceptLocalField(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)V

    goto :goto_14

    :cond_1c
    move-object v3, v1

    .line 111
    :goto_12
    instance-of v5, v3, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;

    if-nez v5, :cond_1e

    if-eqz v3, :cond_1d

    .line 112
    iget-object v1, v3, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->name:[C

    .line 113
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->computeUniqueKey()[C

    move-result-object v3

    move-object v8, v1

    move-object v10, v3

    goto :goto_13

    .line 114
    :cond_1d
    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->name:[C

    .line 115
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->computeUniqueKey()[C

    move-result-object v1

    move-object v10, v1

    move-object v8, v3

    .line 116
    :goto_13
    iget-object v5, v0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->requestor:Lorg/eclipse/jdt/internal/codeassist/ISelectionRequestor;

    .line 117
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->qualifiedPackageName()[C

    move-result-object v6

    .line 118
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->qualifiedSourceName()[C

    move-result-object v7

    .line 119
    iget v11, v0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->actualSelectionStart:I

    .line 120
    iget v12, v0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->actualSelectionEnd:I

    const/4 v9, 0x0

    .line 121
    invoke-interface/range {v5 .. v12}, Lorg/eclipse/jdt/internal/codeassist/ISelectionRequestor;->acceptField([C[C[CZ[CII)V

    .line 122
    :goto_14
    iput-boolean v4, v0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptedAnswer:Z

    goto/16 :goto_15

    .line 123
    :cond_1e
    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;

    .line 124
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;->problemId()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1f

    .line 125
    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;->closestMatch:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    goto :goto_12

    :cond_1f
    const/4 v3, 0x0

    goto :goto_12

    .line 126
    :cond_20
    instance-of v3, v1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    if-eqz v3, :cond_22

    .line 127
    iget-object v3, v0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->requestor:Lorg/eclipse/jdt/internal/codeassist/ISelectionRequestor;

    instance-of v6, v3, Lorg/eclipse/jdt/internal/core/SelectionRequestor;

    if-eqz v6, :cond_21

    .line 128
    check-cast v3, Lorg/eclipse/jdt/internal/core/SelectionRequestor;

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    move-object/from16 v2, p3

    invoke-virtual {v3, v1, v2}, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->acceptLocalVariable(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;)V

    .line 129
    iput-boolean v4, v0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptedAnswer:Z

    goto :goto_15

    .line 130
    :cond_21
    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-direct {v0, v1, v2, v5}, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->selectFrom(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Z)V

    goto :goto_15

    .line 131
    :cond_22
    instance-of v3, v1, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    if-eqz v3, :cond_23

    .line 132
    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->leafComponentType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-direct {v0, v1, v2, v5}, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->selectFrom(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Z)V

    goto :goto_15

    .line 133
    :cond_23
    instance-of v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    if-eqz v2, :cond_24

    .line 134
    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    .line 135
    iput-boolean v5, v0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->noProposal:Z

    .line 136
    iget-object v2, v0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->requestor:Lorg/eclipse/jdt/internal/codeassist/ISelectionRequestor;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->readableName()[C

    move-result-object v1

    invoke-interface {v2, v1}, Lorg/eclipse/jdt/internal/codeassist/ISelectionRequestor;->acceptPackage([C)V

    .line 137
    iput-boolean v4, v0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptedAnswer:Z

    goto :goto_15

    .line 138
    :cond_24
    instance-of v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    if-eqz v2, :cond_25

    .line 139
    iput-boolean v4, v0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptedAnswer:Z

    goto :goto_15

    .line 140
    :cond_25
    instance-of v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    if-eqz v2, :cond_26

    .line 141
    iput-boolean v5, v0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->noProposal:Z

    .line 142
    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    .line 143
    iget-object v2, v0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->requestor:Lorg/eclipse/jdt/internal/codeassist/ISelectionRequestor;

    .line 144
    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->moduleName:[C

    .line 145
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->computeUniqueKey()[C

    move-result-object v1

    .line 146
    iget v5, v0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->actualSelectionStart:I

    .line 147
    iget v6, v0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->actualSelectionEnd:I

    .line 148
    invoke-interface {v2, v3, v1, v5, v6}, Lorg/eclipse/jdt/internal/codeassist/ISelectionRequestor;->acceptModule([C[CII)V

    .line 149
    iput-boolean v4, v0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptedAnswer:Z

    :cond_26
    :goto_15
    return-void
.end method

.method private selectFrom(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0, p3}, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->selectFrom(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;Z)V

    return-void
.end method

.method private selectLocalDeclaration(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V
    .locals 3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->getParser()Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistIdentifier()[C

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    instance-of v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    new-instance v1, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$1Visitor;

    invoke-direct {v1, p0, v0}, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$1Visitor;-><init>(Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;[C)V

    invoke-virtual {p1, v1, v2}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V

    goto :goto_0

    :cond_1
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    new-instance v1, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$1Visitor;

    invoke-direct {v1, p0, v0}, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$1Visitor;-><init>(Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;[C)V

    invoke-virtual {p1, v1, v2}, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;)V

    :goto_0
    return-void
.end method

.method private selectMemberTypeFromImport(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Z)V
    .locals 6

    array-length v0, p2

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->memberTypes()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p3

    if-lt v2, v3, :cond_0

    return-void

    :cond_0
    aget-object v3, p3, v2

    iget-object v4, v3, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    array-length v4, v4

    if-le v0, v4, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p4, :cond_2

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isStatic()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    iget-object v4, v3, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    const/4 v5, 0x1

    invoke-static {p2, v4, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[CZ)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    invoke-direct {p0, v3, p1, v1}, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->selectFrom(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Z)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private selectStaticFieldFromStaticImport(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V
    .locals 6

    array-length v0, p2

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->availableFields()[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object p3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p3

    if-lt v2, v3, :cond_0

    return-void

    :cond_0
    aget-object v3, p3, v2

    iget-object v4, v3, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->name:[C

    array-length v4, v4

    if-le v0, v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isSynthetic()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isStatic()Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    iget-object v4, v3, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->name:[C

    const/4 v5, 0x1

    invoke-static {p2, v4, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[CZ)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    invoke-direct {p0, v3, p1, v1}, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->selectFrom(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Z)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private selectStaticMethodFromStaticImport(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V
    .locals 6

    array-length v0, p2

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->availableMethods()[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p3

    if-lt v2, v3, :cond_0

    return-void

    :cond_0
    aget-object v3, p3, v2

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isSynthetic()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isDefaultAbstract()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isConstructor()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isStatic()Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    iget-object v4, v3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    array-length v5, v4

    if-le v0, v5, :cond_5

    goto :goto_1

    :cond_5
    const/4 v5, 0x1

    invoke-static {p2, v4, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[CZ)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_1

    :cond_6
    invoke-direct {p0, v3, p1, v1}, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->selectFrom(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Z)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public acceptConstructor(I[CI[C[[C[[CI[CILjava/lang/String;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V
    .locals 0

    return-void
.end method

.method public acceptModule([C)V
    .locals 0

    return-void
.end method

.method public acceptPackage([C)V
    .locals 0

    return-void
.end method

.method public acceptType([C[C[[CILorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V
    .locals 9

    const/16 p5, 0x2e

    if-nez p3, :cond_0

    move-object v3, p2

    goto :goto_0

    :cond_0
    invoke-static {p3, p5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v0

    invoke-static {v0, p2, p5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[CC)[C

    move-result-object v0

    move-object v3, v0

    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->selectedIdentifier:[C

    invoke-static {p2, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v0

    if-eqz v0, :cond_f

    if-eqz p3, :cond_2

    array-length v0, p3

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p3, p5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object p3

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p3, 0x0

    :goto_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/eclipse/jdt/internal/codeassist/impl/Engine;->mustQualifyType([C[C[CI)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_e

    and-int/lit16 p2, p4, 0x6200

    const/16 p5, 0x200

    const/16 v0, 0xa

    if-eq p2, p5, :cond_b

    const/16 p5, 0x2000

    if-eq p2, p5, :cond_8

    const/16 p5, 0x2200

    if-eq p2, p5, :cond_8

    const/16 p5, 0x4000

    if-eq p2, p5, :cond_5

    filled-new-array {p1, v3}, [[C

    move-result-object p1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptedClasses:[[[C

    if-nez p2, :cond_3

    new-array p2, v0, [[[C

    iput-object p2, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptedClasses:[[[C

    new-array p2, v0, [I

    iput-object p2, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptedClassesModifiers:[I

    iput p3, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptedClassesCount:I

    :cond_3
    iget-object p2, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptedClasses:[[[C

    array-length p5, p2

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptedClassesCount:I

    if-ne p5, v0, :cond_4

    add-int/lit8 v0, p5, 0x1

    mul-int/lit8 v0, v0, 0x2

    new-array v1, v0, [[[C

    iput-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptedClasses:[[[C

    invoke-static {p2, p3, v1, p3, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p2, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptedClassesModifiers:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptedClassesModifiers:[I

    invoke-static {p2, p3, v0, p3, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    iget-object p2, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptedClassesModifiers:[I

    iget p3, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptedClassesCount:I

    aput p4, p2, p3

    iget-object p2, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptedClasses:[[[C

    add-int/lit8 p4, p3, 0x1

    iput p4, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptedClassesCount:I

    aput-object p1, p2, p3

    goto/16 :goto_3

    :cond_5
    filled-new-array {p1, v3}, [[C

    move-result-object p1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptedEnums:[[[C

    if-nez p2, :cond_6

    new-array p2, v0, [[[C

    iput-object p2, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptedEnums:[[[C

    new-array p2, v0, [I

    iput-object p2, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptedEnumsModifiers:[I

    iput p3, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptedEnumsCount:I

    :cond_6
    iget-object p2, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptedEnums:[[[C

    array-length p5, p2

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptedEnumsCount:I

    if-ne p5, v0, :cond_7

    add-int/lit8 v0, p5, 0x1

    mul-int/lit8 v0, v0, 0x2

    new-array v1, v0, [[[C

    iput-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptedEnums:[[[C

    invoke-static {p2, p3, v1, p3, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p2, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptedEnumsModifiers:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptedEnumsModifiers:[I

    invoke-static {p2, p3, v0, p3, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    iget-object p2, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptedEnumsModifiers:[I

    iget p3, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptedEnumsCount:I

    aput p4, p2, p3

    iget-object p2, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptedEnums:[[[C

    add-int/lit8 p4, p3, 0x1

    iput p4, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptedEnumsCount:I

    aput-object p1, p2, p3

    goto/16 :goto_3

    :cond_8
    filled-new-array {p1, v3}, [[C

    move-result-object p1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptedAnnotations:[[[C

    if-nez p2, :cond_9

    new-array p2, v0, [[[C

    iput-object p2, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptedAnnotations:[[[C

    new-array p2, v0, [I

    iput-object p2, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptedAnnotationsModifiers:[I

    iput p3, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptedAnnotationsCount:I

    :cond_9
    iget-object p2, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptedAnnotations:[[[C

    array-length p5, p2

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptedAnnotationsCount:I

    if-ne p5, v0, :cond_a

    add-int/lit8 v0, p5, 0x1

    mul-int/lit8 v0, v0, 0x2

    new-array v1, v0, [[[C

    iput-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptedAnnotations:[[[C

    invoke-static {p2, p3, v1, p3, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p2, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptedAnnotationsModifiers:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptedAnnotationsModifiers:[I

    invoke-static {p2, p3, v0, p3, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_a
    iget-object p2, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptedAnnotationsModifiers:[I

    iget p3, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptedAnnotationsCount:I

    aput p4, p2, p3

    iget-object p2, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptedAnnotations:[[[C

    add-int/lit8 p4, p3, 0x1

    iput p4, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptedAnnotationsCount:I

    aput-object p1, p2, p3

    goto :goto_3

    :cond_b
    filled-new-array {p1, v3}, [[C

    move-result-object p1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptedInterfaces:[[[C

    if-nez p2, :cond_c

    new-array p2, v0, [[[C

    iput-object p2, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptedInterfaces:[[[C

    new-array p2, v0, [I

    iput-object p2, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptedInterfacesModifiers:[I

    iput p3, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptedInterfacesCount:I

    :cond_c
    iget-object p2, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptedInterfaces:[[[C

    array-length p5, p2

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptedInterfacesCount:I

    if-ne p5, v0, :cond_d

    add-int/lit8 v0, p5, 0x1

    mul-int/lit8 v0, v0, 0x2

    new-array v1, v0, [[[C

    iput-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptedInterfaces:[[[C

    invoke-static {p2, p3, v1, p3, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p2, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptedInterfacesModifiers:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptedInterfacesModifiers:[I

    invoke-static {p2, p3, v0, p3, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_d
    iget-object p2, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptedInterfacesModifiers:[I

    iget p3, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptedInterfacesCount:I

    aput p4, p2, p3

    iget-object p2, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptedInterfaces:[[[C

    add-int/lit8 p4, p3, 0x1

    iput p4, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptedInterfacesCount:I

    aput-object p1, p2, p3

    goto :goto_3

    :cond_e
    iput-boolean p3, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->noProposal:Z

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->requestor:Lorg/eclipse/jdt/internal/codeassist/ISelectionRequestor;

    iget v7, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->actualSelectionStart:I

    iget v8, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->actualSelectionEnd:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    move v4, p4

    invoke-interface/range {v1 .. v8}, Lorg/eclipse/jdt/internal/codeassist/ISelectionRequestor;->acceptType([C[CIZ[CII)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptedAnswer:Z

    :cond_f
    :goto_3
    return-void
.end method

.method public findOverriddenMethodInType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->availableMethods()[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/Engine;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    const/4 v2, 0x0

    :goto_0
    array-length v3, p1

    if-lt v2, v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->methodVerifier()Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;

    move-result-object v3

    aget-object v4, p1, v2

    invoke-virtual {v3, p2, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->isMethodSubsignature(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v3

    if-eqz v3, :cond_2

    aget-object p1, p1, v2

    return-object p1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public getParser()Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->parser:Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;

    return-object v0
.end method

.method public select(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;II)V
    .locals 14

    move-object v7, p0

    move-object v1, p1

    move/from16 v0, p2

    move/from16 v2, p3

    const-string v8, "Exception caught by SelectionEngine:"

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;->getContents()[C

    move-result-object v3

    sget-boolean v4, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->DEBUG:Z

    if-eqz v4, :cond_0

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "SELECTION IN "

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IDependent;->getFileName()[C

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print([C)V

    const-string v5, " FROM "

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/io/PrintStream;->print(I)V

    const-string v5, " TO "

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/io/PrintStream;->println(I)V

    const-string v5, "SELECTION - Source :"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->println([C)V

    :cond_0
    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IDependent;->getFileName()[C

    move-result-object v4

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->MODULE_INFO_FILE_NAME:[C

    invoke-static {v4, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->endsWith([C[C)Z

    move-result v4

    invoke-direct {p0, v3, v0, v2, v4}, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->checkSelection([CIIZ)Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    sget-boolean v2, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->DEBUG:Z

    const/4 v9, 0x1

    if-eqz v2, :cond_2

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "SELECTION - Checked : \""

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/String;

    iget v5, v7, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->actualSelectionStart:I

    iget v6, v7, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->actualSelectionEnd:I

    sub-int/2addr v6, v5

    add-int/2addr v6, v9

    invoke-direct {v4, v3, v5, v6}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/16 v3, 0x22

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(C)V

    :cond_2
    const/4 v10, 0x0

    :try_start_0
    iput-boolean v10, v7, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptedAnswer:Z

    new-instance v2, Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    iget-object v3, v7, Lorg/eclipse/jdt/internal/codeassist/impl/Engine;->compilerOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->maxProblemsPerUnit:I

    invoke-direct {v2, p1, v9, v9, v3}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;-><init>(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;III)V

    iget-object v3, v7, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->parser:Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;

    iget v4, v7, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->actualSelectionStart:I

    iget v5, v7, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->actualSelectionEnd:I

    invoke-virtual {v3, p1, v2, v4, v5}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;->dietParse(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;Lorg/eclipse/jdt/internal/compiler/CompilationResult;II)Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object v11

    if-eqz v11, :cond_12

    sget-boolean v2, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->DEBUG:Z

    if-eqz v2, :cond_3

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "SELECTION - Diet AST :"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v11}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_a

    :catch_0
    move-exception v0

    goto/16 :goto_7

    :catch_1
    move-exception v0

    goto/16 :goto_8

    :cond_3
    :goto_0
    iget-object v2, v11, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->currentPackage:Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    instance-of v3, v2, Lorg/eclipse/jdt/internal/codeassist/select/SelectionOnPackageReference;

    const/16 v4, 0x2e

    if-eqz v3, :cond_4

    check-cast v2, Lorg/eclipse/jdt/internal/codeassist/select/SelectionOnPackageReference;

    iget-object v0, v2, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->tokens:[[C

    iput-boolean v10, v7, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->noProposal:Z

    iget-object v1, v7, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->requestor:Lorg/eclipse/jdt/internal/codeassist/ISelectionRequestor;

    invoke-static {v0, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/eclipse/jdt/internal/codeassist/ISelectionRequestor;->acceptPackage([C)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v9}, Lorg/eclipse/jdt/internal/codeassist/impl/Engine;->reset(Z)V

    return-void

    :cond_4
    :try_start_1
    iget-object v2, v11, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->imports:[Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    const/4 v12, 0x0

    if-eqz v2, :cond_a

    array-length v3, v2

    move v5, v10

    :goto_1
    if-lt v5, v3, :cond_5

    goto/16 :goto_2

    :cond_5
    aget-object v13, v2, v5

    instance-of v6, v13, Lorg/eclipse/jdt/internal/codeassist/select/SelectionOnImportReference;

    if-eqz v6, :cond_9

    move-object v0, v13

    check-cast v0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionOnImportReference;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->tokens:[[C

    iput-boolean v10, v7, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->noProposal:Z

    iget-object v1, v7, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->requestor:Lorg/eclipse/jdt/internal/codeassist/ISelectionRequestor;

    invoke-static {v0, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/eclipse/jdt/internal/codeassist/ISelectionRequestor;->acceptPackage([C)V

    iget-object v1, v7, Lorg/eclipse/jdt/internal/codeassist/impl/Engine;->nameEnvironment:Lorg/eclipse/jdt/internal/core/SearchableEnvironment;

    invoke-static {v0, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->findTypes([CZZILorg/eclipse/jdt/internal/codeassist/ISearchRequestor;)V

    iget-object v1, v7, Lorg/eclipse/jdt/internal/codeassist/impl/Engine;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v1, v11, v12}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->buildTypeBindings(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V

    iget-object v1, v11, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    iput-object v1, v7, Lorg/eclipse/jdt/internal/codeassist/impl/Engine;->unitScope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    if-eqz v1, :cond_6

    array-length v1, v0

    sub-int/2addr v1, v9

    aget-object v2, v0, v1

    invoke-static {v0, v10, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([[CII)[[C

    move-result-object v0

    if-eqz v0, :cond_6

    array-length v1, v0

    if-lez v1, :cond_6

    iget-object v1, v7, Lorg/eclipse/jdt/internal/codeassist/impl/Engine;->unitScope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getTypeOrPackage([[C)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    move-result-object v0

    if-eqz v0, :cond_6

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v1, :cond_6

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v13}, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->isStatic()Z

    move-result v1

    invoke-direct {p0, v11, v2, v0, v1}, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->selectMemberTypeFromImport(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Z)V

    invoke-virtual {v13}, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->isStatic()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0, v11, v2, v0}, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->selectStaticFieldFromStaticImport(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    invoke-direct {p0, v11, v2, v0}, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->selectStaticMethodFromStaticImport(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    :cond_6
    iget-boolean v0, v7, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptedAnswer:Z

    if-nez v0, :cond_7

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptQualifiedTypes()V

    iget-boolean v0, v7, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptedAnswer:Z

    if-nez v0, :cond_7

    iget-object v1, v7, Lorg/eclipse/jdt/internal/codeassist/impl/Engine;->nameEnvironment:Lorg/eclipse/jdt/internal/core/SearchableEnvironment;

    iget-object v2, v7, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->selectedIdentifier:[C

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->findTypes([CZZILorg/eclipse/jdt/internal/codeassist/ISearchRequestor;)V

    iget-boolean v0, v7, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptedAnswer:Z

    if-nez v0, :cond_7

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptQualifiedTypes()V

    :cond_7
    iget-boolean v0, v7, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->noProposal:Z

    if-eqz v0, :cond_8

    iget-object v0, v7, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->problem:Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    if-eqz v0, :cond_8

    iget-object v1, v7, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->requestor:Lorg/eclipse/jdt/internal/codeassist/ISelectionRequestor;

    invoke-interface {v1, v0}, Lorg/eclipse/jdt/internal/codeassist/ISelectionRequestor;->acceptError(Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_8
    invoke-virtual {p0, v9}, Lorg/eclipse/jdt/internal/codeassist/impl/Engine;->reset(Z)V

    return-void

    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_a
    :goto_2
    :try_start_2
    invoke-virtual {v11}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->isModuleInfo()Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, v11, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->moduleDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;

    if-eqz v2, :cond_c

    iget-object v0, v7, Lorg/eclipse/jdt/internal/codeassist/impl/Engine;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v0, v11, v12}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->buildTypeBindings(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V

    iget-object v0, v11, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    iput-object v0, v7, Lorg/eclipse/jdt/internal/codeassist/impl/Engine;->unitScope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    if-eqz v0, :cond_b

    iget-object v0, v7, Lorg/eclipse/jdt/internal/codeassist/impl/Engine;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v0, v11, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->completeTypeBindings(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Z)V

    goto :goto_3

    :catch_2
    move-exception v0

    goto/16 :goto_4

    :cond_b
    :goto_3
    iget-object v0, v11, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    invoke-virtual {v2, v0}, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->resolveModuleDirectives(Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;)V

    iget-object v0, v11, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    invoke-virtual {v2, v0}, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->resolvePackageDirectives(Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;)V

    iget-object v0, v11, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    invoke-virtual {v2, v0}, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->resolveTypeDirectives(Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;)V

    iget-object v0, v2, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->exports:[Lorg/eclipse/jdt/internal/compiler/ast/ExportsStatement;

    iget-object v3, v11, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    invoke-direct {p0, v0, v3}, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptPackageVisibilityStatements([Lorg/eclipse/jdt/internal/compiler/ast/PackageVisibilityStatement;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    iget-object v0, v2, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->opens:[Lorg/eclipse/jdt/internal/compiler/ast/OpensStatement;

    iget-object v2, v11, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    invoke-direct {p0, v0, v2}, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptPackageVisibilityStatements([Lorg/eclipse/jdt/internal/compiler/ast/PackageVisibilityStatement;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    goto/16 :goto_5

    :cond_c
    iget-object v2, v11, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->types:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-nez v2, :cond_d

    invoke-virtual {v11}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->isPackageInfo()Z

    move-result v2

    if-eqz v2, :cond_12

    :cond_d
    invoke-direct {p0, v11}, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->selectDeclaration(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)Z

    move-result v2
    :try_end_2
    .catch Lorg/eclipse/jdt/internal/codeassist/select/SelectionNodeFound; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_e

    invoke-virtual {p0, v9}, Lorg/eclipse/jdt/internal/codeassist/impl/Engine;->reset(Z)V

    return-void

    :cond_e
    :try_start_3
    iget-object v2, v7, Lorg/eclipse/jdt/internal/codeassist/impl/Engine;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v2, v11, v12}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->buildTypeBindings(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V

    iget-object v2, v11, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    iput-object v2, v7, Lorg/eclipse/jdt/internal/codeassist/impl/Engine;->unitScope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    if-eqz v2, :cond_12

    iget-object v2, v7, Lorg/eclipse/jdt/internal/codeassist/impl/Engine;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v2, v11, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->completeTypeBindings(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Z)V

    iget-object v2, v7, Lorg/eclipse/jdt/internal/codeassist/impl/Engine;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v3, v2, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->unitBeingCompleted:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iput-object v11, v2, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->unitBeingCompleted:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iget-object v2, v11, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->faultInTypes()V

    iget-object v2, v7, Lorg/eclipse/jdt/internal/codeassist/impl/Engine;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iput-object v3, v2, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->unitBeingCompleted:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iget-object v2, v11, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->types:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-eqz v2, :cond_f

    invoke-virtual {p0, v11, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/Engine;->parseBlockStatements(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;I)Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    move-result-object v12

    :cond_f
    sget-boolean v0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->DEBUG:Z

    if-eqz v0, :cond_10

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "SELECTION - AST :"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v11}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_10
    invoke-virtual {v11}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->resolve()V

    if-eqz v12, :cond_12

    invoke-direct {p0, v12}, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->selectLocalDeclaration(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V
    :try_end_3
    .catch Lorg/eclipse/jdt/internal/codeassist/select/SelectionNodeFound; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    :goto_4
    :try_start_4
    iget-object v2, v0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionNodeFound;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    if-eqz v2, :cond_12

    sget-boolean v2, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->DEBUG:Z

    if-eqz v2, :cond_11

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "SELECTION - Selection binding:"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v3, v0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionNodeFound;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_11
    iget-object v2, v0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionNodeFound;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionNodeFound;->isDeclaration:Z

    invoke-direct {p0, v2, v11, p1, v0}, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->selectFrom(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;Z)V

    :cond_12
    :goto_5
    iget-boolean v0, v7, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptedAnswer:Z

    if-nez v0, :cond_13

    iget-object v1, v7, Lorg/eclipse/jdt/internal/codeassist/impl/Engine;->nameEnvironment:Lorg/eclipse/jdt/internal/core/SearchableEnvironment;

    iget-object v2, v7, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->selectedIdentifier:[C

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->findTypes([CZZILorg/eclipse/jdt/internal/codeassist/ISearchRequestor;)V

    iget-boolean v0, v7, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptedAnswer:Z

    if-nez v0, :cond_13

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptQualifiedTypes()V

    iget-boolean v0, v7, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->noProposal:Z

    if-eqz v0, :cond_13

    iget-object v0, v7, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->selectedIdentifier:[C

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->findAllTypes([C)V

    :cond_13
    iget-boolean v0, v7, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->noProposal:Z

    if-eqz v0, :cond_14

    iget-object v0, v7, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->problem:Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    if-eqz v0, :cond_14

    iget-object v1, v7, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->requestor:Lorg/eclipse/jdt/internal/codeassist/ISelectionRequestor;

    invoke-interface {v1, v0}, Lorg/eclipse/jdt/internal/codeassist/ISelectionRequestor;->acceptError(Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)V
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_14
    :goto_6
    invoke-virtual {p0, v9}, Lorg/eclipse/jdt/internal/codeassist/impl/Engine;->reset(Z)V

    goto :goto_9

    :goto_7
    :try_start_5
    sget-boolean v1, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->DEBUG:Z

    if-eqz v1, :cond_14

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_6

    :goto_8
    sget-boolean v1, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->DEBUG:Z

    if-eqz v1, :cond_14

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_6

    :goto_9
    return-void

    :goto_a
    invoke-virtual {p0, v9}, Lorg/eclipse/jdt/internal/codeassist/impl/Engine;->reset(Z)V

    throw v0
.end method

.method public selectType([CLorg/eclipse/jdt/core/IType;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->acceptedAnswer:Z

    const/16 v2, 0x3c

    invoke-static {v2, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[C)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    invoke-static {p1, v0}, Lorg/eclipse/jdt/core/Signature;->createCharArrayTypeSignature([CZ)[C

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/jdt/core/Signature;->getTypeErasure([C)[C

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/jdt/core/Signature;->toCharArray([C)[C

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_a

    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/eclipse/jdt/core/IMember;->getCompilationUnit()Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object v2

    const/4 v4, 0x0

    if-eqz v2, :cond_8

    invoke-interface {v2}, Lorg/eclipse/jdt/core/ICompilationUnit;->getTypes()[Lorg/eclipse/jdt/core/IType;

    move-result-object v5

    array-length v6, v5

    new-array v7, v6, [Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;

    move v8, v0

    :goto_1
    if-lt v8, v6, :cond_7

    new-instance v5, Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    iget-object v6, p0, Lorg/eclipse/jdt/internal/codeassist/impl/Engine;->compilerOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget v6, v6, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->maxProblemsPerUnit:I

    invoke-direct {v5, v2, v1, v1, v6}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;-><init>(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;III)V

    invoke-interface {p2}, Lorg/eclipse/jdt/core/IType;->isAnonymous()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {p2}, Lorg/eclipse/jdt/core/IType;->isLocal()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    const/16 v2, 0xf

    goto :goto_3

    :cond_2
    :goto_2
    const/16 v2, 0x2f

    :goto_3
    iget-object v6, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->parser:Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v6

    invoke-static {v7, v2, v6, v5}, Lorg/eclipse/jdt/internal/compiler/parser/SourceTypeConverter;->buildCompilationUnit([Lorg/eclipse/jdt/internal/compiler/env/ISourceType;ILorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v5, v2, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->types:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-eqz v5, :cond_6

    sget-boolean v5, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->DEBUG:Z

    if-eqz v5, :cond_3

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "SELECTION - Diet AST :"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3
    :goto_4
    invoke-interface {p2}, Lorg/eclipse/jdt/core/IType;->isLambda()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {p2}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v5

    if-nez v5, :cond_4

    goto :goto_5

    :cond_4
    invoke-interface {p2}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p2

    const/4 v5, 0x7

    invoke-interface {p2, v5}, Lorg/eclipse/jdt/core/IJavaElement;->getAncestor(I)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p2

    check-cast p2, Lorg/eclipse/jdt/core/IType;

    goto :goto_4

    :cond_5
    :goto_5
    new-instance v5, Lorg/eclipse/jdt/internal/core/util/ASTNodeFinder;

    invoke-direct {v5, v2}, Lorg/eclipse/jdt/internal/core/util/ASTNodeFinder;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)V

    invoke-virtual {v5, p2}, Lorg/eclipse/jdt/internal/core/util/ASTNodeFinder;->findType(Lorg/eclipse/jdt/core/IType;)Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    move-result-object p2

    goto/16 :goto_7

    :cond_6
    move-object p2, v4

    goto/16 :goto_7

    :cond_7
    aget-object v9, v5, v8

    check-cast v9, Lorg/eclipse/jdt/internal/core/SourceType;

    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;

    aput-object v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_8
    invoke-interface {p2}, Lorg/eclipse/jdt/core/IType;->getClassFile()Lorg/eclipse/jdt/core/IOrdinaryClassFile;

    move-result-object v2

    instance-of v5, v2, Lorg/eclipse/jdt/internal/core/ClassFile;

    if-eqz v5, :cond_c

    check-cast v2, Lorg/eclipse/jdt/internal/core/ClassFile;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/Openable;->getPackageFragmentRoot()Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    move-result-object v5

    instance-of v5, v5, Lorg/eclipse/jdt/internal/core/JrtPackageFragmentRoot;

    if-eqz v5, :cond_9

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/ClassFile;->getBinaryTypeInfo()Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    move-result-object v5

    instance-of v6, v5, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;

    if-eqz v6, :cond_a

    check-cast v5, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;

    goto :goto_6

    :cond_9
    invoke-static {v2}, Lorg/eclipse/jdt/internal/core/nd/java/model/BinaryTypeFactory;->createDescriptor(Lorg/eclipse/jdt/core/IOrdinaryClassFile;)Lorg/eclipse/jdt/internal/core/nd/java/model/BinaryTypeDescriptor;

    move-result-object v5
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v5, v0}, Lorg/eclipse/jdt/internal/core/nd/java/model/BinaryTypeFactory;->rawReadType(Lorg/eclipse/jdt/internal/core/nd/java/model/BinaryTypeDescriptor;Z)Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;

    move-result-object v5
    :try_end_1
    .catch Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    :catch_0
    move-exception v5

    :try_start_2
    invoke-static {}, Lorg/eclipse/jdt/core/JavaCore;->getPlugin()Lorg/eclipse/core/runtime/Plugin;

    move-result-object v6

    invoke-virtual {v6}, Lorg/eclipse/core/runtime/Plugin;->isDebugging()Z

    move-result v6

    if-eqz v6, :cond_a

    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v5, v6}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_a
    move-object v5, v4

    :goto_6
    if-eqz v5, :cond_b

    new-instance v2, Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->getFileName()[C

    move-result-object v6

    iget-object v7, p0, Lorg/eclipse/jdt/internal/codeassist/impl/Engine;->compilerOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget v7, v7, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->maxProblemsPerUnit:I

    invoke-direct {v2, v6, v1, v1, v7}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;-><init>([CIII)V

    new-instance v6, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iget-object v7, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->parser:Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v7

    invoke-direct {v6, v7, v2, v0}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;-><init>(Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;Lorg/eclipse/jdt/internal/compiler/CompilationResult;I)V

    new-instance v7, Lorg/eclipse/jdt/internal/core/util/HashSetOfCharArrayArray;

    invoke-direct {v7}, Lorg/eclipse/jdt/internal/core/util/HashSetOfCharArrayArray;-><init>()V

    new-instance v8, Lorg/eclipse/jdt/internal/core/BinaryTypeConverter;

    iget-object v9, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->parser:Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;

    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v9

    invoke-direct {v8, v9, v2, v7}, Lorg/eclipse/jdt/internal/core/BinaryTypeConverter;-><init>(Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;Lorg/eclipse/jdt/internal/compiler/CompilationResult;Lorg/eclipse/jdt/internal/core/util/HashSetOfCharArrayArray;)V

    invoke-virtual {v8, p2, v6}, Lorg/eclipse/jdt/internal/core/BinaryTypeConverter;->buildTypeDeclaration(Lorg/eclipse/jdt/core/IType;Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    move-result-object p2

    invoke-virtual {v8, v5}, Lorg/eclipse/jdt/internal/core/BinaryTypeConverter;->buildImports(Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;)[Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    move-result-object v2

    iput-object v2, v6, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->imports:[Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    move-object v2, v6

    goto :goto_7

    :cond_b
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/JavaElement;->newNotPresentException()Lorg/eclipse/jdt/core/JavaModelException;

    move-result-object p1

    throw p1

    :cond_c
    move-object p2, v4

    move-object v2, p2

    :goto_7
    if-eqz p2, :cond_f

    new-instance v5, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    invoke-direct {v5}, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;-><init>()V

    const/16 v6, 0x2e

    invoke-static {v6, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->lastIndexOf(C[C)I

    move-result v7

    if-ne v7, v3, :cond_d

    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->selectedIdentifier:[C

    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionOnSingleTypeReference;

    const-wide/16 v6, -0x1

    invoke-direct {v0, p1, v6, v7}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionOnSingleTypeReference;-><init>([CJ)V

    iput-object v0, v5, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    goto :goto_8

    :cond_d
    invoke-static {v6, p1, v0, v7}, Lorg/eclipse/jdt/core/compiler/CharOperation;->splitOn(C[CII)[[C

    move-result-object v0

    add-int/2addr v7, v1

    array-length v3, p1

    invoke-static {p1, v7, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->selectedIdentifier:[C

    new-instance v3, Lorg/eclipse/jdt/internal/codeassist/select/SelectionOnQualifiedTypeReference;

    array-length v6, v0

    add-int/2addr v6, v1

    new-array v6, v6, [J

    invoke-direct {v3, v0, p1, v6}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionOnQualifiedTypeReference;-><init>([[C[C[J)V

    iput-object v3, v5, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    :goto_8
    const-string p1, "<fakeField>"

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iput-object p1, v5, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->name:[C

    filled-new-array {v5}, [Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    move-result-object p1

    iput-object p1, p2, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->fields:[Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/Engine;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {p1, v2, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->buildTypeBindings(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V

    iget-object p1, v2, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/Engine;->unitScope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;
    :try_end_2
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_f

    :try_start_3
    iget-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/Engine;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {p1, v2, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->completeTypeBindings(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Z)V

    iget-object p1, v2, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->faultInTypes()V

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->resolve()V
    :try_end_3
    .catch Lorg/eclipse/jdt/internal/codeassist/select/SelectionNodeFound; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_9

    :catch_1
    move-exception p1

    :try_start_4
    iget-object p2, p1, Lorg/eclipse/jdt/internal/codeassist/select/SelectionNodeFound;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    if-eqz p2, :cond_f

    sget-boolean p2, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->DEBUG:Z

    if-eqz p2, :cond_e

    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "SELECTION - Selection binding :"

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p1, Lorg/eclipse/jdt/internal/codeassist/select/SelectionNodeFound;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_e
    iget-object p2, p1, Lorg/eclipse/jdt/internal/codeassist/select/SelectionNodeFound;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    iget-boolean p1, p1, Lorg/eclipse/jdt/internal/codeassist/select/SelectionNodeFound;->isDeclaration:Z

    invoke-direct {p0, p2, v2, p1}, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->selectFrom(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Z)V

    :cond_f
    :goto_9
    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->noProposal:Z

    if-eqz p1, :cond_10

    iget-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->problem:Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    if-eqz p1, :cond_10

    iget-object p2, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->requestor:Lorg/eclipse/jdt/internal/codeassist/ISelectionRequestor;

    invoke-interface {p2, p1}, Lorg/eclipse/jdt/internal/codeassist/ISelectionRequestor;->acceptError(Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)V
    :try_end_4
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_2
    :cond_10
    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/Engine;->reset(Z)V

    goto :goto_b

    :goto_a
    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/Engine;->reset(Z)V

    throw p1

    :goto_b
    return-void
.end method
