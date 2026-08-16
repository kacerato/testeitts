.class public abstract Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;


# static fields
.field protected static final ARGUMENT_RECOVERY:I = 0x2

.field protected static final ARGUMENT_TYPE_RECOVERY:I = 0x3

.field protected static final AST_STACK_INCREMENT:I = 0xa

.field public static final COMPIL_PARSER:I = 0x1

.field public static final COMPLETION_PARSER:I = 0x8

.field public static final DOM_PARSER:I = 0x2

.field protected static final EMPTY_ARGUMENT_RECOVERY:I = 0x4

.field public static final FORMATTER_COMMENT_PARSER:I = 0x20

.field private static final INHERITED_POSITIONS_ARRAY_INCREMENT:I = 0x4

.field protected static final PARSER_KIND:I = 0xff

.field protected static final QUALIFIED_NAME_RECOVERY:I = 0x1

.field public static final SELECTION_PARSER:I = 0x4

.field public static final SOURCE_PARSER:I = 0x10

.field protected static final TEXT_PARSE:I = 0x100

.field protected static final TEXT_VERIF:I = 0x200


# instance fields
.field protected abort:Z

.field protected astLengthPtr:I

.field protected astLengthStack:[I

.field protected astPtr:I

.field protected astStack:[Ljava/lang/Object;

.field public checkDocComment:Z

.field protected complianceLevel:J

.field private currentTokenType:I

.field protected deprecated:Z

.field protected firstTagPosition:I

.field protected identifierLengthPtr:I

.field protected identifierLengthStack:[I

.field protected identifierPositionStack:[J

.field protected identifierPtr:I

.field protected identifierStack:[[C

.field protected index:I

.field protected inheritedPositions:[J

.field protected inheritedPositionsPtr:I

.field protected inlineTagStart:I

.field protected inlineTagStarted:Z

.field protected javadocEnd:I

.field protected javadocStart:I

.field protected javadocTextEnd:I

.field protected javadocTextStart:I

.field protected kind:I

.field protected lastBlockTagValue:I

.field protected lastIdentifierEndPosition:I

.field private lastLinePtr:I

.field protected lineEnd:I

.field protected lineEnds:[I

.field private linePtr:I

.field protected lineStarted:Z

.field protected memberStart:I

.field public reportProblems:Z

.field protected returnStatement:Ljava/lang/Object;

.field public scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

.field public setJavadocPositions:Z

.field public source:[C

.field protected sourceLevel:J

.field protected sourceParser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

.field protected starPosition:I

.field protected tagSourceEnd:I

.field protected tagSourceStart:I

.field protected tagValue:I

.field protected textStart:I

.field protected tokenPreviousPosition:I


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/parser/Parser;)V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->currentTokenType:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->checkDocComment:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->setJavadocPositions:Z

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->javadocTextEnd:I

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->lineStarted:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->inlineTagStarted:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->abort:Z

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagValue:I

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->lastBlockTagValue:I

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->sourceParser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/32 v6, 0x2f0000

    const/4 v8, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;-><init>(ZZZJ[[C[[CZ)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    const/16 v2, 0x14

    new-array v3, v2, [[C

    iput-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierStack:[[C

    new-array v3, v2, [J

    iput-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierPositionStack:[J

    const/16 v3, 0xa

    new-array v3, v3, [I

    iput-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierLengthStack:[I

    const/16 v3, 0x1e

    new-array v3, v3, [Ljava/lang/Object;

    iput-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->astStack:[Ljava/lang/Object;

    new-array v2, v2, [I

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->astLengthStack:[I

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->reportProblems:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->sourceParser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-boolean v1, p1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->docCommentSupport:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->checkDocComment:Z

    iget-wide v1, p1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    iput-wide v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->sourceLevel:J

    iput-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->sourceLevel:J

    iget-wide v0, p1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->complianceLevel:J

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->complianceLevel:J

    :cond_1
    return-void
.end method

.method private getIndexPosition()I
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->lineEnd:I

    if-le v0, v1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private getLineNumber(I)I
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->linePtr:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->lineEnds:[I

    invoke-static {p1, v0, v3, v1}, Lorg/eclipse/jdt/internal/compiler/util/Util;->getLineNumber(I[III)I

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->lineEnds:[I

    const/4 v1, 0x1

    if-nez v0, :cond_1

    return v1

    :cond_1
    array-length v2, v0

    sub-int/2addr v2, v1

    invoke-static {p1, v0, v3, v2}, Lorg/eclipse/jdt/internal/compiler/util/Util;->getLineNumber(I[III)I

    move-result p1

    return p1
.end method

.method private getTokenEndPosition()I
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenEndPosition()I

    move-result v0

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->lineEnd:I

    if-le v0, v1, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenEndPosition()I

    move-result v0

    return v0
.end method


# virtual methods
.method public commentParse()Z
    .locals 19

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, -0x1

    :try_start_0
    iput v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->astLengthPtr:I

    iput v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->astPtr:I

    iput v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierPtr:I

    iput v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->currentTokenType:I

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->setInlineTagStarted(Z)V

    iput v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->inlineTagStart:I

    iput-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->lineStarted:Z

    const/4 v3, 0x0

    iput-object v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->returnStatement:Ljava/lang/Object;

    iput-object v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->inheritedPositions:[J

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->lastBlockTagValue:I

    iput-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->deprecated:Z

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->javadocEnd:I

    invoke-direct {v0, v3}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->getLineNumber(I)I

    move-result v3

    iput v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->lastLinePtr:I

    iput v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->textStart:I

    iput-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->abort:Z

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->kind:I

    and-int/lit16 v4, v3, 0x200

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    and-int/lit8 v6, v3, 0x2

    if-eqz v6, :cond_1

    move v6, v5

    goto :goto_1

    :cond_1
    move v6, v1

    :goto_1
    const/16 v7, 0x20

    and-int/2addr v3, v7

    if-eqz v3, :cond_2

    move v3, v5

    goto :goto_2

    :cond_2
    move v3, v1

    :goto_2
    iget v8, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->firstTagPosition:I

    invoke-direct {v0, v8}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->getLineNumber(I)I

    move-result v8

    iput v8, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->linePtr:I

    if-ne v8, v5, :cond_3

    iget v8, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->javadocStart:I

    goto :goto_3

    :cond_3
    iget-object v9, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    sub-int/2addr v8, v5

    invoke-virtual {v9, v8}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getLineEnd(I)I

    move-result v8

    add-int/2addr v8, v5

    :goto_3
    iget v9, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->javadocStart:I

    if-ge v8, v9, :cond_4

    move v8, v9

    :cond_4
    iget-object v9, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v10, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->javadocEnd:I

    invoke-virtual {v9, v8, v10}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->resetTo(II)V

    iput v8, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    iget v9, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->javadocStart:I

    if-ne v8, v9, :cond_5

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->readChar()C

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->readChar()C

    :cond_5
    iget v9, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->javadocStart:I

    const/16 v10, 0x2a

    if-ne v8, v9, :cond_7

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->readChar()C

    move-result v8

    :goto_4
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->peekChar()C

    move-result v9

    if-eq v9, v10, :cond_6

    iget v9, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    iput v9, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->javadocTextStart:I

    goto :goto_5

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->readChar()C

    move-result v8

    goto :goto_4

    :cond_7
    move v8, v1

    :goto_5
    iget v9, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->linePtr:I

    iget v11, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->lastLinePtr:I

    if-ne v9, v11, :cond_8

    iget v9, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->javadocEnd:I

    goto :goto_6

    :cond_8
    iget-object v11, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v11, v9}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getLineEnd(I)I

    move-result v9

    sub-int/2addr v9, v5

    :goto_6
    iput v9, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->lineEnd:I

    iget v9, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->javadocEnd:I

    add-int/lit8 v9, v9, -0x2

    iput v9, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->javadocTextEnd:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    move v9, v1

    move v14, v9

    move v11, v2

    move v12, v11

    move v13, v12

    move/from16 v17, v13

    move v15, v5

    move/from16 v16, v15

    :goto_7
    :try_start_1
    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->abort:Z

    if-nez v1, :cond_4b

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->javadocEnd:I

    if-lt v1, v2, :cond_9

    goto/16 :goto_29

    :cond_9
    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->lineEnd:I

    add-int/2addr v2, v5

    if-le v1, v2, :cond_a

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->updateLineEnd()V

    goto :goto_8

    :catch_0
    const/4 v1, 0x0

    goto/16 :goto_30

    :cond_a
    :goto_8
    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->currentTokenType:I

    if-gez v2, :cond_b

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->readChar()C

    move-result v2

    goto :goto_a

    :cond_b
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenStartPosition()I

    move-result v1

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->currentTokenType:I

    const/16 v5, 0x8

    if-eq v2, v5, :cond_d

    const/16 v5, 0x21

    if-eq v2, v5, :cond_c

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget-char v2, v2, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    goto :goto_9

    :cond_c
    const/16 v2, 0x7d

    goto :goto_9

    :cond_d
    move v2, v10

    :goto_9
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->consumeToken()V

    :goto_a
    const/16 v5, 0x9

    if-eq v2, v5, :cond_46

    const/16 v5, 0xa

    if-eq v2, v5, :cond_47

    const/16 v5, 0xc

    if-eq v2, v5, :cond_46

    const/16 v5, 0xd

    if-eq v2, v5, :cond_47

    if-eq v2, v7, :cond_46

    if-eq v2, v10, :cond_3f

    const/16 v5, 0x2f

    const/4 v7, 0x3

    if-eq v2, v5, :cond_36

    const/16 v5, 0x40

    const/16 v10, 0x7b

    if-eq v2, v5, :cond_21

    if-eq v2, v10, :cond_17

    const/16 v10, 0x7d

    if-eq v2, v10, :cond_e

    move/from16 v10, v17

    goto/16 :goto_1c

    :cond_e
    if-eqz v4, :cond_f

    iget v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagValue:I

    if-ne v5, v7, :cond_f

    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->returnStatement:Ljava/lang/Object;

    if-eqz v5, :cond_f

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->refreshReturnStatement()V

    :cond_f
    if-eqz v9, :cond_10

    iget v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->lineEnd:I

    add-int/lit8 v14, v14, -0x1

    move v11, v5

    if-nez v14, :cond_10

    const/4 v9, 0x0

    :cond_10
    iget-boolean v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->inlineTagStarted:Z

    if-eqz v5, :cond_15

    iget v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    const/4 v7, 0x1

    sub-int/2addr v5, v7

    if-nez v9, :cond_12

    iget-boolean v7, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->lineStarted:Z

    if-eqz v7, :cond_11

    iget v7, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->textStart:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_11

    if-ge v7, v5, :cond_11

    invoke-virtual {v0, v7, v5}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->pushText(II)V

    :cond_11
    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->refreshInlineTagPosition(I)V

    :cond_12
    if-nez v3, :cond_13

    if-nez v9, :cond_13

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->textStart:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_13
    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->setInlineTagStarted(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    :cond_14
    :goto_b
    const/4 v1, 0x1

    goto :goto_c

    :cond_15
    :try_start_3
    iget-boolean v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->lineStarted:Z

    if-nez v5, :cond_14

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->textStart:I

    goto :goto_b

    :goto_c
    iput-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->lineStarted:Z

    iget v12, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    :cond_16
    :goto_d
    move v8, v2

    :goto_e
    const/4 v2, -0x1

    const/4 v5, 0x1

    const/16 v7, 0x20

    const/16 v10, 0x2a

    goto/16 :goto_7

    :cond_17
    if-eqz v4, :cond_18

    iget v8, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagValue:I

    if-ne v8, v7, :cond_18

    iget-object v7, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->returnStatement:Ljava/lang/Object;

    if-eqz v7, :cond_18

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->refreshReturnStatement()V

    :cond_18
    if-eqz v9, :cond_19

    add-int/lit8 v14, v14, 0x1

    goto :goto_11

    :cond_19
    iget-boolean v7, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->inlineTagStarted:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz v7, :cond_1d

    const/4 v7, 0x0

    :try_start_4
    invoke-virtual {v0, v7}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->setInlineTagStarted(Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :try_start_5
    iget-boolean v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->reportProblems:Z

    if-eqz v5, :cond_1b

    if-ge v1, v11, :cond_1a

    move v5, v1

    goto :goto_f

    :cond_1a
    move v5, v11

    :goto_f
    iget-object v7, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->sourceParser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v7

    iget v8, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->inlineTagStart:I

    invoke-virtual {v7, v8, v5}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->javadocUnterminatedInlineTag(II)V

    :cond_1b
    iget-boolean v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->lineStarted:Z

    if-eqz v5, :cond_1c

    iget v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->textStart:I

    const/4 v7, -0x1

    if-eq v5, v7, :cond_1c

    if-ge v5, v12, :cond_1c

    invoke-virtual {v0, v5, v12}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->pushText(II)V

    :cond_1c
    invoke-virtual {v0, v12}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->refreshInlineTagPosition(I)V

    iget v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    :goto_10
    move v12, v5

    goto :goto_11

    :catch_1
    move v1, v7

    goto/16 :goto_30

    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->peekChar()C

    move-result v7

    if-eq v7, v5, :cond_1f

    iget v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->textStart:I

    const/4 v7, -0x1

    if-ne v5, v7, :cond_1e

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->textStart:I

    :cond_1e
    iget v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    goto :goto_10

    :cond_1f
    :goto_11
    iget-boolean v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->lineStarted:Z

    if-nez v5, :cond_20

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->textStart:I

    :cond_20
    const/4 v5, 0x1

    iput-boolean v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->lineStarted:Z

    if-nez v9, :cond_16

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->inlineTagStart:I

    goto :goto_d

    :cond_21
    if-eqz v9, :cond_24

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->lineStarted:Z

    if-nez v1, :cond_23

    if-lez v14, :cond_22

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->reportProblems:Z

    if-eqz v1, :cond_22

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->sourceParser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    iget v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->inlineTagStart:I

    invoke-virtual {v1, v5, v11}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->javadocUnterminatedInlineTag(II)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :cond_22
    const/4 v1, 0x0

    :try_start_6
    iput-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->inlineTagStarted:Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    const/4 v1, 0x1

    const/4 v9, 0x0

    const/4 v14, 0x0

    goto/16 :goto_1b

    :cond_23
    :goto_12
    const/4 v1, 0x1

    goto/16 :goto_1b

    :cond_24
    :try_start_7
    iget-boolean v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->lineStarted:Z

    if-eqz v5, :cond_28

    if-ne v8, v10, :cond_25

    goto :goto_14

    :cond_25
    iget v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    if-eqz v4, :cond_26

    iget v8, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagValue:I

    if-ne v8, v7, :cond_26

    iget-object v7, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->returnStatement:Ljava/lang/Object;

    if-eqz v7, :cond_26

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->refreshReturnStatement()V

    goto :goto_13

    :cond_26
    if-eqz v3, :cond_27

    iget v7, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->textStart:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_27

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->textStart:I

    :cond_27
    :goto_13
    move v12, v5

    goto :goto_12

    :cond_28
    :goto_14
    iget-boolean v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->inlineTagStarted:Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    if-eqz v5, :cond_2e

    const/4 v5, 0x0

    :try_start_8
    invoke-virtual {v0, v5}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->setInlineTagStarted(Z)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    :try_start_9
    iget-boolean v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->reportProblems:Z

    if-eqz v5, :cond_2a

    if-ge v1, v11, :cond_29

    move v5, v1

    goto :goto_15

    :cond_29
    move v5, v11

    :goto_15
    iget-object v7, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->sourceParser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v7

    iget v15, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->inlineTagStart:I

    invoke-virtual {v7, v15, v5}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->javadocUnterminatedInlineTag(II)V

    :cond_2a
    iget v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->textStart:I

    const/4 v7, -0x1

    if-eq v5, v7, :cond_2b

    if-ge v5, v12, :cond_2b

    invoke-virtual {v0, v5, v12}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->pushText(II)V

    :cond_2b
    if-nez v6, :cond_2c

    if-eqz v3, :cond_2d

    :cond_2c
    invoke-virtual {v0, v12}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->refreshInlineTagPosition(I)V

    :cond_2d
    const/4 v15, 0x0

    goto :goto_16

    :catch_2
    move v1, v5

    goto/16 :goto_30

    :cond_2e
    :goto_16
    if-ne v8, v10, :cond_31

    iget v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->textStart:I

    const/4 v7, -0x1

    if-eq v5, v7, :cond_2f

    if-ge v5, v12, :cond_2f

    invoke-virtual {v0, v5, v12}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->pushText(II)V

    :cond_2f
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->setInlineTagStarted(Z)V

    iget v11, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->lineEnd:I

    :cond_30
    move/from16 v10, v17

    goto :goto_17

    :cond_31
    iget v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->textStart:I

    const/4 v7, -0x1

    if-eq v5, v7, :cond_30

    move/from16 v10, v17

    if-ge v5, v10, :cond_32

    invoke-virtual {v0, v5, v10}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->pushText(II)V

    :cond_32
    :goto_17
    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v7, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    iget v8, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->javadocEnd:I

    invoke-virtual {v5, v7, v8}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->resetTo(II)V

    const/4 v5, -0x1

    iput v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->currentTokenType:I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    :try_start_a
    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->parseTag(I)Z

    move-result v1
    :try_end_a
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    if-nez v1, :cond_34

    if-eqz v6, :cond_33

    :try_start_b
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->createTag()V

    :cond_33
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagSourceEnd:I

    const/4 v5, 0x1

    add-int/2addr v1, v5

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->textStart:I

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->lineEnd:I
    :try_end_b
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    :try_start_c
    iget v12, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I
    :try_end_c
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    move/from16 v17, v1

    const/4 v15, 0x0

    goto :goto_19

    :catch_3
    move/from16 v17, v1

    :goto_18
    const/4 v15, 0x0

    goto :goto_1a

    :catch_4
    move/from16 v17, v10

    goto :goto_18

    :cond_34
    move/from16 v17, v10

    :goto_19
    if-nez v3, :cond_23

    :try_start_d
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagValue:I
    :try_end_d
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_d .. :try_end_d} :catch_6
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    const/16 v5, 0x13

    if-eq v1, v5, :cond_35

    const/16 v5, 0x12

    if-ne v1, v5, :cond_23

    :cond_35
    add-int/lit8 v14, v14, 0x1

    const/4 v1, 0x1

    const/4 v9, 0x1

    goto :goto_1b

    :catch_5
    move/from16 v17, v10

    :catch_6
    :goto_1a
    :try_start_e
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->consumeToken()V

    goto/16 :goto_12

    :goto_1b
    iput-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->lineStarted:Z

    goto/16 :goto_d

    :cond_36
    move v5, v10

    move/from16 v10, v17

    if-ne v8, v5, :cond_37

    move/from16 v18, v2

    move v2, v5

    const/4 v7, 0x1

    goto/16 :goto_27

    :cond_37
    :goto_1c
    if-eqz v3, :cond_3b

    const/16 v5, 0x3c

    if-ne v2, v5, :cond_3b

    iget v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    iget-object v7, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    move/from16 v18, v2

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->javadocEnd:I

    invoke-virtual {v7, v5, v2}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->resetTo(II)V

    invoke-static {v8}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_38

    move v12, v1

    :cond_38
    invoke-virtual {v0, v1, v12}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->parseHtmlTag(II)Z

    move-result v2

    if-eqz v2, :cond_39

    :goto_1d
    move/from16 v17, v10

    move/from16 v8, v18

    goto/16 :goto_e

    :cond_39
    iget-boolean v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->abort:Z

    if-eqz v2, :cond_3a

    const/4 v2, 0x0

    return v2

    :cond_3a
    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iput v5, v2, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iput v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    goto :goto_1e

    :cond_3b
    move/from16 v18, v2

    :goto_1e
    if-eqz v4, :cond_3c

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagValue:I

    const/4 v5, 0x3

    if-ne v2, v5, :cond_3c

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->returnStatement:Ljava/lang/Object;

    if-eqz v2, :cond_3c

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->refreshReturnStatement()V

    :cond_3c
    iget-boolean v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->lineStarted:Z

    if-eqz v2, :cond_3e

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->textStart:I

    const/4 v5, -0x1

    if-ne v2, v5, :cond_3d

    goto :goto_20

    :cond_3d
    :goto_1f
    const/4 v1, 0x1

    goto :goto_21

    :cond_3e
    :goto_20
    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->textStart:I

    goto :goto_1f

    :goto_21
    iput-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->lineStarted:Z

    iget v12, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    goto :goto_1d

    :cond_3f
    move/from16 v18, v2

    move v2, v10

    move/from16 v10, v17

    if-eq v8, v2, :cond_40

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->starPosition:I

    if-nez v6, :cond_41

    if-eqz v3, :cond_40

    goto :goto_22

    :cond_40
    const/4 v7, 0x1

    goto :goto_26

    :cond_41
    :goto_22
    if-eqz v16, :cond_42

    const/4 v7, 0x1

    iput-boolean v7, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->lineStarted:Z

    iget v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->textStart:I

    const/4 v8, -0x1

    if-ne v5, v8, :cond_43

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->textStart:I

    iget v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    iget v8, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->javadocTextEnd:I

    if-gt v5, v8, :cond_43

    move v12, v5

    goto :goto_23

    :cond_42
    const/4 v7, 0x1

    :cond_43
    :goto_23
    iget-boolean v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->lineStarted:Z

    if-nez v5, :cond_44

    move v13, v1

    move v5, v7

    move/from16 v16, v5

    :goto_24
    move/from16 v17, v10

    move/from16 v8, v18

    const/16 v7, 0x20

    :goto_25
    move v10, v2

    const/4 v2, -0x1

    goto/16 :goto_7

    :cond_44
    :goto_26
    move v13, v1

    :cond_45
    :goto_27
    move v5, v7

    goto :goto_24

    :cond_46
    move/from16 v18, v2

    move v2, v10

    move/from16 v10, v17

    const/4 v7, 0x1

    goto :goto_28

    :cond_47
    move/from16 v18, v2

    move v2, v10

    move/from16 v10, v17

    const/4 v7, 0x1

    iget-boolean v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->lineStarted:Z

    if-eqz v5, :cond_49

    if-eqz v3, :cond_48

    invoke-static {v8}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isWhitespace(C)Z

    move-result v5

    if-nez v5, :cond_48

    move v12, v1

    :cond_48
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->textStart:I

    const/4 v5, -0x1

    if-eq v1, v5, :cond_49

    if-ge v1, v12, :cond_49

    invoke-virtual {v0, v1, v12}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->pushText(II)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    :cond_49
    const/4 v1, 0x0

    :try_start_f
    iput-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->lineStarted:Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7

    const/4 v1, -0x1

    :try_start_10
    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->textStart:I

    move v5, v7

    move/from16 v17, v10

    move/from16 v8, v18

    const/16 v7, 0x20

    const/16 v16, 0x0

    goto :goto_25

    :goto_28
    if-eqz v3, :cond_4a

    invoke-static {v8}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isWhitespace(C)Z

    move-result v5

    if-nez v5, :cond_45

    move v12, v1

    goto :goto_27

    :cond_4a
    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->lineStarted:Z

    if-eqz v1, :cond_45

    if-eqz v6, :cond_45

    iget v12, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    goto :goto_27

    :cond_4b
    :goto_29
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->starPosition:I

    add-int/lit8 v2, v1, -0x1

    iput v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->javadocTextEnd:I

    iget-boolean v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->inlineTagStarted:Z

    if-nez v3, :cond_4f

    if-eqz v9, :cond_4c

    goto :goto_2c

    :cond_4c
    iget-boolean v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->lineStarted:Z

    if-eqz v2, :cond_4d

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->textStart:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4d

    if-gt v2, v12, :cond_4d

    if-lt v2, v1, :cond_4e

    if-ne v1, v13, :cond_4d

    goto :goto_2b

    :cond_4d
    :goto_2a
    const/4 v1, 0x0

    goto :goto_2f

    :cond_4e
    :goto_2b
    invoke-virtual {v0, v2, v12}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->pushText(II)V

    goto :goto_2a

    :cond_4f
    :goto_2c
    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->reportProblems:Z

    if-eqz v1, :cond_52

    if-ge v2, v11, :cond_50

    goto :goto_2d

    :cond_50
    move v2, v11

    :goto_2d
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->javadocEnd:I

    if-lt v1, v3, :cond_51

    goto :goto_2e

    :cond_51
    move v11, v2

    :goto_2e
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->sourceParser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->inlineTagStart:I

    invoke-virtual {v1, v2, v11}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->javadocUnterminatedInlineTag(II)V

    :cond_52
    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->lineStarted:Z

    if-eqz v1, :cond_53

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->textStart:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_53

    if-ge v1, v12, :cond_53

    invoke-virtual {v0, v1, v12}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->pushText(II)V

    :cond_53
    invoke-virtual {v0, v12}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->refreshInlineTagPosition(I)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0

    const/4 v1, 0x0

    :try_start_11
    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->setInlineTagStarted(Z)V

    :goto_2f
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->updateDocComment()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_7

    move v1, v15

    :catch_7
    :goto_30
    return v1
.end method

.method public consumeToken()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->currentTokenType:I

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->updateLineEnd()V

    return-void
.end method

.method public abstract createArgumentReference([CIZLjava/lang/Object;[JJ)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/compiler/InvalidInputException;
        }
    .end annotation
.end method

.method public createFakeReference(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public abstract createFieldReference(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/compiler/InvalidInputException;
        }
    .end annotation
.end method

.method public abstract createMethodReference(Ljava/lang/Object;Ljava/util/List;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/compiler/InvalidInputException;
        }
    .end annotation
.end method

.method public createReturnStatement()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract createTag()V
.end method

.method public abstract createTypeReference(I)Ljava/lang/Object;
.end method

.method public getCurrentTokenType()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->currentTokenType:I

    return v0
.end method

.method public parseArguments(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/compiler/InvalidInputException;
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    new-instance v10, Ljava/util/ArrayList;

    const/16 v11, 0xa

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenStartPosition()I

    move-result v12

    const/16 v0, 0x14

    new-array v13, v0, [J

    const/4 v14, 0x0

    const/4 v15, 0x0

    move v0, v14

    move v1, v0

    move-object v2, v15

    :goto_0
    iget v3, v8, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    iget-object v4, v8, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v4, v4, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->eofPosition:I

    if-ge v3, v4, :cond_2

    :try_start_0
    invoke-virtual {v8, v14}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->parseQualifiedName(Z)Ljava/lang/Object;

    move-result-object v4

    iget-boolean v3, v8, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->abort:Z
    :try_end_0
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    return-object v15

    :cond_0
    const/4 v3, 0x1

    if-nez v0, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    move v5, v14

    :goto_1
    if-eqz v5, :cond_3

    if-nez v1, :cond_2

    goto :goto_2

    :catch_0
    :cond_2
    move-object v15, v8

    goto/16 :goto_a

    :cond_3
    rem-int v6, v1, v0

    if-nez v6, :cond_2

    :goto_2
    const/16 v6, 0x19

    const/4 v7, -0x1

    if-nez v4, :cond_8

    if-eqz v5, :cond_2

    iget v0, v8, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->currentTokenType:I

    if-ne v0, v6, :cond_2

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->verifySpaceOrEndComment()Z

    move-result v0

    if-nez v0, :cond_7

    iget v0, v8, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->starPosition:I

    if-ne v0, v7, :cond_4

    iget v0, v8, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->lineEnd:I

    :cond_4
    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->source:[C

    aget-char v1, v1, v0

    if-ne v1, v11, :cond_5

    add-int/lit8 v0, v0, -0x1

    :cond_5
    iget-boolean v1, v8, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->reportProblems:Z

    if-eqz v1, :cond_6

    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->sourceParser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    invoke-virtual {v1, v12, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->javadocMalformedSeeReference(II)V

    :cond_6
    return-object v15

    :cond_7
    iput-boolean v3, v8, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->lineStarted:Z

    invoke-virtual {v8, v9, v15}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->createMethodReference(Ljava/lang/Object;Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_8
    add-int/lit8 v11, v1, 0x1

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->readToken()I

    move-result v7

    const/4 v6, 0x6

    const/16 v15, 0x20

    if-ne v7, v6, :cond_a

    move v7, v14

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->readToken()I

    move-result v3

    if-eq v3, v6, :cond_9

    move-object/from16 v17, v4

    move v3, v14

    move v9, v3

    move-object v14, v10

    goto :goto_4

    :cond_9
    iget-object v3, v8, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenStartPosition()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->consumeToken()V

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->readToken()I

    move-result v6

    const/16 v14, 0x42

    if-ne v6, v14, :cond_2

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->consumeToken()V

    add-int/lit8 v6, v7, 0x1

    move-object v14, v10

    int-to-long v9, v3

    shl-long/2addr v9, v15

    iget-object v3, v8, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenEndPosition()I

    move-result v3

    move-object/from16 v17, v4

    int-to-long v3, v3

    add-long/2addr v9, v3

    aput-wide v9, v13, v7

    move-object/from16 v9, p1

    move v7, v6

    move-object v10, v14

    move-object/from16 v4, v17

    const/4 v6, 0x6

    const/4 v14, 0x0

    goto :goto_3

    :cond_a
    move-object/from16 v17, v4

    move-object v14, v10

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->readToken()I

    move-result v3

    const/16 v4, 0x7a

    if-ne v3, v4, :cond_b

    iget-object v3, v8, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenStartPosition()I

    move-result v3

    int-to-long v3, v3

    shl-long/2addr v3, v15

    iget-object v6, v8, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenEndPosition()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v3, v6

    const/4 v9, 0x0

    aput-wide v3, v13, v9

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->consumeToken()V

    const/4 v3, 0x1

    const/4 v7, 0x1

    goto :goto_4

    :cond_b
    const/4 v9, 0x0

    move v3, v9

    move v7, v3

    :goto_4
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->readToken()I

    move-result v4

    const/16 v6, 0x16

    if-ne v4, v6, :cond_f

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->consumeToken()V

    if-eqz v5, :cond_c

    const/4 v4, 0x1

    if-ne v11, v4, :cond_2

    goto :goto_5

    :cond_c
    const/4 v4, 0x1

    rem-int/2addr v11, v0

    if-ne v11, v4, :cond_e

    :goto_5
    if-nez v2, :cond_d

    if-eqz v5, :cond_2

    :cond_d
    iget-object v2, v8, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentIdentifierSource()[C

    move-result-object v2

    iget-object v4, v8, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenStartPosition()I

    move-result v4

    int-to-long v10, v4

    shl-long/2addr v10, v15

    iget-object v4, v8, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenEndPosition()I

    move-result v4

    int-to-long v8, v4

    add-long/2addr v10, v8

    add-int/lit8 v1, v1, 0x2

    move v9, v1

    move-object v8, v2

    goto :goto_6

    :cond_e
    move-object/from16 v15, p0

    goto/16 :goto_a

    :cond_f
    if-nez v2, :cond_e

    const-wide/16 v8, -0x1

    move-wide/from16 v18, v8

    move-object v8, v2

    move v9, v11

    move-wide/from16 v10, v18

    :goto_6
    if-eqz v5, :cond_10

    add-int/lit8 v0, v9, 0x1

    :goto_7
    move/from16 v16, v0

    goto :goto_8

    :cond_10
    rem-int v1, v9, v0

    add-int/lit8 v2, v0, -0x1

    if-ne v1, v2, :cond_e

    goto :goto_7

    :goto_8
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->readToken()I

    move-result v0

    if-nez v8, :cond_11

    sget-object v1, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    goto :goto_9

    :cond_11
    move-object v1, v8

    :goto_9
    if-ne v0, v15, :cond_13

    move-object/from16 v0, p0

    move v2, v7

    move-object/from16 v4, v17

    move-object v5, v13

    move-wide v6, v10

    invoke-virtual/range {v0 .. v7}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->createArgumentReference([CIZLjava/lang/Object;[JJ)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v15, p0

    iget-boolean v1, v15, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->abort:Z

    if-eqz v1, :cond_12

    const/4 v1, 0x0

    return-object v1

    :cond_12
    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->consumeToken()V

    add-int/lit8 v1, v9, 0x1

    move-object/from16 v9, p1

    move-object v2, v8

    move-object v10, v14

    move-object v8, v15

    move/from16 v0, v16

    const/16 v11, 0xa

    const/4 v14, 0x0

    const/4 v15, 0x0

    goto/16 :goto_0

    :cond_13
    const/16 v2, 0x19

    move-object/from16 v15, p0

    if-ne v0, v2, :cond_19

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->verifySpaceOrEndComment()Z

    move-result v0

    if-nez v0, :cond_17

    iget v0, v15, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->starPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_14

    iget v0, v15, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->lineEnd:I

    :cond_14
    iget-object v1, v15, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->source:[C

    aget-char v1, v1, v0

    const/16 v2, 0xa

    if-ne v1, v2, :cond_15

    add-int/lit8 v0, v0, -0x1

    :cond_15
    iget-boolean v1, v15, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->reportProblems:Z

    if-eqz v1, :cond_16

    iget-object v1, v15, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->sourceParser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    invoke-virtual {v1, v12, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->javadocMalformedSeeReference(II)V

    :cond_16
    const/4 v8, 0x0

    return-object v8

    :cond_17
    const/4 v8, 0x0

    move-object/from16 v0, p0

    move v2, v7

    move-object/from16 v4, v17

    move-object v5, v13

    move-wide v6, v10

    invoke-virtual/range {v0 .. v7}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->createArgumentReference([CIZLjava/lang/Object;[JJ)Ljava/lang/Object;

    move-result-object v0

    iget-boolean v1, v15, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->abort:Z

    if-eqz v1, :cond_18

    return-object v8

    :cond_18
    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->consumeToken()V

    move-object/from16 v0, p1

    invoke-virtual {v15, v0, v14}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->createMethodReference(Ljava/lang/Object;Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_19
    :goto_a
    new-instance v0, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    invoke-direct {v0}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>()V

    throw v0
.end method

.method public parseHref()Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/compiler/InvalidInputException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->skipComments:Z

    const/4 v2, 0x1

    iput-boolean v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->skipComments:Z

    :try_start_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenStartPosition()I

    move-result v0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->readChar()C

    move-result v3

    const/16 v4, 0x41

    const/16 v5, 0x61

    const/4 v6, -0x1

    const/16 v7, 0xa

    const/4 v8, 0x0

    if-eq v3, v5, :cond_0

    if-ne v3, v4, :cond_c

    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v9, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    iput v9, v3, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->readToken()I

    move-result v3

    const/16 v9, 0x16

    if-ne v3, v9, :cond_c

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->consumeToken()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentIdentifierSource()[C

    move-result-object v3

    sget-object v9, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->HREF_TAG:[C

    invoke-static {v3, v9, v8}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[CZ)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->readToken()I

    move-result v3

    const/16 v9, 0x48

    if-ne v3, v9, :cond_c

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->consumeToken()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->readToken()I

    move-result v3

    const/16 v9, 0x2e

    if-ne v3, v9, :cond_c

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->consumeToken()V

    :cond_1
    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    iget v9, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->javadocEnd:I

    if-lt v3, v9, :cond_2

    goto/16 :goto_5

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->readToken()I

    move-result v3

    const/16 v9, 0xf

    const/16 v10, 0x7d

    const/16 v11, 0x40

    if-ne v3, v9, :cond_9

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->consumeToken()V

    :goto_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->readToken()I

    move-result v3

    const/16 v9, 0xb

    if-ne v3, v9, :cond_5

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->consumeToken()V

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenStartPosition()I

    move-result v0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->readChar()C

    move-result v3

    const/16 v9, 0x2f

    if-ne v3, v9, :cond_4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->readChar()C

    move-result v3

    if-eq v3, v5, :cond_3

    if-ne v3, v4, :cond_4

    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->readChar()C

    move-result v3
    :try_end_1
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v9, 0x3e

    if-ne v3, v9, :cond_4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iput-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->skipComments:Z

    return v2

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :cond_4
    const/16 v9, 0xd

    if-eq v3, v9, :cond_c

    if-eq v3, v7, :cond_c

    const/16 v9, 0x9

    if-eq v3, v9, :cond_c

    const/16 v9, 0x20

    if-ne v3, v9, :cond_1

    goto/16 :goto_5

    :cond_5
    :try_start_2
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v9, v3, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iget v12, v3, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->eofPosition:I

    if-ge v9, v12, :cond_7

    iget-char v9, v3, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    if-eq v9, v11, :cond_7

    iget-boolean v12, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->inlineTagStarted:Z

    if-eqz v12, :cond_6

    if-ne v9, v10, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->consumeToken()V

    goto :goto_1

    :cond_7
    :goto_2
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tokenPreviousPosition:I

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    iput v2, v3, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iput v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->currentTokenType:I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagValue:I

    if-eq v2, v7, :cond_8

    iget-boolean v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->reportProblems:Z

    if-eqz v2, :cond_8

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->sourceParser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->lineEnd:I

    invoke-virtual {v2, v0, v3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->javadocInvalidSeeHref(II)V
    :try_end_2
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_8
    :goto_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iput-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->skipComments:Z

    return v8

    :cond_9
    :try_start_3
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v9, v3, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iget v12, v3, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->eofPosition:I

    if-ge v9, v12, :cond_b

    iget-char v9, v3, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    if-eq v9, v11, :cond_b

    iget-boolean v11, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->inlineTagStarted:Z

    if-eqz v11, :cond_a

    if-ne v9, v10, :cond_a

    goto :goto_4

    :cond_a
    iput v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->currentTokenType:I

    goto/16 :goto_0

    :cond_b
    :goto_4
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tokenPreviousPosition:I

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    iput v2, v3, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iput v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->currentTokenType:I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagValue:I

    if-eq v2, v7, :cond_8

    iget-boolean v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->reportProblems:Z

    if-eqz v2, :cond_8

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->sourceParser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->lineEnd:I

    invoke-virtual {v2, v0, v3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->javadocInvalidSeeHref(II)V
    :try_end_3
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catch_0
    :cond_c
    :goto_5
    :try_start_4
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tokenPreviousPosition:I

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iput v2, v3, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iput v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->currentTokenType:I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagValue:I

    if-eq v2, v7, :cond_8

    iget-boolean v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->reportProblems:Z

    if-eqz v2, :cond_8

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->sourceParser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->lineEnd:I

    invoke-virtual {v2, v0, v3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->javadocInvalidSeeHref(II)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :goto_6
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iput-boolean v1, v2, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->skipComments:Z

    throw v0
.end method

.method public parseHtmlTag(II)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/compiler/InvalidInputException;
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public parseIdentifierTag(Z)Z
    .locals 4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->readTokenSafely()I

    move-result v0

    const/16 v1, 0x16

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->sourceParser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagSourceStart:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagSourceEnd:I

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->sourceParser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->modifiers:I

    invoke-virtual {p1, v0, v1, v3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->javadocMissingIdentifier(III)V

    :cond_0
    return v2

    :cond_1
    const/4 p1, 0x1

    invoke-virtual {p0, p1, v2}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->pushIdentifier(ZZ)V

    return p1
.end method

.method public parseMember(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/compiler/InvalidInputException;
        }
    .end annotation

    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierPtr:I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierLengthPtr:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenStartPosition()I

    move-result v1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->memberStart:I

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->readToken()I

    move-result v2

    const/16 v3, 0x16

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_9

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget-char v2, v2, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_0

    invoke-virtual {p0, v5}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->parseQualifiedName(Z)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->consumeToken()V

    const/4 v2, 0x0

    invoke-virtual {p0, v5, v2}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->pushIdentifier(ZZ)V

    :goto_0
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->readToken()I

    move-result v3

    const/16 v5, 0x17

    if-ne v3, v5, :cond_4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->consumeToken()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenStartPosition()I

    move-result v0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->parseArguments(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenEndPosition()I

    move-result p1

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->lineEnd:I

    if-ge p1, v1, :cond_1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenEndPosition()I

    move-result p1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenStartPosition()I

    move-result p1

    :goto_1
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->lineEnd:I

    if-ge p1, v1, :cond_2

    goto :goto_2

    :cond_2
    move p1, v1

    :goto_2
    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->reportProblems:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->sourceParser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->javadocInvalidSeeReferenceArgs(II)V

    :cond_3
    return-object v4

    :cond_4
    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iput v2, v3, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->currentTokenType:I

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->verifySpaceOrEndComment()Z

    move-result v2

    if-nez v2, :cond_8

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->starPosition:I

    if-ne p1, v0, :cond_5

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->lineEnd:I

    :cond_5
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->source:[C

    aget-char v0, v0, p1

    const/16 v2, 0xa

    if-ne v0, v2, :cond_6

    add-int/lit8 p1, p1, -0x1

    :cond_6
    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->reportProblems:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->sourceParser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->javadocMalformedSeeReference(II)V

    :cond_7
    return-object v4

    :cond_8
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->createFieldReference(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_9
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->getTokenEndPosition()I

    move-result p1

    sub-int/2addr p1, v5

    if-le v1, p1, :cond_a

    move p1, v1

    :cond_a
    iget-boolean v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->reportProblems:Z

    if-eqz v2, :cond_b

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->sourceParser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    invoke-virtual {v2, v1, p1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->javadocInvalidReference(II)V

    :cond_b
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tokenPreviousPosition:I

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iput p1, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->currentTokenType:I

    return-object v4
.end method

.method public parseParam()Z
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/compiler/InvalidInputException;
        }
    .end annotation

    move-object/from16 v1, p0

    iget v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagSourceStart:I

    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagSourceEnd:I

    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget-boolean v4, v3, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->tokenizeWhiteSpace:Z

    const/4 v5, 0x1

    iput-boolean v5, v3, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->tokenizeWhiteSpace:Z

    :try_start_0
    iget v6, v1, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->kind:I

    and-int/lit8 v6, v6, 0x8

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    move v6, v7

    :goto_0
    iget-char v3, v3, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    const/16 v8, 0x20

    const/4 v9, -0x1

    if-eq v3, v8, :cond_3

    invoke-static {v3}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_3

    iget-boolean v2, v1, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->reportProblems:Z

    if-eqz v2, :cond_1

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->sourceParser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenEndPosition()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->javadocInvalidTag(II)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_19

    :cond_1
    :goto_1
    if-nez v6, :cond_2

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iput v0, v2, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iput v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    :cond_2
    iput v9, v1, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->currentTokenType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    iget-object v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iput-boolean v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->tokenizeWhiteSpace:Z

    return v7

    :cond_3
    :try_start_1
    iput v9, v1, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierPtr:I

    iput v9, v1, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierLengthPtr:I

    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iget v8, v1, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->lineEnd:I

    add-int/2addr v8, v5

    if-le v3, v8, :cond_4

    move v3, v5

    goto :goto_3

    :cond_4
    move v3, v7

    :goto_3
    iget-wide v10, v1, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->sourceLevel:J

    const-wide/32 v12, 0x310000

    cmp-long v8, v10, v12

    if-ltz v8, :cond_5

    move v8, v5

    goto :goto_4

    :cond_5
    move v8, v7

    :goto_4
    move v11, v5

    move v13, v11

    move v12, v7

    move v10, v9

    :goto_5
    iput v9, v1, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->currentTokenType:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->readToken()I

    move-result v10
    :try_end_2
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_6

    :catch_0
    move v11, v7

    :goto_6
    const/16 v14, 0xb

    const/16 v15, 0x16

    const/16 v9, 0x3d

    const/16 v5, 0x3e8

    if-eq v10, v14, :cond_8

    if-eq v10, v15, :cond_6

    if-eq v10, v9, :cond_2c

    if-eq v10, v5, :cond_2a

    goto/16 :goto_15

    :cond_6
    if-eqz v11, :cond_8

    const/4 v2, 0x1

    :try_start_3
    invoke-virtual {v1, v2, v7}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->pushIdentifier(ZZ)V

    iget-object v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenStartPosition()I

    move-result v0

    if-eqz v3, :cond_7

    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->lineEnd:I

    goto :goto_8

    :cond_7
    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenEndPosition()I

    move-result v2

    goto :goto_8

    :cond_8
    if-eqz v11, :cond_25

    if-eqz v8, :cond_25

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v2}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->pushIdentifier(ZZ)V

    iget-object v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenStartPosition()I

    move-result v0

    if-eqz v3, :cond_9

    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->lineEnd:I

    goto :goto_7

    :cond_9
    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenEndPosition()I

    move-result v2

    :goto_7
    const/4 v12, 0x1

    :goto_8
    if-eqz v12, :cond_1c

    if-eqz v8, :cond_1c

    :cond_a
    :goto_9
    const/4 v13, -0x1

    iput v13, v1, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->currentTokenType:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->readToken()I

    move-result v10
    :try_end_4
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_a

    :catch_1
    move v11, v7

    :goto_a
    if-eq v10, v15, :cond_10

    if-eq v10, v9, :cond_d

    if-eq v10, v5, :cond_c

    if-eqz v3, :cond_b

    :try_start_5
    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->lineEnd:I

    goto :goto_b

    :cond_b
    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenEndPosition()I

    move-result v2

    :goto_b
    move v11, v7

    goto :goto_9

    :cond_c
    if-eqz v11, :cond_d

    iget-object v13, v1, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v13, v13, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iget v14, v1, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->lineEnd:I

    const/16 v16, 0x1

    add-int/lit8 v14, v14, 0x1

    if-gt v13, v14, :cond_d

    goto :goto_9

    :cond_d
    iget-boolean v3, v1, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->reportProblems:Z

    if-eqz v3, :cond_e

    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->sourceParser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->javadocInvalidParamTypeParameter(II)V

    :cond_e
    if-nez v6, :cond_f

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iput v0, v2, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iput v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    :cond_f
    const/4 v0, -0x1

    iput v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->currentTokenType:I

    goto/16 :goto_2

    :cond_10
    if-eqz v3, :cond_11

    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->lineEnd:I

    goto :goto_c

    :cond_11
    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenEndPosition()I

    move-result v2

    :goto_c
    if-eqz v11, :cond_a

    invoke-virtual {v1, v7, v7}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->pushIdentifier(ZZ)V

    move v13, v11

    const/4 v14, -0x1

    move v11, v10

    move v10, v3

    move v3, v2

    move v2, v7

    :goto_d
    iput v14, v1, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->currentTokenType:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->readToken()I

    move-result v11
    :try_end_6
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_e

    :catch_2
    move v13, v7

    :goto_e
    const/16 v14, 0xf

    if-eq v11, v14, :cond_1a

    if-eq v11, v9, :cond_17

    if-eq v11, v5, :cond_15

    if-nez v2, :cond_13

    if-eqz v10, :cond_12

    :try_start_7
    iget v3, v1, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->lineEnd:I

    goto :goto_f

    :cond_12
    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenEndPosition()I

    move-result v3

    :cond_13
    :goto_f
    move v13, v7

    :cond_14
    :goto_10
    const/4 v14, -0x1

    goto :goto_d

    :cond_15
    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v2, v2, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iget v14, v1, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->lineEnd:I

    const/4 v15, 0x1

    add-int/2addr v14, v15

    if-le v2, v14, :cond_16

    move v13, v7

    const/4 v10, 0x1

    :cond_16
    if-eqz v13, :cond_17

    const/4 v2, 0x1

    goto :goto_10

    :cond_17
    iget-boolean v2, v1, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->reportProblems:Z

    if-eqz v2, :cond_18

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->sourceParser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    invoke-virtual {v2, v0, v3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->javadocInvalidParamTypeParameter(II)V

    :cond_18
    if-nez v6, :cond_19

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iput v0, v2, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iput v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    :cond_19
    const/4 v0, -0x1

    iput v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->currentTokenType:I

    goto/16 :goto_2

    :cond_1a
    if-eqz v10, :cond_1b

    iget v3, v1, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->lineEnd:I

    goto :goto_11

    :cond_1b
    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenEndPosition()I

    move-result v3

    :goto_11
    if-eqz v13, :cond_14

    const/4 v14, 0x1

    invoke-virtual {v1, v7, v14}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->pushIdentifier(ZZ)V

    move v3, v10

    move v10, v11

    move v11, v13

    :cond_1c
    if-eqz v11, :cond_1d

    const/4 v2, -0x1

    iput v2, v1, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->currentTokenType:I

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v2, v2, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->readTokenAndConsume()I

    move-result v10
    :try_end_8
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catch_3
    if-ne v10, v5, :cond_1d

    :try_start_9
    iget-object v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v3, v1, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->javadocEnd:I

    invoke-virtual {v0, v2, v3}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->resetTo(II)V

    iput v2, v1, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    invoke-virtual {v1, v12}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->pushParamName(Z)Z

    move-result v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iput-boolean v4, v2, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->tokenizeWhiteSpace:Z

    return v0

    :cond_1d
    const/4 v2, -0x1

    :try_start_a
    iput v2, v1, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->currentTokenType:I

    if-eqz v6, :cond_1e

    goto/16 :goto_2

    :cond_1e
    iget-boolean v2, v1, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->reportProblems:Z

    if-eqz v2, :cond_24

    if-eqz v3, :cond_1f

    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->lineEnd:I

    goto :goto_12

    :cond_1f
    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenEndPosition()I

    move-result v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :goto_12
    :try_start_b
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->readToken()I

    move-result v6

    if-eq v6, v5, :cond_22

    if-ne v6, v9, :cond_20

    goto :goto_13

    :cond_20
    const/4 v6, -0x1

    iput v6, v1, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->currentTokenType:I

    if-eqz v3, :cond_21

    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->lineEnd:I

    goto :goto_12

    :cond_21
    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenEndPosition()I

    move-result v2
    :try_end_b
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_12

    :catch_4
    :try_start_c
    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->lineEnd:I

    :cond_22
    :goto_13
    if-eqz v8, :cond_23

    if-eqz v12, :cond_23

    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->sourceParser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->javadocInvalidParamTypeParameter(II)V

    goto :goto_14

    :cond_23
    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->sourceParser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->javadocInvalidParamTagName(II)V

    :cond_24
    :goto_14
    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iput v0, v2, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iput v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    const/4 v0, -0x1

    iput v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->currentTokenType:I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    iput-boolean v4, v2, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->tokenizeWhiteSpace:Z

    return v7

    :cond_25
    :goto_15
    const/16 v2, 0x12

    if-ne v10, v2, :cond_26

    const/4 v12, 0x1

    :cond_26
    if-eqz v11, :cond_27

    if-nez v3, :cond_27

    :try_start_d
    iget-object v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenStartPosition()I

    move-result v0

    :cond_27
    if-nez v3, :cond_29

    if-eqz v3, :cond_28

    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->lineEnd:I

    goto :goto_16

    :cond_28
    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenEndPosition()I

    move-result v2

    :goto_16
    move v11, v7

    move v13, v11

    const/4 v5, 0x1

    :goto_17
    const/4 v9, -0x1

    goto/16 :goto_5

    :cond_29
    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->lineEnd:I

    move v11, v7

    :cond_2a
    iget-object v5, v1, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v5, v5, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iget v9, v1, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->lineEnd:I

    const/4 v14, 0x1

    add-int/2addr v9, v14

    if-le v5, v9, :cond_2b

    move v3, v14

    :cond_2b
    if-eqz v11, :cond_2c

    move v5, v14

    goto :goto_17

    :cond_2c
    iget-boolean v3, v1, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->reportProblems:Z

    if-eqz v3, :cond_2f

    if-eqz v13, :cond_2d

    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->sourceParser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v3

    iget-object v5, v1, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->sourceParser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    iget v5, v5, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->modifiers:I

    invoke-virtual {v3, v0, v2, v5}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->javadocMissingParamName(III)V

    goto :goto_18

    :cond_2d
    if-eqz v8, :cond_2e

    if-eqz v12, :cond_2e

    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->sourceParser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->javadocInvalidParamTypeParameter(II)V

    goto :goto_18

    :cond_2e
    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->sourceParser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->javadocInvalidParamTagName(II)V

    :cond_2f
    :goto_18
    if-nez v6, :cond_30

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iput v0, v2, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iput v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    :cond_30
    const/4 v0, -0x1

    iput v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->currentTokenType:I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_2

    :goto_19
    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iput-boolean v4, v2, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->tokenizeWhiteSpace:Z

    throw v0
.end method

.method public parseQualifiedName(Z)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/compiler/InvalidInputException;
        }
    .end annotation

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierPtr:I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierLengthPtr:I

    :cond_0
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->kind:I

    and-int/lit16 p1, p1, 0xff

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->readTokenSafely()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_e

    const/16 v5, 0x11

    const/16 v6, 0x8

    if-eq v3, v5, :cond_4

    const/16 v5, 0x16

    if-eq v3, v5, :cond_1

    const/16 v1, 0x30

    if-eq v3, v1, :cond_4

    const/16 v1, 0x43

    if-eq v3, v1, :cond_4

    const/16 v1, 0x46

    if-eq v3, v1, :cond_4

    const/16 v1, 0x53

    if-eq v3, v1, :cond_4

    const/16 v1, 0x7b

    if-eq v3, v1, :cond_4

    const/16 v1, 0x55

    if-eq v3, v1, :cond_4

    const/16 v1, 0x56

    if-eq v3, v1, :cond_4

    packed-switch v3, :pswitch_data_0

    packed-switch v3, :pswitch_data_1

    packed-switch v3, :pswitch_data_2

    packed-switch v3, :pswitch_data_3

    packed-switch v3, :pswitch_data_4

    goto :goto_2

    :cond_1
    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_2

    goto :goto_3

    :cond_2
    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    move v4, v1

    :goto_1
    invoke-virtual {p0, v4, v1}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->pushIdentifier(ZZ)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->consumeToken()V

    goto/16 :goto_5

    :cond_4
    :pswitch_0
    if-nez v2, :cond_5

    invoke-virtual {p0, v4, v4}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->pushIdentifier(ZZ)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->consumeToken()V

    goto :goto_4

    :cond_5
    :goto_2
    if-nez v2, :cond_7

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierPtr:I

    if-ltz p1, :cond_6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierPositionStack:[J

    aget-wide v1, v0, p1

    long-to-int p1, v1

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->lastIdentifierEndPosition:I

    :cond_6
    const/4 p1, 0x0

    return-object p1

    :cond_7
    and-int/lit8 v1, v2, 0x1

    if-nez v1, :cond_b

    const/4 v1, 0x2

    if-eq p1, v1, :cond_9

    if-ne p1, v6, :cond_a

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierPtr:I

    if-ltz p1, :cond_8

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierPositionStack:[J

    aget-wide v2, v1, p1

    long-to-int p1, v2

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->lastIdentifierEndPosition:I

    :cond_8
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->syntaxRecoverQualifiedName(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_9
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->currentTokenType:I

    if-eq p1, v0, :cond_a

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tokenPreviousPosition:I

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iput p1, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->currentTokenType:I

    :cond_a
    new-instance p1, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    invoke-direct {p1}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>()V

    throw p1

    :cond_b
    :goto_3
    move v3, v0

    :goto_4
    if-eq p1, v6, :cond_c

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->currentTokenType:I

    if-eq p1, v0, :cond_c

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tokenPreviousPosition:I

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iput p1, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->currentTokenType:I

    :cond_c
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierPtr:I

    if-ltz p1, :cond_d

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierPositionStack:[J

    aget-wide v1, v0, p1

    long-to-int p1, v1

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->lastIdentifierEndPosition:I

    :cond_d
    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->createTypeReference(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_e
    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_f

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->consumeToken()V

    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_f
    new-instance p1, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    invoke-direct {p1}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>()V

    throw p1

    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x26
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x32
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x49
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x63
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public parseReference()Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/compiler/InvalidInputException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v3, v1

    :cond_0
    const/4 v4, 0x0

    :try_start_0
    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v6, v6, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->eofPosition:I

    const/16 v7, 0x3a

    const/16 v8, 0x2f

    const/16 v9, 0xa

    const/4 v10, 0x1

    if-lt v5, v6, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->readTokenSafely()I

    move-result v6

    const/16 v11, 0xb

    if-eq v6, v11, :cond_10

    const/16 v11, 0x16

    if-eq v6, v11, :cond_f

    const/16 v11, 0x2e

    if-eq v6, v11, :cond_9

    const/16 v5, 0x81

    if-eq v6, v5, :cond_2

    goto/16 :goto_3

    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->consumeToken()V

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget-char v6, v5, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    const/16 v11, 0x23

    if-ne v6, v11, :cond_4

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->parseMember(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->pushSeeRef(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_3
    return v4

    :cond_4
    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentIdentifierSource()[C

    move-result-object v5

    array-length v6, v5

    if-lez v6, :cond_11

    aget-char v6, v5, v4

    const/16 v11, 0x22

    if-ne v6, v11, :cond_11

    iget-boolean v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->reportProblems:Z

    if-eqz v2, :cond_8

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagValue:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_7

    array-length v2, v5

    :goto_0
    if-ge v10, v2, :cond_6

    aget-char v3, v5, v10

    invoke-static {v3}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isLetter(C)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_1

    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_6
    :goto_1
    add-int/lit8 v2, v2, -0x2

    if-ge v10, v2, :cond_7

    aget-char v2, v5, v10

    if-ne v2, v7, :cond_7

    add-int/lit8 v2, v10, 0x1

    aget-char v2, v5, v2

    if-ne v2, v8, :cond_7

    add-int/lit8 v10, v10, 0x2

    aget-char v2, v5, v10

    if-ne v2, v8, :cond_7

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->sourceParser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenStartPosition()I

    move-result v3

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->getTokenEndPosition()I

    move-result v5

    invoke-virtual {v2, v3, v5}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->javadocInvalidSeeUrlReference(II)V

    goto :goto_2

    :cond_7
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->sourceParser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenStartPosition()I

    move-result v3

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->getTokenEndPosition()I

    move-result v5

    invoke-virtual {v2, v3, v5}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->javadocInvalidReference(II)V

    :cond_8
    :goto_2
    return v4

    :cond_9
    if-eqz v2, :cond_a

    goto :goto_3

    :cond_a
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->consumeToken()V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenStartPosition()I

    move-result v2

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagValue:I

    if-ne v3, v9, :cond_c

    iget-boolean v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->reportProblems:Z

    if-eqz v3, :cond_b

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->sourceParser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v3

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->getTokenEndPosition()I

    move-result v5

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->sourceParser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    iget v6, v6, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->modifiers:I

    invoke-virtual {v3, v2, v5, v6}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->javadocInvalidValueReference(III)V

    :cond_b
    return v4

    :cond_c
    invoke-virtual {p0, v5}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->verifyEndLine(I)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->createFakeReference(I)Z

    move-result v0

    return v0

    :cond_d
    iget-boolean v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->reportProblems:Z

    if-eqz v2, :cond_e

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->sourceParser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->lineEnd:I

    invoke-virtual {v2, v3, v5}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->javadocUnexpectedText(II)V

    :cond_e
    return v4

    :cond_f
    if-nez v2, :cond_11

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenStartPosition()I

    move-result v3

    invoke-virtual {p0, v10}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->parseQualifiedName(Z)Ljava/lang/Object;

    move-result-object v2

    iget-boolean v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->abort:Z

    if-eqz v5, :cond_0

    return v4

    :cond_10
    if-eqz v2, :cond_21

    :cond_11
    :goto_3
    if-nez v2, :cond_15

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tokenPreviousPosition:I

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iput v2, v3, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->currentTokenType:I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagValue:I

    if-ne v2, v9, :cond_13

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->kind:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_12

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->createTag()V

    :cond_12
    return v10

    :cond_13
    iget-boolean v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->reportProblems:Z

    if-eqz v2, :cond_14

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->sourceParser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagSourceStart:I

    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagSourceEnd:I

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->sourceParser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    iget v6, v6, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->modifiers:I

    invoke-virtual {v2, v3, v5, v6}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->javadocMissingReference(III)V

    :cond_14
    return v4

    :cond_15
    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->lastIdentifierEndPosition:I

    iget v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->javadocStart:I

    if-le v5, v6, :cond_16

    add-int/2addr v5, v10

    iput v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iput v5, v6, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    :cond_16
    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->currentTokenType:I

    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagValue:I

    if-ne v5, v9, :cond_18

    iget-boolean v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->reportProblems:Z

    if-eqz v2, :cond_17

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->sourceParser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->lineEnd:I

    invoke-virtual {v2, v3, v5}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->javadocInvalidReference(II)V

    :cond_17
    return v4

    :cond_18
    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->readChar()C

    move-result v6

    const/16 v11, 0x28

    if-eq v6, v11, :cond_1f

    if-eq v6, v7, :cond_19

    goto :goto_4

    :cond_19
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->readChar()C

    move-result v6

    if-ne v6, v8, :cond_1a

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->readChar()C

    move-result v7

    if-ne v6, v7, :cond_1a

    iget-boolean v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->reportProblems:Z

    if-eqz v6, :cond_1a

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->sourceParser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->lineEnd:I

    invoke-virtual {v2, v3, v5}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->javadocInvalidSeeUrlReference(II)V

    return v4

    :cond_1a
    :goto_4
    iput v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->verifySpaceOrEndComment()Z

    move-result v5

    if-nez v5, :cond_1e

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tokenPreviousPosition:I

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iput v2, v5, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->currentTokenType:I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->starPosition:I

    if-ne v2, v1, :cond_1b

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->lineEnd:I

    :cond_1b
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->source:[C

    aget-char v5, v5, v2

    if-ne v5, v9, :cond_1c

    add-int/lit8 v2, v2, -0x1

    :cond_1c
    iget-boolean v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->reportProblems:Z

    if-eqz v5, :cond_1d

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->sourceParser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v5

    invoke-virtual {v5, v3, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->javadocMalformedSeeReference(II)V

    :cond_1d
    return v4

    :cond_1e
    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->pushSeeRef(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_1f
    iget-boolean v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->reportProblems:Z

    if-eqz v2, :cond_20

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->sourceParser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->lineEnd:I

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->source:[C

    sub-int v7, v5, v3

    add-int/2addr v7, v10

    invoke-static {v6, v3, v7}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v5, v6}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->javadocMissingHashCharacter(IILjava/lang/String;)V

    :cond_20
    return v4

    :cond_21
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->consumeToken()V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenStartPosition()I

    move-result v2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->parseHref()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->consumeToken()V

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagValue:I

    if-ne v3, v9, :cond_23

    iget-boolean v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->reportProblems:Z

    if-eqz v3, :cond_22

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->sourceParser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v3

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->getIndexPosition()I

    move-result v5

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->sourceParser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    iget v6, v6, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->modifiers:I

    invoke-virtual {v3, v2, v5, v6}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->javadocInvalidValueReference(III)V

    :cond_22
    return v4

    :cond_23
    invoke-virtual {p0, v5}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->verifyEndLine(I)Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->createFakeReference(I)Z

    move-result v0

    return v0

    :cond_24
    iget-boolean v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->reportProblems:Z

    if-eqz v2, :cond_26

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->sourceParser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->lineEnd:I

    invoke-virtual {v2, v3, v5}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->javadocUnexpectedText(II)V

    goto :goto_5

    :cond_25
    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagValue:I

    if-ne v3, v9, :cond_26

    iget-boolean v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->reportProblems:Z

    if-eqz v3, :cond_26

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->sourceParser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v3

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->getIndexPosition()I

    move-result v5

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->sourceParser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    iget v6, v6, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->modifiers:I

    invoke-virtual {v3, v2, v5, v6}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->javadocInvalidValueReference(III)V
    :try_end_0
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_26
    :goto_5
    return v4

    :catch_0
    iget-boolean v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->reportProblems:Z

    if-eqz v2, :cond_27

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->sourceParser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->getTokenEndPosition()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->javadocInvalidReference(II)V

    :cond_27
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tokenPreviousPosition:I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iput v0, v2, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->currentTokenType:I

    return v4
.end method

.method public abstract parseTag(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/compiler/InvalidInputException;
        }
    .end annotation
.end method

.method public parseThrows()Z
    .locals 6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->parseQualifiedName(Z)Ljava/lang/Object;

    move-result-object v1

    iget-boolean v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->abort:Z

    if-eqz v3, :cond_0

    return v2

    :cond_0
    if-nez v1, :cond_1

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->reportProblems:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->sourceParser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagSourceStart:I

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagSourceEnd:I

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->sourceParser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    iget v5, v5, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->modifiers:I

    invoke-virtual {v1, v3, v4, v5}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->javadocMissingThrowsClassName(III)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->pushThrowName(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->reportProblems:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->sourceParser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->getTokenEndPosition()I

    move-result v3

    invoke-virtual {v1, v0, v3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->javadocInvalidThrowsClass(II)V

    :cond_2
    :goto_0
    return v2
.end method

.method public peekChar()C
    .locals 7

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->source:[C

    add-int/lit8 v2, v0, 0x1

    aget-char v3, v1, v0

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_1

    aget-char v1, v1, v2

    const/16 v2, 0x75

    if-ne v1, v2, :cond_1

    add-int/lit8 v0, v0, 0x2

    :goto_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->source:[C

    aget-char v1, v1, v0

    if-eq v1, v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->getHexadecimalValue(C)I

    move-result v1

    const/16 v4, 0xf

    if-gt v1, v4, :cond_1

    if-ltz v1, :cond_1

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->source:[C

    add-int/lit8 v6, v0, 0x2

    aget-char v2, v5, v2

    invoke-static {v2}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->getHexadecimalValue(C)I

    move-result v2

    if-gt v2, v4, :cond_1

    if-ltz v2, :cond_1

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->source:[C

    add-int/lit8 v0, v0, 0x3

    aget-char v5, v5, v6

    invoke-static {v5}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->getHexadecimalValue(C)I

    move-result v5

    if-gt v5, v4, :cond_1

    if-ltz v5, :cond_1

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->source:[C

    aget-char v0, v6, v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->getHexadecimalValue(C)I

    move-result v0

    if-gt v0, v4, :cond_1

    if-ltz v0, :cond_1

    mul-int/lit8 v1, v1, 0x10

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x10

    add-int/2addr v1, v5

    mul-int/lit8 v1, v1, 0x10

    add-int/2addr v1, v0

    int-to-char v3, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v3
.end method

.method public pushIdentifier(ZZ)V
    .locals 7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierStack:[[C

    array-length v1, v0

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierPtr:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierPtr:I

    const/4 v4, 0x0

    if-lt v2, v1, :cond_0

    add-int/lit8 v2, v1, 0xa

    new-array v5, v2, [[C

    iput-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierStack:[[C

    invoke-static {v0, v4, v5, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierPositionStack:[J

    new-array v2, v2, [J

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierPositionStack:[J

    invoke-static {v0, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierStack:[[C

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierPtr:I

    if-eqz p2, :cond_1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenSource()[C

    move-result-object p2

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentIdentifierSource()[C

    move-result-object p2

    :goto_0
    aput-object p2, v0, v1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierPositionStack:[J

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierPtr:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    int-to-long v5, v2

    const/16 v2, 0x20

    shl-long/2addr v5, v2

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    sub-int/2addr v1, v3

    int-to-long v1, v1

    add-long/2addr v5, v1

    aput-wide v5, p2, v0

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierLengthStack:[I

    array-length p2, p1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierLengthPtr:I

    add-int/2addr v0, v3

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierLengthPtr:I

    if-lt v0, p2, :cond_2

    add-int/lit8 v0, p2, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierLengthStack:[I

    invoke-static {p1, v4, v0, v4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierLengthStack:[I

    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierLengthPtr:I

    aput v3, p1, p2

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierLengthStack:[I

    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierLengthPtr:I

    aget v0, p1, p2

    add-int/2addr v0, v3

    aput v0, p1, p2

    :goto_1
    return-void
.end method

.method public pushOnAstStack(Ljava/lang/Object;Z)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->astLengthStack:[I

    array-length p2, p1

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->astLengthPtr:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->astLengthPtr:I

    if-lt v2, p2, :cond_0

    add-int/lit8 v0, p2, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->astLengthStack:[I

    invoke-static {p1, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->astLengthStack:[I

    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->astLengthPtr:I

    aput v1, p1, p2

    return-void

    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->astStack:[Ljava/lang/Object;

    array-length v3, v2

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->astPtr:I

    add-int/2addr v4, v0

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->astPtr:I

    if-lt v4, v3, :cond_2

    add-int/lit8 v4, v3, 0xa

    new-array v4, v4, [Ljava/lang/Object;

    iput-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->astStack:[Ljava/lang/Object;

    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->astPtr:I

    :cond_2
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->astStack:[Ljava/lang/Object;

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->astPtr:I

    aput-object p1, v2, v3

    if-eqz p2, :cond_4

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->astLengthStack:[I

    array-length p2, p1

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->astLengthPtr:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->astLengthPtr:I

    if-lt v2, p2, :cond_3

    add-int/lit8 v2, p2, 0xa

    new-array v2, v2, [I

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->astLengthStack:[I

    invoke-static {p1, v1, v2, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->astLengthStack:[I

    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->astLengthPtr:I

    aput v0, p1, p2

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->astLengthStack:[I

    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->astLengthPtr:I

    aget v1, p1, p2

    add-int/2addr v1, v0

    aput v1, p1, p2

    :goto_0
    return-void
.end method

.method public abstract pushParamName(Z)Z
.end method

.method public abstract pushSeeRef(Ljava/lang/Object;)Z
.end method

.method public pushText(II)V
    .locals 0

    return-void
.end method

.method public abstract pushThrowName(Ljava/lang/Object;)Z
.end method

.method public readChar()C
    .locals 9

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->source:[C

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    aget-char v3, v0, v1

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_2

    aget-char v0, v0, v2

    const/16 v4, 0x75

    if-ne v0, v4, :cond_2

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->source:[C

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    aget-char v0, v0, v1

    if-eq v0, v4, :cond_1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->getHexadecimalValue(C)I

    move-result v0

    const/16 v1, 0xf

    if-gt v0, v1, :cond_0

    if-ltz v0, :cond_0

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->source:[C

    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    aget-char v4, v4, v5

    invoke-static {v4}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->getHexadecimalValue(C)I

    move-result v4

    if-gt v4, v1, :cond_0

    if-ltz v4, :cond_0

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->source:[C

    iget v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    aget-char v5, v5, v6

    invoke-static {v5}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->getHexadecimalValue(C)I

    move-result v5

    if-gt v5, v1, :cond_0

    if-ltz v5, :cond_0

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->source:[C

    iget v7, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    aget-char v6, v6, v7

    invoke-static {v6}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->getHexadecimalValue(C)I

    move-result v6

    if-gt v6, v1, :cond_0

    if-ltz v6, :cond_0

    mul-int/lit8 v0, v0, 0x10

    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x10

    add-int/2addr v0, v5

    mul-int/lit8 v0, v0, 0x10

    add-int/2addr v0, v6

    int-to-char v3, v0

    goto :goto_1

    :cond_0
    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    goto :goto_0

    :cond_2
    :goto_1
    return v3
.end method

.method public readToken()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/compiler/InvalidInputException;
        }
    .end annotation

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->currentTokenType:I

    if-gez v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tokenPreviousPosition:I

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextToken()I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->currentTokenType:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->lineEnd:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->lineStarted:Z

    :goto_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->currentTokenType:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextToken()I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->currentTokenType:I

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->lineStarted:Z

    :cond_2
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->currentTokenType:I

    return v0
.end method

.method public readTokenAndConsume()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/compiler/InvalidInputException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->readToken()I

    move-result v0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->consumeToken()V

    return v0
.end method

.method public readTokenSafely()I
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->readToken()I

    move-result v0
    :try_end_0
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/16 v0, 0x81

    :goto_0
    return v0
.end method

.method public recordInheritedPosition(J)V
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->inheritedPositions:[J

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->inheritedPositions:[J

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->inheritedPositionsPtr:I

    goto :goto_0

    :cond_0
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->inheritedPositionsPtr:I

    array-length v3, v0

    if-ne v2, v3, :cond_1

    add-int/lit8 v3, v2, 0x4

    new-array v3, v3, [J

    iput-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->inheritedPositions:[J

    invoke-static {v0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->inheritedPositions:[J

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->inheritedPositionsPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->inheritedPositionsPtr:I

    aput-wide p1, v0, v1

    return-void
.end method

.method public refreshInlineTagPosition(I)V
    .locals 0

    return-void
.end method

.method public refreshReturnStatement()V
    .locals 0

    return-void
.end method

.method public setInlineTagStarted(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->inlineTagStarted:Z

    return-void
.end method

.method public syntaxRecoverQualifiedName(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/compiler/InvalidInputException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    if-ge v1, v2, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-ge v1, v2, :cond_1

    move v1, v2

    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->source:[C

    array-length v4, v2

    if-ne v3, v4, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EOF\n\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->source:[C

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    array-length v4, v2

    if-le v1, v4, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "behind the EOF\n\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->source:[C

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    new-array v4, v3, [C

    const/4 v5, 0x0

    invoke-static {v2, v5, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v1, -0x1

    sub-int v6, v2, v3

    add-int/lit8 v6, v6, 0x1

    const/4 v7, -0x1

    if-le v6, v7, :cond_4

    new-array v7, v6, [C

    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->source:[C

    invoke-static {v8, v3, v7, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_4
    sget-object v7, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    :goto_1
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->source:[C

    array-length v6, v3

    sub-int/2addr v6, v2

    new-array v6, v6, [C

    array-length v8, v3

    sub-int/2addr v8, v2

    add-int/lit8 v8, v8, -0x1

    invoke-static {v3, v1, v6, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    if-ge v1, v2, :cond_5

    const-string v1, "\n===============================\nScanner current position here -->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_5
    const-string v1, "\n===============================\nParser index here -->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    if-ge v1, v2, :cond_6

    const-string v1, "<-- Parser index here\n===============================\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_6
    const-string v1, "<-- Scanner current position here\n===============================\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_3
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract updateDocComment()V
.end method

.method public updateLineEnd()V
    .locals 2

    :goto_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->lineEnd:I

    add-int/lit8 v1, v1, 0x1

    if-gt v0, v1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->linePtr:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->lastLinePtr:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->linePtr:I

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getLineEnd(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->lineEnd:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->javadocEnd:I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->lineEnd:I

    return-void
.end method

.method public verifyEndLine(I)Z
    .locals 7

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->kind:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-boolean v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->inlineTagStarted:Z

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->peekChar()C

    move-result v3

    const/16 v4, 0x7d

    if-ne v3, v4, :cond_2

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->createTag()V

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->pushText(II)V

    :cond_1
    return v2

    :cond_2
    return v1

    :cond_3
    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    const/4 v4, -0x1

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->starPosition:I

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->readChar()C

    move-result v4

    move v5, v3

    :goto_1
    const/16 v6, 0x9

    if-eq v4, v6, :cond_9

    const/16 v6, 0xa

    if-eq v4, v6, :cond_7

    const/16 v6, 0xc

    if-eq v4, v6, :cond_9

    const/16 v6, 0xd

    if-eq v4, v6, :cond_7

    const/16 v6, 0x20

    if-eq v4, v6, :cond_9

    const/16 v6, 0x2a

    if-eq v4, v6, :cond_6

    const/16 v5, 0x2f

    if-eq v4, v5, :cond_4

    goto :goto_2

    :cond_4
    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->starPosition:I

    if-lt v4, p1, :cond_a

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->createTag()V

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->starPosition:I

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->pushText(II)V

    :cond_5
    return v2

    :cond_6
    iput v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->starPosition:I

    goto :goto_3

    :cond_7
    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->createTag()V

    invoke-virtual {p0, p1, v5}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->pushText(II)V

    :cond_8
    iput v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    return v2

    :cond_9
    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->starPosition:I

    if-ltz v4, :cond_b

    :cond_a
    :goto_2
    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    return v1

    :cond_b
    :goto_3
    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->readChar()C

    move-result v4

    goto :goto_1
.end method

.method public verifySpaceOrEndComment()Z
    .locals 7

    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->starPosition:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->peekChar()C

    move-result v1

    const/16 v2, 0x7d

    if-eq v1, v2, :cond_5

    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isWhitespace(C)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->readChar()C

    move-result v3

    :goto_0
    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->source:[C

    array-length v5, v5

    const/4 v6, 0x0

    if-lt v4, v5, :cond_1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    return v6

    :cond_1
    const/16 v5, 0x2a

    if-eq v3, v5, :cond_4

    const/16 v1, 0x2f

    if-eq v3, v1, :cond_2

    goto :goto_1

    :cond_2
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->starPosition:I

    if-lt v1, v0, :cond_3

    return v2

    :cond_3
    :goto_1
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    return v6

    :cond_4
    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->starPosition:I

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->readChar()C

    move-result v3

    move v1, v4

    goto :goto_0

    :cond_5
    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->inlineTagStarted:Z

    return v0
.end method
