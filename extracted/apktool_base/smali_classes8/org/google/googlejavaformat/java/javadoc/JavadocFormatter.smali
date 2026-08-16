.class public final Lorg/google/googlejavaformat/java/javadoc/JavadocFormatter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ONE_CONTENT_LINE_PATTERN:Ljava/util/regex/Pattern;

.field private static final SIMPLE_TAG_PATTERN:Ljava/util/regex/Pattern;

.field private static final STANDARD_BR_TOKEN:Lorg/google/googlejavaformat/java/javadoc/Token;

.field private static final STANDARD_P_TOKEN:Lorg/google/googlejavaformat/java/javadoc/Token;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/google/googlejavaformat/java/javadoc/Token;

    sget-object v1, Lorg/google/googlejavaformat/java/javadoc/Token$Type;->BR_TAG:Lorg/google/googlejavaformat/java/javadoc/Token$Type;

    const-string v2, "<br>"

    invoke-direct {v0, v1, v2}, Lorg/google/googlejavaformat/java/javadoc/Token;-><init>(Lorg/google/googlejavaformat/java/javadoc/Token$Type;Ljava/lang/String;)V

    sput-object v0, Lorg/google/googlejavaformat/java/javadoc/JavadocFormatter;->STANDARD_BR_TOKEN:Lorg/google/googlejavaformat/java/javadoc/Token;

    new-instance v0, Lorg/google/googlejavaformat/java/javadoc/Token;

    sget-object v1, Lorg/google/googlejavaformat/java/javadoc/Token$Type;->PARAGRAPH_OPEN_TAG:Lorg/google/googlejavaformat/java/javadoc/Token$Type;

    const-string v2, "<p>"

    invoke-direct {v0, v1, v2}, Lorg/google/googlejavaformat/java/javadoc/Token;-><init>(Lorg/google/googlejavaformat/java/javadoc/Token$Type;Ljava/lang/String;)V

    sput-object v0, Lorg/google/googlejavaformat/java/javadoc/JavadocFormatter;->STANDARD_P_TOKEN:Lorg/google/googlejavaformat/java/javadoc/Token;

    const-string v0, "^<\\w+\\s*/?\\s*>"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/google/googlejavaformat/java/javadoc/JavadocFormatter;->SIMPLE_TAG_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, " */[*][*]\n *[*] (.*)\n *[*]/"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/google/googlejavaformat/java/javadoc/JavadocFormatter;->ONE_CONTENT_LINE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatJavadoc(Ljava/lang/String;ILorg/google/googlejavaformat/java/javadoc/JavadocOptions;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "blockIndent",
            "options"
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lorg/google/googlejavaformat/java/javadoc/JavadocLexer;->lex(Ljava/lang/String;)Lcom/google/common/collect/g1;

    move-result-object p0
    :try_end_0
    .catch Lorg/google/googlejavaformat/java/javadoc/JavadocLexer$LexException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p0, p1, p2}, Lorg/google/googlejavaformat/java/javadoc/JavadocFormatter;->render(Ljava/util/List;ILorg/google/googlejavaformat/java/javadoc/JavadocOptions;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, p2}, Lorg/google/googlejavaformat/java/javadoc/JavadocFormatter;->makeSingleLineIfPossible(ILjava/lang/String;Lorg/google/googlejavaformat/java/javadoc/JavadocOptions;)Ljava/lang/String;

    move-result-object p0

    :catch_0
    return-object p0
.end method

.method private static makeSingleLineIfPossible(ILjava/lang/String;Lorg/google/googlejavaformat/java/javadoc/JavadocOptions;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "blockIndent",
            "input",
            "options"
        }
    .end annotation

    invoke-interface {p2}, Lorg/google/googlejavaformat/java/javadoc/JavadocOptions;->maxLineLength()I

    move-result p2

    add-int/lit8 p2, p2, -0x7

    sub-int/2addr p2, p0

    sget-object p0, Lorg/google/googlejavaformat/java/javadoc/JavadocFormatter;->ONE_CONTENT_LINE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "/** */"

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p2, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "/** "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " */"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p1
.end method

