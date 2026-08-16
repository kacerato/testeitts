.class Lorg/eclipse/jdt/core/CorrectionEngine$1;
.super Lorg/eclipse/jdt/core/CompletionRequestor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/core/CorrectionEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/core/CorrectionEngine;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/core/CorrectionEngine;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/core/CorrectionEngine$1;->this$0:Lorg/eclipse/jdt/core/CorrectionEngine;

    invoke-direct {p0}, Lorg/eclipse/jdt/core/CompletionRequestor;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lorg/eclipse/jdt/core/CompletionProposal;)V
    .locals 18

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/core/CompletionProposal;->getKind()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_6

    const/4 v2, 0x5

    if-eq v1, v2, :cond_5

    const/4 v2, 0x6

    const/16 v3, 0x8

    if-eq v1, v2, :cond_3

    if-eq v1, v3, :cond_2

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/core/CompletionProposal;->getFlags()I

    move-result v1

    invoke-static {v1}, Lorg/eclipse/jdt/core/Flags;->isEnum(I)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {v1}, Lorg/eclipse/jdt/core/Flags;->isAnnotation(I)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, v0, Lorg/eclipse/jdt/core/CorrectionEngine$1;->this$0:Lorg/eclipse/jdt/core/CorrectionEngine;

    iget v1, v1, Lorg/eclipse/jdt/core/CorrectionEngine;->filter:I

    and-int/lit8 v2, v1, 0x3

    if-eqz v2, :cond_1

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/core/CompletionProposal;->getCompletion()[C

    move-result-object v1

    iget-object v2, v0, Lorg/eclipse/jdt/core/CorrectionEngine$1;->this$0:Lorg/eclipse/jdt/core/CorrectionEngine;

    iget-object v3, v2, Lorg/eclipse/jdt/core/CorrectionEngine;->correctionRequestor:Lorg/eclipse/jdt/core/ICorrectionRequestor;

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/core/CompletionProposal;->getDeclarationSignature()[C

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/core/CompletionProposal;->getSignature()[C

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jdt/core/Signature;->getSignatureSimpleName([C)[C

    move-result-object v5

    iget-object v2, v0, Lorg/eclipse/jdt/core/CorrectionEngine$1;->this$0:Lorg/eclipse/jdt/core/CorrectionEngine;

    iget v2, v2, Lorg/eclipse/jdt/core/CorrectionEngine;->prefixLength:I

    array-length v6, v1

    invoke-static {v1, v2, v6}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/core/CompletionProposal;->getFlags()I

    move-result v7

    iget-object v1, v0, Lorg/eclipse/jdt/core/CorrectionEngine$1;->this$0:Lorg/eclipse/jdt/core/CorrectionEngine;

    iget v8, v1, Lorg/eclipse/jdt/core/CorrectionEngine;->correctionStart:I

    iget v9, v1, Lorg/eclipse/jdt/core/CorrectionEngine;->correctionEnd:I

    invoke-interface/range {v3 .. v9}, Lorg/eclipse/jdt/core/ICorrectionRequestor;->acceptClass([C[C[CIII)V

    goto/16 :goto_1

    :cond_1
    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_7

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/core/CompletionProposal;->getDeclarationSignature()[C

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/core/CompletionProposal;->getSignature()[C

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/jdt/core/Signature;->getSignatureSimpleName([C)[C

    move-result-object v4

    const/16 v1, 0x2e

    invoke-static {v3, v4, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[CC)[C

    move-result-object v1

    iget-object v2, v0, Lorg/eclipse/jdt/core/CorrectionEngine$1;->this$0:Lorg/eclipse/jdt/core/CorrectionEngine;

    iget-object v5, v2, Lorg/eclipse/jdt/core/CorrectionEngine;->correctionRequestor:Lorg/eclipse/jdt/core/ICorrectionRequestor;

    iget v2, v2, Lorg/eclipse/jdt/core/CorrectionEngine;->prefixLength:I

    array-length v6, v1

    invoke-static {v1, v2, v6}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/core/CompletionProposal;->getFlags()I

    move-result v6

    iget-object v2, v0, Lorg/eclipse/jdt/core/CorrectionEngine$1;->this$0:Lorg/eclipse/jdt/core/CorrectionEngine;

    iget v7, v2, Lorg/eclipse/jdt/core/CorrectionEngine;->correctionStart:I

    iget v8, v2, Lorg/eclipse/jdt/core/CorrectionEngine;->correctionEnd:I

    move-object v2, v5

    move-object v5, v1

    invoke-interface/range {v2 .. v8}, Lorg/eclipse/jdt/core/ICorrectionRequestor;->acceptClass([C[C[CIII)V

    goto/16 :goto_1

    :cond_2
    iget-object v1, v0, Lorg/eclipse/jdt/core/CorrectionEngine$1;->this$0:Lorg/eclipse/jdt/core/CorrectionEngine;

    iget v1, v1, Lorg/eclipse/jdt/core/CorrectionEngine;->filter:I

    and-int/lit8 v1, v1, 0x7

    if-eqz v1, :cond_7

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/core/CompletionProposal;->getDeclarationSignature()[C

    move-result-object v1

    iget-object v2, v0, Lorg/eclipse/jdt/core/CorrectionEngine$1;->this$0:Lorg/eclipse/jdt/core/CorrectionEngine;

    iget-object v3, v2, Lorg/eclipse/jdt/core/CorrectionEngine;->correctionRequestor:Lorg/eclipse/jdt/core/ICorrectionRequestor;

    iget v2, v2, Lorg/eclipse/jdt/core/CorrectionEngine;->prefixLength:I

    array-length v4, v1

    invoke-static {v1, v2, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v2

    iget-object v4, v0, Lorg/eclipse/jdt/core/CorrectionEngine$1;->this$0:Lorg/eclipse/jdt/core/CorrectionEngine;

    iget v5, v4, Lorg/eclipse/jdt/core/CorrectionEngine;->correctionStart:I

    iget v4, v4, Lorg/eclipse/jdt/core/CorrectionEngine;->correctionEnd:I

    invoke-interface {v3, v1, v2, v5, v4}, Lorg/eclipse/jdt/core/ICorrectionRequestor;->acceptPackage([C[CII)V

    goto/16 :goto_1

    :cond_3
    iget-object v1, v0, Lorg/eclipse/jdt/core/CorrectionEngine$1;->this$0:Lorg/eclipse/jdt/core/CorrectionEngine;

    iget v1, v1, Lorg/eclipse/jdt/core/CorrectionEngine;->filter:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_7

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/core/CompletionProposal;->getDeclarationSignature()[C

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/core/CompletionProposal;->getSignature()[C

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jdt/core/Signature;->getParameterTypes([C)[[C

    move-result-object v3

    array-length v4, v3

    new-array v9, v4, [[C

    new-array v10, v4, [[C

    const/4 v5, 0x0

    :goto_0
    if-lt v5, v4, :cond_4

    invoke-static {v2}, Lorg/eclipse/jdt/core/Signature;->getReturnType([C)[C

    move-result-object v2

    iget-object v3, v0, Lorg/eclipse/jdt/core/CorrectionEngine$1;->this$0:Lorg/eclipse/jdt/core/CorrectionEngine;

    iget-object v5, v3, Lorg/eclipse/jdt/core/CorrectionEngine;->correctionRequestor:Lorg/eclipse/jdt/core/ICorrectionRequestor;

    invoke-static {v1}, Lorg/eclipse/jdt/core/Signature;->getSignatureQualifier([C)[C

    move-result-object v6

    invoke-static {v1}, Lorg/eclipse/jdt/core/Signature;->getSignatureSimpleName([C)[C

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/core/CompletionProposal;->getName()[C

    move-result-object v8

    const/4 v1, 0x0

    move-object/from16 v11, p1

    invoke-virtual {v11, v1}, Lorg/eclipse/jdt/core/CompletionProposal;->findParameterNames(Lorg/eclipse/core/runtime/IProgressMonitor;)[[C

    move-result-object v1

    invoke-static {v2}, Lorg/eclipse/jdt/core/Signature;->getSignatureQualifier([C)[C

    move-result-object v12

    invoke-static {v2}, Lorg/eclipse/jdt/core/Signature;->getSignatureSimpleName([C)[C

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/core/CompletionProposal;->getName()[C

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/core/CompletionProposal;->getFlags()I

    move-result v15

    iget-object v2, v0, Lorg/eclipse/jdt/core/CorrectionEngine$1;->this$0:Lorg/eclipse/jdt/core/CorrectionEngine;

    iget v3, v2, Lorg/eclipse/jdt/core/CorrectionEngine;->correctionStart:I

    iget v2, v2, Lorg/eclipse/jdt/core/CorrectionEngine;->correctionEnd:I

    move-object v11, v1

    move/from16 v16, v3

    move/from16 v17, v2

    invoke-interface/range {v5 .. v17}, Lorg/eclipse/jdt/core/ICorrectionRequestor;->acceptMethod([C[C[C[[C[[C[[C[C[C[CIII)V

    goto/16 :goto_1

    :cond_4
    move-object/from16 v11, p1

    aget-object v6, v3, v5

    invoke-static {v6}, Lorg/eclipse/jdt/core/Signature;->getSignatureQualifier([C)[C

    move-result-object v6

    aput-object v6, v9, v5

    aget-object v6, v3, v5

    invoke-static {v6}, Lorg/eclipse/jdt/core/Signature;->getSignatureSimpleName([C)[C

    move-result-object v6

    aput-object v6, v10, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    move-object/from16 v11, p1

    iget-object v1, v0, Lorg/eclipse/jdt/core/CorrectionEngine$1;->this$0:Lorg/eclipse/jdt/core/CorrectionEngine;

    iget v1, v1, Lorg/eclipse/jdt/core/CorrectionEngine;->filter:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_7

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/core/CompletionProposal;->getSignature()[C

    move-result-object v1

    iget-object v2, v0, Lorg/eclipse/jdt/core/CorrectionEngine$1;->this$0:Lorg/eclipse/jdt/core/CorrectionEngine;

    iget-object v3, v2, Lorg/eclipse/jdt/core/CorrectionEngine;->correctionRequestor:Lorg/eclipse/jdt/core/ICorrectionRequestor;

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/core/CompletionProposal;->getName()[C

    move-result-object v4

    invoke-static {v1}, Lorg/eclipse/jdt/core/Signature;->getSignatureQualifier([C)[C

    move-result-object v5

    invoke-static {v1}, Lorg/eclipse/jdt/core/Signature;->getSignatureSimpleName([C)[C

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/core/CompletionProposal;->getFlags()I

    move-result v7

    iget-object v1, v0, Lorg/eclipse/jdt/core/CorrectionEngine$1;->this$0:Lorg/eclipse/jdt/core/CorrectionEngine;

    iget v8, v1, Lorg/eclipse/jdt/core/CorrectionEngine;->correctionStart:I

    iget v9, v1, Lorg/eclipse/jdt/core/CorrectionEngine;->correctionEnd:I

    invoke-interface/range {v3 .. v9}, Lorg/eclipse/jdt/core/ICorrectionRequestor;->acceptLocalVariable([C[C[CIII)V

    goto :goto_1

    :cond_6
    move-object/from16 v11, p1

    iget-object v1, v0, Lorg/eclipse/jdt/core/CorrectionEngine$1;->this$0:Lorg/eclipse/jdt/core/CorrectionEngine;

    iget v1, v1, Lorg/eclipse/jdt/core/CorrectionEngine;->filter:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_7

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/core/CompletionProposal;->getDeclarationSignature()[C

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/core/CompletionProposal;->getSignature()[C

    move-result-object v2

    iget-object v3, v0, Lorg/eclipse/jdt/core/CorrectionEngine$1;->this$0:Lorg/eclipse/jdt/core/CorrectionEngine;

    iget-object v4, v3, Lorg/eclipse/jdt/core/CorrectionEngine;->correctionRequestor:Lorg/eclipse/jdt/core/ICorrectionRequestor;

    invoke-static {v1}, Lorg/eclipse/jdt/core/Signature;->getSignatureQualifier([C)[C

    move-result-object v5

    invoke-static {v1}, Lorg/eclipse/jdt/core/Signature;->getSignatureSimpleName([C)[C

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/core/CompletionProposal;->getName()[C

    move-result-object v7

    invoke-static {v2}, Lorg/eclipse/jdt/core/Signature;->getSignatureQualifier([C)[C

    move-result-object v8

    invoke-static {v2}, Lorg/eclipse/jdt/core/Signature;->getSignatureSimpleName([C)[C

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/core/CompletionProposal;->getName()[C

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/core/CompletionProposal;->getFlags()I

    move-result v11

    iget-object v1, v0, Lorg/eclipse/jdt/core/CorrectionEngine$1;->this$0:Lorg/eclipse/jdt/core/CorrectionEngine;

    iget v12, v1, Lorg/eclipse/jdt/core/CorrectionEngine;->correctionStart:I

    iget v13, v1, Lorg/eclipse/jdt/core/CorrectionEngine;->correctionEnd:I

    invoke-interface/range {v4 .. v13}, Lorg/eclipse/jdt/core/ICorrectionRequestor;->acceptField([C[C[C[C[C[CIII)V

    :cond_7
    :goto_1
    return-void
.end method
