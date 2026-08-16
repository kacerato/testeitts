.class public Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;
.super Lorg/eclipse/jdt/internal/compiler/codegen/Label;
.source "SourceFile"


# static fields
.field public static final USED:I = 0x2

.field public static final WIDE:I = 0x1


# instance fields
.field delegate:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

.field private forwardReferenceCount:I

.field private forwardReferences:[I

.field public tagBits:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/Label;-><init>()V

    const/16 v0, 0xa

    .line 2
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->forwardReferences:[I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->forwardReferenceCount:I

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/Label;-><init>(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    const/16 p1, 0xa

    .line 5
    new-array p1, p1, [I

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->forwardReferences:[I

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->forwardReferenceCount:I

    return-void
.end method


# virtual methods
.method public addForwardReference(I)V
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->delegate:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->addForwardReference(I)V

    return-void

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->forwardReferenceCount:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lt v0, v1, :cond_6

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->forwardReferences:[I

    add-int/lit8 v3, v0, -0x1

    aget v3, v1, v3

    if-ge v3, p1, :cond_2

    array-length v3, v1

    if-lt v0, v3, :cond_1

    mul-int/lit8 v0, v3, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->forwardReferences:[I

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->forwardReferences:[I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->forwardReferenceCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->forwardReferenceCount:I

    aput p1, v0, v1

    goto :goto_1

    :cond_2
    if-le v3, p1, :cond_8

    move v3, v2

    :goto_0
    if-lt v3, v0, :cond_4

    array-length v3, v1

    if-lt v0, v3, :cond_3

    mul-int/lit8 v0, v3, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->forwardReferences:[I

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->forwardReferences:[I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->forwardReferenceCount:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->forwardReferenceCount:I

    aput p1, v0, v1

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->sort([III)V

    goto :goto_1

    :cond_4
    aget v4, v1, v3

    if-ne v4, p1, :cond_5

    return-void

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->forwardReferences:[I

    array-length v3, v1

    if-lt v0, v3, :cond_7

    mul-int/lit8 v0, v3, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->forwardReferences:[I

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->forwardReferences:[I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->forwardReferenceCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->forwardReferenceCount:I

    aput p1, v0, v1

    :cond_8
    :goto_1
    return-void
.end method

.method public becomeDelegateFor(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V
    .locals 9

    iput-object p0, p1, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->delegate:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->forwardReferenceCount:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->forwardReferenceCount:I

    add-int v2, v1, v0

    new-array v2, v2, [I

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-lt v3, v1, :cond_2

    :goto_1
    if-lt v5, v0, :cond_1

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->forwardReferences:[I

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->forwardReferenceCount:I

    return-void

    :cond_1
    add-int/lit8 v1, v4, 0x1

    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->forwardReferences:[I

    aget v3, v3, v5

    aput v3, v2, v4

    add-int/lit8 v5, v5, 0x1

    move v4, v1

    goto :goto_1

    :cond_2
    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->forwardReferences:[I

    aget v6, v6, v3

    :goto_2
    if-lt v5, v0, :cond_3

    add-int/lit8 v7, v4, 0x1

    aput v6, v2, v4

    :goto_3
    move v4, v7

    goto :goto_4

    :cond_3
    iget-object v7, p1, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->forwardReferences:[I

    aget v7, v7, v5

    if-ge v6, v7, :cond_4

    add-int/lit8 v7, v4, 0x1

    aput v6, v2, v4

    goto :goto_3

    :cond_4
    if-ne v6, v7, :cond_5

    add-int/lit8 v7, v4, 0x1

    aput v6, v2, v4

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    add-int/lit8 v8, v4, 0x1

    aput v7, v2, v4

    add-int/lit8 v5, v5, 0x1

    move v4, v8

    goto :goto_2
.end method

.method public branch()V
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->tagBits:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->tagBits:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->delegate:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->branch()V

    return-void

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/Label;->position:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/Label;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->addForwardReference(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/Label;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v1, v1, 0x2

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v1, v1, 0x2

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/Label;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->writePosition(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V

    :goto_0
    return-void
.end method

.method public branchWide()V
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->tagBits:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->tagBits:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->delegate:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->branchWide()V

    return-void

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/Label;->position:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/Label;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->addForwardReference(I)V

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->tagBits:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->tagBits:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/Label;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v1, v1, 0x4

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v1, v1, 0x4

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/Label;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->writeWidePosition(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V

    :goto_0
    return-void
.end method

.method public forwardReferenceCount()I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->delegate:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->forwardReferenceCount()I

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->forwardReferenceCount:I

    return v0
.end method

.method public forwardReferences()[I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->delegate:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->forwardReferences()[I

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->forwardReferences:[I

    return-object v0
.end method

.method public initialize(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/Label;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    const/4 p1, -0x1

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/Label;->position:I

    const/4 p1, 0x0

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->forwardReferenceCount:I

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->delegate:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    return-void
.end method

.method public isCaseLabel()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isStandardLabel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public place()V
    .locals 11

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/Label;->position:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/Label;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/Label;->position:I

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->addLabel(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/Label;->position:I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->forwardReferenceCount:I

    const/4 v3, 0x0

    if-eqz v2, :cond_7

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->forwardReferences:[I

    add-int/lit8 v5, v2, -0x1

    aget v4, v4, v5

    add-int/lit8 v4, v4, 0x2

    const/4 v5, 0x1

    if-ne v4, v0, :cond_0

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/codegen/Label;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    iget-object v6, v4, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v4, v4, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v4, v4, -0x3

    aget-byte v4, v6, v4

    const/16 v6, -0x59

    if-ne v4, v6, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    if-eqz v4, :cond_8

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/codegen/Label;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    iget v7, v6, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->lastAbruptCompletion:I

    if-ne v7, v0, :cond_1

    iput v1, v6, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->lastAbruptCompletion:I

    :cond_1
    add-int/lit8 v1, v0, -0x3

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/Label;->position:I

    iput v1, v6, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget v7, v6, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v7, v7, -0x3

    iput v7, v6, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    sub-int/2addr v2, v5

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->forwardReferenceCount:I

    iget v2, v6, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->lastEntryPC:I

    if-ne v2, v0, :cond_2

    iput v1, v6, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->lastEntryPC:I

    :cond_2
    iget v1, v6, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateAttributes:I

    and-int/lit8 v1, v1, 0x1c

    if-eqz v1, :cond_6

    iget-object v1, v6, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->locals:[Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    array-length v2, v1

    move v6, v3

    :goto_1
    if-lt v6, v2, :cond_3

    goto :goto_2

    :cond_3
    aget-object v7, v1, v6

    if-eqz v7, :cond_5

    iget v8, v7, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->initializationCount:I

    if-lez v8, :cond_5

    iget-object v7, v7, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->initializationPCs:[I

    add-int/lit8 v9, v8, -0x1

    shl-int/2addr v9, v5

    add-int/2addr v9, v5

    aget v9, v7, v9

    if-ne v9, v0, :cond_4

    add-int/lit8 v9, v8, -0x1

    shl-int/2addr v9, v5

    add-int/2addr v9, v5

    iget v10, p0, Lorg/eclipse/jdt/internal/compiler/codegen/Label;->position:I

    aput v10, v7, v9

    :cond_4
    add-int/lit8 v9, v8, -0x1

    shl-int/2addr v9, v5

    aget v9, v7, v9

    if-ne v9, v0, :cond_5

    add-int/lit8 v8, v8, -0x1

    shl-int/2addr v8, v5

    iget v9, p0, Lorg/eclipse/jdt/internal/compiler/codegen/Label;->position:I

    aput v9, v7, v8

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/Label;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateAttributes:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_8

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->removeUnusedPcToSourceMapEntries()V

    goto :goto_3

    :cond_7
    move v4, v3

    :cond_8
    :goto_3
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->forwardReferenceCount:I

    if-lt v3, v1, :cond_9

    if-eqz v4, :cond_a

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/Label;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    invoke-virtual {v1, v0, p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->optimizeBranch(ILorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V

    goto :goto_4

    :cond_9
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/Label;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->forwardReferences:[I

    aget v2, v2, v3

    invoke-virtual {v1, p0, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->writePosition(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_a
    :goto_4
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x40

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "(position="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/Label;->position:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->delegate:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    if-eqz v0, :cond_0

    const-string v0, "delegate="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->delegate:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    :cond_0
    const-string v0, ", forwards = ["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    :goto_0
    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->forwardReferenceCount:I

    add-int/lit8 v4, v3, -0x1

    if-lt v0, v4, :cond_2

    if-lt v3, v2, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->forwardReferences:[I

    sub-int/2addr v3, v2

    aget v0, v0, v3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_1
    const-string v0, "] )"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->forwardReferences:[I

    aget v4, v4, v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
