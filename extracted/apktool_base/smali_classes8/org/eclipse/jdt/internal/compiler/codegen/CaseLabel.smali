.class public Lorg/eclipse/jdt/internal/compiler/codegen/CaseLabel;
.super Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;
.source "SourceFile"


# instance fields
.field public instructionPosition:I


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;-><init>(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    const/4 p1, -0x1

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CaseLabel;->instructionPosition:I

    return-void
.end method


# virtual methods
.method public branch()V
    .locals 3

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/Label;->position:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/Label;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->addForwardReference(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/Label;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v1, v1, 0x4

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v1, v1, 0x4

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/Label;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CaseLabel;->instructionPosition:I

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->writeSignedWord(I)V

    :goto_0
    return-void
.end method

.method public branchWide()V
    .locals 0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CaseLabel;->branch()V

    return-void
.end method

.method public isCaseLabel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isStandardLabel()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public place()V
    .locals 6

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->tagBits:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/Label;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->getPosition()I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/Label;->position:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/Label;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/Label;->position:I

    :goto_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CaseLabel;->instructionPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/Label;->position:I

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->forwardReferences()[I

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->forwardReferenceCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-lt v3, v2, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/Label;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->addLabel(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V

    goto :goto_2

    :cond_1
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/codegen/Label;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    aget v5, v0, v3

    invoke-virtual {v4, v5, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->writeSignedWord(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method public placeInstruction()V
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CaseLabel;->instructionPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/Label;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CaseLabel;->instructionPosition:I

    :cond_0
    return-void
.end method
