.class abstract Lorg/eclipse/jdt/internal/core/jdom/DOMMember;
.super Lorg/eclipse/jdt/internal/core/jdom/DOMNode;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/jdom/IDOMMember;


# instance fields
.field protected fComment:Ljava/lang/String;

.field protected fCommentRange:[I

.field protected fFlags:I

.field protected fModifierRange:[I

.field protected fModifiers:[C


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMember;->fFlags:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMember;->fComment:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMember;->fModifiers:[C

    return-void
.end method

.method public constructor <init>([C[ILjava/lang/String;[I[II[I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;-><init>([C[ILjava/lang/String;[I)V

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMember;->fModifiers:[C

    .line 7
    iput p6, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMember;->fFlags:I

    .line 8
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMember;->fComment:Ljava/lang/String;

    .line 9
    iput-object p5, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMember;->fCommentRange:[I

    .line 10
    iput-object p7, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMember;->fModifierRange:[I

    const/4 p1, 0x0

    .line 11
    aget p2, p5, p1

    if-ltz p2, :cond_0

    const/4 p1, 0x1

    :cond_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMMember;->setHasComment(Z)V

    return-void
.end method


# virtual methods
.method public appendFragmentedContents(Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;)V
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->isDetailed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMMember;->appendMemberHeaderFragment(Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;)V

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMMember;->appendMemberDeclarationContents(Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;)V

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMMember;->appendMemberBodyContents(Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMMember;->appendSimpleContents(Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;)V

    :goto_0
    return-void
.end method

.method public abstract appendMemberBodyContents(Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;)V
.end method

.method public abstract appendMemberDeclarationContents(Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;)V
.end method

.method public appendMemberHeaderFragment(Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;)V
    .locals 4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMMember;->hasComment()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fSourceRange:[I

    aget v0, v0, v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMember;->fCommentRange:[I

    aget v2, v2, v1

    if-lez v2, :cond_0

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fDocument:[C

    sub-int/2addr v2, v0

    invoke-virtual {p1, v3, v0, v2}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append([CII)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMMember;->getComment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMember;->fCommentRange:[I

    const/4 v2, 0x1

    aget v0, v0, v2

    if-ltz v0, :cond_2

    add-int/2addr v0, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fSourceRange:[I

    aget v0, v0, v1

    :goto_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMember;->fModifierRange:[I

    aget v1, v3, v1

    if-ltz v1, :cond_3

    :goto_1
    sub-int/2addr v1, v2

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMMember;->getMemberDeclarationStartPosition()I

    move-result v1

    goto :goto_1

    :goto_2
    if-lt v1, v0, :cond_4

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fDocument:[C

    add-int/2addr v1, v2

    sub-int/2addr v1, v0

    invoke-virtual {p1, v3, v0, v1}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append([CII)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    :cond_4
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMMember;->getModifiersText()[C

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append([C)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    return-void
.end method

.method public abstract appendSimpleContents(Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;)V
.end method

.method public appendString([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, p1

    aput-object p2, v0, p1

    return-object v0
.end method

.method public generateFlags()[C
    .locals 4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMMember;->getFlags()I

    move-result v0

    invoke-static {v0}, Lorg/eclipse/jdt/core/Flags;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [C

    const/16 v2, 0x20

    const/4 v3, 0x0

    aput-char v2, v1, v3

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C)[C

    move-result-object v0

    return-object v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->becomeDetailed()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMMember;->hasComment()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMember;->fComment:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fDocument:[C

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMember;->fCommentRange:[I

    const/4 v3, 0x0

    aget v3, v2, v3

    const/4 v4, 0x1

    aget v2, v2, v4

    add-int/2addr v2, v4

    sub-int/2addr v2, v3

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFlags()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMember;->fFlags:I

    return v0
.end method

.method public abstract getMemberDeclarationStartPosition()I
.end method

.method public getModifiersText()[C
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMember;->fModifiers:[C

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMember;->fModifierRange:[I

    const/4 v1, 0x0

    aget v1, v0, v1

    if-gez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fDocument:[C

    const/4 v3, 0x1

    aget v0, v0, v3

    add-int/2addr v0, v3

    invoke-static {v2, v1, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public hasBody()Z
    .locals 1

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->getMask(I)Z

    move-result v0

    return v0
.end method

.method public hasComment()Z
    .locals 1

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->getMask(I)Z

    move-result v0

    return v0
.end method

.method public offset(I)V
    .locals 1

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->offset(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMember;->fCommentRange:[I

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->offsetRange([II)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMember;->fModifierRange:[I

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->offsetRange([II)V

    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->becomeDetailed()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMember;->fComment:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fragment()V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/jdom/DOMMember;->setHasComment(Z)V

    if-eqz p1, :cond_1

    const-string v0, "@deprecated"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_1

    iget p1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMember;->fFlags:I

    const/high16 v0, 0x100000

    or-int/2addr p1, v0

    iput p1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMember;->fFlags:I

    return-void

    :cond_1
    iget p1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMember;->fFlags:I

    const v0, -0x100001

    and-int/2addr p1, v0

    iput p1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMember;->fFlags:I

    return-void
.end method

.method public setFlags(I)V
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->becomeDetailed()V

    iget v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMember;->fFlags:I

    invoke-static {v0}, Lorg/eclipse/jdt/core/Flags;->isDeprecated(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x100000

    or-int/2addr p1, v0

    iput p1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMember;->fFlags:I

    goto :goto_0

    :cond_0
    const v0, -0x100001

    and-int/2addr p1, v0

    iput p1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMember;->fFlags:I

    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fragment()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMMember;->generateFlags()[C

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMember;->fModifiers:[C

    return-void
.end method

.method public setHasBody(Z)V
    .locals 1

    const/16 v0, 0x10

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->setMask(IZ)V

    return-void
.end method

.method public setHasComment(Z)V
    .locals 1

    const/16 v0, 0x20

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->setMask(IZ)V

    return-void
.end method

.method public setStartPosition(I)V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMember;->fCommentRange:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    if-ltz v2, :cond_0

    aput p1, v0, v1

    :cond_0
    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->setStartPosition(I)V

    return-void
.end method

.method public shareContents(Lorg/eclipse/jdt/internal/core/jdom/DOMNode;)V
    .locals 1

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->shareContents(Lorg/eclipse/jdt/internal/core/jdom/DOMNode;)V

    check-cast p1, Lorg/eclipse/jdt/internal/core/jdom/DOMMember;

    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/jdom/DOMMember;->fComment:Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMember;->fComment:Ljava/lang/String;

    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/jdom/DOMMember;->fCommentRange:[I

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->rangeCopy([I)[I

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMember;->fCommentRange:[I

    iget v0, p1, Lorg/eclipse/jdt/internal/core/jdom/DOMMember;->fFlags:I

    iput v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMember;->fFlags:I

    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/jdom/DOMMember;->fModifiers:[C

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMember;->fModifiers:[C

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/jdom/DOMMember;->fModifierRange:[I

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->rangeCopy([I)[I

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMMember;->fModifierRange:[I

    return-void
.end method
