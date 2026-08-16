.class public Lorg/eclipse/jdt/internal/formatter/Token;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;,
        Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private align:I

.field private emptyLineIndentAdjustment:I

.field private indent:I

.field private internalStructure:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/formatter/Token;",
            ">;"
        }
    .end annotation
.end field

.field private lineBreaksAfter:I

.field private lineBreaksBefore:I

.field private nextLineOnWrap:Z

.field private nlsTagToken:Lorg/eclipse/jdt/internal/formatter/Token;

.field public final originalEnd:I

.field public final originalStart:I

.field private spaceAfter:Z

.field private spaceBefore:Z

.field private toEscape:Z

.field public final tokenType:I

.field private wrapPolicy:Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;

.field private wrapped:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lorg/eclipse/jdt/internal/formatter/Token;->originalStart:I

    .line 3
    iput p2, p0, Lorg/eclipse/jdt/internal/formatter/Token;->originalEnd:I

    .line 4
    iput p3, p0, Lorg/eclipse/jdt/internal/formatter/Token;->tokenType:I

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/formatter/Token;)V
    .locals 3

    .line 5
    iget v0, p1, Lorg/eclipse/jdt/internal/formatter/Token;->originalStart:I

    iget v1, p1, Lorg/eclipse/jdt/internal/formatter/Token;->originalEnd:I

    iget v2, p1, Lorg/eclipse/jdt/internal/formatter/Token;->tokenType:I

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/eclipse/jdt/internal/formatter/Token;-><init>(Lorg/eclipse/jdt/internal/formatter/Token;III)V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/formatter/Token;III)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput p2, p0, Lorg/eclipse/jdt/internal/formatter/Token;->originalStart:I

    .line 8
    iput p3, p0, Lorg/eclipse/jdt/internal/formatter/Token;->originalEnd:I

    .line 9
    iput p4, p0, Lorg/eclipse/jdt/internal/formatter/Token;->tokenType:I

    .line 10
    iget-boolean p2, p1, Lorg/eclipse/jdt/internal/formatter/Token;->spaceBefore:Z

    iput-boolean p2, p0, Lorg/eclipse/jdt/internal/formatter/Token;->spaceBefore:Z

    .line 11
    iget-boolean p2, p1, Lorg/eclipse/jdt/internal/formatter/Token;->spaceAfter:Z

    iput-boolean p2, p0, Lorg/eclipse/jdt/internal/formatter/Token;->spaceAfter:Z

    .line 12
    iget p2, p1, Lorg/eclipse/jdt/internal/formatter/Token;->lineBreaksBefore:I

    iput p2, p0, Lorg/eclipse/jdt/internal/formatter/Token;->lineBreaksBefore:I

    .line 13
    iget p2, p1, Lorg/eclipse/jdt/internal/formatter/Token;->lineBreaksAfter:I

    iput p2, p0, Lorg/eclipse/jdt/internal/formatter/Token;->lineBreaksAfter:I

    .line 14
    iget p2, p1, Lorg/eclipse/jdt/internal/formatter/Token;->indent:I

    iput p2, p0, Lorg/eclipse/jdt/internal/formatter/Token;->indent:I

    .line 15
    iget-boolean p2, p1, Lorg/eclipse/jdt/internal/formatter/Token;->nextLineOnWrap:Z

    iput-boolean p2, p0, Lorg/eclipse/jdt/internal/formatter/Token;->nextLineOnWrap:Z

    .line 16
    iget-object p2, p1, Lorg/eclipse/jdt/internal/formatter/Token;->wrapPolicy:Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/formatter/Token;->wrapPolicy:Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;

    .line 17
    iget-object p2, p1, Lorg/eclipse/jdt/internal/formatter/Token;->nlsTagToken:Lorg/eclipse/jdt/internal/formatter/Token;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/formatter/Token;->nlsTagToken:Lorg/eclipse/jdt/internal/formatter/Token;

    .line 18
    iget-object p1, p1, Lorg/eclipse/jdt/internal/formatter/Token;->internalStructure:Ljava/util/List;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/formatter/Token;->internalStructure:Ljava/util/List;

    return-void
.end method

.method public static fromCurrent(Lorg/eclipse/jdt/internal/compiler/parser/Scanner;I)Lorg/eclipse/jdt/internal/formatter/Token;
    .locals 4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenStartPosition()I

    move-result v0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenEndPosition()I

    move-result v1

    const/16 v2, 0x3e9

    if-ne p1, v2, :cond_2

    :goto_0
    if-ge v1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    aget-char v2, v2, v1

    const/16 v3, 0xd

    if-eq v2, v3, :cond_1

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    new-instance p0, Lorg/eclipse/jdt/internal/formatter/Token;

    invoke-direct {p0, v0, v1, p1}, Lorg/eclipse/jdt/internal/formatter/Token;-><init>(III)V

    return-object p0
.end method


# virtual methods
.method public breakAfter()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/formatter/Token;->putLineBreaksAfter(I)V

    return-void
