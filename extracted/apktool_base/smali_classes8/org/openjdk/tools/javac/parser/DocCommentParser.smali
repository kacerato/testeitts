.class public Lorg/openjdk/tools/javac/parser/DocCommentParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/parser/DocCommentParser$TagParser;,
        Lorg/openjdk/tools/javac/parser/DocCommentParser$WhitespaceRetentionPolicy;,
        Lorg/openjdk/tools/javac/parser/DocCommentParser$ParseException;
    }
.end annotation


# instance fields
.field protected bp:I

.field protected buf:[C

.field protected buflen:I

.field protected ch:C

.field final comment:Lorg/openjdk/tools/javac/parser/Tokens$Comment;

.field final diagSource:Lorg/openjdk/tools/javac/util/DiagnosticSource;

.field final fac:Lorg/openjdk/tools/javac/parser/ParserFactory;

.field lastNonWhite:I

.field final m:Lorg/openjdk/tools/javac/tree/DocTreeMaker;

.field final names:Lorg/openjdk/tools/javac/util/Names;

.field newline:Z

.field sentenceBreaker:Ljava/text/BreakIterator;

.field tagParsers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/util/Name;",
            "Lorg/openjdk/tools/javac/parser/DocCommentParser$TagParser;",
            ">;"
        }
    .end annotation
.end field