.method private static render(Ljava/util/List;ILorg/google/googlejavaformat/java/javadoc/JavadocOptions;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "blockIndent",
            "options"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/google/googlejavaformat/java/javadoc/Token;",
            ">;I",
            "Lorg/google/googlejavaformat/java/javadoc/JavadocOptions;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;

    invoke-direct {v0, p1, p2}, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;-><init>(ILorg/google/googlejavaformat/java/javadoc/JavadocOptions;)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    :pswitch_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/google/googlejavaformat/java/javadoc/Token;

    sget-object p2, Lorg/google/googlejavaformat/java/javadoc/JavadocFormatter$1;->$SwitchMap$org$google$googlejavaformat$java$javadoc$Token$Type:[I

    invoke-virtual {p1}, Lorg/google/googlejavaformat/java/javadoc/Token;->getType()Lorg/google/googlejavaformat/java/javadoc/Token$Type;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget p2, p2, v1

    packed-switch p2, :pswitch_data_0

    new-instance p0, Ljava/lang/AssertionError;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/java/javadoc/Token;->getType()Lorg/google/googlejavaformat/java/javadoc/Token$Type;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :pswitch_1
    invoke-virtual {v0, p1}, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->writeLiteral(Lorg/google/googlejavaformat/java/javadoc/Token;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {v0}, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->writeLineBreakNoAutoIndent()V

    goto :goto_0

    :pswitch_3
    invoke-virtual {v0}, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->requestWhitespace()V

    goto :goto_0

    :pswitch_4
    invoke-static {p1}, Lorg/google/googlejavaformat/java/javadoc/JavadocFormatter;->standardizeBrToken(Lorg/google/googlejavaformat/java/javadoc/Token;)Lorg/google/googlejavaformat/java/javadoc/Token;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->writeBr(Lorg/google/googlejavaformat/java/javadoc/Token;)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {v0, p1}, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->writeHtmlComment(Lorg/google/googlejavaformat/java/javadoc/Token;)V

    goto :goto_0

    :pswitch_6
    invoke-virtual {v0, p1}, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->writeMoeEndStripComment(Lorg/google/googlejavaformat/java/javadoc/Token;)V

    goto :goto_0

    :pswitch_7
    invoke-virtual {v0, p1}, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->requestMoeBeginStripComment(Lorg/google/googlejavaformat/java/javadoc/Token;)V

    goto :goto_0

    :pswitch_8
    invoke-virtual {v0, p1}, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->writeTableClose(Lorg/google/googlejavaformat/java/javadoc/Token;)V

    goto :goto_0

    :pswitch_9
    invoke-virtual {v0, p1}, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->writeTableOpen(Lorg/google/googlejavaformat/java/javadoc/Token;)V

    goto :goto_0

    :pswitch_a
    invoke-virtual {v0, p1}, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->writeCodeClose(Lorg/google/googlejavaformat/java/javadoc/Token;)V

    goto :goto_0

    :pswitch_b
    invoke-virtual {v0, p1}, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->writeCodeOpen(Lorg/google/googlejavaformat/java/javadoc/Token;)V

    goto :goto_0

    :pswitch_c
    invoke-virtual {v0, p1}, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->writePreClose(Lorg/google/googlejavaformat/java/javadoc/Token;)V

    goto :goto_0

    :pswitch_d
    invoke-virtual {v0, p1}, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->writePreOpen(Lorg/google/googlejavaformat/java/javadoc/Token;)V

    goto :goto_0

    :pswitch_e
    invoke-virtual {v0, p1}, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->writeBlockquoteOpenOrClose(Lorg/google/googlejavaformat/java/javadoc/Token;)V

    goto :goto_0

    :pswitch_f
    invoke-static {p1}, Lorg/google/googlejavaformat/java/javadoc/JavadocFormatter;->standardizePToken(Lorg/google/googlejavaformat/java/javadoc/Token;)Lorg/google/googlejavaformat/java/javadoc/Token;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->writeParagraphOpen(Lorg/google/googlejavaformat/java/javadoc/Token;)V

    goto :goto_0

    :pswitch_10
    invoke-virtual {v0, p1}, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->writeHeaderClose(Lorg/google/googlejavaformat/java/javadoc/Token;)V

    goto :goto_0

    :pswitch_11
    invoke-virtual {v0, p1}, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->writeHeaderOpen(Lorg/google/googlejavaformat/java/javadoc/Token;)V

    goto :goto_0

    :pswitch_12
    invoke-virtual {v0, p1}, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->writeListItemOpen(Lorg/google/googlejavaformat/java/javadoc/Token;)V

    goto :goto_0

    :pswitch_13
    invoke-virtual {v0, p1}, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->writeListClose(Lorg/google/googlejavaformat/java/javadoc/Token;)V

    goto :goto_0

    :pswitch_14
    invoke-virtual {v0, p1}, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->writeListOpen(Lorg/google/googlejavaformat/java/javadoc/Token;)V

    goto :goto_0

    :pswitch_15
    invoke-virtual {v0, p1}, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->writeFooterJavadocTagStart(Lorg/google/googlejavaformat/java/javadoc/Token;)V

    goto/16 :goto_0

    :pswitch_16
    invoke-virtual {v0}, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->writeEndJavadoc()V

    invoke-virtual {v0}, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_17
    invoke-virtual {v0}, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;->writeBeginJavadoc()V

    goto/16 :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static standardize(Lorg/google/googlejavaformat/java/javadoc/Token;Lorg/google/googlejavaformat/java/javadoc/Token;)Lorg/google/googlejavaformat/java/javadoc/Token;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "token",
            "standardToken"
        }
    .end annotation

    sget-object v0, Lorg/google/googlejavaformat/java/javadoc/JavadocFormatter;->SIMPLE_TAG_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Lorg/google/googlejavaformat/java/javadoc/Token;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p0, p1

    :cond_0
    return-object p0
.end method

.method private static standardizeBrToken(Lorg/google/googlejavaformat/java/javadoc/Token;)Lorg/google/googlejavaformat/java/javadoc/Token;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation

    sget-object v0, Lorg/google/googlejavaformat/java/javadoc/JavadocFormatter;->STANDARD_BR_TOKEN:Lorg/google/googlejavaformat/java/javadoc/Token;

    invoke-static {p0, v0}, Lorg/google/googlejavaformat/java/javadoc/JavadocFormatter;->standardize(Lorg/google/googlejavaformat/java/javadoc/Token;Lorg/google/googlejavaformat/java/javadoc/Token;)Lorg/google/googlejavaformat/java/javadoc/Token;

    move-result-object p0

    return-object p0
.end method

.method private static standardizePToken(Lorg/google/googlejavaformat/java/javadoc/Token;)Lorg/google/googlejavaformat/java/javadoc/Token;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation

    sget-object v0, Lorg/google/googlejavaformat/java/javadoc/JavadocFormatter;->STANDARD_P_TOKEN:Lorg/google/googlejavaformat/java/javadoc/Token;

    invoke-static {p0, v0}, Lorg/google/googlejavaformat/java/javadoc/JavadocFormatter;->standardize(Lorg/google/googlejavaformat/java/javadoc/Token;Lorg/google/googlejavaformat/java/javadoc/Token;)Lorg/google/googlejavaformat/java/javadoc/Token;

    move-result-object p0

    return-object p0
.end method