.end method

.method public breakBefore()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/formatter/Token;->putLineBreaksBefore(I)V

    return-void
.end method

.method public clearLineBreaksAfter()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/Token;->lineBreaksAfter:I

    return-void
.end method

.method public clearLineBreaksBefore()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/Token;->lineBreaksBefore:I

    return-void
.end method

.method public clearSpaceAfter()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/Token;->spaceAfter:Z

    return-void
.end method

.method public clearSpaceBefore()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/Token;->spaceBefore:Z

    return-void
.end method

.method public countChars()I
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/formatter/Token;->originalEnd:I

    iget v1, p0, Lorg/eclipse/jdt/internal/formatter/Token;->originalStart:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getAlign()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/formatter/Token;->align:I

    return v0
.end method

.method public getEmptyLineIndentAdjustment()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/formatter/Token;->emptyLineIndentAdjustment:I

    return v0
.end method

.method public getIndent()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/formatter/Token;->indent:I

    return v0
.end method

.method public getInternalStructure()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/formatter/Token;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/Token;->internalStructure:Ljava/util/List;

    return-object v0
.end method

.method public getLineBreaksAfter()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/formatter/Token;->lineBreaksAfter:I

    return v0
.end method

.method public getLineBreaksBefore()I
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/Token;->wrapped:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/formatter/Token;->lineBreaksBefore:I

    :goto_0
    return v0
.end method

.method public getNLSTag()Lorg/eclipse/jdt/internal/formatter/Token;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/Token;->nlsTagToken:Lorg/eclipse/jdt/internal/formatter/Token;

    return-object v0
.end method

.method public getWrapPolicy()Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/Token;->wrapPolicy:Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;

    return-object v0
.end method

.method public hasNLSTag()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/Token;->nlsTagToken:Lorg/eclipse/jdt/internal/formatter/Token;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public indent()V
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/formatter/Token;->indent:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/Token;->indent:I

    return-void
.end method

.method public isComment()Z
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/formatter/Token;->tokenType:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isNextLineOnWrap()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/Token;->nextLineOnWrap:Z

    return v0
.end method

.method public isSpaceAfter()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/Token;->spaceAfter:Z

    return v0
.end method

.method public isSpaceBefore()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/Token;->spaceBefore:Z

    return v0
.end method

.method public isToEscape()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/Token;->toEscape:Z

    return v0
.end method

.method public isWrappable()Z
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/Token;->wrapPolicy:Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;->wrapMode:Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;

    sget-object v1, Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;->DISABLED:Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;

    if-eq v0, v1, :cond_0

    sget-object v1, Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;->BLOCK_INDENT:Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public putLineBreaksAfter(I)V
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/formatter/Token;->lineBreaksAfter:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lorg/eclipse/jdt/internal/formatter/Token;->lineBreaksAfter:I

    return-void
.end method

.method public putLineBreaksBefore(I)V
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/formatter/Token;->lineBreaksBefore:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lorg/eclipse/jdt/internal/formatter/Token;->lineBreaksBefore:I

    return-void
.end method

.method public setAlign(I)V
    .locals 0

    iput p1, p0, Lorg/eclipse/jdt/internal/formatter/Token;->align:I

    return-void
.end method

.method public setEmptyLineIndentAdjustment(I)V
    .locals 0

    iput p1, p0, Lorg/eclipse/jdt/internal/formatter/Token;->emptyLineIndentAdjustment:I

    return-void
.end method

.method public setIndent(I)V
    .locals 0

    iput p1, p0, Lorg/eclipse/jdt/internal/formatter/Token;->indent:I

    return-void
.end method

.method public setInternalStructure(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/formatter/Token;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/eclipse/jdt/internal/formatter/Token;->internalStructure:Ljava/util/List;

    return-void
.end method

.method public setNLSTag(Lorg/eclipse/jdt/internal/formatter/Token;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/formatter/Token;->nlsTagToken:Lorg/eclipse/jdt/internal/formatter/Token;

    return-void
.end method

.method public setNextLineOnWrap()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/Token;->nextLineOnWrap:Z

    return-void
.end method

.method public setToEscape(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/formatter/Token;->toEscape:Z

    return-void
.end method

.method public setWrapPolicy(Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/formatter/Token;->wrapPolicy:Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;

    return-void
.end method

.method public setWrapped(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/formatter/Token;->wrapped:Z

    return-void
.end method

.method public spaceAfter()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/Token;->spaceAfter:Z

    return-void
.end method

.method public spaceBefore()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/Token;->spaceBefore:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/eclipse/jdt/internal/formatter/Token;->originalStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/eclipse/jdt/internal/formatter/Token;->originalEnd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lorg/eclipse/jdt/internal/formatter/Token;->originalStart:I

    iget v1, p0, Lorg/eclipse/jdt/internal/formatter/Token;->originalEnd:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public unindent()V
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/formatter/Token;->indent:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/Token;->indent:I

    return-void
.end method