.field textStart:I


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/parser/ParserFactory;)V
    .locals 1

    const/4 v0, 0x0

    .line 11
    invoke-direct {p0, p1, v0, v0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;-><init>(Lorg/openjdk/tools/javac/parser/ParserFactory;Lorg/openjdk/tools/javac/util/DiagnosticSource;Lorg/openjdk/tools/javac/parser/Tokens$Comment;)V

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/parser/ParserFactory;Lorg/openjdk/tools/javac/util/DiagnosticSource;Lorg/openjdk/tools/javac/parser/Tokens$Comment;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->textStart:I

    .line 3
    iput v0, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->lastNonWhite:I

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->newline:Z

    .line 5
    iput-object p1, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->fac:Lorg/openjdk/tools/javac/parser/ParserFactory;

    .line 6
    iput-object p2, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->diagSource:Lorg/openjdk/tools/javac/util/DiagnosticSource;

    .line 7
    iput-object p3, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->comment:Lorg/openjdk/tools/javac/parser/Tokens$Comment;

    .line 8
    iget-object p2, p1, Lorg/openjdk/tools/javac/parser/ParserFactory;->names:Lorg/openjdk/tools/javac/util/Names;

    iput-object p2, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->names:Lorg/openjdk/tools/javac/util/Names;

    .line 9
    iget-object p1, p1, Lorg/openjdk/tools/javac/parser/ParserFactory;->docTreeMaker:Lorg/openjdk/tools/javac/tree/DocTreeMaker;

    iput-object p1, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->m:Lorg/openjdk/tools/javac/tree/DocTreeMaker;

    .line 10
    invoke-direct {p0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->initTagParsers()V

    return-void
.end method

.method public static synthetic access$000(Lorg/openjdk/tools/javac/parser/DocCommentParser;Lorg/openjdk/tools/javac/parser/DocCommentParser$WhitespaceRetentionPolicy;)Lorg/openjdk/tools/javac/tree/DCTree;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/javac/parser/DocCommentParser$ParseException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->inlineText(Lorg/openjdk/tools/javac/parser/DocCommentParser$WhitespaceRetentionPolicy;)Lorg/openjdk/tools/javac/tree/DCTree;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Lorg/openjdk/tools/javac/parser/DocCommentParser;)Lorg/openjdk/tools/javac/util/List;
    .locals 0

    invoke-direct {p0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->inlineContent()Lorg/openjdk/tools/javac/util/List;

    move-result-object p0

    return-object p0
.end method

.method private initTagParsers()V
    .locals 27

    move-object/from16 v0, p0

    new-instance v1, Lorg/openjdk/tools/javac/parser/DocCommentParser$1;

    sget-object v2, Lorg/openjdk/tools/javac/parser/DocCommentParser$TagParser$Kind;->BLOCK:Lorg/openjdk/tools/javac/parser/DocCommentParser$TagParser$Kind;

    sget-object v3, Lorg/openjdk/source/doctree/DocTree$Kind;->AUTHOR:Lorg/openjdk/source/doctree/DocTree$Kind;

    invoke-direct {v1, v0, v2, v3}, Lorg/openjdk/tools/javac/parser/DocCommentParser$1;-><init>(Lorg/openjdk/tools/javac/parser/DocCommentParser;Lorg/openjdk/tools/javac/parser/DocCommentParser$TagParser$Kind;Lorg/openjdk/source/doctree/DocTree$Kind;)V

    new-instance v3, Lorg/openjdk/tools/javac/parser/DocCommentParser$2;

    sget-object v4, Lorg/openjdk/tools/javac/parser/DocCommentParser$TagParser$Kind;->INLINE:Lorg/openjdk/tools/javac/parser/DocCommentParser$TagParser$Kind;

    sget-object v5, Lorg/openjdk/source/doctree/DocTree$Kind;->CODE:Lorg/openjdk/source/doctree/DocTree$Kind;

    const/4 v6, 0x1

    invoke-direct {v3, v0, v4, v5, v6}, Lorg/openjdk/tools/javac/parser/DocCommentParser$2;-><init>(Lorg/openjdk/tools/javac/parser/DocCommentParser;Lorg/openjdk/tools/javac/parser/DocCommentParser$TagParser$Kind;Lorg/openjdk/source/doctree/DocTree$Kind;Z)V

    new-instance v5, Lorg/openjdk/tools/javac/parser/DocCommentParser$3;

    sget-object v7, Lorg/openjdk/source/doctree/DocTree$Kind;->DEPRECATED:Lorg/openjdk/source/doctree/DocTree$Kind;

    invoke-direct {v5, v0, v2, v7}, Lorg/openjdk/tools/javac/parser/DocCommentParser$3;-><init>(Lorg/openjdk/tools/javac/parser/DocCommentParser;Lorg/openjdk/tools/javac/parser/DocCommentParser$TagParser$Kind;Lorg/openjdk/source/doctree/DocTree$Kind;)V

    new-instance v7, Lorg/openjdk/tools/javac/parser/DocCommentParser$4;

    sget-object v8, Lorg/openjdk/source/doctree/DocTree$Kind;->DOC_ROOT:Lorg/openjdk/source/doctree/DocTree$Kind;

    invoke-direct {v7, v0, v4, v8}, Lorg/openjdk/tools/javac/parser/DocCommentParser$4;-><init>(Lorg/openjdk/tools/javac/parser/DocCommentParser;Lorg/openjdk/tools/javac/parser/DocCommentParser$TagParser$Kind;Lorg/openjdk/source/doctree/DocTree$Kind;)V

    new-instance v8, Lorg/openjdk/tools/javac/parser/DocCommentParser$5;

    sget-object v9, Lorg/openjdk/source/doctree/DocTree$Kind;->EXCEPTION:Lorg/openjdk/source/doctree/DocTree$Kind;

    invoke-direct {v8, v0, v2, v9}, Lorg/openjdk/tools/javac/parser/DocCommentParser$5;-><init>(Lorg/openjdk/tools/javac/parser/DocCommentParser;Lorg/openjdk/tools/javac/parser/DocCommentParser$TagParser$Kind;Lorg/openjdk/source/doctree/DocTree$Kind;)V

    new-instance v9, Lorg/openjdk/tools/javac/parser/DocCommentParser$6;

    sget-object v10, Lorg/openjdk/source/doctree/DocTree$Kind;->HIDDEN:Lorg/openjdk/source/doctree/DocTree$Kind;

    invoke-direct {v9, v0, v2, v10}, Lorg/openjdk/tools/javac/parser/DocCommentParser$6;-><init>(Lorg/openjdk/tools/javac/parser/DocCommentParser;Lorg/openjdk/tools/javac/parser/DocCommentParser$TagParser$Kind;Lorg/openjdk/source/doctree/DocTree$Kind;)V

    new-instance v10, Lorg/openjdk/tools/javac/parser/DocCommentParser$7;

    sget-object v11, Lorg/openjdk/source/doctree/DocTree$Kind;->INDEX:Lorg/openjdk/source/doctree/DocTree$Kind;

    invoke-direct {v10, v0, v4, v11}, Lorg/openjdk/tools/javac/parser/DocCommentParser$7;-><init>(Lorg/openjdk/tools/javac/parser/DocCommentParser;Lorg/openjdk/tools/javac/parser/DocCommentParser$TagParser$Kind;Lorg/openjdk/source/doctree/DocTree$Kind;)V

    new-instance v11, Lorg/openjdk/tools/javac/parser/DocCommentParser$8;

    sget-object v12, Lorg/openjdk/source/doctree/DocTree$Kind;->INHERIT_DOC:Lorg/openjdk/source/doctree/DocTree$Kind;

    invoke-direct {v11, v0, v4, v12}, Lorg/openjdk/tools/javac/parser/DocCommentParser$8;-><init>(Lorg/openjdk/tools/javac/parser/DocCommentParser;Lorg/openjdk/tools/javac/parser/DocCommentParser$TagParser$Kind;Lorg/openjdk/source/doctree/DocTree$Kind;)V

    new-instance v12, Lorg/openjdk/tools/javac/parser/DocCommentParser$9;

    sget-object v13, Lorg/openjdk/source/doctree/DocTree$Kind;->LINK:Lorg/openjdk/source/doctree/DocTree$Kind;

    invoke-direct {v12, v0, v4, v13}, Lorg/openjdk/tools/javac/parser/DocCommentParser$9;-><init>(Lorg/openjdk/tools/javac/parser/DocCommentParser;Lorg/openjdk/tools/javac/parser/DocCommentParser$TagParser$Kind;Lorg/openjdk/source/doctree/DocTree$Kind;)V

    new-instance v13, Lorg/openjdk/tools/javac/parser/DocCommentParser$10;

    sget-object v14, Lorg/openjdk/source/doctree/DocTree$Kind;->LINK_PLAIN:Lorg/openjdk/source/doctree/DocTree$Kind;

    invoke-direct {v13, v0, v4, v14}, Lorg/openjdk/tools/javac/parser/DocCommentParser$10;-><init>(Lorg/openjdk/tools/javac/parser/DocCommentParser;Lorg/openjdk/tools/javac/parser/DocCommentParser$TagParser$Kind;Lorg/openjdk/source/doctree/DocTree$Kind;)V

    new-instance v14, Lorg/openjdk/tools/javac/parser/DocCommentParser$11;

    sget-object v15, Lorg/openjdk/source/doctree/DocTree$Kind;->LITERAL:Lorg/openjdk/source/doctree/DocTree$Kind;

    invoke-direct {v14, v0, v4, v15, v6}, Lorg/openjdk/tools/javac/parser/DocCommentParser$11;-><init>(Lorg/openjdk/tools/javac/parser/DocCommentParser;Lorg/openjdk/tools/javac/parser/DocCommentParser$TagParser$Kind;Lorg/openjdk/source/doctree/DocTree$Kind;Z)V

    new-instance v15, Lorg/openjdk/tools/javac/parser/DocCommentParser$12;

    sget-object v6, Lorg/openjdk/source/doctree/DocTree$Kind;->PARAM:Lorg/openjdk/source/doctree/DocTree$Kind;

    invoke-direct {v15, v0, v2, v6}, Lorg/openjdk/tools/javac/parser/DocCommentParser$12;-><init>(Lorg/openjdk/tools/javac/parser/DocCommentParser;Lorg/openjdk/tools/javac/parser/DocCommentParser$TagParser$Kind;Lorg/openjdk/source/doctree/DocTree$Kind;)V

    new-instance v6, Lorg/openjdk/tools/javac/parser/DocCommentParser$13;

    move-object/from16 v16, v15

    sget-object v15, Lorg/openjdk/source/doctree/DocTree$Kind;->PROVIDES:Lorg/openjdk/source/doctree/DocTree$Kind;

    invoke-direct {v6, v0, v2, v15}, Lorg/openjdk/tools/javac/parser/DocCommentParser$13;-><init>(Lorg/openjdk/tools/javac/parser/DocCommentParser;Lorg/openjdk/tools/javac/parser/DocCommentParser$TagParser$Kind;Lorg/openjdk/source/doctree/DocTree$Kind;)V

    new-instance v15, Lorg/openjdk/tools/javac/parser/DocCommentParser$14;

    move-object/from16 v17, v6

    sget-object v6, Lorg/openjdk/source/doctree/DocTree$Kind;->RETURN:Lorg/openjdk/source/doctree/DocTree$Kind;

    invoke-direct {v15, v0, v2, v6}, Lorg/openjdk/tools/javac/parser/DocCommentParser$14;-><init>(Lorg/openjdk/tools/javac/parser/DocCommentParser;Lorg/openjdk/tools/javac/parser/DocCommentParser$TagParser$Kind;Lorg/openjdk/source/doctree/DocTree$Kind;)V

    new-instance v6, Lorg/openjdk/tools/javac/parser/DocCommentParser$15;

    move-object/from16 v18, v15

    sget-object v15, Lorg/openjdk/source/doctree/DocTree$Kind;->SEE:Lorg/openjdk/source/doctree/DocTree$Kind;

    invoke-direct {v6, v0, v2, v15}, Lorg/openjdk/tools/javac/parser/DocCommentParser$15;-><init>(Lorg/openjdk/tools/javac/parser/DocCommentParser;Lorg/openjdk/tools/javac/parser/DocCommentParser$TagParser$Kind;Lorg/openjdk/source/doctree/DocTree$Kind;)V

    new-instance v15, Lorg/openjdk/tools/javac/parser/DocCommentParser$16;

    move-object/from16 v19, v6

    sget-object v6, Lorg/openjdk/source/doctree/DocTree$Kind;->SERIAL_DATA:Lorg/openjdk/source/doctree/DocTree$Kind;

    invoke-direct {v15, v0, v2, v6}, Lorg/openjdk/tools/javac/parser/DocCommentParser$16;-><init>(Lorg/openjdk/tools/javac/parser/DocCommentParser;Lorg/openjdk/tools/javac/parser/DocCommentParser$TagParser$Kind;Lorg/openjdk/source/doctree/DocTree$Kind;)V

    new-instance v6, Lorg/openjdk/tools/javac/parser/DocCommentParser$17;

    move-object/from16 v20, v15

    sget-object v15, Lorg/openjdk/source/doctree/DocTree$Kind;->SERIAL_FIELD:Lorg/openjdk/source/doctree/DocTree$Kind;

    invoke-direct {v6, v0, v2, v15}, Lorg/openjdk/tools/javac/parser/DocCommentParser$17;-><init>(Lorg/openjdk/tools/javac/parser/DocCommentParser;Lorg/openjdk/tools/javac/parser/DocCommentParser$TagParser$Kind;Lorg/openjdk/source/doctree/DocTree$Kind;)V

    new-instance v15, Lorg/openjdk/tools/javac/parser/DocCommentParser$18;

    move-object/from16 v21, v6

    sget-object v6, Lorg/openjdk/source/doctree/DocTree$Kind;->SERIAL:Lorg/openjdk/source/doctree/DocTree$Kind;

    invoke-direct {v15, v0, v2, v6}, Lorg/openjdk/tools/javac/parser/DocCommentParser$18;-><init>(Lorg/openjdk/tools/javac/parser/DocCommentParser;Lorg/openjdk/tools/javac/parser/DocCommentParser$TagParser$Kind;Lorg/openjdk/source/doctree/DocTree$Kind;)V

    new-instance v6, Lorg/openjdk/tools/javac/parser/DocCommentParser$19;

    move-object/from16 v22, v15

    sget-object v15, Lorg/openjdk/source/doctree/DocTree$Kind;->SINCE:Lorg/openjdk/source/doctree/DocTree$Kind;

    invoke-direct {v6, v0, v2, v15}, Lorg/openjdk/tools/javac/parser/DocCommentParser$19;-><init>(Lorg/openjdk/tools/javac/parser/DocCommentParser;Lorg/openjdk/tools/javac/parser/DocCommentParser$TagParser$Kind;Lorg/openjdk/source/doctree/DocTree$Kind;)V

    new-instance v15, Lorg/openjdk/tools/javac/parser/DocCommentParser$20;

    move-object/from16 v23, v6

    sget-object v6, Lorg/openjdk/source/doctree/DocTree$Kind;->THROWS:Lorg/openjdk/source/doctree/DocTree$Kind;

    invoke-direct {v15, v0, v2, v6}, Lorg/openjdk/tools/javac/parser/DocCommentParser$20;-><init>(Lorg/openjdk/tools/javac/parser/DocCommentParser;Lorg/openjdk/tools/javac/parser/DocCommentParser$TagParser$Kind;Lorg/openjdk/source/doctree/DocTree$Kind;)V

    new-instance v6, Lorg/openjdk/tools/javac/parser/DocCommentParser$21;

    move-object/from16 v24, v15

    sget-object v15, Lorg/openjdk/source/doctree/DocTree$Kind;->USES:Lorg/openjdk/source/doctree/DocTree$Kind;

    invoke-direct {v6, v0, v2, v15}, Lorg/openjdk/tools/javac/parser/DocCommentParser$21;-><init>(Lorg/openjdk/tools/javac/parser/DocCommentParser;Lorg/openjdk/tools/javac/parser/DocCommentParser$TagParser$Kind;Lorg/openjdk/source/doctree/DocTree$Kind;)V

    new-instance v15, Lorg/openjdk/tools/javac/parser/DocCommentParser$22;

    move-object/from16 v25, v6

    sget-object v6, Lorg/openjdk/source/doctree/DocTree$Kind;->VALUE:Lorg/openjdk/source/doctree/DocTree$Kind;

    invoke-direct {v15, v0, v4, v6}, Lorg/openjdk/tools/javac/parser/DocCommentParser$22;-><init>(Lorg/openjdk/tools/javac/parser/DocCommentParser;Lorg/openjdk/tools/javac/parser/DocCommentParser$TagParser$Kind;Lorg/openjdk/source/doctree/DocTree$Kind;)V

    new-instance v4, Lorg/openjdk/tools/javac/parser/DocCommentParser$23;

    sget-object v6, Lorg/openjdk/source/doctree/DocTree$Kind;->VERSION:Lorg/openjdk/source/doctree/DocTree$Kind;

    invoke-direct {v4, v0, v2, v6}, Lorg/openjdk/tools/javac/parser/DocCommentParser$23;-><init>(Lorg/openjdk/tools/javac/parser/DocCommentParser;Lorg/openjdk/tools/javac/parser/DocCommentParser$TagParser$Kind;Lorg/openjdk/source/doctree/DocTree$Kind;)V

    const/16 v2, 0x17

    new-array v6, v2, [Lorg/openjdk/tools/javac/parser/DocCommentParser$TagParser;

    const/16 v26, 0x0

    aput-object v1, v6, v26

    const/4 v1, 0x1

    aput-object v3, v6, v1

    const/4 v1, 0x2

    aput-object v5, v6, v1

    const/4 v1, 0x3

    aput-object v7, v6, v1

    const/4 v1, 0x4

    aput-object v8, v6, v1

    const/4 v1, 0x5

    aput-object v9, v6, v1

    const/4 v1, 0x6

    aput-object v10, v6, v1

    const/4 v1, 0x7

    aput-object v11, v6, v1

    const/16 v1, 0x8

    aput-object v12, v6, v1

    const/16 v1, 0x9

    aput-object v13, v6, v1

    const/16 v1, 0xa

    aput-object v14, v6, v1

    const/16 v1, 0xb

    aput-object v16, v6, v1

    const/16 v1, 0xc

    aput-object v17, v6, v1

    const/16 v1, 0xd

    aput-object v18, v6, v1

    const/16 v1, 0xe

    aput-object v19, v6, v1

    const/16 v1, 0xf

    aput-object v20, v6, v1

    const/16 v1, 0x10

    aput-object v21, v6, v1

    const/16 v1, 0x11

    aput-object v22, v6, v1

    const/16 v1, 0x12

    aput-object v23, v6, v1

    const/16 v1, 0x13

    aput-object v24, v6, v1

    const/16 v1, 0x14

    aput-object v25, v6, v1

    const/16 v1, 0x15

    aput-object v15, v6, v1

    const/16 v1, 0x16

    aput-object v4, v6, v1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->tagParsers:Ljava/util/Map;

    move/from16 v1, v26

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v6, v1

    iget-object v4, v0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->tagParsers:Ljava/util/Map;

    iget-object v5, v0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->names:Lorg/openjdk/tools/javac/util/Names;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/parser/DocCommentParser$TagParser;->getTreeKind()Lorg/openjdk/source/doctree/DocTree$Kind;

    move-result-object v7

    iget-object v7, v7, Lorg/openjdk/source/doctree/DocTree$Kind;->tagName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lorg/openjdk/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    add-int/2addr v1, v3

    goto :goto_0

    :cond_0
    return-void
.end method

.method private inlineContent()Lorg/openjdk/tools/javac/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/DCTree;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->skipWhitespace()V

    iget v1, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->bp:I

    const/4 v2, -0x1

    iput v2, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->textStart:I

    const/4 v3, 0x1

    move v4, v3

    :goto_0
    iget v5, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->bp:I

    iget v6, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->buflen:I

    if-ge v5, v6, :cond_b

    iget-char v6, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->ch:C

    const/16 v7, 0x9

    if-eq v6, v7, :cond_a

    const/16 v7, 0xa

    if-eq v6, v7, :cond_9

    const/16 v7, 0xc

    if-eq v6, v7, :cond_9

    const/16 v7, 0xd

    if-eq v6, v7, :cond_9

    const/16 v7, 0x20

    if-eq v6, v7, :cond_a

    const/16 v7, 0x26

    if-eq v6, v7, :cond_8

    const/16 v7, 0x3c

    const/4 v8, 0x0

    if-eq v6, v7, :cond_7

    const/16 v7, 0x40

    if-eq v6, v7, :cond_4

    const/16 v7, 0x7b

    if-eq v6, v7, :cond_2

    const/16 v7, 0x7d

    if-eq v6, v7, :cond_0

    goto :goto_1

    :cond_0
    iput-boolean v8, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->newline:Z

    add-int/lit8 v4, v4, -0x1

    if-nez v4, :cond_1

    sub-int/2addr v5, v3

    invoke-virtual {p0, v0, v5}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->addPendingText(Lorg/openjdk/tools/javac/util/ListBuffer;I)V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->nextChar()V

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->nextChar()V

    goto :goto_0

    :cond_2
    iget v6, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->textStart:I

    if-ne v6, v2, :cond_3

    iput v5, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->textStart:I

    :cond_3
    iput-boolean v8, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->newline:Z

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->nextChar()V

    goto :goto_0

    :cond_4
    iget-boolean v6, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->newline:Z

    if-eqz v6, :cond_5

    goto :goto_2

    :cond_5
    :goto_1
    iget v6, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->textStart:I

    if-ne v6, v2, :cond_6

    iput v5, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->textStart:I

    :cond_6
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->nextChar()V

    goto :goto_0

    :cond_7
    iput-boolean v8, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->newline:Z

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v0, v5}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->addPendingText(Lorg/openjdk/tools/javac/util/ListBuffer;I)V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->html()Lorg/openjdk/tools/javac/tree/DCTree;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/openjdk/tools/javac/util/ListBuffer;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_8
    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->entity(Lorg/openjdk/tools/javac/util/ListBuffer;)V

    goto :goto_0

    :cond_9
    iput-boolean v3, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->newline:Z

    :cond_a
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->nextChar()V

    goto :goto_0

    :cond_b
    :goto_2
    const-string v0, "dc.unterminated.inline.tag"

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->erroneous(Ljava/lang/String;I)Lorg/openjdk/tools/javac/tree/DCTree$DCErroneous;

    move-result-object v0

    invoke-static {v0}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method private inlineText(Lorg/openjdk/tools/javac/parser/DocCommentParser$WhitespaceRetentionPolicy;)Lorg/openjdk/tools/javac/tree/DCTree;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/javac/parser/DocCommentParser$ParseException;
        }
    .end annotation

    sget-object v0, Lorg/openjdk/tools/javac/parser/DocCommentParser$24;->$SwitchMap$com$sun$tools$javac$parser$DocCommentParser$WhitespaceRetentionPolicy:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/16 v0, 0x20

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-char p1, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->ch:C

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->nextChar()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->skipWhitespace()V

    :cond_2
    :goto_0
    iget p1, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->bp:I

    move v2, v1

    :goto_1
    iget v3, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->bp:I

    iget v4, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->buflen:I

    if-ge v3, v4, :cond_9

    iget-char v4, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->ch:C

    const/16 v5, 0x9

    if-eq v4, v5, :cond_8

    const/16 v5, 0xa

    if-eq v4, v5, :cond_7

    const/16 v5, 0xc

    if-eq v4, v5, :cond_7

    const/16 v5, 0xd

    if-eq v4, v5, :cond_7

    if-eq v4, v0, :cond_8

    const/16 v5, 0x40

    const/4 v6, 0x0

    if-eq v4, v5, :cond_6

    const/16 v5, 0x7b

    if-eq v4, v5, :cond_5

    const/16 v5, 0x7d

    if-eq v4, v5, :cond_3

    iput-boolean v6, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->newline:Z

    iput v3, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->lastNonWhite:I

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, -0x1

    if-nez v2, :cond_4

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->m:Lorg/openjdk/tools/javac/tree/DocTreeMaker;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/DocTreeMaker;

    move-result-object v0

    iget v1, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->bp:I

    invoke-virtual {p0, p1, v1}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->newString(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->newTextTree(Ljava/lang/String;)Lorg/openjdk/tools/javac/tree/DCTree$DCText;

    move-result-object p1

    return-object p1

    :cond_4
    iput-boolean v6, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->newline:Z

    iput v3, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->lastNonWhite:I

    goto :goto_2

    :cond_5
    iput-boolean v6, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->newline:Z

    iput v3, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->lastNonWhite:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    iget-boolean v4, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->newline:Z

    if-nez v4, :cond_9

    iput-boolean v6, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->newline:Z

    iput v3, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->lastNonWhite:I

    goto :goto_2

    :cond_7
    iput-boolean v1, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->newline:Z

    :cond_8
    :goto_2
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->nextChar()V

    goto :goto_1

    :cond_9
    new-instance p1, Lorg/openjdk/tools/javac/parser/DocCommentParser$ParseException;

    const-string v0, "dc.unterminated.inline.tag"

    invoke-direct {p1, v0}, Lorg/openjdk/tools/javac/parser/DocCommentParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public addPendingText(Lorg/openjdk/tools/javac/util/ListBuffer;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/ListBuffer<",
            "Lorg/openjdk/tools/javac/tree/DCTree;",
            ">;I)V"
        }
    .end annotation

    iget v0, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->textStart:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-gt v0, p2, :cond_0

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->m:Lorg/openjdk/tools/javac/tree/DocTreeMaker;

    invoke-virtual {v2, v0}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/DocTreeMaker;

    move-result-object v0

    iget v2, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->textStart:I

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p0, v2, p2}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->newString(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->newTextTree(Ljava/lang/String;)Lorg/openjdk/tools/javac/tree/DCTree$DCText;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/util/ListBuffer;->add(Ljava/lang/Object;)Z

    :cond_0
    iput v1, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->textStart:I

    :cond_1
    return-void
.end method

.method public attrValueChar(Lorg/openjdk/tools/javac/util/ListBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/ListBuffer<",
            "Lorg/openjdk/tools/javac/tree/DCTree;",
            ">;)V"
        }
    .end annotation

    iget-char v0, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->ch:C

    const/16 v1, 0x26

    if-eq v0, v1, :cond_1

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->nextChar()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->inlineTag(Lorg/openjdk/tools/javac/util/ListBuffer;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->entity(Lorg/openjdk/tools/javac/util/ListBuffer;)V

    :goto_0
    return-void
.end method

.method public blockContent()Lorg/openjdk/tools/javac/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/DCTree;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    const/4 v1, -0x1

    iput v1, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->textStart:I

    :cond_0
    :goto_0
    iget v2, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->bp:I

    iget v3, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->buflen:I

    if-ge v2, v3, :cond_a

    iget-char v3, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->ch:C

    const/16 v4, 0x9

    if-eq v3, v4, :cond_9

    const/16 v4, 0xa

    if-eq v3, v4, :cond_8

    const/16 v4, 0xc

    if-eq v3, v4, :cond_8

    const/16 v4, 0xd

    if-eq v3, v4, :cond_8

    const/16 v4, 0x20

    if-eq v3, v4, :cond_9

    const/16 v4, 0x26

    if-eq v3, v4, :cond_7

    const/16 v4, 0x3c

    const/4 v5, 0x0

    if-eq v3, v4, :cond_6

    const/16 v4, 0x3e

    if-eq v3, v4, :cond_5

    const/16 v4, 0x40

    if-eq v3, v4, :cond_2

    const/16 v4, 0x7b

    if-eq v3, v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->inlineTag(Lorg/openjdk/tools/javac/util/ListBuffer;)V

    goto :goto_0

    :cond_2
    iget-boolean v3, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->newline:Z

    if-eqz v3, :cond_3

    iget v2, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->lastNonWhite:I

    invoke-virtual {p0, v0, v2}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->addPendingText(Lorg/openjdk/tools/javac/util/ListBuffer;I)V

    goto :goto_2

    :cond_3
    :goto_1
    iput-boolean v5, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->newline:Z

    iget v3, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->textStart:I

    if-ne v3, v1, :cond_4

    iput v2, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->textStart:I

    :cond_4
    iput v2, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->lastNonWhite:I

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->nextChar()V

    goto :goto_0

    :cond_5
    iput-boolean v5, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->newline:Z

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v0, v2}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->addPendingText(Lorg/openjdk/tools/javac/util/ListBuffer;I)V

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->m:Lorg/openjdk/tools/javac/tree/DocTreeMaker;

    iget v3, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->bp:I

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/DocTreeMaker;

    move-result-object v2

    iget v3, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->bp:I

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p0, v3, v4}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->newString(II)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->diagSource:Lorg/openjdk/tools/javac/util/DiagnosticSource;

    const-string v6, "dc.bad.gt"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4, v6, v5}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->newErroneousTree(Ljava/lang/String;Lorg/openjdk/tools/javac/util/DiagnosticSource;Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/DCTree$DCErroneous;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/util/ListBuffer;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->nextChar()V

    iget v2, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->textStart:I

    if-ne v2, v1, :cond_0

    iget v2, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->bp:I

    iput v2, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->textStart:I

    iput v1, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->lastNonWhite:I

    goto :goto_0

    :cond_6
    iput-boolean v5, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->newline:Z

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v0, v2}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->addPendingText(Lorg/openjdk/tools/javac/util/ListBuffer;I)V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->html()Lorg/openjdk/tools/javac/tree/DCTree;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/util/ListBuffer;->add(Ljava/lang/Object;)Z

    iget v2, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->textStart:I

    if-ne v2, v1, :cond_0

    iget v2, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->bp:I

    iput v2, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->textStart:I

    iput v1, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->lastNonWhite:I

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->entity(Lorg/openjdk/tools/javac/util/ListBuffer;)V

    goto/16 :goto_0

    :cond_8
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->newline:Z

    :cond_9
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->nextChar()V

    goto/16 :goto_0

    :cond_a
    :goto_2
    iget v2, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->lastNonWhite:I

    if-eq v2, v1, :cond_b

    invoke-virtual {p0, v0, v2}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->addPendingText(Lorg/openjdk/tools/javac/util/ListBuffer;I)V

    :cond_b
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blockTag()Lorg/openjdk/tools/javac/tree/DCTree;
    .locals 4

    iget v0, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->bp:I

    :try_start_0
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->nextChar()V

    iget-char v1, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->ch:C

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->isIdentifierStart(C)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->readTagName()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->tagParsers:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/parser/DocCommentParser$TagParser;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->blockContent()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    iget-object v3, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->m:Lorg/openjdk/tools/javac/tree/DocTreeMaker;

    invoke-virtual {v3, v0}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/DocTreeMaker;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->newUnknownBlockTagTree(Lorg/openjdk/javax/lang/model/element/Name;Ljava/util/List;)Lorg/openjdk/tools/javac/tree/DCTree$DCUnknownBlockTag;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    sget-object v1, Lorg/openjdk/tools/javac/parser/DocCommentParser$24;->$SwitchMap$com$sun$tools$javac$parser$DocCommentParser$TagParser$Kind:[I

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/parser/DocCommentParser$TagParser;->getKind()Lorg/openjdk/tools/javac/parser/DocCommentParser$TagParser$Kind;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v1, v1, v3

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "dc.bad.inline.tag"

    invoke-virtual {p0, v1, v0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->erroneous(Ljava/lang/String;I)Lorg/openjdk/tools/javac/tree/DCTree$DCErroneous;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-virtual {v2, v0}, Lorg/openjdk/tools/javac/parser/DocCommentParser$TagParser;->parse(I)Lorg/openjdk/tools/javac/tree/DCTree;

    move-result-object v0

    return-object v0

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->blockContent()Lorg/openjdk/tools/javac/util/List;

    const-string v1, "dc.no.tag.name"

    invoke-virtual {p0, v1, v0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->erroneous(Ljava/lang/String;I)Lorg/openjdk/tools/javac/tree/DCTree$DCErroneous;

    move-result-object v0
    :try_end_0
    .catch Lorg/openjdk/tools/javac/parser/DocCommentParser$ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :goto_1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->blockContent()Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->erroneous(Ljava/lang/String;I)Lorg/openjdk/tools/javac/tree/DCTree$DCErroneous;

    move-result-object v0

    return-object v0
.end method

.method public blockTags()Lorg/openjdk/tools/javac/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/DCTree;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    :goto_0
    iget-char v1, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->ch:C

    const/16 v2, 0x40

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->blockTag()Lorg/openjdk/tools/javac/tree/DCTree;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public entity()Lorg/openjdk/tools/javac/tree/DCTree;
    .locals 5

    .line 7
    iget v0, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->bp:I

    .line 8
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->nextChar()V

    .line 9
    iget-char v1, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->ch:C

    const/16 v2, 0x23

    const/4 v3, 0x0

    if-ne v1, v2, :cond_4

    .line 10
    iget v1, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->bp:I

    .line 11
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->nextChar()V

    .line 12
    iget-char v2, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->ch:C

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->isDecimalDigit(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 13
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->nextChar()V

    .line 14
    :goto_0
    iget-char v2, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->ch:C

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->isDecimalDigit(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 15
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->nextChar()V

    goto :goto_0

    .line 16
    :cond_0
    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v3, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->buf:[C

    iget v4, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->bp:I

    sub-int/2addr v4, v1

    invoke-virtual {v2, v3, v1, v4}, Lorg/openjdk/tools/javac/util/Names;->fromChars([CII)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v3

    goto :goto_2

    .line 17
    :cond_1
    iget-char v2, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->ch:C

    const/16 v4, 0x78

    if-eq v2, v4, :cond_2

    const/16 v4, 0x58

    if-ne v2, v4, :cond_5

    .line 18
    :cond_2
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->nextChar()V

    .line 19
    iget-char v2, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->ch:C

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->isHexDigit(C)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 20
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->nextChar()V

    .line 21
    :goto_1
    iget-char v2, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->ch:C

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->isHexDigit(C)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 22
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->nextChar()V

    goto :goto_1

    .line 23
    :cond_3
    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v3, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->buf:[C

    iget v4, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->bp:I

    sub-int/2addr v4, v1

    invoke-virtual {v2, v3, v1, v4}, Lorg/openjdk/tools/javac/util/Names;->fromChars([CII)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v3

    goto :goto_2

    .line 24
    :cond_4
    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->isIdentifierStart(C)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 25
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->readIdentifier()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v3

    :cond_5
    :goto_2
    if-nez v3, :cond_6

    .line 26
    const-string v1, "dc.bad.entity"

    invoke-virtual {p0, v1, v0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->erroneous(Ljava/lang/String;I)Lorg/openjdk/tools/javac/tree/DCTree$DCErroneous;

    move-result-object v0

    return-object v0

    .line 27
    :cond_6
    iget-char v1, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->ch:C

    const/16 v2, 0x3b

    if-eq v1, v2, :cond_7

    .line 28
    const-string v1, "dc.missing.semicolon"

    invoke-virtual {p0, v1, v0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->erroneous(Ljava/lang/String;I)Lorg/openjdk/tools/javac/tree/DCTree$DCErroneous;

    move-result-object v0

    return-object v0

    .line 29
    :cond_7
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->nextChar()V

    .line 30
    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->m:Lorg/openjdk/tools/javac/tree/DocTreeMaker;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/DocTreeMaker;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->newEntityTree(Lorg/openjdk/javax/lang/model/element/Name;)Lorg/openjdk/tools/javac/tree/DCTree$DCEntity;

    move-result-object v0

    return-object v0
.end method

.method public entity(Lorg/openjdk/tools/javac/util/ListBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/ListBuffer<",
            "Lorg/openjdk/tools/javac/tree/DCTree;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->newline:Z

    .line 2
    iget v0, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->bp:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->addPendingText(Lorg/openjdk/tools/javac/util/ListBuffer;I)V

    .line 3
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->entity()Lorg/openjdk/tools/javac/tree/DCTree;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->add(Ljava/lang/Object;)Z

    .line 4
    iget p1, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->textStart:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 5
    iget p1, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->bp:I

    iput p1, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->textStart:I

    .line 6
    iput v0, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->lastNonWhite:I

    :cond_0
    return-void
.end method

.method public erroneous(Ljava/lang/String;I)Lorg/openjdk/tools/javac/tree/DCTree$DCErroneous;
    .locals 4

    iget v0, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->bp:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-le v0, p2, :cond_2

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->buf:[C

    aget-char v2, v2, v0

    const/16 v3, 0x9

    if-eq v2, v3, :cond_1

    const/16 v3, 0xa

    if-eq v2, v3, :cond_0

    const/16 v3, 0xc

    if-eq v2, v3, :cond_0

    const/16 v3, 0xd

    if-eq v2, v3, :cond_0

    const/16 v3, 0x20

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_0
    iput-boolean v1, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->newline:Z

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v2, -0x1

    iput v2, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->textStart:I

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->m:Lorg/openjdk/tools/javac/tree/DocTreeMaker;

    invoke-virtual {v2, p2}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/DocTreeMaker;

    move-result-object v2

    add-int/2addr v0, v1

    invoke-virtual {p0, p2, v0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->newString(II)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->diagSource:Lorg/openjdk/tools/javac/util/DiagnosticSource;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, p2, v0, p1, v1}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->newErroneousTree(Ljava/lang/String;Lorg/openjdk/tools/javac/util/DiagnosticSource;Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/DCTree$DCErroneous;

    move-result-object p1

    return-object p1
.end method

.method public html()Lorg/openjdk/tools/javac/tree/DCTree;
    .locals 7

    iget v0, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->bp:I

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->nextChar()V

    iget-char v1, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->ch:C

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->isIdentifierStart(C)Z

    move-result v1

    const/16 v2, 0x2f

    const/4 v3, 0x0

    const/16 v4, 0x3e

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->readIdentifier()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->htmlAttrs()Lorg/openjdk/tools/javac/util/List;

    move-result-object v5

    if-eqz v5, :cond_5

    iget-char v6, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->ch:C

    if-ne v6, v2, :cond_0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->nextChar()V

    const/4 v3, 0x1

    :cond_0
    iget-char v2, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->ch:C

    if-ne v2, v4, :cond_5

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->nextChar()V

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->m:Lorg/openjdk/tools/javac/tree/DocTreeMaker;

    invoke-virtual {v2, v0}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/DocTreeMaker;

    move-result-object v0

    invoke-virtual {v0, v1, v5, v3}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->newStartElementTree(Lorg/openjdk/javax/lang/model/element/Name;Ljava/util/List;Z)Lorg/openjdk/tools/javac/tree/DCTree$DCStartElement;

    move-result-object v0

    iget v1, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->bp:I

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/DCTree$DCEndPosTree;->setEndPos(I)Lorg/openjdk/tools/javac/tree/DCTree$DCEndPosTree;

    move-result-object v0

    return-object v0

    :cond_1
    iget-char v1, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->ch:C

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->nextChar()V

    iget-char v1, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->ch:C

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->isIdentifierStart(C)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->readIdentifier()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->skipWhitespace()V

    iget-char v2, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->ch:C

    if-ne v2, v4, :cond_5

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->nextChar()V

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->m:Lorg/openjdk/tools/javac/tree/DocTreeMaker;

    invoke-virtual {v2, v0}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/DocTreeMaker;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->newEndElementTree(Lorg/openjdk/javax/lang/model/element/Name;)Lorg/openjdk/tools/javac/tree/DCTree$DCEndElement;

    move-result-object v0

    return-object v0

    :cond_2
    const/16 v2, 0x21

    if-ne v1, v2, :cond_5

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->nextChar()V

    iget-char v1, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->ch:C

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_5

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->nextChar()V

    iget-char v1, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->ch:C

    if-ne v1, v2, :cond_5

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->nextChar()V

    :goto_0
    iget v1, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->bp:I

    iget v5, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->buflen:I

    if-ge v1, v5, :cond_5

    move v1, v3

    :goto_1
    iget-char v5, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->ch:C

    if-ne v5, v2, :cond_3

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->nextChar()V

    goto :goto_1

    :cond_3
    const/4 v6, 0x2

    if-lt v1, v6, :cond_4

    if-ne v5, v4, :cond_4

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->nextChar()V

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->m:Lorg/openjdk/tools/javac/tree/DocTreeMaker;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/DocTreeMaker;

    move-result-object v1

    iget v2, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->bp:I

    invoke-virtual {p0, v0, v2}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->newString(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->newCommentTree(Ljava/lang/String;)Lorg/openjdk/tools/javac/tree/DCTree$DCComment;

    move-result-object v0

    return-object v0

    :cond_4
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->nextChar()V

    goto :goto_0

    :cond_5
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->bp:I

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->buf:[C

    aget-char v1, v2, v1

    iput-char v1, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->ch:C

    const-string v1, "dc.malformed.html"

    invoke-virtual {p0, v1, v0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->erroneous(Ljava/lang/String;I)Lorg/openjdk/tools/javac/tree/DCTree$DCErroneous;

    move-result-object v0

    return-object v0
.end method

.method public htmlAttrs()Lorg/openjdk/tools/javac/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/DCTree;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->skipWhitespace()V

    :goto_0
    iget-char v1, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->ch:C

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->isIdentifierStart(C)Z

    move-result v1

    if-eqz v1, :cond_7

    iget v1, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->bp:I

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->readAttributeName()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v2

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->skipWhitespace()V

    sget-object v3, Lorg/openjdk/source/doctree/AttributeTree$ValueKind;->EMPTY:Lorg/openjdk/source/doctree/AttributeTree$ValueKind;

    iget-char v4, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->ch:C

    const/16 v5, 0x3d

    if-ne v4, v5, :cond_6

    new-instance v3, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v3}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->nextChar()V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->skipWhitespace()V

    iget-char v4, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->ch:C

    const/16 v5, 0x27

    if-eq v4, v5, :cond_2

    const/16 v6, 0x22

    if-ne v4, v6, :cond_0

    goto :goto_2

    :cond_0
    sget-object v4, Lorg/openjdk/source/doctree/AttributeTree$ValueKind;->UNQUOTED:Lorg/openjdk/source/doctree/AttributeTree$ValueKind;

    iget v5, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->bp:I

    iput v5, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->textStart:I

    :goto_1
    iget v5, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->bp:I

    iget v6, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->buflen:I

    if-ge v5, v6, :cond_1

    iget-char v5, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->ch:C

    invoke-virtual {p0, v5}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->isUnquotedAttrValueTerminator(C)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0, v3}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->attrValueChar(Lorg/openjdk/tools/javac/util/ListBuffer;)V

    goto :goto_1

    :cond_1
    iget v5, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->bp:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v3, v5}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->addPendingText(Lorg/openjdk/tools/javac/util/ListBuffer;I)V

    goto :goto_5

    :cond_2
    :goto_2
    if-ne v4, v5, :cond_3

    sget-object v5, Lorg/openjdk/source/doctree/AttributeTree$ValueKind;->SINGLE:Lorg/openjdk/source/doctree/AttributeTree$ValueKind;

    goto :goto_3

    :cond_3
    sget-object v5, Lorg/openjdk/source/doctree/AttributeTree$ValueKind;->DOUBLE:Lorg/openjdk/source/doctree/AttributeTree$ValueKind;

    :goto_3
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->nextChar()V

    iget v6, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->bp:I

    iput v6, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->textStart:I

    :goto_4
    iget v6, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->bp:I

    iget v7, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->buflen:I

    if-ge v6, v7, :cond_5

    iget-char v7, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->ch:C

    if-eq v7, v4, :cond_5

    iget-boolean v6, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->newline:Z

    if-eqz v6, :cond_4

    const/16 v6, 0x40

    if-ne v7, v6, :cond_4

    const-string v2, "dc.unterminated.string"

    invoke-virtual {p0, v2, v1}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->erroneous(Ljava/lang/String;I)Lorg/openjdk/tools/javac/tree/DCTree$DCErroneous;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_4
    invoke-virtual {p0, v3}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->attrValueChar(Lorg/openjdk/tools/javac/util/ListBuffer;)V

    goto :goto_4

    :cond_5
    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p0, v3, v6}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->addPendingText(Lorg/openjdk/tools/javac/util/ListBuffer;I)V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->nextChar()V

    move-object v4, v5

    :goto_5
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->skipWhitespace()V

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    move-object v8, v4

    move-object v4, v3

    move-object v3, v8

    goto :goto_6

    :cond_6
    const/4 v4, 0x0

    :goto_6
    iget-object v5, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->m:Lorg/openjdk/tools/javac/tree/DocTreeMaker;

    invoke-virtual {v5, v1}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/DocTreeMaker;

    move-result-object v1

    invoke-virtual {v1, v2, v3, v4}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->newAttributeTree(Lorg/openjdk/javax/lang/model/element/Name;Lorg/openjdk/source/doctree/AttributeTree$ValueKind;Ljava/util/List;)Lorg/openjdk/tools/javac/tree/DCTree$DCAttribute;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_7
    :goto_7
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public identifier()Lorg/openjdk/tools/javac/tree/DCTree$DCIdentifier;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/javac/parser/DocCommentParser$ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->skipWhitespace()V

    iget v0, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->bp:I

    iget-char v1, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->ch:C

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->isJavaIdentifierStart(C)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->readJavaIdentifier()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->m:Lorg/openjdk/tools/javac/tree/DocTreeMaker;

    invoke-virtual {v2, v0}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/DocTreeMaker;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->newIdentifierTree(Lorg/openjdk/javax/lang/model/element/Name;)Lorg/openjdk/tools/javac/tree/DCTree$DCIdentifier;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lorg/openjdk/tools/javac/parser/DocCommentParser$ParseException;

    const-string v1, "dc.identifier.expected"

    invoke-direct {v0, v1}, Lorg/openjdk/tools/javac/parser/DocCommentParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public inlineTag()Lorg/openjdk/tools/javac/tree/DCTree;
    .locals 4

    .line 11
    iget v0, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->bp:I

    add-int/lit8 v0, v0, -0x1

    .line 12
    :try_start_0
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->nextChar()V

    .line 13
    iget-char v1, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->ch:C

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->isIdentifierStart(C)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 14
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->readTagName()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v1

    .line 15
    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->tagParsers:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/parser/DocCommentParser$TagParser;

    if-nez v2, :cond_0

    .line 16
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->skipWhitespace()V

    .line 17
    sget-object v2, Lorg/openjdk/tools/javac/parser/DocCommentParser$WhitespaceRetentionPolicy;->REMOVE_ALL:Lorg/openjdk/tools/javac/parser/DocCommentParser$WhitespaceRetentionPolicy;

    invoke-direct {p0, v2}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->inlineText(Lorg/openjdk/tools/javac/parser/DocCommentParser$WhitespaceRetentionPolicy;)Lorg/openjdk/tools/javac/tree/DCTree;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 18
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->nextChar()V

    .line 19
    iget-object v3, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->m:Lorg/openjdk/tools/javac/tree/DocTreeMaker;

    invoke-virtual {v3, v0}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/DocTreeMaker;

    move-result-object v3

    invoke-static {v2}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->newUnknownInlineTagTree(Lorg/openjdk/javax/lang/model/element/Name;Ljava/util/List;)Lorg/openjdk/tools/javac/tree/DCTree$DCUnknownInlineTag;

    move-result-object v1

    iget v2, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->bp:I

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/tree/DCTree$DCEndPosTree;->setEndPos(I)Lorg/openjdk/tools/javac/tree/DCTree$DCEndPosTree;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0

    .line 20
    :cond_0
    iget-boolean v1, v2, Lorg/openjdk/tools/javac/parser/DocCommentParser$TagParser;->retainWhiteSpace:Z

    if-nez v1, :cond_1

    .line 21
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->skipWhitespace()V

    .line 22
    :cond_1
    invoke-virtual {v2}, Lorg/openjdk/tools/javac/parser/DocCommentParser$TagParser;->getKind()Lorg/openjdk/tools/javac/parser/DocCommentParser$TagParser$Kind;

    move-result-object v1

    sget-object v3, Lorg/openjdk/tools/javac/parser/DocCommentParser$TagParser$Kind;->INLINE:Lorg/openjdk/tools/javac/parser/DocCommentParser$TagParser$Kind;

    if-ne v1, v3, :cond_2

    .line 23
    invoke-virtual {v2, v0}, Lorg/openjdk/tools/javac/parser/DocCommentParser$TagParser;->parse(I)Lorg/openjdk/tools/javac/tree/DCTree;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/tree/DCTree$DCEndPosTree;

    if-eqz v1, :cond_3

    .line 24
    iget v2, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->bp:I

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/tree/DCTree$DCEndPosTree;->setEndPos(I)Lorg/openjdk/tools/javac/tree/DCTree$DCEndPosTree;

    move-result-object v0

    return-object v0

    .line 25
    :cond_2
    sget-object v1, Lorg/openjdk/tools/javac/parser/DocCommentParser$WhitespaceRetentionPolicy;->REMOVE_ALL:Lorg/openjdk/tools/javac/parser/DocCommentParser$WhitespaceRetentionPolicy;

    invoke-direct {p0, v1}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->inlineText(Lorg/openjdk/tools/javac/parser/DocCommentParser$WhitespaceRetentionPolicy;)Lorg/openjdk/tools/javac/tree/DCTree;

    .line 26
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->nextChar()V

    .line 27
    :cond_3
    const-string v1, "dc.no.tag.name"

    invoke-virtual {p0, v1, v0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->erroneous(Ljava/lang/String;I)Lorg/openjdk/tools/javac/tree/DCTree$DCErroneous;

    move-result-object v0
    :try_end_0
    .catch Lorg/openjdk/tools/javac/parser/DocCommentParser$ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 28
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->erroneous(Ljava/lang/String;I)Lorg/openjdk/tools/javac/tree/DCTree$DCErroneous;

    move-result-object v0

    return-object v0
.end method

.method public inlineTag(Lorg/openjdk/tools/javac/util/ListBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/ListBuffer<",
            "Lorg/openjdk/tools/javac/tree/DCTree;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->newline:Z

    .line 2
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->nextChar()V

    .line 3
    iget-char v0, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->ch:C

    const/16 v1, 0x40

    const/4 v2, -0x1

    if-ne v0, v1, :cond_0

    .line 4
    iget v0, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->bp:I

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->addPendingText(Lorg/openjdk/tools/javac/util/ListBuffer;I)V

    .line 5
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->inlineTag()Lorg/openjdk/tools/javac/tree/DCTree;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->add(Ljava/lang/Object;)Z

    .line 6
    iget p1, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->bp:I

    iput p1, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->textStart:I

    .line 7
    iput v2, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->lastNonWhite:I

    goto :goto_0

    .line 8
    :cond_0
    iget p1, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->textStart:I

    if-ne p1, v2, :cond_1

    .line 9
    iget p1, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->bp:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->textStart:I

    .line 10
    :cond_1
    iget p1, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->bp:I

    iput p1, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->lastNonWhite:I

    :goto_0
    return-void
.end method

.method public inlineWord()Lorg/openjdk/tools/javac/tree/DCTree$DCText;
    .locals 5

    iget v0, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->bp:I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->bp:I

    iget v4, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->buflen:I

    if-ge v3, v4, :cond_7

    iget-char v3, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->ch:C

    const/16 v4, 0x9

    if-eq v3, v4, :cond_6

    const/16 v4, 0xa

    if-eq v3, v4, :cond_5

    const/16 v4, 0xc

    if-eq v3, v4, :cond_6

    const/16 v4, 0xd

    if-eq v3, v4, :cond_6

    const/16 v4, 0x20

    if-eq v3, v4, :cond_6

    const/16 v4, 0x40

    if-eq v3, v4, :cond_2

    const/16 v4, 0x7b

    if-eq v3, v4, :cond_3

    const/16 v4, 0x7d

    if-eq v3, v4, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v2, :cond_1

    add-int/lit8 v2, v2, -0x1

    if-nez v2, :cond_4

    :cond_1
    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->m:Lorg/openjdk/tools/javac/tree/DocTreeMaker;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/DocTreeMaker;

    move-result-object v1

    iget v2, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->bp:I

    invoke-virtual {p0, v0, v2}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->newString(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->newTextTree(Ljava/lang/String;)Lorg/openjdk/tools/javac/tree/DCTree$DCText;

    move-result-object v0

    return-object v0

    :cond_2
    iget-boolean v3, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->newline:Z

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    :cond_4
    :goto_1
    iput-boolean v1, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->newline:Z

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->nextChar()V

    goto :goto_0

    :cond_5
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->newline:Z

    :cond_6
    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->m:Lorg/openjdk/tools/javac/tree/DocTreeMaker;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/DocTreeMaker;

    move-result-object v1

    iget v2, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->bp:I

    invoke-virtual {p0, v0, v2}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->newString(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->newTextTree(Ljava/lang/String;)Lorg/openjdk/tools/javac/tree/DCTree$DCText;

    move-result-object v0

    return-object v0

    :cond_7
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public isDecimalDigit(C)Z
    .locals 1

    const/16 v0, 0x30

    if-gt v0, p1, :cond_0

    const/16 v0, 0x39

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isHexDigit(C)Z
    .locals 1

    const/16 v0, 0x30

    if-gt v0, p1, :cond_0

    const/16 v0, 0x39

    if-le p1, v0, :cond_2

    :cond_0
    const/16 v0, 0x61

    if-gt v0, p1, :cond_1

    const/16 v0, 0x66

    if-le p1, v0, :cond_2

    :cond_1
    const/16 v0, 0x41

    if-gt v0, p1, :cond_3

    const/16 v0, 0x46

    if-gt p1, v0, :cond_3

    :cond_2
    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isIdentifierStart(C)Z
    .locals 0

    invoke-static {p1}, Ljava/lang/Character;->isUnicodeIdentifierStart(C)Z

    move-result p1

    return p1
.end method

.method public isJavaIdentifierStart(C)Z
    .locals 0

    invoke-static {p1}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result p1

    return p1
.end method

.method public isUnquotedAttrValueTerminator(C)Z
    .locals 1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    const/16 v0, 0xc

    if-eq p1, v0, :cond_0

    const/16 v0, 0xd

    if-eq p1, v0, :cond_0

    const/16 v0, 0x20

    if-eq p1, v0, :cond_0

    const/16 v0, 0x22

    if-eq p1, v0, :cond_0

    const/16 v0, 0x27

    if-eq p1, v0, :cond_0

    const/16 v0, 0x60

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    :cond_0
    :pswitch_0
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isWhitespace(C)Z
    .locals 0

    invoke-static {p1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result p1

    return p1
.end method

.method public newString(II)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->buf:[C

    sub-int/2addr p2, p1

    invoke-direct {v0, v1, p1, p2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public nextChar()V
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->buf:[C

    iget v1, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->bp:I

    iget v2, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->buflen:I

    const/4 v3, 0x1

    if-ge v1, v2, :cond_0

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->bp:I

    :cond_0
    aget-char v0, v0, v2

    iput-char v0, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->ch:C

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iput-boolean v3, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->newline:Z

    :goto_0
    return-void
.end method

.method public parse()Lorg/openjdk/tools/javac/tree/DCTree$DCDocComment;
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->comment:Lorg/openjdk/tools/javac/parser/Tokens$Comment;

    invoke-interface {v0}, Lorg/openjdk/tools/javac/parser/Tokens$Comment;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [C

    iput-object v1, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->buf:[C

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->buf:[C

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->buf:[C

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0x1a

    aput-char v2, v0, v1

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->buflen:I

    const/4 v0, -0x1

    iput v0, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->bp:I

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->nextChar()V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->blockContent()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->blockTags()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v0, v1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/tree/DCTree;

    iget v0, v0, Lorg/openjdk/tools/javac/tree/DCTree;->pos:I

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v0, v2, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/tree/DCTree;

    iget v0, v0, Lorg/openjdk/tools/javac/tree/DCTree;->pos:I

    :cond_1
    :goto_0
    iget-object v3, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->m:Lorg/openjdk/tools/javac/tree/DocTreeMaker;

    invoke-virtual {v3, v0}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/DocTreeMaker;

    move-result-object v0

    iget-object v3, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->comment:Lorg/openjdk/tools/javac/parser/Tokens$Comment;

    invoke-virtual {v0, v3, v1, v2}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->newDocCommentTree(Lorg/openjdk/tools/javac/parser/Tokens$Comment;Ljava/util/List;Ljava/util/List;)Lorg/openjdk/tools/javac/tree/DCTree$DCDocComment;

    move-result-object v0

    return-object v0
.end method

.method public parseMember(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/javac/parser/DocCommentParser$ParseException;
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->fac:Lorg/openjdk/tools/javac/parser/ParserFactory;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1, v1}, Lorg/openjdk/tools/javac/parser/ParserFactory;->newParser(Ljava/lang/CharSequence;ZZZ)Lorg/openjdk/tools/javac/parser/JavacParser;

    move-result-object p1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->ident()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v0

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->token()Lorg/openjdk/tools/javac/parser/Tokens$Token;

    move-result-object p1

    iget-object p1, p1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v1, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->EOF:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne p1, v1, :cond_0

    return-object v0

    :cond_0
    new-instance p1, Lorg/openjdk/tools/javac/parser/DocCommentParser$ParseException;

    const-string v0, "dc.ref.unexpected.input"

    invoke-direct {p1, v0}, Lorg/openjdk/tools/javac/parser/DocCommentParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public parseParams(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/javac/parser/DocCommentParser$ParseException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->fac:Lorg/openjdk/tools/javac/parser/ParserFactory;

    const-string v1, "..."

    const-string v2, "[]"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1, v1}, Lorg/openjdk/tools/javac/parser/ParserFactory;->newParser(Ljava/lang/CharSequence;ZZZ)Lorg/openjdk/tools/javac/parser/JavacParser;

    move-result-object p1

    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->parseType()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->token()Lorg/openjdk/tools/javac/parser/Tokens$Token;

    move-result-object v1

    iget-object v1, v1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v2, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->IDENTIFIER:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->token()Lorg/openjdk/tools/javac/parser/Tokens$Token;

    move-result-object v1

    iget-object v1, v1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v2, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->COMMA:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->parseType()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->token()Lorg/openjdk/tools/javac/parser/Tokens$Token;

    move-result-object v1

    iget-object v1, v1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v2, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->IDENTIFIER:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->token()Lorg/openjdk/tools/javac/parser/Tokens$Token;

    move-result-object p1

    iget-object p1, p1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v1, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->EOF:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne p1, v1, :cond_3

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1

    :cond_3
    new-instance p1, Lorg/openjdk/tools/javac/parser/DocCommentParser$ParseException;

    const-string v0, "dc.ref.unexpected.input"

    invoke-direct {p1, v0}, Lorg/openjdk/tools/javac/parser/DocCommentParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public parseType(Ljava/lang/String;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/javac/parser/DocCommentParser$ParseException;
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->fac:Lorg/openjdk/tools/javac/parser/ParserFactory;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1, v1}, Lorg/openjdk/tools/javac/parser/ParserFactory;->newParser(Ljava/lang/CharSequence;ZZZ)Lorg/openjdk/tools/javac/parser/JavacParser;

    move-result-object p1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->parseType()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->token()Lorg/openjdk/tools/javac/parser/Tokens$Token;

    move-result-object p1

    iget-object p1, p1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v1, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->EOF:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne p1, v1, :cond_0

    return-object v0

    :cond_0
    new-instance p1, Lorg/openjdk/tools/javac/parser/DocCommentParser$ParseException;

    const-string v0, "dc.ref.unexpected.input"

    invoke-direct {p1, v0}, Lorg/openjdk/tools/javac/parser/DocCommentParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public quotedString()Lorg/openjdk/tools/javac/tree/DCTree$DCText;
    .locals 3

    iget v0, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->bp:I

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->nextChar()V

    :goto_0
    iget v1, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->bp:I

    iget v2, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->buflen:I

    if-ge v1, v2, :cond_4

    iget-char v1, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->ch:C

    const/16 v2, 0xa

    if-eq v1, v2, :cond_2

    const/16 v2, 0x22

    if-eq v1, v2, :cond_1

    const/16 v2, 0x40

    if-eq v1, v2, :cond_0

    const/16 v2, 0xc

    if-eq v1, v2, :cond_2

    const/16 v2, 0xd

    if-eq v1, v2, :cond_2

    goto :goto_1

    :cond_0
    iget-boolean v1, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->newline:Z

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->nextChar()V

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->m:Lorg/openjdk/tools/javac/tree/DocTreeMaker;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/DocTreeMaker;

    move-result-object v1

    iget v2, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->bp:I

    invoke-virtual {p0, v0, v2}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->newString(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->newTextTree(Ljava/lang/String;)Lorg/openjdk/tools/javac/tree/DCTree$DCText;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->newline:Z

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->nextChar()V

    goto :goto_0

    :cond_4
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public readAttributeName()Lorg/openjdk/tools/javac/util/Name;
    .locals 4

    iget v0, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->bp:I

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->nextChar()V

    :goto_0
    iget v1, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->bp:I

    iget v2, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->buflen:I

    if-ge v1, v2, :cond_1

    iget-char v1, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->ch:C

    invoke-static {v1}, Ljava/lang/Character;->isUnicodeIdentifierPart(C)Z

    move-result v1

    if-nez v1, :cond_0

    iget-char v1, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->ch:C

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->nextChar()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->buf:[C

    iget v3, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->bp:I

    sub-int/2addr v3, v0

    invoke-virtual {v1, v2, v0, v3}, Lorg/openjdk/tools/javac/util/Names;->fromChars([CII)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v0

    return-object v0
.end method

.method public readIdentifier()Lorg/openjdk/tools/javac/util/Name;
    .locals 4

    iget v0, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->bp:I

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->nextChar()V

    :goto_0
    iget v1, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->bp:I

    iget v2, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->buflen:I

    if-ge v1, v2, :cond_0

    iget-char v1, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->ch:C

    invoke-static {v1}, Ljava/lang/Character;->isUnicodeIdentifierPart(C)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->nextChar()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->buf:[C

    iget v3, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->bp:I

    sub-int/2addr v3, v0

    invoke-virtual {v1, v2, v0, v3}, Lorg/openjdk/tools/javac/util/Names;->fromChars([CII)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v0

    return-object v0
.end method

.method public readJavaIdentifier()Lorg/openjdk/tools/javac/util/Name;
    .locals 4

    iget v0, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->bp:I

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->nextChar()V

    :goto_0
    iget v1, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->bp:I

    iget v2, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->buflen:I

    if-ge v1, v2, :cond_0

    iget-char v1, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->ch:C

    invoke-static {v1}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->nextChar()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->buf:[C

    iget v3, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->bp:I

    sub-int/2addr v3, v0

    invoke-virtual {v1, v2, v0, v3}, Lorg/openjdk/tools/javac/util/Names;->fromChars([CII)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v0

    return-object v0
.end method

.method public readTagName()Lorg/openjdk/tools/javac/util/Name;
    .locals 4

    iget v0, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->bp:I

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->nextChar()V

    :goto_0
    iget v1, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->bp:I

    iget v2, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->buflen:I

    if-ge v1, v2, :cond_1

    iget-char v1, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->ch:C

    invoke-static {v1}, Ljava/lang/Character;->isUnicodeIdentifierPart(C)Z

    move-result v1

    if-nez v1, :cond_0

    iget-char v1, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->ch:C

    const/16 v2, 0x2e

    if-eq v1, v2, :cond_0

    const/16 v2, 0x2d

    if-eq v1, v2, :cond_0

    const/16 v2, 0x3a

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->nextChar()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->buf:[C

    iget v3, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->bp:I

    sub-int/2addr v3, v0

    invoke-virtual {v1, v2, v0, v3}, Lorg/openjdk/tools/javac/util/Names;->fromChars([CII)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v0

    return-object v0
.end method

.method public reference(Z)Lorg/openjdk/tools/javac/tree/DCTree$DCReference;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/javac/parser/DocCommentParser$ParseException;
        }
    .end annotation

    iget p1, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->bp:I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->bp:I

    iget v3, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->buflen:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ge v2, v3, :cond_9

    iget-char v3, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->ch:C

    const/16 v6, 0x9

    if-eq v3, v6, :cond_7

    const/16 v6, 0xa

    if-eq v3, v6, :cond_6

    const/16 v6, 0xc

    if-eq v3, v6, :cond_6

    const/16 v6, 0xd

    if-eq v3, v6, :cond_6

    const/16 v6, 0x20

    if-eq v3, v6, :cond_7

    const/16 v6, 0x3c

    if-eq v3, v6, :cond_5

    const/16 v6, 0x3e

    if-eq v3, v6, :cond_4

    const/16 v6, 0x40

    if-eq v3, v6, :cond_2

    const/16 v6, 0x7d

    if-eq v3, v6, :cond_0

    const/16 v2, 0x28

    if-eq v3, v2, :cond_5

    const/16 v2, 0x29

    if-eq v3, v2, :cond_4

    goto :goto_1

    :cond_0
    if-ne v2, p1, :cond_1

    return-object v5

    :cond_1
    iput-boolean v0, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->newline:Z

    goto :goto_3

    :cond_2
    iget-boolean v3, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->newline:Z

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    :goto_1
    iput-boolean v0, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->newline:Z

    goto :goto_2

    :cond_4
    iput-boolean v0, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->newline:Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_5
    iput-boolean v0, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->newline:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    iput-boolean v4, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->newline:Z

    :cond_7
    if-nez v1, :cond_8

    goto :goto_3

    :cond_8
    :goto_2
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->nextChar()V

    goto :goto_0

    :cond_9
    :goto_3
    if-nez v1, :cond_11

    invoke-virtual {p0, p1, v2}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->newString(II)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/openjdk/tools/javac/util/Log$DeferredDiagnosticHandler;

    iget-object v3, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->fac:Lorg/openjdk/tools/javac/parser/ParserFactory;

    iget-object v3, v3, Lorg/openjdk/tools/javac/parser/ParserFactory;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-direct {v2, v3}, Lorg/openjdk/tools/javac/util/Log$DeferredDiagnosticHandler;-><init>(Lorg/openjdk/tools/javac/util/Log;)V

    :try_start_0
    const-string v3, "#"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const-string v6, "("

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    const/4 v8, -0x1

    if-ne v3, v8, :cond_b

    if-ne v6, v8, :cond_a

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->parseType(Ljava/lang/String;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    move-object v3, v5

    goto :goto_5

    :catchall_0
    move-exception p1

    goto/16 :goto_7

    :cond_a
    invoke-virtual {v1, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->parseMember(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v0

    move-object v3, v0

    move-object v0, v5

    goto :goto_5

    :cond_b
    if-nez v3, :cond_c

    move-object v0, v5

    goto :goto_4

    :cond_c
    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->parseType(Ljava/lang/String;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    :goto_4
    if-ne v6, v8, :cond_d

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->parseMember(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v3

    goto :goto_5

    :cond_d
    invoke-virtual {v1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->parseMember(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v3

    :goto_5
    if-gez v6, :cond_e

    goto :goto_6

    :cond_e
    const-string v5, ")"

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v4

    if-ne v5, v7, :cond_10

    add-int/2addr v6, v4

    invoke-virtual {v1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->parseParams(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v5

    :goto_6
    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/Log$DeferredDiagnosticHandler;->getDiagnostics()Ljava/util/Queue;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_f

    iget-object v4, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->fac:Lorg/openjdk/tools/javac/parser/ParserFactory;

    iget-object v4, v4, Lorg/openjdk/tools/javac/parser/ParserFactory;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v4, v2}, Lorg/openjdk/tools/javac/util/Log;->popDiagnosticHandler(Lorg/openjdk/tools/javac/util/Log$DiagnosticHandler;)V

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->m:Lorg/openjdk/tools/javac/tree/DocTreeMaker;

    invoke-virtual {v2, p1}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/DocTreeMaker;

    move-result-object p1

    invoke-virtual {p1, v1, v0, v3, v5}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->newReferenceTree(Ljava/lang/String;Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/javax/lang/model/element/Name;Ljava/util/List;)Lorg/openjdk/tools/javac/tree/DCTree$DCReference;

    move-result-object p1

    iget v0, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->bp:I

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/tree/DCTree$DCEndPosTree;->setEndPos(I)Lorg/openjdk/tools/javac/tree/DCTree$DCEndPosTree;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/tree/DCTree$DCReference;

    return-object p1

    :cond_f
    :try_start_1
    new-instance p1, Lorg/openjdk/tools/javac/parser/DocCommentParser$ParseException;

    const-string v0, "dc.ref.syntax.error"

    invoke-direct {p1, v0}, Lorg/openjdk/tools/javac/parser/DocCommentParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_10
    new-instance p1, Lorg/openjdk/tools/javac/parser/DocCommentParser$ParseException;

    const-string v0, "dc.ref.bad.parens"

    invoke-direct {p1, v0}, Lorg/openjdk/tools/javac/parser/DocCommentParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_7
    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->fac:Lorg/openjdk/tools/javac/parser/ParserFactory;

    iget-object v0, v0, Lorg/openjdk/tools/javac/parser/ParserFactory;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/util/Log;->popDiagnosticHandler(Lorg/openjdk/tools/javac/util/Log$DiagnosticHandler;)V

    throw p1

    :cond_11
    new-instance p1, Lorg/openjdk/tools/javac/parser/DocCommentParser$ParseException;

    const-string v0, "dc.unterminated.signature"

    invoke-direct {p1, v0}, Lorg/openjdk/tools/javac/parser/DocCommentParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public skipWhitespace()V
    .locals 1

    :goto_0
    iget-char v0, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->ch:C

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->nextChar()V

    goto :goto_0

    :cond_0
    return-void
.end method
