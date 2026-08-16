.class public Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;
.super Lorg/eclipse/jdt/core/CompletionProposal;
.source "SourceFile"


# static fields
.field private static NO_ATTACHED_SOURCE:Ljava/lang/Object;


# instance fields
.field protected accessibility:I

.field private additionalFlags:I

.field private binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

.field private completion:[C

.field protected completionEngine:Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;

.field private completionKind:I

.field private completionLocation:I

.field private declarationKey:[C

.field protected declarationPackageName:[C

.field private declarationSignature:[C

.field protected declarationTypeName:[C

.field private flags:I

.field private hasNoParameterNamesFromIndex:Z

.field protected isConstructor:Z

.field private key:[C

.field protected moduleName:[C

.field private name:[C

.field protected nameLookup:Lorg/eclipse/jdt/internal/core/NameLookup;

.field protected originalSignature:[C

.field protected packageName:[C

.field private parameterNames:[[C

.field private parameterNamesComputed:Z

.field protected parameterPackageNames:[[C

.field protected parameterTypeNames:[[C

.field private receiverEnd:I

.field private receiverSignature:[C

.field private receiverStart:I

.field private relevance:I

.field private replaceEnd:I

.field private replaceStart:I

.field private requiredProposals:[Lorg/eclipse/jdt/core/CompletionProposal;

.field private signature:[C

.field private tokenEnd:I

.field private tokenStart:I

.field protected typeName:[C

.field private updateCompletion:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->NO_ATTACHED_SOURCE:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 4

    invoke-direct {p0}, Lorg/eclipse/jdt/core/CompletionProposal;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->hasNoParameterNamesFromIndex:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->updateCompletion:Z

    iput v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->accessibility:I

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->isConstructor:Z

    iput v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->tokenStart:I

    iput v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->tokenEnd:I

    sget-object v1, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    iput-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->completion:[C

    iput v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->replaceStart:I

    iput v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->replaceEnd:I

    const/4 v2, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->relevance:I

    const/4 v3, 0x0

    iput-object v3, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->declarationSignature:[C

    iput-object v3, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->declarationKey:[C

    iput-object v3, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->name:[C

    iput-object v3, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    iput-object v3, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->signature:[C

    iput-object v3, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->key:[C

    iput v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->flags:I

    iput v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->additionalFlags:I

    iput-object v3, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->parameterNames:[[C

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->parameterNamesComputed:Z

    if-lt p1, v2, :cond_3

    const/16 v2, 0x1d

    if-gt p1, v2, :cond_3

    if-eqz v1, :cond_0

    if-gez p2, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    const/4 v1, -0x1

    if-ne p2, v1, :cond_2

    move p2, v0

    :cond_1
    iput p1, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->completionKind:I

    iput p2, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->completionLocation:I

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private findMethod(Lorg/eclipse/jdt/core/IType;[C[[C)Lorg/eclipse/jdt/core/IMethod;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IMember;->getDeclaringType()Lorg/eclipse/jdt/core/IType;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IType;->getElementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-static {v2, p2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IMember;->getFlags()I

    move-result v2

    invoke-static {v2}, Lorg/eclipse/jdt/core/Flags;->isStatic(I)Z

    move-result v2

    if-nez v2, :cond_0

    array-length v2, p3

    const/4 v3, 0x1

    add-int/2addr v2, v3

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IType;->getFullyQualifiedName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lorg/eclipse/jdt/core/Signature;->createTypeSignature(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    goto :goto_0

    :cond_0
    array-length v0, p3

    new-array v2, v0, [Ljava/lang/String;

    move v3, v1

    :goto_0
    array-length v0, v2

    move v4, v3

    :goto_1
    if-lt v4, v0, :cond_2

    new-instance p3, Ljava/lang/String;

    invoke-direct {p3, p2}, Ljava/lang/String;-><init>([C)V

    invoke-interface {p1, p3, v2}, Lorg/eclipse/jdt/core/IType;->getMethod(Ljava/lang/String;[Ljava/lang/String;)Lorg/eclipse/jdt/core/IMethod;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/eclipse/jdt/core/IType;->findMethods(Lorg/eclipse/jdt/core/IMethod;)[Lorg/eclipse/jdt/core/IMethod;

    move-result-object p1

    if-eqz p1, :cond_1

    array-length p3, p1

    if-lez p3, :cond_1

    aget-object p2, p1, v1

    :cond_1
    return-object p2

    :cond_2
    new-instance v5, Ljava/lang/String;

    sub-int v6, v4, v3

    aget-object v6, p3, v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([C)V

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method private getOpenedBinaryTypesThreshold()I
    .locals 1

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getOpenableCacheSize()I

    move-result v0

    div-int/lit8 v0, v0, 0xa

    return v0
.end method


# virtual methods
.method public canUseDiamond(Lorg/eclipse/jdt/core/CompletionContext;)Z
    .locals 6

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getKind()I

    move-result v0

    const/16 v1, 0x1a

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    instance-of v0, p1, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionContext;

    if-eqz v0, :cond_5

    check-cast p1, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionContext;

    iget-object v0, p1, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionContext;->extendedContext:Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->declarationPackageName:[C

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->declarationTypeName:[C

    const/16 v3, 0x2e

    invoke-static {v0, v1, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[CC)[C

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->originalSignature:[C

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getSignature()[C

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_3

    array-length v3, v1

    const/4 v4, 0x2

    if-lt v3, v4, :cond_3

    invoke-static {v1}, Lorg/eclipse/jdt/core/Signature;->removeCapture([C)[C

    move-result-object v1

    :cond_3
    invoke-static {v1}, Lorg/eclipse/jdt/core/Signature;->getParameterTypes([C)[[C

    move-result-object v1

    array-length v3, v1

    new-array v3, v3, [Ljava/lang/String;

    :goto_1
    array-length v4, v1

    if-lt v2, v4, :cond_4

    iget-object p1, p1, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionContext;->extendedContext:Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;

    invoke-virtual {p1, v3, v0}, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->canUseDiamond([Ljava/lang/String;[C)Z

    move-result p1

    return p1

    :cond_4
    new-instance v4, Ljava/lang/String;

    aget-object v5, v1, v2

    invoke-static {v5}, Lorg/eclipse/jdt/core/Signature;->toCharArray([C)[C

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([C)V

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    return v2
.end method

.method public findConstructorParameterNames([C[C[C[[C)[[C
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    const/4 v4, 0x0

    if-eqz v3, :cond_c

    if-nez v2, :cond_0

    goto/16 :goto_4

    :cond_0
    array-length v5, v3

    const/16 v6, 0x2e

    invoke-static {v1, v2, v6}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[CC)[C

    move-result-object v6

    iget-object v7, v0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->completionEngine:Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;

    iget-object v7, v7, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;->typeCache:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    invoke-virtual {v7, v6}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->get([C)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_2

    sget-object v1, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->NO_ATTACHED_SOURCE:Ljava/lang/Object;

    if-eq v7, v1, :cond_1

    instance-of v1, v7, Lorg/eclipse/jdt/internal/core/BinaryType;

    if-eqz v1, :cond_1

    check-cast v7, Lorg/eclipse/jdt/internal/core/BinaryType;

    goto :goto_1

    :cond_1
    move-object v7, v4

    goto :goto_1

    :cond_2
    iget-object v8, v0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->nameLookup:Lorg/eclipse/jdt/internal/core/NameLookup;

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v2}, Ljava/lang/String;-><init>([C)V

    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v1}, Ljava/lang/String;-><init>([C)V

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-virtual/range {v8 .. v16}, Lorg/eclipse/jdt/internal/core/NameLookup;->findType(Ljava/lang/String;Ljava/lang/String;ZIZZZLorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/internal/core/NameLookup$Answer;

    move-result-object v1

    if-nez v1, :cond_3

    move-object v7, v4

    goto :goto_0

    :cond_3
    iget-object v1, v1, Lorg/eclipse/jdt/internal/core/NameLookup$Answer;->type:Lorg/eclipse/jdt/core/IType;

    move-object v7, v1

    :goto_0
    nop

    instance-of v1, v7, Lorg/eclipse/jdt/internal/core/BinaryType;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->completionEngine:Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;->typeCache:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    invoke-virtual {v1, v6, v7}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->put([CLjava/lang/Object;)Ljava/lang/Object;

    :goto_1
    if-eqz v7, :cond_b

    move-object/from16 v1, p3

    :try_start_0
    invoke-direct {v0, v7, v1, v3}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->findMethod(Lorg/eclipse/jdt/core/IType;[C[[C)Lorg/eclipse/jdt/core/IMethod;

    move-result-object v1

    iget-boolean v2, v0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->hasNoParameterNamesFromIndex:Z

    if-eqz v2, :cond_8

    const/4 v2, 0x3

    invoke-interface {v7, v2}, Lorg/eclipse/jdt/core/IJavaElement;->getAncestor(I)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    invoke-interface {v2}, Lorg/eclipse/jdt/core/IPackageFragmentRoot;->isArchive()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, v0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->completionEngine:Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;

    iget v3, v3, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;->openedBinaryTypes:I

    invoke-direct/range {p0 .. p0}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getOpenedBinaryTypesThreshold()I

    move-result v6

    if-ge v3, v6, :cond_b

    :cond_4
    move-object v3, v1

    check-cast v3, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/JavaElement;->getSourceMapper()Lorg/eclipse/jdt/internal/core/SourceMapper;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-virtual {v3, v1}, Lorg/eclipse/jdt/internal/core/SourceMapper;->getMethodParameterNames(Lorg/eclipse/jdt/core/IMethod;)[[C

    move-result-object v6

    if-nez v6, :cond_7

    invoke-interface {v2}, Lorg/eclipse/jdt/core/IPackageFragmentRoot;->isArchive()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, v0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->completionEngine:Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;

    iget v6, v2, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;->openedBinaryTypes:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v2, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;->openedBinaryTypes:I

    :cond_5
    move-object v2, v7

    check-cast v2, Lorg/eclipse/jdt/internal/core/BinaryType;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    invoke-virtual {v3, v7, v2}, Lorg/eclipse/jdt/internal/core/SourceMapper;->findSource(Lorg/eclipse/jdt/core/IType;Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;)[C

    move-result-object v6

    if-eqz v6, :cond_6

    check-cast v7, Lorg/eclipse/jdt/internal/core/NamedMember;

    invoke-virtual {v3, v7, v6, v2}, Lorg/eclipse/jdt/internal/core/SourceMapper;->mapSource(Lorg/eclipse/jdt/internal/core/NamedMember;[CLorg/eclipse/jdt/internal/compiler/env/IBinaryType;)V

    :cond_6
    invoke-virtual {v3, v1}, Lorg/eclipse/jdt/internal/core/SourceMapper;->getMethodParameterNames(Lorg/eclipse/jdt/core/IMethod;)[[C

    move-result-object v6

    :cond_7
    if-eqz v6, :cond_b

    move-object v4, v6

    goto :goto_3

    :cond_8
    move-object v2, v1

    check-cast v2, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;

    invoke-interface {v2}, Lorg/eclipse/jdt/internal/compiler/env/IGenericMethod;->getArgumentNames()[[C

    move-result-object v2

    if-eqz v2, :cond_9

    array-length v3, v2

    if-ne v3, v5, :cond_9

    return-object v2

    :cond_9
    new-array v2, v5, [[C

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IMethod;->getParameterNames()[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    :goto_2
    if-lt v3, v5, :cond_a

    move-object v4, v2

    goto :goto_3

    :cond_a
    aget-object v6, v1, v3

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    aput-object v6, v2, v3
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :catch_0
    :cond_b
    :goto_3
    if-nez v4, :cond_c

    invoke-static {v5}, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;->createDefaultParameterNames(I)[[C

    move-result-object v4

    :cond_c
    :goto_4
    return-object v4
.end method

.method public findMethodParameterNames([C[C[C[[C)[[C
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    const/4 v4, 0x0

    if-eqz v3, :cond_6

    if-nez v2, :cond_0

    goto/16 :goto_4

    :cond_0
    array-length v5, v3

    const/16 v6, 0x2e

    invoke-static {v1, v2, v6}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[CC)[C

    move-result-object v6

    iget-object v7, v0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->completionEngine:Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;

    iget-object v7, v7, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;->typeCache:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    invoke-virtual {v7, v6}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->get([C)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_2

    sget-object v1, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->NO_ATTACHED_SOURCE:Ljava/lang/Object;

    if-eq v7, v1, :cond_1

    instance-of v1, v7, Lorg/eclipse/jdt/internal/core/BinaryType;

    if-eqz v1, :cond_1

    check-cast v7, Lorg/eclipse/jdt/internal/core/BinaryType;

    goto :goto_1

    :cond_1
    move-object v7, v4

    goto :goto_1

    :cond_2
    iget-object v8, v0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->nameLookup:Lorg/eclipse/jdt/internal/core/NameLookup;

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v2}, Ljava/lang/String;-><init>([C)V

    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v1}, Ljava/lang/String;-><init>([C)V

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-virtual/range {v8 .. v16}, Lorg/eclipse/jdt/internal/core/NameLookup;->findType(Ljava/lang/String;Ljava/lang/String;ZIZZZLorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/internal/core/NameLookup$Answer;

    move-result-object v1

    if-nez v1, :cond_3

    move-object v7, v4

    goto :goto_0

    :cond_3
    iget-object v1, v1, Lorg/eclipse/jdt/internal/core/NameLookup$Answer;->type:Lorg/eclipse/jdt/core/IType;

    move-object v7, v1

    :goto_0
    nop

    instance-of v1, v7, Lorg/eclipse/jdt/internal/core/BinaryType;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->completionEngine:Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;->typeCache:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    invoke-virtual {v1, v6, v7}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->put([CLjava/lang/Object;)Ljava/lang/Object;

    :goto_1
    if-eqz v7, :cond_5

    move-object/from16 v1, p3

    :try_start_0
    invoke-direct {v0, v7, v1, v3}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->findMethod(Lorg/eclipse/jdt/core/IType;[C[[C)Lorg/eclipse/jdt/core/IMethod;

    move-result-object v1

    new-array v2, v5, [[C

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IMethod;->getParameterNames()[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    :goto_2
    if-lt v3, v5, :cond_4

    move-object v4, v2

    goto :goto_3

    :cond_4
    aget-object v6, v1, v3

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    aput-object v6, v2, v3
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :catch_0
    :cond_5
    :goto_3
    if-nez v4, :cond_6

    invoke-static {v5}, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;->createDefaultParameterNames(I)[[C

    move-result-object v4

    :cond_6
    :goto_4
    return-object v4
.end method

.method public findParameterNames(Lorg/eclipse/core/runtime/IProgressMonitor;)[[C
    .locals 5

    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->parameterNamesComputed:Z

    if-nez p1, :cond_f

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->parameterNamesComputed:Z

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->completionKind:I

    const/16 v1, 0x2e

    const/4 v2, 0x0

    if-eq v0, p1, :cond_c

    const/16 v3, 0x18

    if-eq v0, v3, :cond_9

    const/4 v3, 0x6

    if-eq v0, v3, :cond_9

    const/4 v3, 0x7

    if-eq v0, v3, :cond_6

    const/16 p1, 0x1a

    if-eq v0, p1, :cond_3

    const/16 p1, 0x1b

    if-eq v0, p1, :cond_0

    goto/16 :goto_1

    :cond_0
    :try_start_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->declarationPackageName:[C

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->declarationTypeName:[C

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->lastSegment([CC)[C

    move-result-object v1

    iget-object v3, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->originalSignature:[C

    if-nez v3, :cond_1

    iget-object v3, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->signature:[C

    :cond_1
    invoke-static {v3}, Lorg/eclipse/jdt/core/Signature;->getParameterTypes([C)[[C

    move-result-object v3

    invoke-virtual {p0, p1, v0, v1, v3}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->findConstructorParameterNames([C[C[C[[C)[[C

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->parameterNames:[[C
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->parameterTypeNames:[[C

    if-eqz p1, :cond_2

    array-length p1, p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;->createDefaultParameterNames(I)[[C

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->parameterNames:[[C

    goto/16 :goto_1

    :cond_2
    iput-object v2, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->parameterNames:[[C

    goto/16 :goto_1

    :cond_3
    :try_start_1
    iget-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->declarationPackageName:[C

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->declarationTypeName:[C

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->name:[C

    iget-object v3, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->originalSignature:[C

    if-nez v3, :cond_4

    iget-object v3, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->signature:[C

    :cond_4
    invoke-static {v3}, Lorg/eclipse/jdt/core/Signature;->getParameterTypes([C)[[C

    move-result-object v3

    invoke-virtual {p0, p1, v0, v1, v3}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->findConstructorParameterNames([C[C[C[[C)[[C

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->parameterNames:[[C
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :catch_1
    iget-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->parameterTypeNames:[[C

    if-eqz p1, :cond_5

    array-length p1, p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;->createDefaultParameterNames(I)[[C

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->parameterNames:[[C

    goto/16 :goto_1

    :cond_5
    iput-object v2, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->parameterNames:[[C

    goto/16 :goto_1

    :cond_6
    :try_start_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->declarationPackageName:[C

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->declarationTypeName:[C

    iget-object v3, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->name:[C

    iget-object v4, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->originalSignature:[C

    if-nez v4, :cond_7

    iget-object v4, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->signature:[C

    :cond_7
    invoke-static {v4}, Lorg/eclipse/jdt/core/Signature;->getParameterTypes([C)[[C

    move-result-object v4

    invoke-virtual {p0, v0, v1, v3, v4}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->findMethodParameterNames([C[C[C[[C)[[C

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->parameterNames:[[C
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->parameterTypeNames:[[C

    if-eqz v0, :cond_8

    array-length v0, v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;->createDefaultParameterNames(I)[[C

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->parameterNames:[[C

    goto :goto_0

    :cond_8
    iput-object v2, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->parameterNames:[[C

    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->parameterNames:[[C

    if-eqz v0, :cond_f

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->updateCompletion:Z

    goto :goto_1

    :cond_9
    :try_start_3
    iget-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->declarationPackageName:[C

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->declarationTypeName:[C

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->name:[C

    iget-object v3, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->originalSignature:[C

    if-nez v3, :cond_a

    iget-object v3, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->signature:[C

    :cond_a
    invoke-static {v3}, Lorg/eclipse/jdt/core/Signature;->getParameterTypes([C)[[C

    move-result-object v3

    invoke-virtual {p0, p1, v0, v1, v3}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->findMethodParameterNames([C[C[C[[C)[[C

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->parameterNames:[[C
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    :catch_3
    iget-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->parameterTypeNames:[[C

    if-eqz p1, :cond_b

    array-length p1, p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;->createDefaultParameterNames(I)[[C

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->parameterNames:[[C

    goto :goto_1

    :cond_b
    iput-object v2, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->parameterNames:[[C

    goto :goto_1

    :cond_c
    :try_start_4
    iget-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->declarationPackageName:[C

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->declarationTypeName:[C

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->lastSegment([CC)[C

    move-result-object v1

    iget-object v3, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->originalSignature:[C

    if-nez v3, :cond_d

    iget-object v3, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->signature:[C

    :cond_d
    invoke-static {v3}, Lorg/eclipse/jdt/core/Signature;->getParameterTypes([C)[[C

    move-result-object v3

    invoke-virtual {p0, p1, v0, v1, v3}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->findMethodParameterNames([C[C[C[[C)[[C

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->parameterNames:[[C
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_1

    :catch_4
    iget-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->parameterTypeNames:[[C

    if-eqz p1, :cond_e

    array-length p1, p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;->createDefaultParameterNames(I)[[C

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->parameterNames:[[C

    goto :goto_1

    :cond_e
    iput-object v2, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->parameterNames:[[C

    :cond_f
    :goto_1
    iget-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->parameterNames:[[C

    return-object p1
.end method

.method public getAccessibility()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->accessibility:I

    return v0
.end method

.method public getAdditionalFlags()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->additionalFlags:I

    return v0
.end method

.method public getBinding()Lorg/eclipse/jdt/internal/compiler/lookup/Binding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    return-object v0
.end method

.method public getCompletion()[C
    .locals 9

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->completionKind:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->findParameterNames(Lorg/eclipse/core/runtime/IProgressMonitor;)[[C

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->updateCompletion:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->updateCompletion:Z

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->parameterNames:[[C

    if-eqz v1, :cond_2

    array-length v1, v1

    new-instance v2, Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->completion:[C

    array-length v3, v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    iget-object v3, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->completion:[C

    const/16 v4, 0x25

    invoke-static {v4, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[C)I

    move-result v3

    iget-object v5, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->completion:[C

    invoke-virtual {v2, v5, v0, v3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    move v5, v0

    :goto_0
    if-lt v5, v1, :cond_0

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    new-array v3, v1, [C

    iput-object v3, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->completion:[C

    invoke-virtual {v2, v0, v1, v3, v0}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    goto :goto_2

    :cond_0
    iget-object v6, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->parameterNames:[[C

    aget-object v6, v6, v5

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    iget-object v6, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->completion:[C

    invoke-static {v4, v6, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[CI)I

    move-result v6

    const/4 v7, -0x1

    if-le v6, v7, :cond_1

    iget-object v7, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->completion:[C

    sub-int v8, v6, v3

    invoke-virtual {v2, v7, v3, v8}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    iget-object v7, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->completion:[C

    array-length v8, v7

    sub-int/2addr v8, v3

    invoke-virtual {v2, v7, v3, v8}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v5, v5, 0x1

    move v3, v6

    goto :goto_0

    :cond_2
    :goto_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->completion:[C

    return-object v0
.end method

.method public getCompletionLocation()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->completionLocation:I

    return v0
.end method

.method public getDeclarationKey()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->declarationKey:[C

    return-object v0
.end method

.method public getDeclarationPackageName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->declarationPackageName:[C

    return-object v0
.end method

.method public getDeclarationSignature()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->declarationSignature:[C

    return-object v0
.end method

.method public getDeclarationTypeName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->declarationTypeName:[C

    return-object v0
.end method

.method public getFlags()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->flags:I

    return v0
.end method

.method public getKey()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->key:[C

    return-object v0
.end method

.method public getKind()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->completionKind:I

    return v0
.end method

.method public getModuleName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->moduleName:[C

    return-object v0
.end method

.method public getName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->name:[C

    return-object v0
.end method

.method public getPackageName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->packageName:[C

    return-object v0
.end method

.method public getParameterPackageNames()[[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->parameterPackageNames:[[C

    return-object v0
.end method

.method public getParameterTypeNames()[[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->parameterTypeNames:[[C

    return-object v0
.end method

.method public getReceiverEnd()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->receiverEnd:I

    return v0
.end method

.method public getReceiverSignature()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->receiverSignature:[C

    return-object v0
.end method

.method public getReceiverStart()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->receiverStart:I

    return v0
.end method

.method public getRelevance()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->relevance:I

    return v0
.end method

.method public getReplaceEnd()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->replaceEnd:I

    return v0
.end method

.method public getReplaceStart()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->replaceStart:I

    return v0
.end method

.method public getRequiredProposals()[Lorg/eclipse/jdt/core/CompletionProposal;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->requiredProposals:[Lorg/eclipse/jdt/core/CompletionProposal;

    return-object v0
.end method

.method public getSignature()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->signature:[C

    return-object v0
.end method

.method public getTokenEnd()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->tokenEnd:I

    return v0
.end method

.method public getTokenStart()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->tokenStart:I

    return v0
.end method

.method public getTypeName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->typeName:[C

    return-object v0
.end method

.method public isConstructor()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->isConstructor:Z

    return v0
.end method

.method public setAccessibility(I)V
    .locals 0

    iput p1, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->accessibility:I

    return-void
.end method

.method public setAdditionalFlags(I)V
    .locals 0

    iput p1, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->additionalFlags:I

    return-void
.end method

.method public setBinding(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    return-void
.end method

.method public setCompletion([C)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->completion:[C

    return-void
.end method

.method public setDeclarationKey([C)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->declarationKey:[C

    return-void
.end method

.method public setDeclarationPackageName([C)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->declarationPackageName:[C

    return-void
.end method

.method public setDeclarationSignature([C)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->declarationSignature:[C

    return-void
.end method

.method public setDeclarationTypeName([C)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->declarationTypeName:[C

    return-void
.end method

.method public setFlags(I)V
    .locals 0

    iput p1, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->flags:I

    return-void
.end method

.method public setHasNoParameterNamesFromIndex(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->hasNoParameterNamesFromIndex:Z

    return-void
.end method

.method public setIsContructor(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->isConstructor:Z

    return-void
.end method

.method public setKey([C)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->key:[C

    return-void
.end method

.method public setModuleName([C)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->moduleName:[C

    return-void
.end method

.method public setName([C)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->name:[C

    return-void
.end method

.method public setOriginalSignature([C)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->originalSignature:[C

    return-void
.end method

.method public setPackageName([C)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->packageName:[C

    return-void
.end method

.method public setParameterNames([[C)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->parameterNames:[[C

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->parameterNamesComputed:Z

    return-void
.end method

.method public setParameterPackageNames([[C)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->parameterPackageNames:[[C

    return-void
.end method

.method public setParameterTypeNames([[C)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->parameterTypeNames:[[C

    return-void
.end method

.method public setReceiverRange(II)V
    .locals 0

    iput p1, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->receiverStart:I

    iput p2, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->receiverEnd:I

    return-void
.end method

.method public setReceiverSignature([C)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->receiverSignature:[C

    return-void
.end method

.method public setRelevance(I)V
    .locals 0

    if-lez p1, :cond_0

    iput p1, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->relevance:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public setReplaceRange(II)V
    .locals 0

    if-ltz p1, :cond_0

    if-lt p2, p1, :cond_0

    iput p1, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->replaceStart:I

    iput p2, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->replaceEnd:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public setRequiredProposals([Lorg/eclipse/jdt/core/CompletionProposal;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->requiredProposals:[Lorg/eclipse/jdt/core/CompletionProposal;

    return-void
.end method

.method public setSignature([C)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->signature:[C

    return-void
.end method

.method public setTokenRange(II)V
    .locals 0

    if-ltz p1, :cond_0

    if-lt p2, p1, :cond_0

    iput p1, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->tokenStart:I

    iput p2, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->tokenEnd:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public setTypeName([C)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->typeName:[C

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->completionKind:I

    const-string v2, "<CONSTRUCTOR>"

    packed-switch v1, :pswitch_data_0

    const-string v1, "PROPOSAL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :pswitch_0
    const-string v1, "MODULE_REF"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :pswitch_1
    const-string v1, "MODULE_DECLARATION"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :pswitch_2
    const-string v1, "ANONYMOUS_CLASS_CONSTRUCTOR_INVOCATION"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :pswitch_3
    const-string v1, "CONSTRUCTOR_INVOCATION"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :pswitch_4
    const-string v1, "FIELD_REF_WITH_CASTED_RECEIVER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :pswitch_5
    const-string v1, "METHOD_REF_WITH_CASTED_RECEIVER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :pswitch_6
    const-string v1, "TYPE_IMPORT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :pswitch_7
    const-string v1, "METHOD_IMPORT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :pswitch_8
    const-string v1, "FIELD_IMPORT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :pswitch_9
    const-string v1, "JAVADOC_INLINE_TAG"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :pswitch_a
    const-string v1, "JAVADOC_BLOCK_TAG"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :pswitch_b
    const-string v1, "JAVADOC_PARAM_REF"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :pswitch_c
    const-string v1, "JAVADOC_VALUE_REF"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :pswitch_d
    const-string v1, "JAVADOC_TYPE_REF"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :pswitch_e
    const-string v1, "JAVADOC_METHOD_REF"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :pswitch_f
    const-string v1, "JAVADOC_FIELD_REF"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_10
    const-string v1, "ANNOTATION_ATTRIBUTE_REF"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_11
    const-string v1, "METHOD_NAME_REFERENCE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_12
    const-string v1, "POTENTIAL_METHOD_DECLARATION"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_13
    const-string v1, "VARIABLE_DECLARATION"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_14
    const-string v1, "TYPE_REF"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_15
    const-string v1, "PACKAGE_REF"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_16
    const-string v1, "METHOD_DECLARATION"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->isConstructor:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_17
    const-string v1, "METHOD_REF"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->isConstructor:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_18
    const-string v1, "LOCAL_VARIABLE_REF"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_19
    const-string v1, "LABEL_REF"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_1a
    const-string v1, "KEYWORD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_1b
    const-string v1, "FIELD_REF"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_1c
    const-string v1, "ANONYMOUS_CLASS_DECLARATION"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    :goto_0
    const-string v1, "]{completion:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->completion:[C

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    :cond_1
    const-string v1, ", declSign:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->declarationSignature:[C

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    :cond_2
    const-string v1, ", sign:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->signature:[C

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    :cond_3
    const-string v1, ", declKey:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->declarationKey:[C

    if-eqz v1, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    :cond_4
    const-string v1, ", key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->key:[C

    if-eqz v1, :cond_5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    :cond_5
    const-string v1, ", name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->name:[C

    if-eqz v1, :cond_6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    :cond_6
    const-string v1, ", replace:["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->replaceStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget v2, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->replaceEnd:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, "], token:["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->tokenStart:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->tokenEnd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "], relevance:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->relevance:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
