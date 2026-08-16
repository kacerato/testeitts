.class public Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;
    }
.end annotation


# static fields
.field static final C_THROWN:C = '|'


# instance fields
.field private hasModuleName:Z

.field private hasTypeName:Z

.field private isMalformed:Z

.field private isParsingThrownExceptions:Z

.field keyStart:I

.field private parsingPaused:Z

.field private scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->hasTypeName:Z

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->isParsingThrownExceptions:Z

    .line 6
    new-instance v0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;-><init>([C)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;)V
    .locals 1

    .line 1
    const-string v0, ""

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    return-void
.end method

.method private parseAnnotation()V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    iget v0, v0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->token:I

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->newParser()Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->parse()V

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->consumeParser(Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->consumeAnnotation()V

    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->isMalformed:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->isMalformed:Z

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    iput v0, v1, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->token:I

    return-void
.end method

.method private parseCapture()V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->nextToken()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->parseCaptureWildcard()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->nextToken()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->malformedKey()V

    return-void

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->getTokenSource()[C

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->consumeCapture(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->skipTypeEnd()V

    return-void
.end method

.method private parseCapture18()V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->nextToken()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->skipRankStart()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->skipRank()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->getTokenSource()[C

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->skipCapture18Delim()V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->skipRank()V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->getTokenSource()[C

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->skipRankEnd()V

    invoke-virtual {p0, v1, v0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->consumeCapture18ID(II)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->skipTypeEnd()V

    return-void
.end method

.method private parseCaptureWildcard()V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    iget v0, v0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->token:I

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->newParser()Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->parse()V

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->consumeParser(Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;)V

    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->isMalformed:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->isMalformed:Z

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    iput v0, v1, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->token:I

    return-void
.end method

.method private parseField()V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->getTokenSource()[C

    move-result-object v0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->parseReturnType()V

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->consumeField([C)V

    return-void
.end method

.method private parseFullyQualifiedName()V
    .locals 6

    const/4 v0, 0x4

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->isAtCaptureStart()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->parseCapture()V

    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->hasTypeName:Z

    return-void

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->isAtCapture18Start()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->parseCapture18()V

    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->hasTypeName:Z

    return-void

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->nextToken()I

    move-result v1

    if-eqz v1, :cond_b

    const/4 v3, 0x1

    if-eq v1, v3, :cond_9

    const/16 v4, 0xa

    if-eq v1, v0, :cond_6

    const/4 v5, 0x7

    if-eq v1, v5, :cond_3

    if-eq v1, v4, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->malformedKey()V

    return-void

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    iget v1, v0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->start:I

    sub-int/2addr v1, v3

    iput v1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->keyStart:I

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->getTokenSource()[C

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->consumeBaseType([C)V

    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->hasTypeName:Z

    goto/16 :goto_0

    :cond_3
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->getTokenSource()[C

    move-result-object v1

    const/16 v2, 0x9

    new-array v2, v2, [C

    fill-array-data v2, :array_0

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->endsWith([C[C)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->malformedKey()V

    return-void

    :cond_4
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    iget v2, v1, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->start:I

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->nextToken()I

    move-result v1

    if-ne v1, v3, :cond_a

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->getTokenSource()[C

    move-result-object v1

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    invoke-static {v1, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->malformedKey()V

    return-void

    :cond_5
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    iput v2, v0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->start:I

    sub-int/2addr v2, v3

    iput v2, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->keyStart:I

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->getTokenSource()[C

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->consumeFullyQualifiedName([C)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    iget v1, v0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->start:I

    iput v1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->keyStart:I

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->getTokenSource()[C

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->consumeArrayDimension([C)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->nextToken()I

    move-result v0

    if-eq v0, v3, :cond_8

    if-eq v0, v4, :cond_7

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->malformedKey()V

    return-void

    :cond_7
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->getTokenSource()[C

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->consumeBaseType([C)V

    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->hasTypeName:Z

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->getTokenSource()[C

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->consumeFullyQualifiedName([C)V

    goto :goto_0

    :cond_9
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    iget v1, v0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->start:I

    sub-int/2addr v1, v3

    iput v1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->keyStart:I

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->getTokenSource()[C

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->consumeFullyQualifiedName([C)V

    :cond_a
    :goto_0
    return-void

    :cond_b
    iput v2, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->keyStart:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->getTokenSource()[C

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->consumePackage([C)V

    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->hasTypeName:Z

    return-void

    nop

    :array_0
    .array-data 2
        0x2fs
        0x70s
        0x61s
        0x63s
        0x6bs
        0x61s
        0x67s
        0x65s
        0x2ds
    .end array-data

    nop

    :array_1
    .array-data 2
        0x69s
        0x6es
        0x66s
        0x6fs
    .end array-data
.end method

.method private parseGenericType()V
    .locals 2

    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->isAtParametersEnd()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->isMalformed:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->nextToken()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->malformedKey()V

    return-void

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->getTokenSource()[C

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->consumeTypeParameter([C)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->skipTypeEnd()V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private parseInnerType()V
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->isAtMemberTypeStart()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->nextToken()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_3

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->getTokenSource()[C

    move-result-object v0

    array-length v2, v0

    if-nez v2, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x0

    aget-char v2, v0, v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_5

    move v0, v1

    :goto_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->isAtMemberTypeStart()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->isMalformed:Z

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->nextToken()I

    move-result v0

    goto :goto_0

    :cond_3
    :goto_1
    const/16 v2, 0xc

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->source:[C

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    iget-object v2, v0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->source:[C

    iget v3, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->keyStart:I

    iget v0, v0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->index:I

    add-int/2addr v0, v1

    invoke-static {v2, v3, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v0

    :goto_2
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->consumeLocalType([C)V

    goto :goto_3

    :cond_5
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->consumeMemberType([C)V

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->parseInnerType()V

    :cond_6
    :goto_3
    return-void
.end method

.method private parseLocalVariable()V
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->nextToken()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->malformedKey()V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->getTokenSource()[C

    move-result-object v0

    const/4 v2, 0x0

    aget-char v3, v0, v2

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->consumeScope(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->isAtLocalVariableStart()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->malformedKey()V

    return-void

    :cond_1
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->parseLocalVariable()V

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->isAtLocalVariableStart()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->nextToken()I

    move-result v2

    if-eq v2, v1, :cond_3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->malformedKey()V

    return-void

    :cond_3
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->getTokenSource()[C

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    :cond_4
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->isAtLocalVariableStart()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->nextToken()I

    move-result v3

    if-eq v3, v1, :cond_5

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->malformedKey()V

    return-void

    :cond_5
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->getTokenSource()[C

    move-result-object v1

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([C)V

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_6
    const/4 v1, -0x1

    :goto_0
    invoke-virtual {p0, v0, v2, v1}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->consumeLocalVar([CII)V

    :goto_1
    return-void
.end method

.method private parseMethod()V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->getTokenSource()[C

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->skipMethodSignature()V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->getTokenSource()[C

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->consumeMethod([C[C)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->isAtThrownStart()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->parseThrownExceptions()V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->isAtParametersStart()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->parseParameterizedMethod()V

    :cond_1
    return-void
.end method

.method private parseModule()Z
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->isAtModuleStart()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->hasTypeName:Z

    const/4 v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->keyStart:I

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->nextToken()I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->nextToken()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->getTokenSource()[C

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->consumeModule([C)V

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->hasModuleName:Z

    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->malformedKey()V

    :cond_1
    return v1
.end method

.method private parseParameterizedMethod()V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->skipParametersStart()V

    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->isAtParametersEnd()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->isMalformed:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->parseTypeArgument()V

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->consumeParameterizedGenericMethod()V

    return-void
.end method

.method private parseParameterizedType([CZ)V
    .locals 1

    if-nez p2, :cond_1

    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->isAtParametersEnd()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->isMalformed:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->parseTypeArgument()V

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->skipParametersEnd()V

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->consumeParameterizedType([CZ)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->skipTypeEnd()V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->isAtMemberTypeStart()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->nextToken()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_3

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->getTokenSource()[C

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->isAtParametersStart()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->skipParametersStart()V

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->isAtRawTypeEnd()Z

    move-result p2

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->parseParameterizedType([CZ)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->consumeParameterizedType([CZ)V

    :cond_3
    :goto_2
    return-void
.end method

.method private parseRawType()V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->skipParametersEnd()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->consumeRawType()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->skipTypeEnd()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->isAtMemberTypeStart()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->nextToken()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->getTokenSource()[C

    move-result-object v0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->isAtParametersStart()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->skipParametersStart()V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->isAtRawTypeEnd()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->parseParameterizedType([CZ)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->consumeParameterizedType([CZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method private parseReturnType()V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    iget v1, v0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->index:I

    iget v0, v0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->token:I

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->newParser()Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->parse()V

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->consumeParser(Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;)V

    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->isMalformed:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->isMalformed:Z

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    iput v0, v1, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->token:I

    return-void
.end method

.method private parseSecondaryType()V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->isAtSecondaryTypeStart()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->nextToken()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->getTokenSource()[C

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->consumeSecondaryType([C)V

    :cond_1
    :goto_0
    return-void
.end method

.method private parseThrownExceptions()V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    iget v0, v0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->token:I

    :goto_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->isAtThrownStart()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->isMalformed:Z

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->skipThrownStart()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->newParser()Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->isParsingThrownExceptions:Z

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->parse()V

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->consumeParser(Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->consumeException()V

    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->isMalformed:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->isMalformed:Z

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    iput v0, v1, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->token:I

    return-void
.end method

.method private parseTypeArgument()V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    iget v0, v0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->token:I

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->newParser()Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->parse()V

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->consumeParser(Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;)V

    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->isMalformed:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->isMalformed:Z

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    iput v0, v1, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->token:I

    return-void
.end method

.method private parseTypeVariable()V
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->nextToken()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->malformedKey()V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->getTokenSource()[C

    move-result-object v0

    array-length v2, v0

    if-lez v2, :cond_1

    const/4 v2, 0x0

    aget-char v3, v0, v2

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x54

    invoke-static {v3, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[C)I

    move-result v3

    invoke-static {v0, v2, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v2

    add-int/2addr v3, v1

    array-length v1, v0

    invoke-static {v0, v3, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v2, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    :goto_0
    invoke-virtual {p0, v2, v0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->consumeTypeVariable([C[C)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->skipTypeEnd()V

    return-void
.end method

.method private parseTypeWithCapture()V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->nextToken()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    iget v0, v0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->token:I

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->newParser()Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->parse()V

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->consumeParser(Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->consumeTypeWithCapture()V

    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->isMalformed:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->isMalformed:Z

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    iput v0, v1, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->token:I

    return-void
.end method

.method private parseWildcard()V
    .locals 4

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->parseWildcardRank()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->nextToken()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->getTokenSource()[C

    move-result-object v0

    array-length v1, v0

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->malformedKey()V

    return-void

    :cond_1
    const/4 v1, 0x0

    aget-char v0, v0, v1

    const/16 v2, 0x2a

    const/4 v3, -0x1

    if-eq v0, v2, :cond_4

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_3

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    :cond_4
    :goto_0
    if-ne v1, v3, :cond_5

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->malformedKey()V

    return-void

    :cond_5
    if-eqz v1, :cond_6

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->parseWildcardBound()V

    :cond_6
    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->consumeWildCard(I)V

    return-void
.end method

.method private parseWildcardBound()V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    iget v0, v0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->token:I

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->newParser()Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->parse()V

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->consumeParser(Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;)V

    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->isMalformed:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->isMalformed:Z

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    iput v0, v1, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->token:I

    return-void
.end method

.method private parseWildcardRank()V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->skipRankStart()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->skipRank()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->getTokenSource()[C

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->consumeWildcardRank(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->skipRankEnd()V

    return-void
.end method


# virtual methods
.method public consumeAnnotation()V
    .locals 0

    return-void
.end method

.method public consumeArrayDimension([C)V
    .locals 0

    return-void
.end method

.method public consumeBaseType([C)V
    .locals 0

    return-void
.end method

.method public consumeCapture(I)V
    .locals 0

    return-void
.end method

.method public consumeCapture18ID(II)V
    .locals 0

    return-void
.end method

.method public consumeException()V
    .locals 0

    return-void
.end method

.method public consumeField([C)V
    .locals 0

    return-void
.end method

.method public consumeFullyQualifiedName([C)V
    .locals 0

    return-void
.end method

.method public consumeKey()V
    .locals 0

    return-void
.end method

.method public consumeLocalType([C)V
    .locals 0

    return-void
.end method

.method public consumeLocalVar([CII)V
    .locals 0

    return-void
.end method

.method public consumeMemberType([C)V
    .locals 0

    return-void
.end method

.method public consumeMethod([C[C)V
    .locals 0

    return-void
.end method

.method public consumeModifiers([C)V
    .locals 0

    return-void
.end method

.method public consumeModule([C)V
    .locals 0

    return-void
.end method

.method public consumeNonGenericType()V
    .locals 0

    return-void
.end method

.method public consumePackage([C)V
    .locals 0

    return-void
.end method

.method public consumeParameterizedGenericMethod()V
    .locals 0

    return-void
.end method

.method public consumeParameterizedType([CZ)V
    .locals 0

    return-void
.end method

.method public consumeParser(Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;)V
    .locals 0

    return-void
.end method

.method public consumeRawType()V
    .locals 0

    return-void
.end method

.method public consumeScope(I)V
    .locals 0

    return-void
.end method

.method public consumeSecondaryType([C)V
    .locals 0

    return-void
.end method

.method public consumeTopLevelType()V
    .locals 0

    return-void
.end method

.method public consumeType()V
    .locals 0

    return-void
.end method

.method public consumeTypeParameter([C)V
    .locals 0

    return-void
.end method

.method public consumeTypeVariable([C[C)V
    .locals 0

    return-void
.end method

.method public consumeTypeWithCapture()V
    .locals 0

    return-void
.end method

.method public consumeWildCard(I)V
    .locals 0

    return-void
.end method

.method public consumeWildcardRank(I)V
    .locals 0

    return-void
.end method

.method public getKey()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->source:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public hasModuleName()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->hasModuleName:Z

    return v0
.end method

.method public hasTypeName()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->hasTypeName:Z

    return v0
.end method

.method public malformedKey()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->isMalformed:Z

    return-void
.end method

.method public newParser()Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;-><init>(Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;)V

    return-object v0
.end method

.method public parse()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->parse(Z)V

    return-void
.end method

.method public parse(Z)V
    .locals 1

    .line 2
    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->parsingPaused:Z

    if-nez v0, :cond_1

    .line 3
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->parseModule()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->parseFullyQualifiedName()V

    .line 5
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->parseSecondaryType()V

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->parsingPaused:Z

    return-void

    .line 7
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->hasTypeName()Z

    move-result p1

    if-nez p1, :cond_2

    .line 8
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->consumeKey()V

    return-void

    .line 9
    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->consumeTopLevelType()V

    .line 10
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->parseInnerType()V

    .line 11
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->isAtParametersStart()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 12
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->skipParametersStart()V

    .line 13
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->isAtTypeParameterStart()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 14
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->parseGenericType()V

    .line 15
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->skipParametersEnd()V

    .line 16
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->parseInnerType()V

    goto :goto_0

    .line 17
    :cond_3
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->isAtTypeArgumentStart()Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->parseParameterizedType([CZ)V

    goto :goto_0

    .line 19
    :cond_4
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->isAtRawTypeEnd()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 20
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->parseRawType()V

    goto :goto_0

    .line 21
    :cond_5
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->consumeNonGenericType()V

    .line 22
    :cond_6
    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->consumeType()V

    .line 23
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->skipTypeEnd()V

    .line 24
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->isAtFieldOrMethodStart()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 25
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->nextToken()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_a

    const/4 v0, 0x3

    if-eq p1, v0, :cond_7

    .line 26
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->malformedKey()V

    return-void

    .line 27
    :cond_7
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->parseMethod()V

    .line 28
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->isAtLocalVariableStart()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 29
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->parseLocalVariable()V

    goto :goto_1

    .line 30
    :cond_8
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->isAtTypeVariableStart()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 31
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->parseTypeVariable()V

    goto :goto_1

    .line 32
    :cond_9
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->isAtAnnotationStart()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 33
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->parseAnnotation()V

    goto :goto_1

    .line 34
    :cond_a
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->parseField()V

    .line 35
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->isAtAnnotationStart()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 36
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->parseAnnotation()V

    :cond_b
    return-void

    .line 37
    :cond_c
    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->isParsingThrownExceptions:Z

    if-nez p1, :cond_d

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->isAtTypeVariableStart()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 38
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->parseTypeVariable()V

    goto :goto_1

    .line 39
    :cond_d
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->isAtWildcardStart()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 40
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->parseWildcard()V

    goto :goto_1

    .line 41
    :cond_e
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->isAtTypeWithCaptureStart()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 42
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->parseTypeWithCapture()V

    goto :goto_1

    .line 43
    :cond_f
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->scanner:Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->isAtAnnotationStart()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 44
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->parseAnnotation()V

    .line 45
    :cond_10
    :goto_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->consumeKey()V

    return-void
.end method
