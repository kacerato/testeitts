.class public Lorg/eclipse/jdt/internal/codeassist/CompletionRequestorWrapper;
.super Lorg/eclipse/jdt/core/CompletionRequestor;
.source "SourceFile"


# static fields
.field private static DECODE_SIGNATURE:Z = false


# instance fields
.field private requestor:Lorg/eclipse/jdt/core/ICompletionRequestor;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/core/ICompletionRequestor;)V
    .locals 0

    invoke-direct {p0}, Lorg/eclipse/jdt/core/CompletionRequestor;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionRequestorWrapper;->requestor:Lorg/eclipse/jdt/core/ICompletionRequestor;

    return-void
.end method

.method private getParameterPackages([C)[[C
    .locals 4

    invoke-static {p1}, Lorg/eclipse/jdt/core/Signature;->getParameterTypes([C)[[C

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    new-array v2, v1, [[C

    :goto_1
    if-lt v0, v1, :cond_1

    return-object v2

    :cond_1
    aget-object v3, p1, v0

    invoke-static {v3}, Lorg/eclipse/jdt/core/Signature;->getSignatureQualifier([C)[C

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private getParameterTypes([C)[[C
    .locals 4

    invoke-static {p1}, Lorg/eclipse/jdt/core/Signature;->getParameterTypes([C)[[C

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    new-array v2, v1, [[C

    :goto_1
    if-lt v0, v1, :cond_1

    return-object v2

    :cond_1
    aget-object v3, p1, v0

    invoke-static {v3}, Lorg/eclipse/jdt/core/Signature;->getSignatureSimpleName([C)[C

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public accept(Lorg/eclipse/jdt/core/CompletionProposal;)V
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getKind()I

    move-result v2

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_2e

    :pswitch_0
    iget-object v2, v0, Lorg/eclipse/jdt/internal/codeassist/CompletionRequestorWrapper;->requestor:Lorg/eclipse/jdt/core/ICompletionRequestor;

    instance-of v3, v2, Lorg/eclipse/jdt/internal/codeassist/IExtendedCompletionRequestor;

    if-eqz v3, :cond_22

    move-object v4, v2

    check-cast v4, Lorg/eclipse/jdt/internal/codeassist/IExtendedCompletionRequestor;

    sget-boolean v2, Lorg/eclipse/jdt/internal/codeassist/CompletionRequestorWrapper;->DECODE_SIGNATURE:Z

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getDeclarationSignature()[C

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jdt/core/Signature;->getSignatureQualifier([C)[C

    move-result-object v5

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getDeclarationSignature()[C

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jdt/core/Signature;->getSignatureSimpleName([C)[C

    move-result-object v6

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getName()[C

    move-result-object v7

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getReplaceStart()I

    move-result v8

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getReplaceEnd()I

    move-result v9

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getRelevance()I

    move-result v10

    invoke-interface/range {v4 .. v10}, Lorg/eclipse/jdt/internal/codeassist/IExtendedCompletionRequestor;->acceptPotentialMethodDeclaration([C[C[CIII)V

    goto/16 :goto_2e

    :cond_0
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getDeclarationPackageName()[C

    move-result-object v5

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getDeclarationTypeName()[C

    move-result-object v6

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getName()[C

    move-result-object v7

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getReplaceStart()I

    move-result v8

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getReplaceEnd()I

    move-result v9

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getRelevance()I

    move-result v10

    invoke-interface/range {v4 .. v10}, Lorg/eclipse/jdt/internal/codeassist/IExtendedCompletionRequestor;->acceptPotentialMethodDeclaration([C[C[CIII)V

    goto/16 :goto_2e

    :pswitch_1
    sget-boolean v2, Lorg/eclipse/jdt/internal/codeassist/CompletionRequestorWrapper;->DECODE_SIGNATURE:Z

    if-eqz v2, :cond_1

    iget-object v3, v0, Lorg/eclipse/jdt/internal/codeassist/CompletionRequestorWrapper;->requestor:Lorg/eclipse/jdt/core/ICompletionRequestor;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getCompletion()[C

    move-result-object v4

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getSignature()[C

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jdt/core/Signature;->getSignatureQualifier([C)[C

    move-result-object v5

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getSignature()[C

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jdt/core/Signature;->getSignatureSimpleName([C)[C

    move-result-object v6

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getFlags()I

    move-result v7

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getReplaceStart()I

    move-result v8

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getReplaceEnd()I

    move-result v9

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getRelevance()I

    move-result v10

    invoke-interface/range {v3 .. v10}, Lorg/eclipse/jdt/core/ICompletionRequestor;->acceptLocalVariable([C[C[CIIII)V

    goto/16 :goto_2e

    :cond_1
    iget-object v11, v0, Lorg/eclipse/jdt/internal/codeassist/CompletionRequestorWrapper;->requestor:Lorg/eclipse/jdt/core/ICompletionRequestor;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getCompletion()[C

    move-result-object v12

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getPackageName()[C

    move-result-object v13

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getTypeName()[C

    move-result-object v14

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getFlags()I

    move-result v15

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getReplaceStart()I

    move-result v16

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getReplaceEnd()I

    move-result v17

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getRelevance()I

    move-result v18

    invoke-interface/range {v11 .. v18}, Lorg/eclipse/jdt/core/ICompletionRequestor;->acceptLocalVariable([C[C[CIIII)V

    goto/16 :goto_2e

    :pswitch_2
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getFlags()I

    move-result v2

    and-int/lit16 v2, v2, 0x4000

    if-nez v2, :cond_22

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getFlags()I

    move-result v2

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_4

    sget-boolean v2, Lorg/eclipse/jdt/internal/codeassist/CompletionRequestorWrapper;->DECODE_SIGNATURE:Z

    if-eqz v2, :cond_2

    iget-object v3, v0, Lorg/eclipse/jdt/internal/codeassist/CompletionRequestorWrapper;->requestor:Lorg/eclipse/jdt/core/ICompletionRequestor;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getDeclarationSignature()[C

    move-result-object v4

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getSignature()[C

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jdt/core/Signature;->getSignatureSimpleName([C)[C

    move-result-object v5

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getCompletion()[C

    move-result-object v6

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getFlags()I

    move-result v2

    and-int/lit16 v7, v2, -0x201

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getReplaceStart()I

    move-result v8

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getReplaceEnd()I

    move-result v9

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getRelevance()I

    move-result v10

    invoke-interface/range {v3 .. v10}, Lorg/eclipse/jdt/core/ICompletionRequestor;->acceptInterface([C[C[CIIII)V

    goto/16 :goto_2e

    :cond_2
    iget-object v11, v0, Lorg/eclipse/jdt/internal/codeassist/CompletionRequestorWrapper;->requestor:Lorg/eclipse/jdt/core/ICompletionRequestor;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getPackageName()[C

    move-result-object v2

    if-nez v2, :cond_3

    sget-object v2, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    :goto_0
    move-object v12, v2

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getPackageName()[C

    move-result-object v2

    goto :goto_0

    :goto_1
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getTypeName()[C

    move-result-object v13

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getCompletion()[C

    move-result-object v14

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getFlags()I

    move-result v2

    and-int/lit16 v15, v2, -0x201

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getReplaceStart()I

    move-result v16

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getReplaceEnd()I

    move-result v17

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getRelevance()I

    move-result v18

    invoke-interface/range {v11 .. v18}, Lorg/eclipse/jdt/core/ICompletionRequestor;->acceptInterface([C[C[CIIII)V

    goto/16 :goto_2e

    :cond_4
    sget-boolean v2, Lorg/eclipse/jdt/internal/codeassist/CompletionRequestorWrapper;->DECODE_SIGNATURE:Z

    if-eqz v2, :cond_5

    iget-object v3, v0, Lorg/eclipse/jdt/internal/codeassist/CompletionRequestorWrapper;->requestor:Lorg/eclipse/jdt/core/ICompletionRequestor;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getDeclarationSignature()[C

    move-result-object v4

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getSignature()[C

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jdt/core/Signature;->getSignatureSimpleName([C)[C

    move-result-object v5

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getCompletion()[C

    move-result-object v6

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getFlags()I

    move-result v7

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getReplaceStart()I

    move-result v8

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getReplaceEnd()I

    move-result v9

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getRelevance()I

    move-result v10

    invoke-interface/range {v3 .. v10}, Lorg/eclipse/jdt/core/ICompletionRequestor;->acceptClass([C[C[CIIII)V

    goto/16 :goto_2e

    :cond_5
    iget-object v11, v0, Lorg/eclipse/jdt/internal/codeassist/CompletionRequestorWrapper;->requestor:Lorg/eclipse/jdt/core/ICompletionRequestor;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getPackageName()[C

    move-result-object v2

    if-nez v2, :cond_6

    sget-object v2, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    :goto_2
    move-object v12, v2

    goto :goto_3

    :cond_6
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getPackageName()[C

    move-result-object v2

    goto :goto_2

    :goto_3
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getTypeName()[C

    move-result-object v13

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getCompletion()[C

    move-result-object v14

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getFlags()I

    move-result v15

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getReplaceStart()I

    move-result v16

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getReplaceEnd()I

    move-result v17

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getRelevance()I

    move-result v18

    invoke-interface/range {v11 .. v18}, Lorg/eclipse/jdt/core/ICompletionRequestor;->acceptClass([C[C[CIIII)V

    goto/16 :goto_2e

    :pswitch_3
    sget-boolean v2, Lorg/eclipse/jdt/internal/codeassist/CompletionRequestorWrapper;->DECODE_SIGNATURE:Z

    if-eqz v2, :cond_7

    iget-object v3, v0, Lorg/eclipse/jdt/internal/codeassist/CompletionRequestorWrapper;->requestor:Lorg/eclipse/jdt/core/ICompletionRequestor;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getDeclarationSignature()[C

    move-result-object v4

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getCompletion()[C

    move-result-object v5

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getReplaceStart()I

    move-result v6

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getReplaceEnd()I

    move-result v7

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getRelevance()I

    move-result v8

    invoke-interface/range {v3 .. v8}, Lorg/eclipse/jdt/core/ICompletionRequestor;->acceptPackage([C[CIII)V

    goto/16 :goto_2e

    :cond_7
    iget-object v9, v0, Lorg/eclipse/jdt/internal/codeassist/CompletionRequestorWrapper;->requestor:Lorg/eclipse/jdt/core/ICompletionRequestor;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getPackageName()[C

    move-result-object v10

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getCompletion()[C

    move-result-object v11

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getReplaceStart()I

    move-result v12

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getReplaceEnd()I

    move-result v13

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getRelevance()I

    move-result v14

    invoke-interface/range {v9 .. v14}, Lorg/eclipse/jdt/core/ICompletionRequestor;->acceptPackage([C[CIII)V

    goto/16 :goto_2e

    :pswitch_4
    sget-boolean v2, Lorg/eclipse/jdt/internal/codeassist/CompletionRequestorWrapper;->DECODE_SIGNATURE:Z

    if-eqz v2, :cond_9

    iget-object v4, v0, Lorg/eclipse/jdt/internal/codeassist/CompletionRequestorWrapper;->requestor:Lorg/eclipse/jdt/core/ICompletionRequestor;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getDeclarationSignature()[C

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jdt/core/Signature;->getSignatureQualifier([C)[C

    move-result-object v5

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getDeclarationSignature()[C

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jdt/core/Signature;->getSignatureSimpleName([C)[C

    move-result-object v6

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getName()[C

    move-result-object v7

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getSignature()[C

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/eclipse/jdt/internal/codeassist/CompletionRequestorWrapper;->getParameterPackages([C)[[C

    move-result-object v8

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getSignature()[C

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/eclipse/jdt/internal/codeassist/CompletionRequestorWrapper;->getParameterTypes([C)[[C

    move-result-object v9

    invoke-virtual {v1, v3}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->findParameterNames(Lorg/eclipse/core/runtime/IProgressMonitor;)[[C

    move-result-object v2

    if-nez v2, :cond_8

    sget-object v2, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    :goto_4
    move-object v10, v2

    goto :goto_5

    :cond_8
    invoke-virtual {v1, v3}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->findParameterNames(Lorg/eclipse/core/runtime/IProgressMonitor;)[[C

    move-result-object v2

    goto :goto_4

    :goto_5
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getSignature()[C

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jdt/core/Signature;->getReturnType([C)[C

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jdt/core/Signature;->getSignatureQualifier([C)[C

    move-result-object v11

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getSignature()[C

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jdt/core/Signature;->getReturnType([C)[C

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jdt/core/Signature;->getSignatureSimpleName([C)[C

    move-result-object v12

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getCompletion()[C

    move-result-object v13

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getFlags()I

    move-result v14

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getReplaceStart()I

    move-result v15

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getReplaceEnd()I

    move-result v16

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getRelevance()I

    move-result v17

    invoke-interface/range {v4 .. v17}, Lorg/eclipse/jdt/core/ICompletionRequestor;->acceptMethodDeclaration([C[C[C[[C[[C[[C[C[C[CIIII)V

    goto/16 :goto_2e

    :cond_9
    iget-object v2, v0, Lorg/eclipse/jdt/internal/codeassist/CompletionRequestorWrapper;->requestor:Lorg/eclipse/jdt/core/ICompletionRequestor;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getDeclarationPackageName()[C

    move-result-object v19

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getDeclarationTypeName()[C

    move-result-object v20

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getName()[C

    move-result-object v21

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getParameterPackageNames()[[C

    move-result-object v4

    if-nez v4, :cond_a

    sget-object v4, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    :goto_6
    move-object/from16 v22, v4

    goto :goto_7

    :cond_a
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getParameterPackageNames()[[C

    move-result-object v4

    goto :goto_6

    :goto_7
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getParameterTypeNames()[[C

    move-result-object v4

    if-nez v4, :cond_b

    sget-object v4, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    :goto_8
    move-object/from16 v23, v4

    goto :goto_9

    :cond_b
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getParameterTypeNames()[[C

    move-result-object v4

    goto :goto_8

    :goto_9
    invoke-virtual {v1, v3}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->findParameterNames(Lorg/eclipse/core/runtime/IProgressMonitor;)[[C

    move-result-object v4

    if-nez v4, :cond_c

    sget-object v3, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    :goto_a
    move-object/from16 v24, v3

    goto :goto_b

    :cond_c
    invoke-virtual {v1, v3}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->findParameterNames(Lorg/eclipse/core/runtime/IProgressMonitor;)[[C

    move-result-object v3

    goto :goto_a

    :goto_b
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getPackageName()[C

    move-result-object v25

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getTypeName()[C

    move-result-object v26

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getCompletion()[C

    move-result-object v27

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getFlags()I

    move-result v28

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getReplaceStart()I

    move-result v29

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getReplaceEnd()I

    move-result v30

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getRelevance()I

    move-result v31

    move-object/from16 v18, v2

    invoke-interface/range {v18 .. v31}, Lorg/eclipse/jdt/core/ICompletionRequestor;->acceptMethodDeclaration([C[C[C[[C[[C[[C[C[C[CIIII)V

    goto/16 :goto_2e

    :pswitch_5
    sget-boolean v2, Lorg/eclipse/jdt/internal/codeassist/CompletionRequestorWrapper;->DECODE_SIGNATURE:Z

    if-eqz v2, :cond_e

    iget-object v4, v0, Lorg/eclipse/jdt/internal/codeassist/CompletionRequestorWrapper;->requestor:Lorg/eclipse/jdt/core/ICompletionRequestor;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getDeclarationSignature()[C

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jdt/core/Signature;->getSignatureQualifier([C)[C

    move-result-object v5

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getDeclarationSignature()[C

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jdt/core/Signature;->getSignatureSimpleName([C)[C

    move-result-object v6

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getName()[C

    move-result-object v7

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getSignature()[C

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/eclipse/jdt/internal/codeassist/CompletionRequestorWrapper;->getParameterPackages([C)[[C

    move-result-object v8

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getSignature()[C

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/eclipse/jdt/internal/codeassist/CompletionRequestorWrapper;->getParameterTypes([C)[[C

    move-result-object v9

    invoke-virtual {v1, v3}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->findParameterNames(Lorg/eclipse/core/runtime/IProgressMonitor;)[[C

    move-result-object v2

    if-nez v2, :cond_d

    sget-object v2, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    :goto_c
    move-object v10, v2

    goto :goto_d

    :cond_d
    invoke-virtual {v1, v3}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->findParameterNames(Lorg/eclipse/core/runtime/IProgressMonitor;)[[C

    move-result-object v2

    goto :goto_c

    :goto_d
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getSignature()[C

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jdt/core/Signature;->getReturnType([C)[C

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jdt/core/Signature;->getSignatureQualifier([C)[C

    move-result-object v11

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getSignature()[C

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jdt/core/Signature;->getReturnType([C)[C

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jdt/core/Signature;->getSignatureSimpleName([C)[C

    move-result-object v12

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getCompletion()[C

    move-result-object v13

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getFlags()I

    move-result v14

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getReplaceStart()I

    move-result v15

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getReplaceEnd()I

    move-result v16

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getRelevance()I

    move-result v17

    invoke-interface/range {v4 .. v17}, Lorg/eclipse/jdt/core/ICompletionRequestor;->acceptMethod([C[C[C[[C[[C[[C[C[C[CIIII)V

    goto/16 :goto_2e

    :cond_e
    iget-object v2, v0, Lorg/eclipse/jdt/internal/codeassist/CompletionRequestorWrapper;->requestor:Lorg/eclipse/jdt/core/ICompletionRequestor;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getDeclarationPackageName()[C

    move-result-object v4

    if-nez v4, :cond_f

    sget-object v4, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    :goto_e
    move-object/from16 v19, v4

    goto :goto_f

    :cond_f
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getDeclarationPackageName()[C

    move-result-object v4

    goto :goto_e

    :goto_f
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getDeclarationTypeName()[C

    move-result-object v4

    if-nez v4, :cond_10

    sget-object v4, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    :goto_10
    move-object/from16 v20, v4

    goto :goto_11

    :cond_10
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getDeclarationTypeName()[C

    move-result-object v4

    goto :goto_10

    :goto_11
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getName()[C

    move-result-object v21

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getParameterPackageNames()[[C

    move-result-object v4

    if-nez v4, :cond_11

    sget-object v4, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    :goto_12
    move-object/from16 v22, v4

    goto :goto_13

    :cond_11
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getParameterPackageNames()[[C

    move-result-object v4

    goto :goto_12

    :goto_13
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getParameterTypeNames()[[C

    move-result-object v4

    if-nez v4, :cond_12

    sget-object v4, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    :goto_14
    move-object/from16 v23, v4

    goto :goto_15

    :cond_12
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getParameterTypeNames()[[C

    move-result-object v4

    goto :goto_14

    :goto_15
    invoke-virtual {v1, v3}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->findParameterNames(Lorg/eclipse/core/runtime/IProgressMonitor;)[[C

    move-result-object v4

    if-nez v4, :cond_13

    sget-object v3, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    :goto_16
    move-object/from16 v24, v3

    goto :goto_17

    :cond_13
    invoke-virtual {v1, v3}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->findParameterNames(Lorg/eclipse/core/runtime/IProgressMonitor;)[[C

    move-result-object v3

    goto :goto_16

    :goto_17
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getPackageName()[C

    move-result-object v3

    if-nez v3, :cond_14

    sget-object v3, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    :goto_18
    move-object/from16 v25, v3

    goto :goto_19

    :cond_14
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getPackageName()[C

    move-result-object v3

    goto :goto_18

    :goto_19
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getTypeName()[C

    move-result-object v3

    if-nez v3, :cond_15

    sget-object v3, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    :goto_1a
    move-object/from16 v26, v3

    goto :goto_1b

    :cond_15
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getTypeName()[C

    move-result-object v3

    goto :goto_1a

    :goto_1b
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getCompletion()[C

    move-result-object v27

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getFlags()I

    move-result v28

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getReplaceStart()I

    move-result v29

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getReplaceEnd()I

    move-result v30

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getRelevance()I

    move-result v31

    move-object/from16 v18, v2

    invoke-interface/range {v18 .. v31}, Lorg/eclipse/jdt/core/ICompletionRequestor;->acceptMethod([C[C[C[[C[[C[[C[C[C[CIIII)V

    goto/16 :goto_2e

    :pswitch_6
    sget-boolean v2, Lorg/eclipse/jdt/internal/codeassist/CompletionRequestorWrapper;->DECODE_SIGNATURE:Z

    if-eqz v2, :cond_16

    iget-object v3, v0, Lorg/eclipse/jdt/internal/codeassist/CompletionRequestorWrapper;->requestor:Lorg/eclipse/jdt/core/ICompletionRequestor;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getCompletion()[C

    move-result-object v4

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getSignature()[C

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jdt/core/Signature;->getSignatureQualifier([C)[C

    move-result-object v5

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getSignature()[C

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jdt/core/Signature;->getSignatureSimpleName([C)[C

    move-result-object v6

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getFlags()I

    move-result v7

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getReplaceStart()I

    move-result v8

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getReplaceEnd()I

    move-result v9

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getRelevance()I

    move-result v10

    invoke-interface/range {v3 .. v10}, Lorg/eclipse/jdt/core/ICompletionRequestor;->acceptLocalVariable([C[C[CIIII)V

    goto/16 :goto_2e

    :cond_16
    iget-object v11, v0, Lorg/eclipse/jdt/internal/codeassist/CompletionRequestorWrapper;->requestor:Lorg/eclipse/jdt/core/ICompletionRequestor;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getCompletion()[C

    move-result-object v12

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getPackageName()[C

    move-result-object v2

    if-nez v2, :cond_17

    sget-object v2, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    :goto_1c
    move-object v13, v2

    goto :goto_1d

    :cond_17
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getPackageName()[C

    move-result-object v2

    goto :goto_1c

    :goto_1d
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getTypeName()[C

    move-result-object v14

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getFlags()I

    move-result v15

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getReplaceStart()I

    move-result v16

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getReplaceEnd()I

    move-result v17

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getRelevance()I

    move-result v18

    invoke-interface/range {v11 .. v18}, Lorg/eclipse/jdt/core/ICompletionRequestor;->acceptLocalVariable([C[C[CIIII)V

    goto/16 :goto_2e

    :pswitch_7
    iget-object v2, v0, Lorg/eclipse/jdt/internal/codeassist/CompletionRequestorWrapper;->requestor:Lorg/eclipse/jdt/core/ICompletionRequestor;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getCompletion()[C

    move-result-object v3

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getReplaceStart()I

    move-result v4

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getReplaceEnd()I

    move-result v5

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getRelevance()I

    move-result v1

    invoke-interface {v2, v3, v4, v5, v1}, Lorg/eclipse/jdt/core/ICompletionRequestor;->acceptLabel([CIII)V

    goto/16 :goto_2e

    :pswitch_8
    iget-object v2, v0, Lorg/eclipse/jdt/internal/codeassist/CompletionRequestorWrapper;->requestor:Lorg/eclipse/jdt/core/ICompletionRequestor;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getName()[C

    move-result-object v3

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getReplaceStart()I

    move-result v4

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getReplaceEnd()I

    move-result v5

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getRelevance()I

    move-result v1

    invoke-interface {v2, v3, v4, v5, v1}, Lorg/eclipse/jdt/core/ICompletionRequestor;->acceptKeyword([CIII)V

    goto/16 :goto_2e

    :pswitch_9
    sget-boolean v2, Lorg/eclipse/jdt/internal/codeassist/CompletionRequestorWrapper;->DECODE_SIGNATURE:Z

    if-eqz v2, :cond_18

    iget-object v3, v0, Lorg/eclipse/jdt/internal/codeassist/CompletionRequestorWrapper;->requestor:Lorg/eclipse/jdt/core/ICompletionRequestor;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getDeclarationSignature()[C

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jdt/core/Signature;->getSignatureQualifier([C)[C

    move-result-object v4

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getDeclarationSignature()[C

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jdt/core/Signature;->getSignatureSimpleName([C)[C

    move-result-object v5

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getName()[C

    move-result-object v6

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getSignature()[C

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jdt/core/Signature;->getSignatureQualifier([C)[C

    move-result-object v7

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getSignature()[C

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jdt/core/Signature;->getSignatureSimpleName([C)[C

    move-result-object v8

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getCompletion()[C

    move-result-object v9

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getFlags()I

    move-result v10

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getReplaceStart()I

    move-result v11

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getReplaceEnd()I

    move-result v12

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getRelevance()I

    move-result v13

    invoke-interface/range {v3 .. v13}, Lorg/eclipse/jdt/core/ICompletionRequestor;->acceptField([C[C[C[C[C[CIIII)V

    goto/16 :goto_2e

    :cond_18
    iget-object v14, v0, Lorg/eclipse/jdt/internal/codeassist/CompletionRequestorWrapper;->requestor:Lorg/eclipse/jdt/core/ICompletionRequestor;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getDeclarationPackageName()[C

    move-result-object v2

    if-nez v2, :cond_19

    sget-object v2, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    :goto_1e
    move-object v15, v2

    goto :goto_1f

    :cond_19
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getDeclarationPackageName()[C

    move-result-object v2

    goto :goto_1e

    :goto_1f
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getDeclarationTypeName()[C

    move-result-object v2

    if-nez v2, :cond_1a

    sget-object v2, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    :goto_20
    move-object/from16 v16, v2

    goto :goto_21

    :cond_1a
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getDeclarationTypeName()[C

    move-result-object v2

    goto :goto_20

    :goto_21
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getName()[C

    move-result-object v17

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getPackageName()[C

    move-result-object v2

    if-nez v2, :cond_1b

    sget-object v2, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    :goto_22
    move-object/from16 v18, v2

    goto :goto_23

    :cond_1b
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getPackageName()[C

    move-result-object v2

    goto :goto_22

    :goto_23
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getTypeName()[C

    move-result-object v2

    if-nez v2, :cond_1c

    sget-object v2, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    :goto_24
    move-object/from16 v19, v2

    goto :goto_25

    :cond_1c
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getTypeName()[C

    move-result-object v2

    goto :goto_24

    :goto_25
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getCompletion()[C

    move-result-object v20

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getFlags()I

    move-result v21

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getReplaceStart()I

    move-result v22

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getReplaceEnd()I

    move-result v23

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getRelevance()I

    move-result v24

    invoke-interface/range {v14 .. v24}, Lorg/eclipse/jdt/core/ICompletionRequestor;->acceptField([C[C[C[C[C[CIIII)V

    goto/16 :goto_2e

    :pswitch_a
    sget-boolean v2, Lorg/eclipse/jdt/internal/codeassist/CompletionRequestorWrapper;->DECODE_SIGNATURE:Z

    if-eqz v2, :cond_1e

    iget-object v4, v0, Lorg/eclipse/jdt/internal/codeassist/CompletionRequestorWrapper;->requestor:Lorg/eclipse/jdt/core/ICompletionRequestor;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getDeclarationSignature()[C

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jdt/core/Signature;->getSignatureQualifier([C)[C

    move-result-object v5

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getDeclarationSignature()[C

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jdt/core/Signature;->getSignatureSimpleName([C)[C

    move-result-object v6

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getSignature()[C

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/eclipse/jdt/internal/codeassist/CompletionRequestorWrapper;->getParameterPackages([C)[[C

    move-result-object v7

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getSignature()[C

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/eclipse/jdt/internal/codeassist/CompletionRequestorWrapper;->getParameterTypes([C)[[C

    move-result-object v8

    invoke-virtual {v1, v3}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->findParameterNames(Lorg/eclipse/core/runtime/IProgressMonitor;)[[C

    move-result-object v2

    if-nez v2, :cond_1d

    sget-object v2, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    :goto_26
    move-object v9, v2

    goto :goto_27

    :cond_1d
    invoke-virtual {v1, v3}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->findParameterNames(Lorg/eclipse/core/runtime/IProgressMonitor;)[[C

    move-result-object v2

    goto :goto_26

    :goto_27
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getCompletion()[C

    move-result-object v10

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getFlags()I

    move-result v11

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getReplaceStart()I

    move-result v12

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getReplaceEnd()I

    move-result v13

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getRelevance()I

    move-result v14

    invoke-interface/range {v4 .. v14}, Lorg/eclipse/jdt/core/ICompletionRequestor;->acceptAnonymousType([C[C[[C[[C[[C[CIIII)V

    goto :goto_2e

    :cond_1e
    iget-object v15, v0, Lorg/eclipse/jdt/internal/codeassist/CompletionRequestorWrapper;->requestor:Lorg/eclipse/jdt/core/ICompletionRequestor;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getDeclarationPackageName()[C

    move-result-object v16

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getDeclarationTypeName()[C

    move-result-object v17

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getParameterPackageNames()[[C

    move-result-object v2

    if-nez v2, :cond_1f

    sget-object v2, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    :goto_28
    move-object/from16 v18, v2

    goto :goto_29

    :cond_1f
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getParameterPackageNames()[[C

    move-result-object v2

    goto :goto_28

    :goto_29
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getParameterTypeNames()[[C

    move-result-object v2

    if-nez v2, :cond_20

    sget-object v2, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    :goto_2a
    move-object/from16 v19, v2

    goto :goto_2b

    :cond_20
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getParameterTypeNames()[[C

    move-result-object v2

    goto :goto_2a

    :goto_2b
    invoke-virtual {v1, v3}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->findParameterNames(Lorg/eclipse/core/runtime/IProgressMonitor;)[[C

    move-result-object v2

    if-nez v2, :cond_21

    sget-object v2, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    :goto_2c
    move-object/from16 v20, v2

    goto :goto_2d

    :cond_21
    invoke-virtual {v1, v3}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->findParameterNames(Lorg/eclipse/core/runtime/IProgressMonitor;)[[C

    move-result-object v2

    goto :goto_2c

    :goto_2d
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getCompletion()[C

    move-result-object v21

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getFlags()I

    move-result v22

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getReplaceStart()I

    move-result v23

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getReplaceEnd()I

    move-result v24

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->getRelevance()I

    move-result v25

    invoke-interface/range {v15 .. v25}, Lorg/eclipse/jdt/core/ICompletionRequestor;->acceptAnonymousType([C[C[[C[[C[[C[CIIII)V

    :cond_22
    :goto_2e
    return-void

    :pswitch_data_0
    .packed-switch 0x1
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

.method public completionFailure(Lorg/eclipse/jdt/core/compiler/IProblem;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionRequestorWrapper;->requestor:Lorg/eclipse/jdt/core/ICompletionRequestor;

    invoke-interface {v0, p1}, Lorg/eclipse/jdt/core/ICompletionRequestor;->acceptError(Lorg/eclipse/jdt/core/compiler/IProblem;)V

    return-void
.end method
