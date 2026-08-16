.class public Lorg/eclipse/jdt/core/CompletionProposal;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ANNOTATION_ATTRIBUTE_REF:I = 0xd

.field public static final ANONYMOUS_CLASS_CONSTRUCTOR_INVOCATION:I = 0x1b

.field public static final ANONYMOUS_CLASS_DECLARATION:I = 0x1

.field public static final CONSTRUCTOR_INVOCATION:I = 0x1a

.field public static final FIELD_IMPORT:I = 0x15

.field public static final FIELD_REF:I = 0x2

.field public static final FIELD_REF_WITH_CASTED_RECEIVER:I = 0x19

.field protected static final FIRST_KIND:I = 0x1

.field public static final JAVADOC_BLOCK_TAG:I = 0x13

.field public static final JAVADOC_FIELD_REF:I = 0xe

.field public static final JAVADOC_INLINE_TAG:I = 0x14

.field public static final JAVADOC_METHOD_REF:I = 0xf

.field public static final JAVADOC_PARAM_REF:I = 0x12

.field public static final JAVADOC_TYPE_REF:I = 0x10

.field public static final JAVADOC_VALUE_REF:I = 0x11

.field public static final KEYWORD:I = 0x3

.field public static final LABEL_REF:I = 0x4

.field protected static final LAST_KIND:I = 0x1d

.field public static final LOCAL_VARIABLE_REF:I = 0x5

.field public static final METHOD_DECLARATION:I = 0x7

.field public static final METHOD_IMPORT:I = 0x16

.field public static final METHOD_NAME_REFERENCE:I = 0xc

.field public static final METHOD_REF:I = 0x6

.field public static final METHOD_REF_WITH_CASTED_RECEIVER:I = 0x18

.field public static final MODULE_DECLARATION:I = 0x1c

.field public static final MODULE_REF:I = 0x1d

.field public static final PACKAGE_REF:I = 0x8

.field public static final POTENTIAL_METHOD_DECLARATION:I = 0xb

.field public static final TYPE_IMPORT:I = 0x17

.field public static final TYPE_REF:I = 0x9

.field public static final VARIABLE_DECLARATION:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(II)Lorg/eclipse/jdt/core/CompletionProposal;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public canUseDiamond(Lorg/eclipse/jdt/core/CompletionContext;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public findParameterNames(Lorg/eclipse/core/runtime/IProgressMonitor;)[[C
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getAccessibility()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getAdditionalFlags()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getCompletion()[C
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCompletionLocation()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getDeclarationKey()[C
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeclarationSignature()[C
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFlags()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getKey()[C
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getKind()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getName()[C
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getReceiverEnd()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getReceiverSignature()[C
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getReceiverStart()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getRelevance()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getReplaceEnd()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getReplaceStart()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getRequiredProposals()[Lorg/eclipse/jdt/core/CompletionProposal;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSignature()[C
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTokenEnd()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getTokenStart()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public isConstructor()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setAdditionalFlags(I)V
    .locals 0

    return-void
.end method

.method public setCompletion([C)V
    .locals 0

    return-void
.end method

.method public setDeclarationKey([C)V
    .locals 0

    return-void
.end method

.method public setDeclarationSignature([C)V
    .locals 0

    return-void
.end method

.method public setFlags(I)V
    .locals 0

    return-void
.end method

.method public setKey([C)V
    .locals 0

    return-void
.end method

.method public setName([C)V
    .locals 0

    return-void
.end method

.method public setParameterNames([[C)V
    .locals 0

    return-void
.end method

.method public setReceiverRange(II)V
    .locals 0

    return-void
.end method

.method public setReceiverSignature([C)V
    .locals 0

    return-void
.end method

.method public setRelevance(I)V
    .locals 0

    return-void
.end method

.method public setReplaceRange(II)V
    .locals 0

    return-void
.end method

.method public setRequiredProposals([Lorg/eclipse/jdt/core/CompletionProposal;)V
    .locals 0

    return-void
.end method

.method public setSignature([C)V
    .locals 0

    return-void
.end method

.method public setTokenRange(II)V
    .locals 0

    return-void
.end method
