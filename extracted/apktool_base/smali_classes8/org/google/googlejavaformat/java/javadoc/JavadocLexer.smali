.class final Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/google/googlejavaformat/java/javadoc/JavadocLexer$LexException;
    }
.end annotation


# static fields
.field private static final BLOCKQUOTE_CLOSE_PATTERN:Ljava/util/regex/Pattern;

.field private static final BLOCKQUOTE_OPEN_PATTERN:Ljava/util/regex/Pattern;

.field private static final BR_PATTERN:Ljava/util/regex/Pattern;

.field private static final CODE_CLOSE_PATTERN:Ljava/util/regex/Pattern;

.field private static final CODE_OPEN_PATTERN:Ljava/util/regex/Pattern;

.field private static final FOOTER_TAG_PATTERN:Ljava/util/regex/Pattern;

.field private static final HEADER_CLOSE_PATTERN:Ljava/util/regex/Pattern;

.field private static final HEADER_OPEN_PATTERN:Ljava/util/regex/Pattern;

.field private static final HTML_COMMENT_PATTERN:Ljava/util/regex/Pattern;

.field private static final INLINE_TAG_OPEN_PATTERN:Ljava/util/regex/Pattern;

.field private static final LIST_CLOSE_PATTERN:Ljava/util/regex/Pattern;

.field private static final LIST_ITEM_CLOSE_PATTERN:Ljava/util/regex/Pattern;

.field private static final LIST_ITEM_OPEN_PATTERN:Ljava/util/regex/Pattern;

.field private static final LIST_OPEN_PATTERN:Ljava/util/regex/Pattern;

.field private static final LITERAL_PATTERN:Ljava/util/regex/Pattern;

.field private static final MOE_BEGIN_STRIP_COMMENT_PATTERN:Ljava/util/regex/Pattern;

.field private static final MOE_END_STRIP_COMMENT_PATTERN:Ljava/util/regex/Pattern;

.field private static final NEWLINE:Lw2/e;

.field private static final NEWLINE_PATTERN:Ljava/util/regex/Pattern;

.field private static final NON_UNIX_LINE_ENDING:Ljava/util/regex/Pattern;

.field private static final PARAGRAPH_CLOSE_PATTERN:Ljava/util/regex/Pattern;

.field private static final PARAGRAPH_OPEN_PATTERN:Ljava/util/regex/Pattern;

.field private static final PRE_CLOSE_PATTERN:Ljava/util/regex/Pattern;

.field private static final PRE_OPEN_PATTERN:Ljava/util/regex/Pattern;

.field private static final TABLE_CLOSE_PATTERN:Ljava/util/regex/Pattern;

.field private static final TABLE_OPEN_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final braceDepth:Lorg/google/googlejavaformat/java/javadoc/NestingCounter;

.field private final codeDepth:Lorg/google/googlejavaformat/java/javadoc/NestingCounter;

.field private final input:Lorg/google/googlejavaformat/java/javadoc/CharStream;

.field private final preDepth:Lorg/google/googlejavaformat/java/javadoc/NestingCounter;

.field private somethingSinceNewline:Z

