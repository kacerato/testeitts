.class final Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;,
        Lorg/google/googlejavaformat/java/javadoc/JavadocWriter$AutoIndent;
    }
.end annotation


# static fields
.field private static final START_OF_LINE_TOKENS:Lcom/google/common/collect/r1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/r1<",
            "Lorg/google/googlejavaformat/java/javadoc/Token$Type;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private atStartOfLine:Z

.field private final blockIndent:I

.field private continuingFooterTag:Z

.field private final continuingListCount:Lorg/google/googlejavaformat/java/javadoc/NestingCounter;

.field private final continuingListItemCount:Lorg/google/googlejavaformat/java/javadoc/NestingCounter;

.field private continuingListItemOfInnermostList:Z

.field private indentForMoeEndStripComment:I

.field private final options:Lorg/google/googlejavaformat/java/javadoc/JavadocOptions;

.field private final output:Ljava/lang/StringBuilder;

.field private final postWriteModifiedContinuingListCount:Lorg/google/googlejavaformat/java/javadoc/NestingCounter;

.field private remainingOnLine:I

.field private requestedMoeBeginStripComment:Lorg/google/googlejavaformat/java/javadoc/Token;

.field private requestedWhitespace:Lorg/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;

.field private wroteAnythingSignificant:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lorg/google/googlejavaformat/java/javadoc/Token$Type;->LIST_ITEM_OPEN_TAG:Lorg/google/googlejavaformat/java/javadoc/Token$Type;

    sget-object v1, Lorg/google/googlejavaformat/java/javadoc/Token$Type;->PARAGRAPH_OPEN_TAG:Lorg/google/googlejavaformat/java/javadoc/Token$Type;

    sget-object v2, Lorg/google/googlejavaformat/java/javadoc/Token$Type;->HEADER_OPEN_TAG:Lorg/google/googlejavaformat/java/javadoc/Token$Type;

    filled-new-array {v1, v2}, [Lorg/google/googlejavaformat/java/javadoc/Token$Type;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/D2;->l(Ljava/lang/Enum;[Ljava/lang/Enum;)Lcom/google/common/collect/r1;

    move-result-object v0

    sput-object v0, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->START_OF_LINE_TOKENS:Lcom/google/common/collect/r1;

    return-void
.end method

.method public constructor <init>(ILorg/google/googlejavaformat/java/javadoc/JavadocOptions;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "blockIndent",
            "options"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->output:Ljava/lang/StringBuilder;

    new-instance v0, Lorg/google/googlejavaformat/java/javadoc/NestingCounter;

    invoke-direct {v0}, Lorg/google/googlejavaformat/java/javadoc/NestingCounter;-><init>()V

    iput-object v0, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->continuingListItemCount:Lorg/google/googlejavaformat/java/javadoc/NestingCounter;

    new-instance v0, Lorg/google/googlejavaformat/java/javadoc/NestingCounter;

    invoke-direct {v0}, Lorg/google/googlejavaformat/java/javadoc/NestingCounter;-><init>()V

    iput-object v0, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->continuingListCount:Lorg/google/googlejavaformat/java/javadoc/NestingCounter;

    new-instance v0, Lorg/google/googlejavaformat/java/javadoc/NestingCounter;

    invoke-direct {v0}, Lorg/google/googlejavaformat/java/javadoc/NestingCounter;-><init>()V

    iput-object v0, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->postWriteModifiedContinuingListCount:Lorg/google/googlejavaformat/java/javadoc/NestingCounter;

    sget-object v0, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;->NONE:Lorg/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;

    iput-object v0, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->requestedWhitespace:Lorg/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;

    iput p1, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->blockIndent:I

    invoke-static {p2}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/google/googlejavaformat/java/javadoc/JavadocOptions;

    iput-object p1, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->options:Lorg/google/googlejavaformat/java/javadoc/JavadocOptions;

    return-void
.end method

.method private appendSpaces(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "count"
        }
    .end annotation

    iget-object v0, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->output:Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-static {v1, p1}, Lw2/P;->j(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private innerIndent()I
    .locals 2

    iget-object v0, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->continuingListItemCount:Lorg/google/googlejavaformat/java/javadoc/NestingCounter;

    invoke-virtual {v0}, Lorg/google/googlejavaformat/java/javadoc/NestingCounter;->value()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->continuingListCount:Lorg/google/googlejavaformat/java/javadoc/NestingCounter;

    invoke-virtual {v1}, Lorg/google/googlejavaformat/java/javadoc/NestingCounter;->value()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-boolean v1, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->continuingFooterTag:Z

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x4

    :cond_0
    return v0
.end method

.method private requestBlankLine()V
    .locals 1

    sget-object v0, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;->BLANK_LINE:Lorg/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;

    invoke-direct {p0, v0}, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->requestWhitespace(Lorg/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;)V

    return-void
.end method

.method private requestNewline()V
    .locals 1

    sget-object v0, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;->NEWLINE:Lorg/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;

    invoke-direct {p0, v0}, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->requestWhitespace(Lorg/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;)V

    return-void
.end method

.method private requestWhitespace(Lorg/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requestedWhitespace"
        }
    .end annotation

    .line 2
    invoke-static {}, Lcom/google/common/collect/Ordering;->A()Lcom/google/common/collect/Ordering;

    move-result-object v0

    iget-object v1, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->requestedWhitespace:Lorg/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;

    invoke-virtual {v0, p1, v1}, Lcom/google/common/collect/Ordering;->s(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;

    iput-object p1, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->requestedWhitespace:Lorg/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;

    return-void
.end method

.method private writeBlankLine()V
    .locals 2

    iget-object v0, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->output:Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->blockIndent:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->appendSpaces(I)V

    iget-object v0, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->output:Ljava/lang/StringBuilder;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->writeNewline()V

    return-void
.end method

.method private writeNewline()V
    .locals 1

    .line 1
    sget-object v0, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter$AutoIndent;->AUTO_INDENT:Lorg/google/googlejavaformat/java/javadoc/JavadocWriter$AutoIndent;

    invoke-direct {p0, v0}, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->writeNewline(Lorg/google/googlejavaformat/java/javadoc/JavadocWriter$AutoIndent;)V

    return-void
.end method

.method private writeNewline(Lorg/google/googlejavaformat/java/javadoc/JavadocWriter$AutoIndent;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "autoIndent"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->output:Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget v0, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->blockIndent:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->appendSpaces(I)V

    .line 4
    iget-object v0, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->output:Ljava/lang/StringBuilder;

    const-string v2, "*"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {p0, v1}, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->appendSpaces(I)V

    .line 6
    iget-object v0, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->options:Lorg/google/googlejavaformat/java/javadoc/JavadocOptions;

    invoke-interface {v0}, Lorg/google/googlejavaformat/java/javadoc/JavadocOptions;->maxLineLength()I

    move-result v0

    iget v2, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->blockIndent:I

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->remainingOnLine:I

    .line 7
    sget-object v0, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter$AutoIndent;->AUTO_INDENT:Lorg/google/googlejavaformat/java/javadoc/JavadocWriter$AutoIndent;

    if-ne p1, v0, :cond_0

    .line 8
    invoke-direct {p0}, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->innerIndent()I

    move-result p1

    invoke-direct {p0, p1}, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->appendSpaces(I)V

    .line 9
    iget p1, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->remainingOnLine:I

    invoke-direct {p0}, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->innerIndent()I

    move-result v0

    sub-int/2addr p1, v0

    iput p1, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->remainingOnLine:I

    .line 10
    :cond_0
    iput-boolean v1, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->atStartOfLine:Z

    return-void
.end method

.method private writeToken(Lorg/google/googlejavaformat/java/javadoc/Token;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation

    iget-object v0, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->requestedMoeBeginStripComment:Lorg/google/googlejavaformat/java/javadoc/Token;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->requestNewline()V

    :cond_0
    iget-object v0, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->requestedWhitespace:Lorg/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;

    sget-object v1, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;->BLANK_LINE:Lorg/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->postWriteModifiedContinuingListCount:Lorg/google/googlejavaformat/java/javadoc/NestingCounter;

    invoke-virtual {v0}, Lorg/google/googlejavaformat/java/javadoc/NestingCounter;->isPositive()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->continuingFooterTag:Z

    if-eqz v0, :cond_2

    :cond_1
    sget-object v0, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;->NEWLINE:Lorg/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;

    iput-object v0, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->requestedWhitespace:Lorg/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;

    :cond_2
    iget-object v0, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->requestedWhitespace:Lorg/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->writeBlankLine()V

    sget-object v0, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;->NONE:Lorg/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;

    iput-object v0, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->requestedWhitespace:Lorg/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;

    goto :goto_0

    :cond_3
    sget-object v1, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;->NEWLINE:Lorg/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;

    if-ne v0, v1, :cond_4

    invoke-direct {p0}, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->writeNewline()V

    sget-object v0, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;->NONE:Lorg/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;

    iput-object v0, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->requestedWhitespace:Lorg/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;

    :cond_4
    :goto_0
    iget-object v0, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->requestedWhitespace:Lorg/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;

    sget-object v1, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;->WHITESPACE:Lorg/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_5

    move v0, v3

    goto :goto_1

    :cond_5
    move v0, v2

    :goto_1
    iget-boolean v1, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->atStartOfLine:Z

    if-nez v1, :cond_6

    invoke-virtual {p1}, Lorg/google/googlejavaformat/java/javadoc/Token;->length()I

    move-result v1

    add-int/2addr v1, v0

    iget v4, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->remainingOnLine:I

    if-le v1, v4, :cond_6

    invoke-direct {p0}, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->writeNewline()V

    :cond_6
    iget-boolean v1, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->atStartOfLine:Z

    if-nez v1, :cond_7

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->output:Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->remainingOnLine:I

    sub-int/2addr v0, v3

    iput v0, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->remainingOnLine:I

    :cond_7
    iget-object v0, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->requestedMoeBeginStripComment:Lorg/google/googlejavaformat/java/javadoc/Token;

    if-eqz v0, :cond_8

    iget-object v1, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->output:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/google/googlejavaformat/java/javadoc/Token;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->requestedMoeBeginStripComment:Lorg/google/googlejavaformat/java/javadoc/Token;

    invoke-direct {p0}, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->innerIndent()I

    move-result v0

    iput v0, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->indentForMoeEndStripComment:I

    invoke-direct {p0}, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->requestNewline()V

    invoke-direct {p0, p1}, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->writeToken(Lorg/google/googlejavaformat/java/javadoc/Token;)V

    return-void

    :cond_8
    iget-object v0, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->output:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/java/javadoc/Token;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->START_OF_LINE_TOKENS:Lcom/google/common/collect/r1;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/java/javadoc/Token;->getType()Lorg/google/googlejavaformat/java/javadoc/Token$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/c1;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    iput-boolean v2, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->atStartOfLine:Z

    :cond_9
    iget v0, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->remainingOnLine:I

    invoke-virtual {p1}, Lorg/google/googlejavaformat/java/javadoc/Token;->length()I

    move-result p1

    sub-int/2addr v0, p1

    iput v0, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->remainingOnLine:I

    sget-object p1, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;->NONE:Lorg/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;

    iput-object p1, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->requestedWhitespace:Lorg/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;

    iput-boolean v3, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->wroteAnythingSignificant:Z

    return-void
.end method


# virtual methods
.method public requestMoeBeginStripComment(Lorg/google/googlejavaformat/java/javadoc/Token;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/google/googlejavaformat/java/javadoc/Token;

    iput-object p1, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->requestedMoeBeginStripComment:Lorg/google/googlejavaformat/java/javadoc/Token;

    return-void
.end method

.method public requestWhitespace()V
    .locals 1

    .line 1
    sget-object v0, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;->WHITESPACE:Lorg/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;

    invoke-direct {p0, v0}, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->requestWhitespace(Lorg/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->output:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeBeginJavadoc()V
    .locals 2

    iget-object v0, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->output:Ljava/lang/StringBuilder;

    const-string v1, "/**"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->writeNewline()V

    return-void
.end method

.method public writeBlockquoteOpenOrClose(Lorg/google/googlejavaformat/java/javadoc/Token;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation

    invoke-direct {p0}, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->requestBlankLine()V

    invoke-direct {p0, p1}, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->writeToken(Lorg/google/googlejavaformat/java/javadoc/Token;)V

    invoke-direct {p0}, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->requestBlankLine()V

    return-void
.end method

.method public writeBr(Lorg/google/googlejavaformat/java/javadoc/Token;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->writeToken(Lorg/google/googlejavaformat/java/javadoc/Token;)V

    invoke-direct {p0}, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->requestNewline()V

    return-void
.end method

.method public writeCodeClose(Lorg/google/googlejavaformat/java/javadoc/Token;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->writeToken(Lorg/google/googlejavaformat/java/javadoc/Token;)V

    return-void
.end method

.method public writeCodeOpen(Lorg/google/googlejavaformat/java/javadoc/Token;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->writeToken(Lorg/google/googlejavaformat/java/javadoc/Token;)V

    return-void
.end method

.method public writeEndJavadoc()V
    .locals 2

    iget-object v0, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->output:Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->blockIndent:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->appendSpaces(I)V

    iget-object v0, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->output:Ljava/lang/StringBuilder;

    const-string v1, "*/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public writeFooterJavadocTagStart(Lorg/google/googlejavaformat/java/javadoc/Token;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->continuingListItemOfInnermostList:Z

    iget-object v1, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->continuingListItemCount:Lorg/google/googlejavaformat/java/javadoc/NestingCounter;

    invoke-virtual {v1}, Lorg/google/googlejavaformat/java/javadoc/NestingCounter;->reset()V

    iget-object v1, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->continuingListCount:Lorg/google/googlejavaformat/java/javadoc/NestingCounter;

    invoke-virtual {v1}, Lorg/google/googlejavaformat/java/javadoc/NestingCounter;->reset()V

    iget-object v1, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->postWriteModifiedContinuingListCount:Lorg/google/googlejavaformat/java/javadoc/NestingCounter;

    invoke-virtual {v1}, Lorg/google/googlejavaformat/java/javadoc/NestingCounter;->reset()V

    iget-boolean v1, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->wroteAnythingSignificant:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->continuingFooterTag:Z

    if-nez v1, :cond_1

    invoke-direct {p0}, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->requestBlankLine()V

    goto :goto_0

    :cond_1
    iput-boolean v0, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->continuingFooterTag:Z

    invoke-direct {p0}, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->requestNewline()V

    :goto_0
    invoke-direct {p0, p1}, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->writeToken(Lorg/google/googlejavaformat/java/javadoc/Token;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->continuingFooterTag:Z

    return-void
.end method

.method public writeHeaderClose(Lorg/google/googlejavaformat/java/javadoc/Token;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->writeToken(Lorg/google/googlejavaformat/java/javadoc/Token;)V

    invoke-direct {p0}, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->requestBlankLine()V

    return-void
.end method

.method public writeHeaderOpen(Lorg/google/googlejavaformat/java/javadoc/Token;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation

    invoke-direct {p0}, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->requestBlankLine()V

    invoke-direct {p0, p1}, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->writeToken(Lorg/google/googlejavaformat/java/javadoc/Token;)V

    return-void
.end method

.method public writeHtmlComment(Lorg/google/googlejavaformat/java/javadoc/Token;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation

    invoke-direct {p0}, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->requestNewline()V

    invoke-direct {p0, p1}, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->writeToken(Lorg/google/googlejavaformat/java/javadoc/Token;)V

    invoke-direct {p0}, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->requestNewline()V

    return-void
.end method

.method public writeLineBreakNoAutoIndent()V
    .locals 1

    sget-object v0, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter$AutoIndent;->NO_AUTO_INDENT:Lorg/google/googlejavaformat/java/javadoc/JavadocWriter$AutoIndent;

    invoke-direct {p0, v0}, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->writeNewline(Lorg/google/googlejavaformat/java/javadoc/JavadocWriter$AutoIndent;)V

    return-void
.end method

.method public writeListClose(Lorg/google/googlejavaformat/java/javadoc/Token;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation

    invoke-direct {p0}, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->requestNewline()V

    iget-object v0, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->continuingListItemCount:Lorg/google/googlejavaformat/java/javadoc/NestingCounter;

    invoke-virtual {v0}, Lorg/google/googlejavaformat/java/javadoc/NestingCounter;->decrementIfPositive()V

    iget-object v0, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->continuingListCount:Lorg/google/googlejavaformat/java/javadoc/NestingCounter;

    invoke-virtual {v0}, Lorg/google/googlejavaformat/java/javadoc/NestingCounter;->decrementIfPositive()V

    invoke-direct {p0, p1}, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->writeToken(Lorg/google/googlejavaformat/java/javadoc/Token;)V

    iget-object p1, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->postWriteModifiedContinuingListCount:Lorg/google/googlejavaformat/java/javadoc/NestingCounter;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/java/javadoc/NestingCounter;->decrementIfPositive()V

    invoke-direct {p0}, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->requestBlankLine()V

    return-void
.end method

.method public writeListItemOpen(Lorg/google/googlejavaformat/java/javadoc/Token;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation

    invoke-direct {p0}, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->requestNewline()V

    iget-boolean v0, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->continuingListItemOfInnermostList:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->continuingListItemOfInnermostList:Z

    iget-object v0, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->continuingListItemCount:Lorg/google/googlejavaformat/java/javadoc/NestingCounter;

    invoke-virtual {v0}, Lorg/google/googlejavaformat/java/javadoc/NestingCounter;->decrementIfPositive()V

    :cond_0
    invoke-direct {p0, p1}, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->writeToken(Lorg/google/googlejavaformat/java/javadoc/Token;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->continuingListItemOfInnermostList:Z

    iget-object p1, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->continuingListItemCount:Lorg/google/googlejavaformat/java/javadoc/NestingCounter;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/java/javadoc/NestingCounter;->increment()V

    return-void
.end method

.method public writeListOpen(Lorg/google/googlejavaformat/java/javadoc/Token;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation

    invoke-direct {p0}, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->requestBlankLine()V

    invoke-direct {p0, p1}, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->writeToken(Lorg/google/googlejavaformat/java/javadoc/Token;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->continuingListItemOfInnermostList:Z

    iget-object p1, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->continuingListCount:Lorg/google/googlejavaformat/java/javadoc/NestingCounter;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/java/javadoc/NestingCounter;->increment()V

    iget-object p1, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->postWriteModifiedContinuingListCount:Lorg/google/googlejavaformat/java/javadoc/NestingCounter;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/java/javadoc/NestingCounter;->increment()V

    invoke-direct {p0}, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->requestNewline()V

    return-void
.end method

.method public writeLiteral(Lorg/google/googlejavaformat/java/javadoc/Token;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->writeToken(Lorg/google/googlejavaformat/java/javadoc/Token;)V

    return-void
.end method

.method public writeMoeEndStripComment(Lorg/google/googlejavaformat/java/javadoc/Token;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->writeLineBreakNoAutoIndent()V

    iget v0, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->indentForMoeEndStripComment:I

    invoke-direct {p0, v0}, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->appendSpaces(I)V

    invoke-direct {p0, p1}, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->writeToken(Lorg/google/googlejavaformat/java/javadoc/Token;)V

    invoke-direct {p0}, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->requestNewline()V

    return-void
.end method

.method public writeParagraphOpen(Lorg/google/googlejavaformat/java/javadoc/Token;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation

    iget-boolean v0, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->wroteAnythingSignificant:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->requestBlankLine()V

    invoke-direct {p0, p1}, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->writeToken(Lorg/google/googlejavaformat/java/javadoc/Token;)V

    return-void
.end method

.method public writePreClose(Lorg/google/googlejavaformat/java/javadoc/Token;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->writeToken(Lorg/google/googlejavaformat/java/javadoc/Token;)V

    invoke-direct {p0}, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->requestBlankLine()V

    return-void
.end method

.method public writePreOpen(Lorg/google/googlejavaformat/java/javadoc/Token;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation

    invoke-direct {p0}, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->requestBlankLine()V

    invoke-direct {p0, p1}, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->writeToken(Lorg/google/googlejavaformat/java/javadoc/Token;)V

    return-void
.end method

.method public writeTableClose(Lorg/google/googlejavaformat/java/javadoc/Token;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->writeToken(Lorg/google/googlejavaformat/java/javadoc/Token;)V

    invoke-direct {p0}, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->requestBlankLine()V

    return-void
.end method

.method public writeTableOpen(Lorg/google/googlejavaformat/java/javadoc/Token;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation

    invoke-direct {p0}, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->requestBlankLine()V

    invoke-direct {p0, p1}, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->writeToken(Lorg/google/googlejavaformat/java/javadoc/Token;)V

    return-void
.end method