.field private final tableDepth:Lorg/google/googlejavaformat/java/javadoc/NestingCounter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "\r\n?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->NON_UNIX_LINE_ENDING:Ljava/util/regex/Pattern;

    const/16 v0, 0xa

    invoke-static {v0}, Lw2/e;->q(C)Lw2/e;

    move-result-object v0

    sput-object v0, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->NEWLINE:Lw2/e;

    const-string v0, "^[ \t]*\n[ \t]*[*]?[ \t]?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->NEWLINE_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "^@(param\\s+<\\w+>|[a-z]\\w*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->FOOTER_TAG_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "^<!--\\s*MOE:begin_intracomment_strip\\s*-->"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->MOE_BEGIN_STRIP_COMMENT_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "^<!--\\s*MOE:end_intracomment_strip\\s*-->"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->MOE_END_STRIP_COMMENT_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {}, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->fullCommentPattern()Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->HTML_COMMENT_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "pre"

    invoke-static {v0}, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->openTagPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->PRE_OPEN_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {v0}, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->closeTagPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->PRE_CLOSE_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "code"

    invoke-static {v0}, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->openTagPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->CODE_OPEN_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {v0}, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->closeTagPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->CODE_CLOSE_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "table"

    invoke-static {v0}, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->openTagPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->TABLE_OPEN_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {v0}, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->closeTagPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->TABLE_CLOSE_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "ul|ol|dl"

    invoke-static {v0}, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->openTagPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->LIST_OPEN_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {v0}, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->closeTagPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->LIST_CLOSE_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "li|dt|dd"

    invoke-static {v0}, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->openTagPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->LIST_ITEM_OPEN_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {v0}, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->closeTagPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->LIST_ITEM_CLOSE_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "h[1-6]"

    invoke-static {v0}, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->openTagPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->HEADER_OPEN_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {v0}, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->closeTagPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->HEADER_CLOSE_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "p"

    invoke-static {v0}, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->openTagPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->PARAGRAPH_OPEN_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {v0}, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->closeTagPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->PARAGRAPH_CLOSE_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "blockquote"

    invoke-static {v0}, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->openTagPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->BLOCKQUOTE_OPEN_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {v0}, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->closeTagPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->BLOCKQUOTE_CLOSE_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "br"

    invoke-static {v0}, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->openTagPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->BR_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "^[{]@\\w*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->INLINE_TAG_OPEN_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "^.[^ \t\n@<{}*]*"

    const/16 v1, 0x20

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->LITERAL_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(Lorg/google/googlejavaformat/java/javadoc/CharStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/google/googlejavaformat/java/javadoc/NestingCounter;

    invoke-direct {v0}, Lorg/google/googlejavaformat/java/javadoc/NestingCounter;-><init>()V

    iput-object v0, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->braceDepth:Lorg/google/googlejavaformat/java/javadoc/NestingCounter;

    new-instance v0, Lorg/google/googlejavaformat/java/javadoc/NestingCounter;

    invoke-direct {v0}, Lorg/google/googlejavaformat/java/javadoc/NestingCounter;-><init>()V

    iput-object v0, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->preDepth:Lorg/google/googlejavaformat/java/javadoc/NestingCounter;

    new-instance v0, Lorg/google/googlejavaformat/java/javadoc/NestingCounter;

    invoke-direct {v0}, Lorg/google/googlejavaformat/java/javadoc/NestingCounter;-><init>()V

    iput-object v0, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->codeDepth:Lorg/google/googlejavaformat/java/javadoc/NestingCounter;

    new-instance v0, Lorg/google/googlejavaformat/java/javadoc/NestingCounter;

    invoke-direct {v0}, Lorg/google/googlejavaformat/java/javadoc/NestingCounter;-><init>()V

    iput-object v0, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->tableDepth:Lorg/google/googlejavaformat/java/javadoc/NestingCounter;

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/google/googlejavaformat/java/javadoc/CharStream;

    iput-object p1, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->input:Lorg/google/googlejavaformat/java/javadoc/CharStream;

    return-void
.end method

.method private checkMatchingTags()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/google/googlejavaformat/java/javadoc/JavadocLexer$LexException;
        }
    .end annotation

    iget-object v0, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->braceDepth:Lorg/google/googlejavaformat/java/javadoc/NestingCounter;

    invoke-virtual {v0}, Lorg/google/googlejavaformat/java/javadoc/NestingCounter;->isPositive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->preDepth:Lorg/google/googlejavaformat/java/javadoc/NestingCounter;

    invoke-virtual {v0}, Lorg/google/googlejavaformat/java/javadoc/NestingCounter;->isPositive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->tableDepth:Lorg/google/googlejavaformat/java/javadoc/NestingCounter;

    invoke-virtual {v0}, Lorg/google/googlejavaformat/java/javadoc/NestingCounter;->isPositive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->codeDepth:Lorg/google/googlejavaformat/java/javadoc/NestingCounter;

    invoke-virtual {v0}, Lorg/google/googlejavaformat/java/javadoc/NestingCounter;->isPositive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer$LexException;

    invoke-direct {v0}, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer$LexException;-><init>()V

    throw v0
.end method

.method private static closeTagPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "namePattern"
        }
    .end annotation

    const-string v0, "^</(?:%s)\\b[^>]*>"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x2

    invoke-static {p0, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p0

    return-object p0
.end method

.method private consumeToken()Lorg/google/googlejavaformat/java/javadoc/Token$Type;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/google/googlejavaformat/java/javadoc/JavadocLexer$LexException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->preserveExistingFormatting()Z

    move-result v0

    iget-object v1, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->input:Lorg/google/googlejavaformat/java/javadoc/CharStream;

    sget-object v2, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->NEWLINE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v2}, Lorg/google/googlejavaformat/java/javadoc/CharStream;->tryConsumeRegex(Ljava/util/regex/Pattern;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->somethingSinceNewline:Z

    if-eqz v0, :cond_0

    sget-object v0, Lorg/google/googlejavaformat/java/javadoc/Token$Type;->FORCED_NEWLINE:Lorg/google/googlejavaformat/java/javadoc/Token$Type;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/google/googlejavaformat/java/javadoc/Token$Type;->WHITESPACE:Lorg/google/googlejavaformat/java/javadoc/Token$Type;

    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->input:Lorg/google/googlejavaformat/java/javadoc/CharStream;

    const-string v2, " "

    invoke-virtual {v1, v2}, Lorg/google/googlejavaformat/java/javadoc/CharStream;->tryConsume(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_24

    iget-object v1, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->input:Lorg/google/googlejavaformat/java/javadoc/CharStream;

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Lorg/google/googlejavaformat/java/javadoc/CharStream;->tryConsume(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_7

    :cond_2
    iget-boolean v1, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->somethingSinceNewline:Z

    const/4 v2, 0x1

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->input:Lorg/google/googlejavaformat/java/javadoc/CharStream;

    sget-object v3, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->FOOTER_TAG_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v3}, Lorg/google/googlejavaformat/java/javadoc/CharStream;->tryConsumeRegex(Ljava/util/regex/Pattern;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->checkMatchingTags()V

    iput-boolean v2, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->somethingSinceNewline:Z

    sget-object v0, Lorg/google/googlejavaformat/java/javadoc/Token$Type;->FOOTER_JAVADOC_TAG_START:Lorg/google/googlejavaformat/java/javadoc/Token$Type;

    return-object v0

    :cond_3
    iput-boolean v2, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->somethingSinceNewline:Z

    iget-object v1, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->input:Lorg/google/googlejavaformat/java/javadoc/CharStream;

    sget-object v2, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->INLINE_TAG_OPEN_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v2}, Lorg/google/googlejavaformat/java/javadoc/CharStream;->tryConsumeRegex(Ljava/util/regex/Pattern;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->braceDepth:Lorg/google/googlejavaformat/java/javadoc/NestingCounter;

    invoke-virtual {v0}, Lorg/google/googlejavaformat/java/javadoc/NestingCounter;->increment()V

    sget-object v0, Lorg/google/googlejavaformat/java/javadoc/Token$Type;->LITERAL:Lorg/google/googlejavaformat/java/javadoc/Token$Type;

    return-object v0

    :cond_4
    iget-object v1, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->input:Lorg/google/googlejavaformat/java/javadoc/CharStream;

    const-string v2, "{"

    invoke-virtual {v1, v2}, Lorg/google/googlejavaformat/java/javadoc/CharStream;->tryConsume(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->braceDepth:Lorg/google/googlejavaformat/java/javadoc/NestingCounter;

    invoke-virtual {v0}, Lorg/google/googlejavaformat/java/javadoc/NestingCounter;->incrementIfPositive()V

    sget-object v0, Lorg/google/googlejavaformat/java/javadoc/Token$Type;->LITERAL:Lorg/google/googlejavaformat/java/javadoc/Token$Type;

    return-object v0

    :cond_5
    iget-object v1, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->input:Lorg/google/googlejavaformat/java/javadoc/CharStream;

    const-string v2, "}"

    invoke-virtual {v1, v2}, Lorg/google/googlejavaformat/java/javadoc/CharStream;->tryConsume(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v0, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->braceDepth:Lorg/google/googlejavaformat/java/javadoc/NestingCounter;

    invoke-virtual {v0}, Lorg/google/googlejavaformat/java/javadoc/NestingCounter;->decrementIfPositive()V

    sget-object v0, Lorg/google/googlejavaformat/java/javadoc/Token$Type;->LITERAL:Lorg/google/googlejavaformat/java/javadoc/Token$Type;

    return-object v0

    :cond_6
    iget-object v1, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->braceDepth:Lorg/google/googlejavaformat/java/javadoc/NestingCounter;

    invoke-virtual {v1}, Lorg/google/googlejavaformat/java/javadoc/NestingCounter;->isPositive()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v0, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->input:Lorg/google/googlejavaformat/java/javadoc/CharStream;

    sget-object v1, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->LITERAL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Lorg/google/googlejavaformat/java/javadoc/CharStream;->tryConsumeRegex(Ljava/util/regex/Pattern;)Z

    move-result v0

    invoke-static {v0}, Lw2/W;->a(Z)V

    sget-object v0, Lorg/google/googlejavaformat/java/javadoc/Token$Type;->LITERAL:Lorg/google/googlejavaformat/java/javadoc/Token$Type;

    return-object v0

    :cond_7
    iget-object v1, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->input:Lorg/google/googlejavaformat/java/javadoc/CharStream;

    sget-object v2, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->PRE_OPEN_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v2}, Lorg/google/googlejavaformat/java/javadoc/CharStream;->tryConsumeRegex(Ljava/util/regex/Pattern;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->preDepth:Lorg/google/googlejavaformat/java/javadoc/NestingCounter;

    invoke-virtual {v1}, Lorg/google/googlejavaformat/java/javadoc/NestingCounter;->increment()V

    if-eqz v0, :cond_8

    sget-object v0, Lorg/google/googlejavaformat/java/javadoc/Token$Type;->LITERAL:Lorg/google/googlejavaformat/java/javadoc/Token$Type;

    goto :goto_1

    :cond_8
    sget-object v0, Lorg/google/googlejavaformat/java/javadoc/Token$Type;->PRE_OPEN_TAG:Lorg/google/googlejavaformat/java/javadoc/Token$Type;

    :goto_1
    return-object v0

    :cond_9
    iget-object v1, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->input:Lorg/google/googlejavaformat/java/javadoc/CharStream;

    sget-object v2, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->PRE_CLOSE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v2}, Lorg/google/googlejavaformat/java/javadoc/CharStream;->tryConsumeRegex(Ljava/util/regex/Pattern;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v0, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->preDepth:Lorg/google/googlejavaformat/java/javadoc/NestingCounter;

    invoke-virtual {v0}, Lorg/google/googlejavaformat/java/javadoc/NestingCounter;->decrementIfPositive()V

    invoke-direct {p0}, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->preserveExistingFormatting()Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lorg/google/googlejavaformat/java/javadoc/Token$Type;->LITERAL:Lorg/google/googlejavaformat/java/javadoc/Token$Type;

    goto :goto_2

    :cond_a
    sget-object v0, Lorg/google/googlejavaformat/java/javadoc/Token$Type;->PRE_CLOSE_TAG:Lorg/google/googlejavaformat/java/javadoc/Token$Type;

    :goto_2
    return-object v0

    :cond_b
    iget-object v1, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->input:Lorg/google/googlejavaformat/java/javadoc/CharStream;

    sget-object v2, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->CODE_OPEN_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v2}, Lorg/google/googlejavaformat/java/javadoc/CharStream;->tryConsumeRegex(Ljava/util/regex/Pattern;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->codeDepth:Lorg/google/googlejavaformat/java/javadoc/NestingCounter;

    invoke-virtual {v1}, Lorg/google/googlejavaformat/java/javadoc/NestingCounter;->increment()V

    if-eqz v0, :cond_c

    sget-object v0, Lorg/google/googlejavaformat/java/javadoc/Token$Type;->LITERAL:Lorg/google/googlejavaformat/java/javadoc/Token$Type;

    goto :goto_3

    :cond_c
    sget-object v0, Lorg/google/googlejavaformat/java/javadoc/Token$Type;->CODE_OPEN_TAG:Lorg/google/googlejavaformat/java/javadoc/Token$Type;

    :goto_3
    return-object v0

    :cond_d
    iget-object v1, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->input:Lorg/google/googlejavaformat/java/javadoc/CharStream;

    sget-object v2, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->CODE_CLOSE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v2}, Lorg/google/googlejavaformat/java/javadoc/CharStream;->tryConsumeRegex(Ljava/util/regex/Pattern;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v0, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->codeDepth:Lorg/google/googlejavaformat/java/javadoc/NestingCounter;

    invoke-virtual {v0}, Lorg/google/googlejavaformat/java/javadoc/NestingCounter;->decrementIfPositive()V

    invoke-direct {p0}, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->preserveExistingFormatting()Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lorg/google/googlejavaformat/java/javadoc/Token$Type;->LITERAL:Lorg/google/googlejavaformat/java/javadoc/Token$Type;

    goto :goto_4

    :cond_e
    sget-object v0, Lorg/google/googlejavaformat/java/javadoc/Token$Type;->CODE_CLOSE_TAG:Lorg/google/googlejavaformat/java/javadoc/Token$Type;

    :goto_4
    return-object v0

    :cond_f
    iget-object v1, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->input:Lorg/google/googlejavaformat/java/javadoc/CharStream;

    sget-object v2, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->TABLE_OPEN_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v2}, Lorg/google/googlejavaformat/java/javadoc/CharStream;->tryConsumeRegex(Ljava/util/regex/Pattern;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->tableDepth:Lorg/google/googlejavaformat/java/javadoc/NestingCounter;

    invoke-virtual {v1}, Lorg/google/googlejavaformat/java/javadoc/NestingCounter;->increment()V

    if-eqz v0, :cond_10

    sget-object v0, Lorg/google/googlejavaformat/java/javadoc/Token$Type;->LITERAL:Lorg/google/googlejavaformat/java/javadoc/Token$Type;

    goto :goto_5

    :cond_10
    sget-object v0, Lorg/google/googlejavaformat/java/javadoc/Token$Type;->TABLE_OPEN_TAG:Lorg/google/googlejavaformat/java/javadoc/Token$Type;

    :goto_5
    return-object v0

    :cond_11
    iget-object v1, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->input:Lorg/google/googlejavaformat/java/javadoc/CharStream;

    sget-object v2, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->TABLE_CLOSE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v2}, Lorg/google/googlejavaformat/java/javadoc/CharStream;->tryConsumeRegex(Ljava/util/regex/Pattern;)Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v0, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->tableDepth:Lorg/google/googlejavaformat/java/javadoc/NestingCounter;

    invoke-virtual {v0}, Lorg/google/googlejavaformat/java/javadoc/NestingCounter;->decrementIfPositive()V

    invoke-direct {p0}, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->preserveExistingFormatting()Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object v0, Lorg/google/googlejavaformat/java/javadoc/Token$Type;->LITERAL:Lorg/google/googlejavaformat/java/javadoc/Token$Type;

    goto :goto_6

    :cond_12
    sget-object v0, Lorg/google/googlejavaformat/java/javadoc/Token$Type;->TABLE_CLOSE_TAG:Lorg/google/googlejavaformat/java/javadoc/Token$Type;

    :goto_6
    return-object v0

    :cond_13
    if-eqz v0, :cond_14

    iget-object v0, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->input:Lorg/google/googlejavaformat/java/javadoc/CharStream;

    sget-object v1, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->LITERAL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Lorg/google/googlejavaformat/java/javadoc/CharStream;->tryConsumeRegex(Ljava/util/regex/Pattern;)Z

    move-result v0

    invoke-static {v0}, Lw2/W;->a(Z)V

    sget-object v0, Lorg/google/googlejavaformat/java/javadoc/Token$Type;->LITERAL:Lorg/google/googlejavaformat/java/javadoc/Token$Type;

    return-object v0

    :cond_14
    iget-object v0, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->input:Lorg/google/googlejavaformat/java/javadoc/CharStream;

    sget-object v1, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->PARAGRAPH_OPEN_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Lorg/google/googlejavaformat/java/javadoc/CharStream;->tryConsumeRegex(Ljava/util/regex/Pattern;)Z

    move-result v0

    if-eqz v0, :cond_15

    sget-object v0, Lorg/google/googlejavaformat/java/javadoc/Token$Type;->PARAGRAPH_OPEN_TAG:Lorg/google/googlejavaformat/java/javadoc/Token$Type;

    return-object v0

    :cond_15
    iget-object v0, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->input:Lorg/google/googlejavaformat/java/javadoc/CharStream;

    sget-object v1, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->PARAGRAPH_CLOSE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Lorg/google/googlejavaformat/java/javadoc/CharStream;->tryConsumeRegex(Ljava/util/regex/Pattern;)Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Lorg/google/googlejavaformat/java/javadoc/Token$Type;->PARAGRAPH_CLOSE_TAG:Lorg/google/googlejavaformat/java/javadoc/Token$Type;

    return-object v0

    :cond_16
    iget-object v0, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->input:Lorg/google/googlejavaformat/java/javadoc/CharStream;

    sget-object v1, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->LIST_OPEN_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Lorg/google/googlejavaformat/java/javadoc/CharStream;->tryConsumeRegex(Ljava/util/regex/Pattern;)Z

    move-result v0

    if-eqz v0, :cond_17

    sget-object v0, Lorg/google/googlejavaformat/java/javadoc/Token$Type;->LIST_OPEN_TAG:Lorg/google/googlejavaformat/java/javadoc/Token$Type;

    return-object v0

    :cond_17
    iget-object v0, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->input:Lorg/google/googlejavaformat/java/javadoc/CharStream;

    sget-object v1, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->LIST_CLOSE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Lorg/google/googlejavaformat/java/javadoc/CharStream;->tryConsumeRegex(Ljava/util/regex/Pattern;)Z

    move-result v0

    if-eqz v0, :cond_18

    sget-object v0, Lorg/google/googlejavaformat/java/javadoc/Token$Type;->LIST_CLOSE_TAG:Lorg/google/googlejavaformat/java/javadoc/Token$Type;

    return-object v0

    :cond_18
    iget-object v0, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->input:Lorg/google/googlejavaformat/java/javadoc/CharStream;

    sget-object v1, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->LIST_ITEM_OPEN_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Lorg/google/googlejavaformat/java/javadoc/CharStream;->tryConsumeRegex(Ljava/util/regex/Pattern;)Z

    move-result v0

    if-eqz v0, :cond_19

    sget-object v0, Lorg/google/googlejavaformat/java/javadoc/Token$Type;->LIST_ITEM_OPEN_TAG:Lorg/google/googlejavaformat/java/javadoc/Token$Type;

    return-object v0

    :cond_19
    iget-object v0, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->input:Lorg/google/googlejavaformat/java/javadoc/CharStream;

    sget-object v1, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->LIST_ITEM_CLOSE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Lorg/google/googlejavaformat/java/javadoc/CharStream;->tryConsumeRegex(Ljava/util/regex/Pattern;)Z

    move-result v0

    if-eqz v0, :cond_1a

    sget-object v0, Lorg/google/googlejavaformat/java/javadoc/Token$Type;->LIST_ITEM_CLOSE_TAG:Lorg/google/googlejavaformat/java/javadoc/Token$Type;

    return-object v0

    :cond_1a
    iget-object v0, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->input:Lorg/google/googlejavaformat/java/javadoc/CharStream;

    sget-object v1, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->BLOCKQUOTE_OPEN_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Lorg/google/googlejavaformat/java/javadoc/CharStream;->tryConsumeRegex(Ljava/util/regex/Pattern;)Z

    move-result v0

    if-eqz v0, :cond_1b

    sget-object v0, Lorg/google/googlejavaformat/java/javadoc/Token$Type;->BLOCKQUOTE_OPEN_TAG:Lorg/google/googlejavaformat/java/javadoc/Token$Type;

    return-object v0

    :cond_1b
    iget-object v0, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->input:Lorg/google/googlejavaformat/java/javadoc/CharStream;

    sget-object v1, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->BLOCKQUOTE_CLOSE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Lorg/google/googlejavaformat/java/javadoc/CharStream;->tryConsumeRegex(Ljava/util/regex/Pattern;)Z

    move-result v0

    if-eqz v0, :cond_1c

    sget-object v0, Lorg/google/googlejavaformat/java/javadoc/Token$Type;->BLOCKQUOTE_CLOSE_TAG:Lorg/google/googlejavaformat/java/javadoc/Token$Type;

    return-object v0

    :cond_1c
    iget-object v0, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->input:Lorg/google/googlejavaformat/java/javadoc/CharStream;

    sget-object v1, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->HEADER_OPEN_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Lorg/google/googlejavaformat/java/javadoc/CharStream;->tryConsumeRegex(Ljava/util/regex/Pattern;)Z

    move-result v0

    if-eqz v0, :cond_1d

    sget-object v0, Lorg/google/googlejavaformat/java/javadoc/Token$Type;->HEADER_OPEN_TAG:Lorg/google/googlejavaformat/java/javadoc/Token$Type;

    return-object v0

    :cond_1d
    iget-object v0, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->input:Lorg/google/googlejavaformat/java/javadoc/CharStream;

    sget-object v1, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->HEADER_CLOSE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Lorg/google/googlejavaformat/java/javadoc/CharStream;->tryConsumeRegex(Ljava/util/regex/Pattern;)Z

    move-result v0

    if-eqz v0, :cond_1e

    sget-object v0, Lorg/google/googlejavaformat/java/javadoc/Token$Type;->HEADER_CLOSE_TAG:Lorg/google/googlejavaformat/java/javadoc/Token$Type;

    return-object v0

    :cond_1e
    iget-object v0, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->input:Lorg/google/googlejavaformat/java/javadoc/CharStream;

    sget-object v1, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->BR_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Lorg/google/googlejavaformat/java/javadoc/CharStream;->tryConsumeRegex(Ljava/util/regex/Pattern;)Z

    move-result v0

    if-eqz v0, :cond_1f

    sget-object v0, Lorg/google/googlejavaformat/java/javadoc/Token$Type;->BR_TAG:Lorg/google/googlejavaformat/java/javadoc/Token$Type;

    return-object v0

    :cond_1f
    iget-object v0, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->input:Lorg/google/googlejavaformat/java/javadoc/CharStream;

    sget-object v1, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->MOE_BEGIN_STRIP_COMMENT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Lorg/google/googlejavaformat/java/javadoc/CharStream;->tryConsumeRegex(Ljava/util/regex/Pattern;)Z

    move-result v0

    if-eqz v0, :cond_20

    sget-object v0, Lorg/google/googlejavaformat/java/javadoc/Token$Type;->MOE_BEGIN_STRIP_COMMENT:Lorg/google/googlejavaformat/java/javadoc/Token$Type;

    return-object v0

    :cond_20
    iget-object v0, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->input:Lorg/google/googlejavaformat/java/javadoc/CharStream;

    sget-object v1, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->MOE_END_STRIP_COMMENT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Lorg/google/googlejavaformat/java/javadoc/CharStream;->tryConsumeRegex(Ljava/util/regex/Pattern;)Z

    move-result v0

    if-eqz v0, :cond_21

    sget-object v0, Lorg/google/googlejavaformat/java/javadoc/Token$Type;->MOE_END_STRIP_COMMENT:Lorg/google/googlejavaformat/java/javadoc/Token$Type;

    return-object v0

    :cond_21
    iget-object v0, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->input:Lorg/google/googlejavaformat/java/javadoc/CharStream;

    sget-object v1, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->HTML_COMMENT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Lorg/google/googlejavaformat/java/javadoc/CharStream;->tryConsumeRegex(Ljava/util/regex/Pattern;)Z

    move-result v0

    if-eqz v0, :cond_22

    sget-object v0, Lorg/google/googlejavaformat/java/javadoc/Token$Type;->HTML_COMMENT:Lorg/google/googlejavaformat/java/javadoc/Token$Type;

    return-object v0

    :cond_22
    iget-object v0, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->input:Lorg/google/googlejavaformat/java/javadoc/CharStream;

    sget-object v1, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->LITERAL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Lorg/google/googlejavaformat/java/javadoc/CharStream;->tryConsumeRegex(Ljava/util/regex/Pattern;)Z

    move-result v0

    if-eqz v0, :cond_23

    sget-object v0, Lorg/google/googlejavaformat/java/javadoc/Token$Type;->LITERAL:Lorg/google/googlejavaformat/java/javadoc/Token$Type;

    return-object v0

    :cond_23
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_24
    :goto_7
    if-eqz v0, :cond_25

    sget-object v0, Lorg/google/googlejavaformat/java/javadoc/Token$Type;->LITERAL:Lorg/google/googlejavaformat/java/javadoc/Token$Type;

    goto :goto_8

    :cond_25
    sget-object v0, Lorg/google/googlejavaformat/java/javadoc/Token$Type;->WHITESPACE:Lorg/google/googlejavaformat/java/javadoc/Token$Type;

    :goto_8
    return-object v0
.end method

.method private static deindentPreCodeBlock(Lcom/google/common/collect/g1$a;Lcom/google/common/collect/g2;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "output",
            "tokens"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/g1$a<",
            "Lorg/google/googlejavaformat/java/javadoc/Token;",
            ">;",
            "Lcom/google/common/collect/g2<",
            "Lorg/google/googlejavaformat/java/javadoc/Token;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    new-instance v1, Lorg/google/googlejavaformat/java/javadoc/Token;

    sget-object v2, Lorg/google/googlejavaformat/java/javadoc/Token$Type;->LITERAL:Lorg/google/googlejavaformat/java/javadoc/Token$Type;

    invoke-interface {p1}, Lcom/google/common/collect/g2;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/google/googlejavaformat/java/javadoc/Token;

    invoke-virtual {v3}, Lorg/google/googlejavaformat/java/javadoc/Token;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/google/googlejavaformat/java/javadoc/Token;-><init>(Lorg/google/googlejavaformat/java/javadoc/Token$Type;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/google/common/collect/g1$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/g1$a;

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lcom/google/common/collect/g2;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/google/googlejavaformat/java/javadoc/Token;

    invoke-virtual {v1}, Lorg/google/googlejavaformat/java/javadoc/Token;->getType()Lorg/google/googlejavaformat/java/javadoc/Token$Type;

    move-result-object v1

    sget-object v2, Lorg/google/googlejavaformat/java/javadoc/Token$Type;->PRE_CLOSE_TAG:Lorg/google/googlejavaformat/java/javadoc/Token$Type;

    if-eq v1, v2, :cond_0

    invoke-interface {p1}, Lcom/google/common/collect/g2;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/google/googlejavaformat/java/javadoc/Token;

    invoke-interface {v0, v1}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    :goto_1
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-interface {v0}, Ljava/util/Deque;->peekFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/google/googlejavaformat/java/javadoc/Token;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/java/javadoc/Token;->getType()Lorg/google/googlejavaformat/java/javadoc/Token$Type;

    move-result-object p1

    sget-object v1, Lorg/google/googlejavaformat/java/javadoc/Token$Type;->FORCED_NEWLINE:Lorg/google/googlejavaformat/java/javadoc/Token$Type;

    if-ne p1, v1, :cond_1

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    goto :goto_1

    :cond_1
    :goto_2
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-interface {v0}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/google/googlejavaformat/java/javadoc/Token;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/java/javadoc/Token;->getType()Lorg/google/googlejavaformat/java/javadoc/Token$Type;

    move-result-object p1

    sget-object v1, Lorg/google/googlejavaformat/java/javadoc/Token$Type;->FORCED_NEWLINE:Lorg/google/googlejavaformat/java/javadoc/Token$Type;

    if-ne p1, v1, :cond_2

    invoke-interface {v0}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    goto :goto_2

    :cond_2
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    invoke-interface {v0}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/google/googlejavaformat/java/javadoc/Token;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/java/javadoc/Token;->getType()Lorg/google/googlejavaformat/java/javadoc/Token$Type;

    move-result-object v1

    sget-object v2, Lorg/google/googlejavaformat/java/javadoc/Token$Type;->LITERAL:Lorg/google/googlejavaformat/java/javadoc/Token$Type;

    const-string v3, "}"

    const/4 v4, 0x0

    if-ne v1, v2, :cond_5

    invoke-virtual {p1}, Lorg/google/googlejavaformat/java/javadoc/Token;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/java/javadoc/Token;->length()I

    move-result v1

    const/4 v5, 0x1

    if-le v1, v5, :cond_4

    new-instance v1, Lorg/google/googlejavaformat/java/javadoc/Token;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/java/javadoc/Token;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lorg/google/googlejavaformat/java/javadoc/Token;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p1, v5

    invoke-virtual {v6, v4, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lorg/google/googlejavaformat/java/javadoc/Token;-><init>(Lorg/google/googlejavaformat/java/javadoc/Token$Type;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    new-instance p1, Lorg/google/googlejavaformat/java/javadoc/Token;

    sget-object v1, Lorg/google/googlejavaformat/java/javadoc/Token$Type;->FORCED_NEWLINE:Lorg/google/googlejavaformat/java/javadoc/Token$Type;

    const/4 v2, 0x0

    invoke-direct {p1, v1, v2}, Lorg/google/googlejavaformat/java/javadoc/Token;-><init>(Lorg/google/googlejavaformat/java/javadoc/Token$Type;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    :cond_4
    move v4, v5

    :cond_5
    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, -0x1

    move v2, v1

    :cond_6
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/google/googlejavaformat/java/javadoc/Token;

    invoke-virtual {v5}, Lorg/google/googlejavaformat/java/javadoc/Token;->getType()Lorg/google/googlejavaformat/java/javadoc/Token$Type;

    move-result-object v6

    sget-object v7, Lorg/google/googlejavaformat/java/javadoc/Token$Type;->LITERAL:Lorg/google/googlejavaformat/java/javadoc/Token$Type;

    if-ne v6, v7, :cond_6

    const/16 v6, 0x20

    invoke-static {v6}, Lw2/e;->s(C)Lw2/e;

    move-result-object v6

    invoke-virtual {v5}, Lorg/google/googlejavaformat/java/javadoc/Token;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lw2/e;->n(Ljava/lang/CharSequence;)I

    move-result v5

    if-eq v5, v1, :cond_6

    if-eq v2, v1, :cond_7

    if-ge v5, v2, :cond_6

    :cond_7
    move v2, v5

    goto :goto_3

    :cond_8
    new-instance p1, Lorg/google/googlejavaformat/java/javadoc/Token;

    sget-object v1, Lorg/google/googlejavaformat/java/javadoc/Token$Type;->FORCED_NEWLINE:Lorg/google/googlejavaformat/java/javadoc/Token$Type;

    const-string v5, "\n"

    invoke-direct {p1, v1, v5}, Lorg/google/googlejavaformat/java/javadoc/Token;-><init>(Lorg/google/googlejavaformat/java/javadoc/Token$Type;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/google/common/collect/g1$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/g1$a;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/google/googlejavaformat/java/javadoc/Token;

    invoke-virtual {v0}, Lorg/google/googlejavaformat/java/javadoc/Token;->getType()Lorg/google/googlejavaformat/java/javadoc/Token$Type;

    move-result-object v1

    sget-object v6, Lorg/google/googlejavaformat/java/javadoc/Token$Type;->LITERAL:Lorg/google/googlejavaformat/java/javadoc/Token$Type;

    if-ne v1, v6, :cond_a

    new-instance v1, Lorg/google/googlejavaformat/java/javadoc/Token;

    if-lez v2, :cond_9

    invoke-virtual {v0}, Lorg/google/googlejavaformat/java/javadoc/Token;->length()I

    move-result v7

    if-le v7, v2, :cond_9

    invoke-virtual {v0}, Lorg/google/googlejavaformat/java/javadoc/Token;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_9
    invoke-virtual {v0}, Lorg/google/googlejavaformat/java/javadoc/Token;->getValue()Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-direct {v1, v6, v0}, Lorg/google/googlejavaformat/java/javadoc/Token;-><init>(Lorg/google/googlejavaformat/java/javadoc/Token$Type;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/google/common/collect/g1$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/g1$a;

    goto :goto_4

    :cond_a
    invoke-virtual {p0, v0}, Lcom/google/common/collect/g1$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/g1$a;

    goto :goto_4

    :cond_b
    if-eqz v4, :cond_c

    new-instance p1, Lorg/google/googlejavaformat/java/javadoc/Token;

    sget-object v0, Lorg/google/googlejavaformat/java/javadoc/Token$Type;->LITERAL:Lorg/google/googlejavaformat/java/javadoc/Token$Type;

    invoke-direct {p1, v0, v3}, Lorg/google/googlejavaformat/java/javadoc/Token;-><init>(Lorg/google/googlejavaformat/java/javadoc/Token$Type;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/google/common/collect/g1$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/g1$a;

    goto :goto_6

    :cond_c
    new-instance p1, Lorg/google/googlejavaformat/java/javadoc/Token;

    sget-object v0, Lorg/google/googlejavaformat/java/javadoc/Token$Type;->FORCED_NEWLINE:Lorg/google/googlejavaformat/java/javadoc/Token$Type;

    invoke-direct {p1, v0, v5}, Lorg/google/googlejavaformat/java/javadoc/Token;-><init>(Lorg/google/googlejavaformat/java/javadoc/Token$Type;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/google/common/collect/g1$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/g1$a;

    :goto_6
    return-void
.end method

.method private static deindentPreCodeBlocks(Ljava/util/List;)Lcom/google/common/collect/g1;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/google/googlejavaformat/java/javadoc/Token;",
            ">;)",
            "Lcom/google/common/collect/g1<",
            "Lorg/google/googlejavaformat/java/javadoc/Token;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/g1;->m()Lcom/google/common/collect/g1$a;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/E1;->T(Ljava/util/Iterator;)Lcom/google/common/collect/g2;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Lcom/google/common/collect/g2;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/google/googlejavaformat/java/javadoc/Token;

    invoke-virtual {v1}, Lorg/google/googlejavaformat/java/javadoc/Token;->getType()Lorg/google/googlejavaformat/java/javadoc/Token$Type;

    move-result-object v1

    sget-object v2, Lorg/google/googlejavaformat/java/javadoc/Token$Type;->PRE_OPEN_TAG:Lorg/google/googlejavaformat/java/javadoc/Token$Type;

    if-eq v1, v2, :cond_0

    invoke-interface {p0}, Lcom/google/common/collect/g2;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/google/googlejavaformat/java/javadoc/Token;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/g1$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/g1$a;

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/google/common/collect/g2;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/google/googlejavaformat/java/javadoc/Token;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/g1$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/g1$a;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Lcom/google/common/collect/g2;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/google/googlejavaformat/java/javadoc/Token;

    invoke-virtual {v2}, Lorg/google/googlejavaformat/java/javadoc/Token;->getType()Lorg/google/googlejavaformat/java/javadoc/Token$Type;

    move-result-object v2

    sget-object v3, Lorg/google/googlejavaformat/java/javadoc/Token$Type;->FORCED_NEWLINE:Lorg/google/googlejavaformat/java/javadoc/Token$Type;

    if-ne v2, v3, :cond_1

    invoke-interface {p0}, Lcom/google/common/collect/g2;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/google/googlejavaformat/java/javadoc/Token;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Lcom/google/common/collect/g2;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/google/googlejavaformat/java/javadoc/Token;

    invoke-virtual {v2}, Lorg/google/googlejavaformat/java/javadoc/Token;->getType()Lorg/google/googlejavaformat/java/javadoc/Token$Type;

    move-result-object v2

    sget-object v3, Lorg/google/googlejavaformat/java/javadoc/Token$Type;->LITERAL:Lorg/google/googlejavaformat/java/javadoc/Token$Type;

    if-ne v2, v3, :cond_3

    invoke-interface {p0}, Lcom/google/common/collect/g2;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/google/googlejavaformat/java/javadoc/Token;

    invoke-virtual {v2}, Lorg/google/googlejavaformat/java/javadoc/Token;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[ \t]*[{]@code"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {v0, p0}, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->deindentPreCodeBlock(Lcom/google/common/collect/g1$a;Lcom/google/common/collect/g2;)V

    goto :goto_0

    :cond_3
    :goto_2
    invoke-virtual {v0, v1}, Lcom/google/common/collect/g1$a;->l(Ljava/lang/Iterable;)Lcom/google/common/collect/g1$a;

    invoke-interface {p0}, Lcom/google/common/collect/g2;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/google/googlejavaformat/java/javadoc/Token;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/g1$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/g1$a;

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/google/common/collect/g1$a;->n()Lcom/google/common/collect/g1;

    move-result-object p0

    return-object p0
.end method

.method private static fullCommentPattern()Ljava/util/regex/Pattern;
    .locals 2

    const-string v0, "^<!--.*?-->"

    const/16 v1, 0x20

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    return-object v0
.end method

.method private generateTokens()Lcom/google/common/collect/g1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/g1<",
            "Lorg/google/googlejavaformat/java/javadoc/Token;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/google/googlejavaformat/java/javadoc/JavadocLexer$LexException;
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/g1;->m()Lcom/google/common/collect/g1$a;

    move-result-object v0

    new-instance v1, Lorg/google/googlejavaformat/java/javadoc/Token;

    sget-object v2, Lorg/google/googlejavaformat/java/javadoc/Token$Type;->BEGIN_JAVADOC:Lorg/google/googlejavaformat/java/javadoc/Token$Type;

    const-string v3, "/**"

    invoke-direct {v1, v2, v3}, Lorg/google/googlejavaformat/java/javadoc/Token;-><init>(Lorg/google/googlejavaformat/java/javadoc/Token$Type;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/common/collect/g1$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/g1$a;

    :goto_0
    iget-object v1, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->input:Lorg/google/googlejavaformat/java/javadoc/CharStream;

    invoke-virtual {v1}, Lorg/google/googlejavaformat/java/javadoc/CharStream;->isExhausted()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->readToken()Lorg/google/googlejavaformat/java/javadoc/Token;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/g1$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/g1$a;

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->checkMatchingTags()V

    new-instance v1, Lorg/google/googlejavaformat/java/javadoc/Token;

    sget-object v2, Lorg/google/googlejavaformat/java/javadoc/Token$Type;->END_JAVADOC:Lorg/google/googlejavaformat/java/javadoc/Token$Type;

    const-string v3, "*/"

    invoke-direct {v1, v2, v3}, Lorg/google/googlejavaformat/java/javadoc/Token;-><init>(Lorg/google/googlejavaformat/java/javadoc/Token$Type;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/common/collect/g1$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/g1$a;

    invoke-virtual {v0}, Lcom/google/common/collect/g1$a;->n()Lcom/google/common/collect/g1;

    move-result-object v0

    invoke-static {v0}, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->joinAdjacentLiteralsAndAdjacentWhitespace(Ljava/util/List;)Lcom/google/common/collect/g1;

    move-result-object v0

    invoke-static {v0}, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->inferParagraphTags(Ljava/util/List;)Lcom/google/common/collect/g1;

    move-result-object v0

    invoke-static {v0}, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->optionalizeSpacesAfterLinks(Ljava/util/List;)Lcom/google/common/collect/g1;

    move-result-object v0

    invoke-static {v0}, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->deindentPreCodeBlocks(Ljava/util/List;)Lcom/google/common/collect/g1;

    move-result-object v0

    return-object v0
.end method

.method private static hasMultipleNewlines(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    sget-object v0, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->NEWLINE:Lw2/e;

    invoke-virtual {v0, p0}, Lw2/e;->i(Ljava/lang/CharSequence;)I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static inferParagraphTags(Ljava/util/List;)Lcom/google/common/collect/g1;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/google/googlejavaformat/java/javadoc/Token;",
            ">;)",
            "Lcom/google/common/collect/g1<",
            "Lorg/google/googlejavaformat/java/javadoc/Token;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/g1;->m()Lcom/google/common/collect/g1$a;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/E1;->T(Ljava/util/Iterator;)Lcom/google/common/collect/g2;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Lcom/google/common/collect/g2;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/google/googlejavaformat/java/javadoc/Token;

    invoke-virtual {v1}, Lorg/google/googlejavaformat/java/javadoc/Token;->getType()Lorg/google/googlejavaformat/java/javadoc/Token$Type;

    move-result-object v1

    sget-object v2, Lorg/google/googlejavaformat/java/javadoc/Token$Type;->LITERAL:Lorg/google/googlejavaformat/java/javadoc/Token$Type;

    if-ne v1, v2, :cond_1

    invoke-interface {p0}, Lcom/google/common/collect/g2;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/google/googlejavaformat/java/javadoc/Token;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/g1$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/g1$a;

    invoke-interface {p0}, Lcom/google/common/collect/g2;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/google/googlejavaformat/java/javadoc/Token;

    invoke-virtual {v1}, Lorg/google/googlejavaformat/java/javadoc/Token;->getType()Lorg/google/googlejavaformat/java/javadoc/Token$Type;

    move-result-object v1

    sget-object v3, Lorg/google/googlejavaformat/java/javadoc/Token$Type;->WHITESPACE:Lorg/google/googlejavaformat/java/javadoc/Token$Type;

    if-ne v1, v3, :cond_0

    invoke-interface {p0}, Lcom/google/common/collect/g2;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/google/googlejavaformat/java/javadoc/Token;

    invoke-virtual {v1}, Lorg/google/googlejavaformat/java/javadoc/Token;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->hasMultipleNewlines(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Lcom/google/common/collect/g2;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/google/googlejavaformat/java/javadoc/Token;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/g1$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/g1$a;

    invoke-interface {p0}, Lcom/google/common/collect/g2;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/google/googlejavaformat/java/javadoc/Token;

    invoke-virtual {v1}, Lorg/google/googlejavaformat/java/javadoc/Token;->getType()Lorg/google/googlejavaformat/java/javadoc/Token$Type;

    move-result-object v1

    if-ne v1, v2, :cond_0

    new-instance v1, Lorg/google/googlejavaformat/java/javadoc/Token;

    sget-object v2, Lorg/google/googlejavaformat/java/javadoc/Token$Type;->PARAGRAPH_OPEN_TAG:Lorg/google/googlejavaformat/java/javadoc/Token$Type;

    const-string v3, "<p>"

    invoke-direct {v1, v2, v3}, Lorg/google/googlejavaformat/java/javadoc/Token;-><init>(Lorg/google/googlejavaformat/java/javadoc/Token$Type;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/common/collect/g1$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/g1$a;

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lcom/google/common/collect/g2;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/google/googlejavaformat/java/javadoc/Token;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/g1$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/g1$a;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/google/common/collect/g1$a;->n()Lcom/google/common/collect/g1;

    move-result-object p0

    return-object p0
.end method

.method private static joinAdjacentLiteralsAndAdjacentWhitespace(Ljava/util/List;)Lcom/google/common/collect/g1;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/google/googlejavaformat/java/javadoc/Token;",
            ">;)",
            "Lcom/google/common/collect/g1<",
            "Lorg/google/googlejavaformat/java/javadoc/Token;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/g1;->m()Lcom/google/common/collect/g1$a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/E1;->T(Ljava/util/Iterator;)Lcom/google/common/collect/g2;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p0}, Lcom/google/common/collect/g2;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/google/googlejavaformat/java/javadoc/Token;

    invoke-virtual {v2}, Lorg/google/googlejavaformat/java/javadoc/Token;->getType()Lorg/google/googlejavaformat/java/javadoc/Token$Type;

    move-result-object v2

    sget-object v3, Lorg/google/googlejavaformat/java/javadoc/Token$Type;->LITERAL:Lorg/google/googlejavaformat/java/javadoc/Token$Type;

    if-ne v2, v3, :cond_1

    invoke-interface {p0}, Lcom/google/common/collect/g2;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/google/googlejavaformat/java/javadoc/Token;

    invoke-virtual {v2}, Lorg/google/googlejavaformat/java/javadoc/Token;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/google/common/collect/g2;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {p0}, Lcom/google/common/collect/g2;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/google/googlejavaformat/java/javadoc/Token;

    invoke-virtual {v0, v2}, Lcom/google/common/collect/g1$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/g1$a;

    invoke-interface {p0}, Lcom/google/common/collect/g2;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-interface {p0}, Lcom/google/common/collect/g2;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/google/googlejavaformat/java/javadoc/Token;

    invoke-virtual {v3}, Lorg/google/googlejavaformat/java/javadoc/Token;->getType()Lorg/google/googlejavaformat/java/javadoc/Token$Type;

    move-result-object v3

    sget-object v4, Lorg/google/googlejavaformat/java/javadoc/Token$Type;->WHITESPACE:Lorg/google/googlejavaformat/java/javadoc/Token$Type;

    if-ne v3, v4, :cond_3

    invoke-interface {p0}, Lcom/google/common/collect/g2;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/google/googlejavaformat/java/javadoc/Token;

    invoke-virtual {v3}, Lorg/google/googlejavaformat/java/javadoc/Token;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    invoke-interface {p0}, Lcom/google/common/collect/g2;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/google/googlejavaformat/java/javadoc/Token;

    invoke-virtual {v3}, Lorg/google/googlejavaformat/java/javadoc/Token;->getType()Lorg/google/googlejavaformat/java/javadoc/Token$Type;

    move-result-object v3

    sget-object v5, Lorg/google/googlejavaformat/java/javadoc/Token$Type;->LITERAL:Lorg/google/googlejavaformat/java/javadoc/Token$Type;

    if-ne v3, v5, :cond_4

    invoke-interface {p0}, Lcom/google/common/collect/g2;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/google/googlejavaformat/java/javadoc/Token;

    invoke-virtual {v3}, Lorg/google/googlejavaformat/java/javadoc/Token;->getValue()Ljava/lang/String;

    move-result-object v3

    const-string v6, "@"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/google/common/collect/g2;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/google/googlejavaformat/java/javadoc/Token;

    invoke-virtual {v2}, Lorg/google/googlejavaformat/java/javadoc/Token;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/google/common/collect/g2;->next()Ljava/lang/Object;

    goto/16 :goto_0

    :cond_4
    new-instance v3, Lorg/google/googlejavaformat/java/javadoc/Token;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lorg/google/googlejavaformat/java/javadoc/Token;-><init>(Lorg/google/googlejavaformat/java/javadoc/Token$Type;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/google/common/collect/g1$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/g1$a;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    new-instance v3, Lorg/google/googlejavaformat/java/javadoc/Token;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lorg/google/googlejavaformat/java/javadoc/Token;-><init>(Lorg/google/googlejavaformat/java/javadoc/Token$Type;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/google/common/collect/g1$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/g1$a;

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v0}, Lcom/google/common/collect/g1$a;->n()Lcom/google/common/collect/g1;

    move-result-object p0

    return-object p0
.end method

.method public static lex(Ljava/lang/String;)Lcom/google/common/collect/g1;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/collect/g1<",
            "Lorg/google/googlejavaformat/java/javadoc/Token;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/google/googlejavaformat/java/javadoc/JavadocLexer$LexException;
        }
    .end annotation

    invoke-static {p0}, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->stripJavadocBeginAndEnd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->normalizeLineEndings(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;

    new-instance v1, Lorg/google/googlejavaformat/java/javadoc/CharStream;

    invoke-direct {v1, p0}, Lorg/google/googlejavaformat/java/javadoc/CharStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;-><init>(Lorg/google/googlejavaformat/java/javadoc/CharStream;)V

    invoke-direct {v0}, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->generateTokens()Lcom/google/common/collect/g1;

    move-result-object p0

    return-object p0
.end method

.method private static normalizeLineEndings(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    sget-object v0, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->NON_UNIX_LINE_ENDING:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static openTagPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "namePattern"
        }
    .end annotation

    const-string v0, "^<(?:%s)\\b[^>]*>"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x2

    invoke-static {p0, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p0

    return-object p0
.end method

.method private static optionalizeSpacesAfterLinks(Ljava/util/List;)Lcom/google/common/collect/g1;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/google/googlejavaformat/java/javadoc/Token;",
            ">;)",
            "Lcom/google/common/collect/g1<",
            "Lorg/google/googlejavaformat/java/javadoc/Token;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/g1;->m()Lcom/google/common/collect/g1$a;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/E1;->T(Ljava/util/Iterator;)Lcom/google/common/collect/g2;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Lcom/google/common/collect/g2;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/google/googlejavaformat/java/javadoc/Token;

    invoke-virtual {v1}, Lorg/google/googlejavaformat/java/javadoc/Token;->getType()Lorg/google/googlejavaformat/java/javadoc/Token$Type;

    move-result-object v1

    sget-object v2, Lorg/google/googlejavaformat/java/javadoc/Token$Type;->LITERAL:Lorg/google/googlejavaformat/java/javadoc/Token$Type;

    if-ne v1, v2, :cond_1

    invoke-interface {p0}, Lcom/google/common/collect/g2;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/google/googlejavaformat/java/javadoc/Token;

    invoke-virtual {v1}, Lorg/google/googlejavaformat/java/javadoc/Token;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "^href=[^>]*>"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Lcom/google/common/collect/g2;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/google/googlejavaformat/java/javadoc/Token;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/g1$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/g1$a;

    invoke-interface {p0}, Lcom/google/common/collect/g2;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/google/googlejavaformat/java/javadoc/Token;

    invoke-virtual {v1}, Lorg/google/googlejavaformat/java/javadoc/Token;->getType()Lorg/google/googlejavaformat/java/javadoc/Token$Type;

    move-result-object v1

    sget-object v2, Lorg/google/googlejavaformat/java/javadoc/Token$Type;->WHITESPACE:Lorg/google/googlejavaformat/java/javadoc/Token$Type;

    if-ne v1, v2, :cond_0

    new-instance v1, Lorg/google/googlejavaformat/java/javadoc/Token;

    sget-object v2, Lorg/google/googlejavaformat/java/javadoc/Token$Type;->OPTIONAL_LINE_BREAK:Lorg/google/googlejavaformat/java/javadoc/Token$Type;

    invoke-interface {p0}, Lcom/google/common/collect/g2;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/google/googlejavaformat/java/javadoc/Token;

    invoke-virtual {v3}, Lorg/google/googlejavaformat/java/javadoc/Token;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/google/googlejavaformat/java/javadoc/Token;-><init>(Lorg/google/googlejavaformat/java/javadoc/Token$Type;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/common/collect/g1$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/g1$a;

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lcom/google/common/collect/g2;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/google/googlejavaformat/java/javadoc/Token;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/g1$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/g1$a;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/google/common/collect/g1$a;->n()Lcom/google/common/collect/g1;

    move-result-object p0

    return-object p0
.end method

.method private preserveExistingFormatting()Z
    .locals 1

    iget-object v0, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->preDepth:Lorg/google/googlejavaformat/java/javadoc/NestingCounter;

    invoke-virtual {v0}, Lorg/google/googlejavaformat/java/javadoc/NestingCounter;->isPositive()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->tableDepth:Lorg/google/googlejavaformat/java/javadoc/NestingCounter;

    invoke-virtual {v0}, Lorg/google/googlejavaformat/java/javadoc/NestingCounter;->isPositive()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->codeDepth:Lorg/google/googlejavaformat/java/javadoc/NestingCounter;

    invoke-virtual {v0}, Lorg/google/googlejavaformat/java/javadoc/NestingCounter;->isPositive()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private readToken()Lorg/google/googlejavaformat/java/javadoc/Token;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/google/googlejavaformat/java/javadoc/JavadocLexer$LexException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->consumeToken()Lorg/google/googlejavaformat/java/javadoc/Token$Type;

    move-result-object v0

    iget-object v1, p0, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->input:Lorg/google/googlejavaformat/java/javadoc/CharStream;

    invoke-virtual {v1}, Lorg/google/googlejavaformat/java/javadoc/CharStream;->readAndResetRecorded()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/google/googlejavaformat/java/javadoc/Token;

    invoke-direct {v2, v0, v1}, Lorg/google/googlejavaformat/java/javadoc/Token;-><init>(Lorg/google/googlejavaformat/java/javadoc/Token$Type;Ljava/lang/String;)V

    return-object v2
.end method

.method private static stripJavadocBeginAndEnd(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    const-string v0, "/**"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "Missing /**: %s"

    invoke-static {v0, v1, p0}, Lw2/H;->u(ZLjava/lang/String;Ljava/lang/Object;)V

    const-string v0, "*/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Missing */: %s"

    invoke-static {v0, v1, p0}, Lw2/H;->u(ZLjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
