.class public Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;
.super Lorg/eclipse/jdt/core/dom/ASTVisitor;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final COMMENT_LINE_SEPARATOR_LENGTH:I = 0x3

.field private static final HTML_ATTRIBUTE_PATTERN:Ljava/util/regex/Pattern;

.field private static final HTML_ENTITY_PATTERN:Ljava/util/regex/Pattern;

.field private static final HTML_ENTITY_REPLACE:Ljava/lang/String; = "   <> &^~\""

.field private static final HTML_TAG_PATTERN:Ljava/util/regex/Pattern;

.field private static final IMMUTABLE_TAGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final NLS_TAG_PATTERN:Ljava/util/regex/Pattern;

.field private static final PARAM_TAGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final STRING_LITERAL_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private allowSubstituteWrapping:[Z

.field private commentCodeFormatter:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;

.field private commentIndent:I

.field private commentStructure:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/formatter/Token;",
            ">;"
        }
    .end annotation
.end field

.field private ctm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

.field private firstTagToken:Lorg/eclipse/jdt/internal/formatter/Token;

.field private formatCodeTagOpenEnd:I

.field private final formatDisableTag:Ljava/lang/String;

.field private final formatEnableTag:Ljava/lang/String;

.field private lastFormatCodeClosingTagIndex:I

.field private lastFormatOffComment:Lorg/eclipse/jdt/internal/formatter/Token;

.field private lastLineComment:Lorg/eclipse/jdt/internal/formatter/Token;

.field private lastLineCommentPosition:I

.field private noFormatTagOpenStart:I

.field private final options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

.field private final sourceLevel:Ljava/lang/String;

.field private final tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "//\\$NON-NLS-([0-9]+)\\$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->NLS_TAG_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "\".*?(\\\\(\\\\\\\\)*\".*?)*\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->STRING_LITERAL_PATTERN:Ljava/util/regex/Pattern;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(?>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "(?>[ \\t]++|[\\r\\n]++[ \\t]*+\\*?)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "+[\\S&&[^=]]+"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "*(=)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "*(?>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "(?>\"[^\"]*\")|(?>\'[^\']*\')|[\\S&&[^/>\"\']]++"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "))"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<(/)?+(?:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "(pre)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x7c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, "(dl|hr|nl|p|ul|ol|table|tr)"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, "(dd|dt|li|td|th|h1|h2|h3|h4|h5|h6|q)"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, "(br)"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, "(code|tt)"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "([\\S&&[^<>]]++)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "*)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "*/?>"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->HTML_TAG_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->HTML_ATTRIBUTE_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "&(#x[0-9a-fA-F]+)?(#[0-9]+)?(lt)?(gt)?(nbsp)?(amp)?(circ)?(tilde)?(quot)?;"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->HTML_ENTITY_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "@serialField"

    const-string v1, "@throws"

    const-string v2, "@param"

    const-string v3, "@exception"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->PARAM_TAGS:Ljava/util/List;

    const-string v0, "@code"

    const-string v1, "@literal"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->IMMUTABLE_TAGS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/formatter/TokenManager;Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lorg/eclipse/jdt/core/dom/ASTVisitor;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->noFormatTagOpenStart:I

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->formatCodeTagOpenEnd:I

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->lastFormatCodeClosingTagIndex:I

    iput-object p1, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iput-object p3, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->sourceLevel:Ljava/lang/String;

    iget-object p1, p2, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->disabling_tag:[C

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0

    :cond_0
    move-object v0, p3

    :goto_0
    iput-object v0, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->formatDisableTag:Ljava/lang/String;

    iget-object p1, p2, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->enabling_tag:[C

    if-eqz p1, :cond_1

    new-instance p3, Ljava/lang/String;

    invoke-direct {p3, p1}, Ljava/lang/String;-><init>([C)V

    :cond_1
    iput-object p3, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->formatEnableTag:Ljava/lang/String;

    return-void
.end method

.method private addSubstituteWraps()V
    .locals 8

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->ctm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v0

    iget v1, v0, Lorg/eclipse/jdt/internal/formatter/Token;->originalStart:I

    const/4 v2, 0x1

    move v3, v2

    :goto_0
    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->ctm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->size()I

    move-result v4

    sub-int/2addr v4, v2

    if-lt v3, v4, :cond_0

    return-void

    :cond_0
    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->ctm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v4, v3}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v4

    iget v5, v4, Lorg/eclipse/jdt/internal/formatter/Token;->originalStart:I

    iget-object v6, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->ctm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    add-int/lit8 v7, v3, -0x1

    invoke-virtual {v6, v7}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v6

    iget v6, v6, Lorg/eclipse/jdt/internal/formatter/Token;->originalEnd:I

    add-int/2addr v6, v2

    if-ne v5, v6, :cond_2

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/formatter/Token;->getLineBreaksBefore()I

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/formatter/Token;->getLineBreaksAfter()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/formatter/Token;->getWrapPolicy()Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->allowSubstituteWrapping:[Z

    iget v5, v4, Lorg/eclipse/jdt/internal/formatter/Token;->originalStart:I

    sub-int/2addr v5, v1

    aget-boolean v0, v0, v5

    if-eqz v0, :cond_1

    sget-object v0, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;->SUBSTITUTE_ONLY:Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;

    goto :goto_1

    :cond_1
    sget-object v0, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;->DISABLE_WRAP:Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;

    :goto_1
    invoke-virtual {v4, v0}, Lorg/eclipse/jdt/internal/formatter/Token;->setWrapPolicy(Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;)V

    :cond_2
    iget v0, v4, Lorg/eclipse/jdt/internal/formatter/Token;->originalStart:I

    add-int/2addr v0, v2

    :goto_2
    iget v5, v4, Lorg/eclipse/jdt/internal/formatter/Token;->originalEnd:I

    if-lt v0, v5, :cond_3

    add-int/lit8 v3, v3, 0x1

    move-object v0, v4

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->allowSubstituteWrapping:[Z

    sub-int v6, v0, v1

    aget-boolean v5, v5, v6

    if-nez v5, :cond_4

    goto :goto_3

    :cond_4
    iget-object v5, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->ctm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v5, v0}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isJavaIdentifierPart(C)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->ctm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->tokenStartingAt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v5

    sget-object v6, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;->SUBSTITUTE_ONLY:Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;

    invoke-virtual {v5, v6}, Lorg/eclipse/jdt/internal/formatter/Token;->setWrapPolicy(Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;)V

    iget-object v5, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->ctm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    add-int/lit8 v7, v0, 0x1

    invoke-direct {p0, v7}, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->tokenStartingAt(I)I

    move-result v7

    invoke-virtual {v5, v7}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v5

    invoke-virtual {v5, v6}, Lorg/eclipse/jdt/internal/formatter/Token;->setWrapPolicy(Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;)V

    :cond_5
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private alignJavadocTag(Ljava/util/List;II)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/formatter/Token;",
            ">;II)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/formatter/Token;

    const/4 v2, 0x2

    if-eqz v1, :cond_0

    invoke-virtual {v1, p2}, Lorg/eclipse/jdt/internal/formatter/Token;->setAlign(I)V

    iget-object p2, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean p2, p2, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_insert_new_line_for_parameter:Z

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-le p2, v2, :cond_0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/eclipse/jdt/internal/formatter/Token;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/formatter/Token;->breakBefore()V

    :cond_0
    const/4 p2, 0x0

    if-eqz v1, :cond_1

    iget-object v3, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v3, v3, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_indent_parameter_description:Z

    if-nez v3, :cond_3

    :cond_1
    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_indent_tag_description:Z

    if-nez v1, :cond_3

    :cond_2
    move v0, p2

    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v2, v1, :cond_4

    return-void

    :cond_4
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/formatter/Token;

    invoke-virtual {v1, p3}, Lorg/eclipse/jdt/internal/formatter/Token;->setAlign(I)V

    if-eqz v0, :cond_5

    iget-object v3, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget v3, v3, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->indentation_size:I

    goto :goto_1

    :cond_5
    move v3, p2

    :goto_1
    invoke-virtual {v1, v3}, Lorg/eclipse/jdt/internal/formatter/Token;->setIndent(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private commentToLines(Lorg/eclipse/jdt/internal/formatter/Token;I)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/formatter/Token;",
            "I)",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/formatter/Token;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget v3, v3, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->tab_size:I

    iget-object v4, v0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v4, v1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->toString(Lorg/eclipse/jdt/internal/formatter/Token;)Ljava/lang/String;

    move-result-object v4

    if-gez p2, :cond_0

    iget-object v5, v0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    iget v6, v1, Lorg/eclipse/jdt/internal/formatter/Token;->originalStart:I

    invoke-virtual {v5, v6}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->findSourcePositionInLine(I)I

    move-result v5

    goto :goto_0

    :cond_0
    move/from16 v5, p2

    :goto_0
    const/4 v7, 0x1

    move v10, v5

    move v11, v7

    move v12, v11

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v13, 0x0

    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v14

    if-lt v8, v14, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v9, v3, :cond_2

    new-instance v3, Lorg/eclipse/jdt/internal/formatter/Token;

    iget v4, v1, Lorg/eclipse/jdt/internal/formatter/Token;->originalStart:I

    add-int/2addr v4, v9

    iget v5, v1, Lorg/eclipse/jdt/internal/formatter/Token;->originalEnd:I

    if-eqz v11, :cond_1

    iget v6, v1, Lorg/eclipse/jdt/internal/formatter/Token;->tokenType:I

    goto :goto_2

    :cond_1
    const/4 v6, 0x0

    :goto_2
    invoke-direct {v3, v4, v5, v6}, Lorg/eclipse/jdt/internal/formatter/Token;-><init>(III)V

    sget-object v1, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;->DISABLE_WRAP:Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;

    invoke-virtual {v3, v1}, Lorg/eclipse/jdt/internal/formatter/Token;->setWrapPolicy(Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v2

    :cond_3
    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x9

    if-eq v14, v15, :cond_f

    const/16 v15, 0xa

    const/16 v6, 0xd

    if-eq v14, v15, :cond_8

    if-eq v14, v6, :cond_8

    const/16 v6, 0x20

    if-eq v14, v6, :cond_4

    add-int/lit8 v10, v10, 0x1

    const/4 v12, 0x0

    goto/16 :goto_6

    :cond_4
    if-ne v9, v8, :cond_5

    if-lt v10, v5, :cond_6

    :cond_5
    if-eqz v12, :cond_7

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/formatter/Token;->getIndent()I

    move-result v6

    sub-int/2addr v6, v7

    if-ne v10, v6, :cond_7

    :cond_6
    add-int/lit8 v9, v8, 0x1

    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_6

    :cond_8
    if-ge v9, v8, :cond_b

    new-instance v10, Lorg/eclipse/jdt/internal/formatter/Token;

    iget v12, v1, Lorg/eclipse/jdt/internal/formatter/Token;->originalStart:I

    add-int/2addr v9, v12

    add-int/2addr v12, v8

    sub-int/2addr v12, v7

    if-eqz v11, :cond_9

    iget v11, v1, Lorg/eclipse/jdt/internal/formatter/Token;->tokenType:I

    goto :goto_3

    :cond_9
    const/4 v11, 0x0

    :goto_3
    invoke-direct {v10, v9, v12, v11}, Lorg/eclipse/jdt/internal/formatter/Token;-><init>(III)V

    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/formatter/Token;->breakAfter()V

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-virtual {v10, v13}, Lorg/eclipse/jdt/internal/formatter/Token;->putLineBreaksBefore(I)V

    :cond_a
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_b
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_c

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v7

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/eclipse/jdt/internal/formatter/Token;

    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/formatter/Token;->getLineBreaksAfter()I

    move-result v10

    add-int/2addr v10, v7

    invoke-virtual {v9, v10}, Lorg/eclipse/jdt/internal/formatter/Token;->putLineBreaksAfter(I)V

    goto :goto_4

    :cond_c
    add-int/lit8 v13, v13, 0x1

    :goto_4
    add-int/lit8 v9, v8, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v9, v10, :cond_e

    invoke-virtual {v4, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v14, v6, :cond_d

    goto :goto_5

    :cond_d
    move v15, v6

    :goto_5
    if-ne v10, v15, :cond_e

    move v8, v9

    :cond_e
    add-int/lit8 v9, v8, 0x1

    move v12, v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    goto :goto_6

    :cond_f
    if-ne v9, v8, :cond_10

    if-lt v10, v5, :cond_11

    :cond_10
    if-eqz v12, :cond_12

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/formatter/Token;->getIndent()I

    move-result v6

    sub-int/2addr v6, v7

    if-ne v10, v6, :cond_12

    :cond_11
    add-int/lit8 v9, v8, 0x1

    :cond_12
    if-lez v3, :cond_13

    rem-int v6, v10, v3

    sub-int v6, v3, v6

    add-int/2addr v10, v6

    :cond_13
    :goto_6
    add-int/2addr v8, v7

    goto/16 :goto_1
.end method

.method private disableFormatting(IIZ)V
    .locals 6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->ctm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->ctm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v1, p2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v1

    new-instance v2, Lorg/eclipse/jdt/internal/formatter/Token;

    iget v3, v0, Lorg/eclipse/jdt/internal/formatter/Token;->originalStart:I

    iget v4, v1, Lorg/eclipse/jdt/internal/formatter/Token;->originalEnd:I

    const/16 v5, 0x3eb

    invoke-direct {v2, v3, v4, v5}, Lorg/eclipse/jdt/internal/formatter/Token;-><init>(III)V

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->findCommentLineIndent(I)I

    move-result v3

    invoke-direct {p0, v2, v3}, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->commentToLines(Lorg/eclipse/jdt/internal/formatter/Token;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 p3, 0x0

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/eclipse/jdt/internal/formatter/Token;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/formatter/Token;->isSpaceBefore()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/formatter/Token;->spaceBefore()V

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/formatter/Token;->getAlign()I

    move-result v3

    invoke-virtual {p3, v3}, Lorg/eclipse/jdt/internal/formatter/Token;->setAlign(I)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/formatter/Token;->getIndent()I

    move-result v3

    invoke-virtual {p3, v3}, Lorg/eclipse/jdt/internal/formatter/Token;->setIndent(I)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/formatter/Token;->getLineBreaksBefore()I

    move-result v3

    invoke-virtual {p3, v3}, Lorg/eclipse/jdt/internal/formatter/Token;->putLineBreaksBefore(I)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/formatter/Token;->getWrapPolicy()Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;

    move-result-object v3

    invoke-virtual {p3, v3}, Lorg/eclipse/jdt/internal/formatter/Token;->setWrapPolicy(Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/eclipse/jdt/internal/formatter/Token;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/formatter/Token;->getLineBreaksAfter()I

    move-result v1

    invoke-virtual {p3, v1}, Lorg/eclipse/jdt/internal/formatter/Token;->putLineBreaksAfter(I)V

    add-int/lit8 p2, p2, 0x1

    invoke-direct {p0, v0, p2}, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->fixJavadocTagAlign(Lorg/eclipse/jdt/internal/formatter/Token;I)V

    iget-object p3, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->commentStructure:Ljava/util/List;

    invoke-interface {p3, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    invoke-interface {p1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jdt/internal/formatter/Token;

    invoke-virtual {v4, p3}, Lorg/eclipse/jdt/internal/formatter/Token;->setToEscape(Z)V

    goto :goto_0
.end method

.method private disableFormattingExclusively(II)V
    .locals 6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->ctm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v0

    iget v1, v0, Lorg/eclipse/jdt/internal/formatter/Token;->originalEnd:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iget-object v3, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->ctm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    add-int/lit8 v4, p2, -0x1

    invoke-virtual {v3, v4}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v3

    iget v3, v3, Lorg/eclipse/jdt/internal/formatter/Token;->originalEnd:I

    if-gt v1, v3, :cond_1

    new-instance v4, Lorg/eclipse/jdt/internal/formatter/Token;

    const/16 v5, 0x3eb

    invoke-direct {v4, v1, v3, v5}, Lorg/eclipse/jdt/internal/formatter/Token;-><init>(III)V

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->findCommentLineIndent(I)I

    move-result v1

    invoke-direct {p0, v4, v1}, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->commentToLines(Lorg/eclipse/jdt/internal/formatter/Token;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-direct {p0, v0, p2}, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->fixJavadocTagAlign(Lorg/eclipse/jdt/internal/formatter/Token;I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->commentStructure:Ljava/util/List;

    add-int/2addr p1, v2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jdt/internal/formatter/Token;

    invoke-virtual {v4, v2}, Lorg/eclipse/jdt/internal/formatter/Token;->setToEscape(Z)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->commentStructure:Ljava/util/List;

    add-int/2addr p1, v2

    invoke-interface {v1, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->ctm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object p1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->ctm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p2, v0, p1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->countLineBreaksBetween(Lorg/eclipse/jdt/internal/formatter/Token;Lorg/eclipse/jdt/internal/formatter/Token;)I

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/formatter/Token;->clearLineBreaksAfter()V

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->clearLineBreaksBefore()V

    :cond_2
    :goto_1
    return-void
.end method

.method private findCommentLineIndent(I)I
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->ctm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object p1

    iget p1, p1, Lorg/eclipse/jdt/internal/formatter/Token;->originalStart:I

    :goto_0
    move v0, p1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    if-gtz p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->ctm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->charAt(I)C

    move-result v1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_3

    const/16 v2, 0xa

    if-ne v1, v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_3
    :goto_1
    if-lez v0, :cond_4

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->ctm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_4

    add-int/lit8 v0, v0, -0x1

    :cond_4
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->ctm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    add-int/lit8 v0, v0, -0x1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->getLength(III)I

    move-result p1

    return p1
.end method

.method private findStringLiteralsInLine(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/formatter/Token;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-gez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v2, p1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v3, v2, v1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->countLineBreaksBetween(Lorg/eclipse/jdt/internal/formatter/Token;Lorg/eclipse/jdt/internal/formatter/Token;)I

    move-result v1

    if-lez v1, :cond_1

    :goto_1
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    return-object v0

    :cond_1
    iget v1, v2, Lorg/eclipse/jdt/internal/formatter/Token;->tokenType:I

    const/16 v3, 0x2e

    if-ne v1, v3, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 p1, p1, -0x1

    move-object v1, v2

    goto :goto_0
.end method

.method private fixJavadocTagAlign(Lorg/eclipse/jdt/internal/formatter/Token;I)V
    .locals 2

    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->ctm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-lt p2, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->ctm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v0, p2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/formatter/Token;->getAlign()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/formatter/Token;->getIndent()I

    move-result v1

    if-nez v1, :cond_1

    :goto_1
    return-void

    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->getAlign()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/formatter/Token;->setAlign(I)V

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->getIndent()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/formatter/Token;->setIndent(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method private formatCode(II)V
    .locals 6

    iget p2, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->formatCodeTagOpenEnd:I

    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->tokenEndingAt(I)I

    move-result p2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->tokenStartingAt(I)I

    move-result v0

    iget v1, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->formatCodeTagOpenEnd:I

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p1, p1, -0x1

    new-instance v2, Ljava/lang/StringBuilder;

    sub-int v3, p1, v1

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    new-array v3, v3, [I

    invoke-direct {p0, v1, p1, v2, v3}, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->getCodeToFormat(IILjava/lang/StringBuilder;[I)V

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->getCommentCodeFormatter()Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;

    move-result-object p1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->prepareFormattedCode(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-direct {p0, p2, v0}, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->disableFormattingExclusively(II)V

    return-void

    :cond_0
    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, v3, v2}, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->translateFormattedTokens(ILjava/util/List;[ILjava/util/HashMap;)Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->ctm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v1, p2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0, v1, v0}, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->fixJavadocTagAlign(Lorg/eclipse/jdt/internal/formatter/Token;I)V

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/formatter/Token;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/formatter/Token;->getLineBreaksBefore()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/formatter/Token;->putLineBreaksBefore(I)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/formatter/Token;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/formatter/Token;->getLineBreaksAfter()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/formatter/Token;->putLineBreaksAfter(I)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->ctm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/formatter/Token;->clearLineBreaksBefore()V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->commentStructure:Ljava/util/List;

    add-int/lit8 p2, p2, 0x1

    invoke-interface {v1, p2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->clear()V

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/internal/formatter/Token;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/formatter/Token;->getAlign()I

    move-result v4

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/formatter/Token;->getAlign()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/formatter/Token;->getIndent()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lorg/eclipse/jdt/internal/formatter/Token;->setAlign(I)V

    goto :goto_0
.end method

.method private getCodeToFormat(IILjava/lang/StringBuilder;[I)V
    .locals 11

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->ctm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->charAt(I)C

    move-result v0

    const/16 v1, 0xa

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0xd

    if-eq v0, v4, :cond_0

    if-ne v0, v1, :cond_3

    :cond_0
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    sub-int/2addr v5, v2

    aput v5, p4, v3

    iget-object v3, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->ctm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    add-int v5, v2, p1

    invoke-virtual {v3, v5}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->charAt(I)C

    move-result v3

    if-eq v3, v4, :cond_1

    if-ne v3, v1, :cond_2

    :cond_1
    if-eq v3, v0, :cond_2

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v2

    aput v0, p4, v2

    const/4 v3, 0x2

    goto :goto_0

    :cond_2
    move v3, v2

    :cond_3
    :goto_0
    add-int v0, v3, p1

    const/16 v5, 0x20

    if-le v0, p2, :cond_9

    :goto_1
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_5

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    sub-int/2addr p1, v2

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p1

    if-eq p1, v5, :cond_4

    const/16 p2, 0x9

    if-eq p1, p2, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    sub-int/2addr p1, v2

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    :goto_2
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_8

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    sub-int/2addr p1, v2

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p1

    if-eq p1, v4, :cond_6

    if-ne p1, v1, :cond_8

    :cond_6
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    sub-int/2addr p2, v2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    if-lez p2, :cond_8

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    sub-int/2addr p2, v2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p2

    if-eq p2, v4, :cond_7

    if-ne p2, v1, :cond_8

    :cond_7
    if-eq p2, p1, :cond_8

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    sub-int/2addr p1, v2

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_8
    return-void

    :cond_9
    move v6, v0

    :goto_3
    iget-object v7, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->ctm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v7, v0}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->charAt(I)C

    move-result v7

    if-eq v7, v4, :cond_16

    if-ne v7, v1, :cond_a

    goto/16 :goto_c

    :cond_a
    invoke-static {v7}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isWhitespace(C)Z

    move-result v8

    if-nez v8, :cond_17

    const/16 v8, 0x2a

    if-ne v7, v8, :cond_c

    iget-object v6, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->ctm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v6, v7}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->charAt(I)C

    move-result v6

    if-ne v6, v5, :cond_b

    add-int/lit8 v0, v0, 0x2

    move v6, v0

    goto :goto_4

    :cond_b
    move v6, v7

    :cond_c
    :goto_4
    move v7, v6

    add-int/lit8 v0, p2, 0x1

    move v5, v7

    :goto_5
    if-le v5, p2, :cond_d

    goto :goto_7

    :cond_d
    iget-object v6, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->ctm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v6, v5}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->charAt(I)C

    move-result v6

    if-eq v6, v4, :cond_f

    if-ne v6, v1, :cond_e

    goto :goto_6

    :cond_e
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_f
    :goto_6
    move v0, v5

    :goto_7
    add-int v5, v3, p1

    if-lt v5, v7, :cond_15

    const/4 v5, -0x1

    move v6, v5

    :goto_8
    if-lt v7, v0, :cond_10

    goto/16 :goto_0

    :cond_10
    iget-object v8, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->ctm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v8, v7}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->charAt(I)C

    move-result v8

    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v3, 0x1

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    sub-int/2addr v10, v2

    aput v10, p4, v3

    const/16 v3, 0x26

    if-ne v8, v3, :cond_11

    move v6, v7

    goto :goto_b

    :cond_11
    const/16 v3, 0x3b

    if-ne v8, v3, :cond_14

    if-ltz v6, :cond_14

    iget-object v3, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->ctm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->getSource()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v8, v7, 0x1

    invoke-virtual {v3, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->getHtmlEntityChar(Ljava/lang/String;)C

    move-result v3

    if-eqz v3, :cond_13

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    sub-int/2addr v8, v6

    sub-int/2addr v10, v8

    invoke-virtual {p3, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sub-int v3, v9, v8

    :goto_9
    if-lt v3, v9, :cond_12

    goto :goto_a

    :cond_12
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    sub-int/2addr v6, v2

    aput v6, p4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_13
    :goto_a
    move v6, v5

    :cond_14
    :goto_b
    add-int/lit8 v7, v7, 0x1

    move v3, v9

    goto :goto_8

    :cond_15
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    sub-int/2addr v6, v2

    aput v6, p4, v3

    move v3, v5

    goto :goto_7

    :cond_16
    :goto_c
    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v0, 0x1

    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3
.end method

.method private getCommentCodeFormatter()Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->commentCodeFormatter:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->getMap()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget v1, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_line_length:I

    iget v2, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->commentIndent:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "org.eclipse.jdt.core.formatter.comment.line_length"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget v1, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->page_width:I

    iget v2, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->commentIndent:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "org.eclipse.jdt.core.formatter.lineSplit"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.eclipse.jdt.core.compiler.source"

    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->sourceLevel:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;

    invoke-direct {v1, v0}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;-><init>(Ljava/util/Map;)V

    iput-object v1, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->commentCodeFormatter:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->commentCodeFormatter:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;

    return-object v0
.end method

.method private getHtmlEntityChar(Ljava/lang/String;)C
    .locals 8

    sget-object v0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->HTML_ENTITY_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    move v3, v1

    move v4, v2

    :goto_0
    const/16 v5, 0xa

    if-lt v3, v5, :cond_0

    return v4

    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->start(I)I

    move-result v6

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->end(I)I

    move-result v7

    if-ne v6, v7, :cond_1

    goto :goto_2

    :cond_1
    if-eqz v4, :cond_2

    return v2

    :cond_2
    if-eq v3, v1, :cond_4

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    const-string v4, "   <> &^~\""

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    goto :goto_2

    :cond_3
    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    :goto_1
    int-to-char v4, v4

    goto :goto_2

    :cond_4
    add-int/lit8 v6, v6, 0x2

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    goto :goto_1

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return v2
.end method

.method private handleBreakAfterTag(II)V
    .locals 0

    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->tokenEndingAt(I)I

    move-result p1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->ctm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->breakAfter()V

    return-void
.end method

.method private handleBreakBeforeTag(IIZ)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->tokenStartingAt(I)I

    move-result p1

    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->tokenEndingAt(I)I

    move-result p2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->ctm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/formatter/Token;->setWrapPolicy(Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;)V

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->breakBefore()V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->ctm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->clearSpaceBefore()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->clearSpaceBefore()V

    :goto_0
    return-void
.end method

.method private handleCompilerTags(Lorg/eclipse/jdt/internal/formatter/Token;I)V
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->toString(Lorg/eclipse/jdt/internal/formatter/Token;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->getInternalStructure()Ljava/util/List;

    move-result-object v1

    const-string v2, "//$FALL-THROUGH$"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "//$IDENTITY-COMPARISON$"

    if-nez v2, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/formatter/Token;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/formatter/Token;->clearSpaceBefore()V

    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_0
    if-gtz p2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    add-int/lit8 v1, p2, -0x1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v1, v0, p1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->countLineBreaksBetween(Lorg/eclipse/jdt/internal/formatter/Token;Lorg/eclipse/jdt/internal/formatter/Token;)I

    move-result v1

    if-lez v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->clearLineBreaksBefore()V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/formatter/Token;->clearLineBreaksAfter()V

    sget-object v1, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;->DISABLE_WRAP:Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;

    invoke-virtual {p1, v1}, Lorg/eclipse/jdt/internal/formatter/Token;->setWrapPolicy(Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;)V

    add-int/lit8 p2, p2, -0x1

    move-object p1, v0

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method private handleFormatCodeTag(IIZ)V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_format_source:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->handleNoFormatTag(IIZ)V

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->handleSeparateLineTag(II)V

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eqz p3, :cond_2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->tokenStartingAt(I)I

    move-result p1

    if-le p1, v0, :cond_1

    iget-object p3, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->ctm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p3, p1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/eclipse/jdt/internal/formatter/Token;->putLineBreaksBefore(I)V

    :cond_1
    iget p1, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->formatCodeTagOpenEnd:I

    if-gez p1, :cond_4

    iput p2, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->formatCodeTagOpenEnd:I

    goto :goto_0

    :cond_2
    iget p3, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->formatCodeTagOpenEnd:I

    if-ltz p3, :cond_4

    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->tokenEndingAt(I)I

    move-result p3

    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->ctm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->size()I

    move-result v2

    sub-int/2addr v2, v1

    if-ge p3, v2, :cond_3

    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->ctm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v2, p3}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object p3

    invoke-virtual {p3, v1}, Lorg/eclipse/jdt/internal/formatter/Token;->putLineBreaksAfter(I)V

    :cond_3
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->formatCode(II)V

    const/4 p2, -0x1

    iput p2, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->formatCodeTagOpenEnd:I

    iget-object p3, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->ctm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p3, p1, p2, v0}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->findIndex(IIZ)I

    move-result p1

    iput p1, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->lastFormatCodeClosingTagIndex:I

    :cond_4
    :goto_0
    return-void
.end method

.method private handleFormatOnOffTags(Lorg/eclipse/jdt/internal/formatter/Token;)Z
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->use_tags:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->toString(Lorg/eclipse/jdt/internal/formatter/Token;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->formatDisableTag:Ljava/lang/String;

    const/4 v3, -0x1

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->formatEnableTag:Ljava/lang/String;

    if-eqz v4, :cond_2

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->lastFormatOffComment:Lorg/eclipse/jdt/internal/formatter/Token;

    if-nez v0, :cond_3

    if-le v2, v3, :cond_4

    iput-object p1, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->lastFormatOffComment:Lorg/eclipse/jdt/internal/formatter/Token;

    goto :goto_1

    :cond_3
    if-le v3, v2, :cond_4

    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v4, v0, p1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->addDisableFormatTokenPair(Lorg/eclipse/jdt/internal/formatter/Token;Lorg/eclipse/jdt/internal/formatter/Token;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->lastFormatOffComment:Lorg/eclipse/jdt/internal/formatter/Token;

    :cond_4
    :goto_1
    if-gez v2, :cond_5

    if-gez v3, :cond_5

    return v1

    :cond_5
    const/4 p1, 0x1

    return p1
.end method

.method private handleHtml(Lorg/eclipse/jdt/core/dom/TagElement;)V
    .locals 11

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_format_html:Z

    if-nez v1, :cond_0

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_format_source:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->toString(Lorg/eclipse/jdt/core/dom/ASTNode;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->HTML_TAG_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v4

    add-int/2addr v2, v4

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->start(I)I

    move-result v4

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->end(I)I

    move-result v5

    const/4 v6, 0x0

    if-ne v4, v5, :cond_3

    move v4, v3

    goto :goto_1

    :cond_3
    move v4, v6

    :goto_1
    iget-object v5, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v5, v5, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_format_html:Z

    if-eqz v5, :cond_7

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->tokenStartingAt(I)I

    move-result v5

    invoke-direct {p0, v2}, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->tokenEndingAt(I)I

    move-result v7

    add-int/2addr v5, v3

    :goto_2
    if-le v5, v7, :cond_5

    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    sget-object v7, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->HTML_ATTRIBUTE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    iget-object v5, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->ctm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v5, v6}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v5

    iget v10, v5, Lorg/eclipse/jdt/internal/formatter/Token;->originalStart:I

    :goto_3
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v5

    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->start(I)I

    move-result v7

    add-int/2addr v5, v7

    invoke-virtual {v9, v3}, Ljava/util/regex/Matcher;->start(I)I

    move-result v7

    add-int/2addr v5, v7

    iget-object v7, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->allowSubstituteWrapping:[Z

    sub-int/2addr v5, v10

    aput-boolean v3, v7, v5

    goto :goto_3

    :cond_5
    iget-object v8, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->ctm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v8, v5}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v8

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/formatter/Token;->getWrapPolicy()Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;

    move-result-object v9

    if-nez v9, :cond_6

    sget-object v9, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;->SUBSTITUTE_ONLY:Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;

    invoke-virtual {v8, v9}, Lorg/eclipse/jdt/internal/formatter/Token;->setWrapPolicy(Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;)V

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_7
    :goto_4
    const/4 v5, 0x2

    move v7, v5

    move v8, v6

    :goto_5
    const/4 v9, 0x7

    if-le v7, v9, :cond_e

    if-eq v8, v3, :cond_8

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->start(I)I

    move-result v7

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->end(I)I

    move-result v5

    if-ge v7, v5, :cond_9

    invoke-direct {p0, v1, v2, v4}, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->handleFormatCodeTag(IIZ)V

    :cond_9
    iget-object v5, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v5, v5, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_format_html:Z

    if-eqz v5, :cond_1

    const-string v5, "@param"

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/TagElement;->getTagName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->ctm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    const/4 v7, -0x1

    invoke-virtual {v5, v1, v7, v6}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->findIndex(IIZ)I

    move-result v5

    iget-object v6, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->ctm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v6, p1, v7}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v6

    add-int/2addr v6, v3

    if-ne v5, v6, :cond_a

    goto/16 :goto_0

    :cond_a
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->start(I)I

    move-result v5

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->end(I)I

    move-result v3

    if-ge v5, v3, :cond_b

    invoke-direct {p0, v1, v2}, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->handleSeparateLineTag(II)V

    goto/16 :goto_0

    :cond_b
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->start(I)I

    move-result v5

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->end(I)I

    move-result v3

    if-ge v5, v3, :cond_c

    invoke-direct {p0, v1, v2, v4}, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->handleBreakBeforeTag(IIZ)V

    goto/16 :goto_0

    :cond_c
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->start(I)I

    move-result v5

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->end(I)I

    move-result v3

    if-ge v5, v3, :cond_d

    invoke-direct {p0, v1, v2}, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->handleBreakAfterTag(II)V

    goto/16 :goto_0

    :cond_d
    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->start(I)I

    move-result v5

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->end(I)I

    move-result v3

    if-ge v5, v3, :cond_1

    invoke-direct {p0, v1, v2, v4}, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->handleNoFormatTag(IIZ)V

    goto/16 :goto_0

    :cond_e
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->start(I)I

    move-result v9

    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->end(I)I

    move-result v10

    if-ge v9, v10, :cond_f

    add-int/lit8 v8, v8, 0x1

    :cond_f
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_5
.end method

.method private handleJavadocTagAlignment(Lorg/eclipse/jdt/core/dom/Javadoc;)V
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/Javadoc;->tags()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_e

    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v1, p1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_align_tags_names_descriptions:Z

    const/4 v4, 0x0

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move p1, v4

    move v2, p1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_4

    add-int/lit8 v5, p1, 0x1

    if-lez v2, :cond_2

    add-int/2addr v2, v3

    add-int/2addr v2, v5

    move v6, v2

    goto :goto_2

    :cond_2
    move v6, v5

    :goto_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_9

    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1, v5, v6}, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->alignJavadocTag(Ljava/util/List;II)V

    goto :goto_3

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/eclipse/jdt/internal/formatter/Token;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/eclipse/jdt/internal/formatter/Token;

    iget-object v7, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v7, v6, v4}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->getLength(Lorg/eclipse/jdt/internal/formatter/Token;I)I

    move-result v6

    invoke-static {p1, v6}, Ljava/lang/Math;->max(II)I

    move-result p1

    if-eqz v5, :cond_1

    iget-object v6, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v6, v5, v4}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->getLength(Lorg/eclipse/jdt/internal/formatter/Token;I)I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_1

    :cond_5
    iget-boolean p1, p1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_align_tags_descriptions_grouped:Z

    if-eqz p1, :cond_b

    move p1, v4

    move v1, p1

    move v5, v1

    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-lt p1, v6, :cond_7

    :goto_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lt v1, p1, :cond_6

    goto :goto_9

    :cond_6
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1, v4, v5}, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->alignJavadocTag(Ljava/util/List;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_7
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    iget-object v7, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->ctm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/eclipse/jdt/internal/formatter/Token;

    invoke-virtual {v7, v8}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->toString(Lorg/eclipse/jdt/internal/formatter/Token;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    :goto_6
    if-lt v1, p1, :cond_8

    move v1, p1

    move v5, v4

    move-object v2, v7

    goto :goto_7

    :cond_8
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-direct {p0, v2, v4, v5}, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->alignJavadocTag(Ljava/util/List;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_9
    :goto_7
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v3

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_a

    iget-object v8, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->ctm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/eclipse/jdt/internal/formatter/Token;

    invoke-virtual {v8, v6, v4}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->getLength(Lorg/eclipse/jdt/internal/formatter/Token;I)I

    move-result v6

    add-int/2addr v6, v3

    add-int/2addr v7, v6

    :cond_a
    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_b
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_c

    :goto_9
    return-void

    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->ctm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/formatter/Token;

    invoke-virtual {v0, v2, v4}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->getLength(Lorg/eclipse/jdt/internal/formatter/Token;I)I

    move-result v0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v2, v2, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_indent_root_tags:Z

    if-eqz v2, :cond_d

    add-int/2addr v0, v3

    goto :goto_a

    :cond_d
    move v0, v4

    :goto_a
    invoke-direct {p0, p1, v4, v0}, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->alignJavadocTag(Ljava/util/List;II)V

    goto :goto_8

    :cond_e
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/dom/TagElement;

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/TagElement;->getTagName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v5, v3, :cond_f

    goto/16 :goto_0

    :cond_f
    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v5

    invoke-direct {p0, v5}, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->tokenStartingAt(I)I

    move-result v5

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v6

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v1

    add-int/2addr v6, v1

    sub-int/2addr v6, v3

    :goto_b
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->ctm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v1, v6}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_13

    invoke-direct {p0, v6}, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->tokenEndingAt(I)I

    move-result v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->ctm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v6, v5}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v6, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->PARAM_TAGS:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    if-ne v5, v1, :cond_11

    :cond_10
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_11
    :goto_c
    add-int/lit8 v5, v5, 0x1

    if-le v5, v1, :cond_12

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_12
    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->ctm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v2, v5}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_13
    add-int/lit8 v6, v6, -0x1

    goto :goto_b
.end method

.method private handleNLSTags(Lorg/eclipse/jdt/internal/formatter/Token;I)V
    .locals 9

    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->findStringLiteralsInLine(I)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->NLS_TAG_PATTERN:Ljava/util/regex/Pattern;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v2, p1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->toString(Lorg/eclipse/jdt/internal/formatter/Token;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    const/16 v5, 0x3e9

    if-nez v4, :cond_3

    if-eqz v2, :cond_2

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/formatter/Token;->setInternalStructure(Ljava/util/List;)V

    iget p2, p1, Lorg/eclipse/jdt/internal/formatter/Token;->originalStart:I

    add-int/2addr p2, v3

    iget v1, p1, Lorg/eclipse/jdt/internal/formatter/Token;->originalEnd:I

    if-gt p2, v1, :cond_2

    new-instance p2, Lorg/eclipse/jdt/internal/formatter/Token;

    iget v1, p1, Lorg/eclipse/jdt/internal/formatter/Token;->originalStart:I

    add-int/2addr v1, v3

    iget p1, p1, Lorg/eclipse/jdt/internal/formatter/Token;->originalEnd:I

    invoke-direct {p2, v1, p1, v5}, Lorg/eclipse/jdt/internal/formatter/Token;-><init>(III)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void

    :cond_3
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    if-gt v6, v7, :cond_1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    if-le v2, v3, :cond_4

    new-instance v2, Lorg/eclipse/jdt/internal/formatter/Token;

    iget v7, p1, Lorg/eclipse/jdt/internal/formatter/Token;->originalStart:I

    add-int/2addr v3, v7

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v8

    add-int/2addr v7, v8

    sub-int/2addr v7, v4

    invoke-direct {v2, v3, v7, v5}, Lorg/eclipse/jdt/internal/formatter/Token;-><init>(III)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    new-instance v2, Lorg/eclipse/jdt/internal/formatter/Token;

    iget v3, p1, Lorg/eclipse/jdt/internal/formatter/Token;->originalStart:I

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v7

    add-int/2addr v3, v7

    iget v7, p1, Lorg/eclipse/jdt/internal/formatter/Token;->originalStart:I

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v8

    add-int/2addr v7, v8

    sub-int/2addr v7, v4

    invoke-direct {v2, v3, v7, v5}, Lorg/eclipse/jdt/internal/formatter/Token;-><init>(III)V

    add-int/lit8 v6, v6, -0x1

    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/internal/formatter/Token;

    invoke-virtual {v3, v2}, Lorg/eclipse/jdt/internal/formatter/Token;->setNLSTag(Lorg/eclipse/jdt/internal/formatter/Token;)V

    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/internal/formatter/Token;

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/formatter/Token;->setNLSTag(Lorg/eclipse/jdt/internal/formatter/Token;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    move v2, v4

    goto :goto_0
.end method

.method private handleNoFormatTag(IIZ)V
    .locals 0

    if-eqz p3, :cond_0

    iget p2, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->noFormatTagOpenStart:I

    if-gez p2, :cond_2

    iput p1, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->noFormatTagOpenStart:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->noFormatTagOpenStart:I

    if-ltz p1, :cond_2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->tokenStartingAt(I)I

    move-result p1

    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->tokenEndingAt(I)I

    move-result p2

    if-ge p1, p2, :cond_1

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->disableFormatting(IIZ)V

    :cond_1
    const/4 p1, -0x1

    iput p1, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->noFormatTagOpenStart:I

    :cond_2
    :goto_0
    return-void
.end method

.method private handleReference(Lorg/eclipse/jdt/core/dom/ASTNode;)V
    .locals 4

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getParent()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    instance-of v1, v0, Lorg/eclipse/jdt/core/dom/TagElement;

    if-eqz v1, :cond_2

    check-cast v0, Lorg/eclipse/jdt/core/dom/TagElement;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/TagElement;->isNested()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->tokenStartingAt(I)I

    move-result v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v1

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result p1

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->tokenEndingAt(I)I

    move-result p1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->ctm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v3

    iget v3, v3, Lorg/eclipse/jdt/internal/formatter/Token;->originalStart:I

    invoke-virtual {v1, v3}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->charAt(I)C

    move-result v1

    const/16 v3, 0x7d

    if-ne v1, v3, :cond_0

    move p1, v2

    :cond_0
    :goto_0
    if-le v0, p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->ctm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v1

    sget-object v2, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;->DISABLE_WRAP:Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/formatter/Token;->setWrapPolicy(Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private handleSeparateLineTag(II)V
    .locals 3

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->tokenStartingAt(I)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget v2, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->lastFormatCodeClosingTagIndex:I

    sub-int/2addr v0, v1

    if-ne v2, v0, :cond_0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->ctm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v2, v0}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/formatter/Token;->clearLineBreaksAfter()V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/formatter/Token;->breakAfter()V

    :cond_0
    invoke-direct {p0, p1, p2, v1}, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->handleBreakBeforeTag(IIZ)V

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->handleBreakAfterTag(II)V

    return-void
.end method

.method private handleStringLiterals(Ljava/lang/String;I)V
    .locals 6

    sget-object v0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->STRING_LITERAL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    add-int/2addr v0, p2

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->ctm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->findIndex(IIZ)I

    move-result v1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->end()I

    move-result v4

    add-int/2addr v4, p2

    add-int/lit8 v4, v4, -0x1

    iget-object v5, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->ctm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v5, v4, v2, v3}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->findIndex(IIZ)I

    move-result v2

    if-eq v1, v2, :cond_1

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->tokenStartingAt(I)I

    move-result v1

    invoke-direct {p0, v4}, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->tokenEndingAt(I)I

    move-result v2

    invoke-direct {p0, v1, v2, v3}, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->disableFormatting(IIZ)V

    :cond_1
    invoke-direct {p0, v0, v4}, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->noSubstituteWrapping(II)V

    goto :goto_0
.end method

.method private handleWhitespaceAround(I)Z
    .locals 13

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v0

    iget v1, v0, Lorg/eclipse/jdt/internal/formatter/Token;->originalStart:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_0

    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    sub-int/2addr v1, v3

    invoke-virtual {v4, v1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->charAt(I)C

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const/16 v4, 0x9

    const/16 v5, 0x20

    if-eq v1, v5, :cond_1

    if-ne v1, v4, :cond_2

    :cond_1
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/formatter/Token;->spaceBefore()V

    :cond_2
    iget v6, v0, Lorg/eclipse/jdt/internal/formatter/Token;->originalEnd:I

    iget-object v7, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->getSourceLength()I

    move-result v7

    sub-int/2addr v7, v3

    if-ge v6, v7, :cond_4

    iget-object v6, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    iget v7, v0, Lorg/eclipse/jdt/internal/formatter/Token;->originalEnd:I

    add-int/2addr v7, v3

    invoke-virtual {v6, v7}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->charAt(I)C

    move-result v6

    if-eq v6, v5, :cond_3

    if-ne v6, v4, :cond_4

    :cond_3
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/formatter/Token;->spaceAfter()V

    :cond_4
    const/4 v4, 0x0

    const/4 v5, 0x2

    if-lez p1, :cond_5

    iget-object v6, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    add-int/lit8 v7, p1, -0x1

    invoke-virtual {v6, v7}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v6

    iget-object v7, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v7, v6, v0}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->countLineBreaksBetween(Lorg/eclipse/jdt/internal/formatter/Token;Lorg/eclipse/jdt/internal/formatter/Token;)I

    move-result v7

    if-lez v7, :cond_6

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/formatter/Token;->breakBefore()V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/formatter/Token;->clearSpaceBefore()V

    goto :goto_1

    :cond_5
    move-object v6, v4

    move v7, v5

    :cond_6
    :goto_1
    iget-object v8, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->size()I

    move-result v8

    sub-int/2addr v8, v3

    if-ge p1, v8, :cond_7

    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    add-int/lit8 v8, p1, 0x1

    invoke-virtual {v4, v8}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v4

    iget-object v8, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v8, v0, v4}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->countLineBreaksBetween(Lorg/eclipse/jdt/internal/formatter/Token;Lorg/eclipse/jdt/internal/formatter/Token;)I

    move-result v8

    if-lez v8, :cond_8

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/formatter/Token;->breakAfter()V

    goto :goto_2

    :cond_7
    move v8, v5

    :cond_8
    :goto_2
    const/16 v9, 0x3ea

    const/16 v10, 0x3e9

    if-gt v7, v3, :cond_a

    iget v11, v6, Lorg/eclipse/jdt/internal/formatter/Token;->tokenType:I

    if-eq v11, v10, :cond_9

    if-ne v11, v9, :cond_a

    :cond_9
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/formatter/Token;->getWrapPolicy()Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;

    move-result-object p1

    sget-object v4, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;->FORCE_FIRST_COLUMN:Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;

    if-eq p1, v4, :cond_e

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/formatter/Token;->getWrapPolicy()Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/formatter/Token;->setWrapPolicy(Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;)V

    goto :goto_5

    :cond_a
    add-int/2addr p1, v5

    :goto_3
    if-gt v8, v3, :cond_c

    iget-object v5, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->size()I

    move-result v5

    if-ge p1, v5, :cond_c

    iget v5, v4, Lorg/eclipse/jdt/internal/formatter/Token;->tokenType:I

    if-eq v5, v10, :cond_b

    if-eq v5, v9, :cond_b

    goto :goto_4

    :cond_b
    iget-object v5, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    add-int/lit8 v8, p1, 0x1

    invoke-virtual {v5, p1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object p1

    iget-object v5, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v5, v4, p1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->countLineBreaksBetween(Lorg/eclipse/jdt/internal/formatter/Token;Lorg/eclipse/jdt/internal/formatter/Token;)I

    move-result v4

    move v12, v4

    move-object v4, p1

    move p1, v8

    move v8, v12

    goto :goto_3

    :cond_c
    :goto_4
    if-ge v7, v8, :cond_d

    if-eqz v6, :cond_d

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/formatter/Token;->getLineBreaksAfter()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/formatter/Token;->putLineBreaksAfter(I)V

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/formatter/Token;->clearLineBreaksAfter()V

    goto :goto_5

    :cond_d
    if-gt v8, v7, :cond_e

    if-eqz v4, :cond_e

    iget p1, v4, Lorg/eclipse/jdt/internal/formatter/Token;->tokenType:I

    const/16 v5, 0x55

    if-eq p1, v5, :cond_e

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/formatter/Token;->getLineBreaksBefore()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/formatter/Token;->putLineBreaksBefore(I)V

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/formatter/Token;->clearLineBreaksBefore()V

    :cond_e
    :goto_5
    const/16 p1, 0xd

    if-eq v1, p1, :cond_f

    const/16 p1, 0xa

    if-eq v1, p1, :cond_f

    iget p1, v0, Lorg/eclipse/jdt/internal/formatter/Token;->originalStart:I

    if-eqz p1, :cond_f

    goto :goto_6

    :cond_f
    move v2, v3

    :goto_6
    return v2
.end method

.method private noSubstituteWrapping(II)V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->ctm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v0

    iget v0, v0, Lorg/eclipse/jdt/internal/formatter/Token;->originalStart:I

    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->allowSubstituteWrapping:[Z

    sub-int/2addr p1, v0

    sub-int/2addr p2, v0

    add-int/lit8 p2, p2, 0x1

    invoke-static {v2, p1, p2, v1}, Ljava/util/Arrays;->fill([ZIIZ)V

    return-void
.end method

.method private preserveWhitespace(Lorg/eclipse/jdt/internal/formatter/Token;I)V
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_preserve_white_space_between_code_and_line_comments:Z

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->getLineBreaksBefore()I

    move-result v0

    if-nez v0, :cond_4

    if-lez p2, :cond_4

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->clearSpaceBefore()V

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->getInternalStructure()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/formatter/Token;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/formatter/Token;->clearSpaceBefore()V

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {v2, p2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object p2

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/formatter/Token;->clearSpaceAfter()V

    iget v2, p2, Lorg/eclipse/jdt/internal/formatter/Token;->originalEnd:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p1, Lorg/eclipse/jdt/internal/formatter/Token;->originalStart:I

    if-lt v2, v3, :cond_1

    return-void

    :cond_1
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    new-instance v2, Lorg/eclipse/jdt/internal/formatter/Token;

    iget p2, p2, Lorg/eclipse/jdt/internal/formatter/Token;->originalEnd:I

    add-int/lit8 p2, p2, 0x1

    iget p1, p1, Lorg/eclipse/jdt/internal/formatter/Token;->originalStart:I

    add-int/lit8 p1, p1, -0x1

    const/16 v3, 0x3e8

    invoke-direct {v2, p2, p1, v3}, Lorg/eclipse/jdt/internal/formatter/Token;-><init>(III)V

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_3
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lorg/eclipse/jdt/internal/formatter/Token;

    iget p2, p2, Lorg/eclipse/jdt/internal/formatter/Token;->originalEnd:I

    add-int/lit8 p2, p2, 0x1

    iget v2, p1, Lorg/eclipse/jdt/internal/formatter/Token;->originalEnd:I

    const/16 v3, 0x3e9

    invoke-direct {v1, p2, v2, v3}, Lorg/eclipse/jdt/internal/formatter/Token;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/formatter/Token;->setInternalStructure(Ljava/util/List;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private splitToken(Lorg/eclipse/jdt/internal/formatter/Token;II)V
    .locals 4

    new-instance v0, Lorg/eclipse/jdt/internal/formatter/Token;

    iget v1, p1, Lorg/eclipse/jdt/internal/formatter/Token;->originalStart:I

    add-int/lit8 v2, p3, -0x1

    iget v3, p1, Lorg/eclipse/jdt/internal/formatter/Token;->tokenType:I

    invoke-direct {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/formatter/Token;-><init>(III)V

    new-instance v1, Lorg/eclipse/jdt/internal/formatter/Token;

    iget v2, p1, Lorg/eclipse/jdt/internal/formatter/Token;->originalEnd:I

    iget v3, p1, Lorg/eclipse/jdt/internal/formatter/Token;->tokenType:I

    invoke-direct {v1, p3, v2, v3}, Lorg/eclipse/jdt/internal/formatter/Token;-><init>(III)V

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->isSpaceBefore()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/formatter/Token;->spaceBefore()V

    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->getLineBreaksBefore()I

    move-result p3

    invoke-virtual {v0, p3}, Lorg/eclipse/jdt/internal/formatter/Token;->putLineBreaksBefore(I)V

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->getLineBreaksAfter()I

    move-result p3

    invoke-virtual {v1, p3}, Lorg/eclipse/jdt/internal/formatter/Token;->putLineBreaksAfter(I)V

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->getIndent()I

    move-result p3

    invoke-virtual {v0, p3}, Lorg/eclipse/jdt/internal/formatter/Token;->setIndent(I)V

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->getIndent()I

    move-result p3

    invoke-virtual {v1, p3}, Lorg/eclipse/jdt/internal/formatter/Token;->setIndent(I)V

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->getAlign()I

    move-result p3

    invoke-virtual {v0, p3}, Lorg/eclipse/jdt/internal/formatter/Token;->setAlign(I)V

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->getAlign()I

    move-result p3

    invoke-virtual {v1, p3}, Lorg/eclipse/jdt/internal/formatter/Token;->setAlign(I)V

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->getWrapPolicy()Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/formatter/Token;->setWrapPolicy(Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->commentStructure:Ljava/util/List;

    invoke-interface {p1, p2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->commentStructure:Ljava/util/List;

    add-int/lit8 p2, p2, 0x1

    invoke-interface {p1, p2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private tokenEndingAt(I)I
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->ctm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->findIndex(IIZ)I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->ctm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v1

    iget v3, v1, Lorg/eclipse/jdt/internal/formatter/Token;->originalEnd:I

    if-ne v3, p1, :cond_0

    return v0

    :cond_0
    add-int/2addr p1, v2

    invoke-direct {p0, v1, v0, p1}, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->splitToken(Lorg/eclipse/jdt/internal/formatter/Token;II)V

    return v0
.end method

.method private tokenStartingAt(I)I
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->ctm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->findIndex(IIZ)I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->ctm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v1

    iget v2, v1, Lorg/eclipse/jdt/internal/formatter/Token;->originalStart:I

    if-ne v2, p1, :cond_0

    return v0

    :cond_0
    invoke-direct {p0, v1, v0, p1}, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->splitToken(Lorg/eclipse/jdt/internal/formatter/Token;II)V

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private tokenizeLineComment(Lorg/eclipse/jdt/internal/formatter/Token;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/formatter/Token;",
            ")",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/formatter/Token;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->getInternalStructure()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    filled-new-array {p1}, [Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_1

    return-object v1

    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/internal/formatter/Token;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/formatter/Token;->hasNLSTag()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    iget v5, v3, Lorg/eclipse/jdt/internal/formatter/Token;->originalStart:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/formatter/Token;->spaceBefore()V

    :cond_2
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_3
    iget v4, v3, Lorg/eclipse/jdt/internal/formatter/Token;->originalStart:I

    iget v5, p1, Lorg/eclipse/jdt/internal/formatter/Token;->originalStart:I

    const/16 v6, 0x3e9

    if-ne v4, v5, :cond_6

    :goto_1
    iget v5, v3, Lorg/eclipse/jdt/internal/formatter/Token;->originalEnd:I

    if-gt v4, v5, :cond_5

    iget-object v5, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v5, v4}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->charAt(I)C

    move-result v5

    const/16 v7, 0x2f

    if-eq v5, v7, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    new-instance v5, Lorg/eclipse/jdt/internal/formatter/Token;

    iget v7, p1, Lorg/eclipse/jdt/internal/formatter/Token;->originalStart:I

    add-int/lit8 v8, v4, -0x1

    invoke-direct {v5, v7, v8, v6}, Lorg/eclipse/jdt/internal/formatter/Token;-><init>(III)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    move v5, v4

    :goto_3
    iget v7, v3, Lorg/eclipse/jdt/internal/formatter/Token;->originalEnd:I

    add-int/lit8 v8, v7, 0x1

    if-le v4, v8, :cond_7

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    add-int/lit8 v7, v7, 0x1

    if-eq v4, v7, :cond_8

    iget-object v7, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v7, v4}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isWhitespace(C)Z

    move-result v7

    if-eqz v7, :cond_a

    :cond_8
    if-ge v5, v4, :cond_9

    new-instance v7, Lorg/eclipse/jdt/internal/formatter/Token;

    add-int/lit8 v8, v4, -0x1

    invoke-direct {v7, v5, v8, v6}, Lorg/eclipse/jdt/internal/formatter/Token;-><init>(III)V

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/formatter/Token;->spaceBefore()V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    add-int/lit8 v5, v4, 0x1

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_3
.end method

.method private tokenizeMultilineComment(Lorg/eclipse/jdt/internal/formatter/Token;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->allowSubstituteWrapping:[Z

    if-eqz v2, :cond_0

    array-length v2, v2

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/formatter/Token;->countChars()I

    move-result v3

    if-ge v2, v3, :cond_1

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/formatter/Token;->countChars()I

    move-result v2

    new-array v2, v2, [Z

    iput-object v2, v0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->allowSubstituteWrapping:[Z

    :cond_1
    iget v2, v1, Lorg/eclipse/jdt/internal/formatter/Token;->tokenType:I

    const/16 v3, 0x3eb

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_2

    move v2, v5

    goto :goto_0

    :cond_2
    move v2, v4

    :goto_0
    iget-object v6, v0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->allowSubstituteWrapping:[Z

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/formatter/Token;->countChars()I

    move-result v7

    xor-int/lit8 v8, v2, 0x1

    invoke-static {v6, v4, v7, v8}, Ljava/util/Arrays;->fill([ZIIZ)V

    if-eqz v2, :cond_3

    iget-object v2, v0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v2, v2, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_clear_blank_lines_in_javadoc_comment:Z

    goto :goto_1

    :cond_3
    iget-object v2, v0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v2, v2, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_clear_blank_lines_in_block_comment:Z

    :goto_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget v7, v1, Lorg/eclipse/jdt/internal/formatter/Token;->originalStart:I

    add-int/2addr v7, v5

    :goto_2
    iget v8, v1, Lorg/eclipse/jdt/internal/formatter/Token;->originalEnd:I

    sub-int/2addr v8, v5

    const/16 v9, 0x2a

    if-ge v7, v8, :cond_5

    iget-object v8, v0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    add-int/lit8 v10, v7, 0x1

    invoke-virtual {v8, v10}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->charAt(I)C

    move-result v8

    if-eq v8, v9, :cond_4

    goto :goto_3

    :cond_4
    move v7, v10

    goto :goto_2

    :cond_5
    :goto_3
    new-instance v8, Lorg/eclipse/jdt/internal/formatter/Token;

    iget v10, v1, Lorg/eclipse/jdt/internal/formatter/Token;->originalStart:I

    iget v11, v1, Lorg/eclipse/jdt/internal/formatter/Token;->tokenType:I

    invoke-direct {v8, v10, v7, v11}, Lorg/eclipse/jdt/internal/formatter/Token;-><init>(III)V

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/formatter/Token;->spaceAfter()V

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v10, v1, Lorg/eclipse/jdt/internal/formatter/Token;->originalEnd:I

    sub-int/2addr v10, v5

    :goto_4
    add-int/lit8 v11, v10, -0x1

    if-le v11, v7, :cond_7

    iget-object v12, v0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v12, v11}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->charAt(I)C

    move-result v11

    if-eq v11, v9, :cond_6

    goto :goto_5

    :cond_6
    add-int/lit8 v10, v10, -0x1

    goto :goto_4

    :cond_7
    :goto_5
    add-int/2addr v7, v5

    move v11, v4

    :goto_6
    iget v12, v1, Lorg/eclipse/jdt/internal/formatter/Token;->originalEnd:I

    const/4 v13, 0x2

    if-le v7, v12, :cond_c

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v5

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/formatter/Token;

    iget v7, v1, Lorg/eclipse/jdt/internal/formatter/Token;->tokenType:I

    if-ne v7, v3, :cond_8

    iget-object v3, v0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v3, v3, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_new_lines_at_javadoc_boundaries:Z

    goto :goto_7

    :cond_8
    iget-object v3, v0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v3, v3, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_new_lines_at_block_boundaries:Z

    :goto_7
    if-nez v3, :cond_9

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/internal/formatter/Token;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/formatter/Token;->clearLineBreaksBefore()V

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/formatter/Token;->clearLineBreaksBefore()V

    goto :goto_8

    :cond_9
    iget-object v3, v0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v3, v8, v2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->countLineBreaksBetween(Lorg/eclipse/jdt/internal/formatter/Token;Lorg/eclipse/jdt/internal/formatter/Token;)I

    move-result v3

    if-lez v3, :cond_a

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/formatter/Token;->breakAfter()V

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/formatter/Token;->breakBefore()V

    :cond_a
    :goto_8
    invoke-virtual {v2, v5}, Lorg/eclipse/jdt/internal/formatter/Token;->setAlign(I)V

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v13, :cond_b

    return v4

    :cond_b
    invoke-virtual {v1, v6}, Lorg/eclipse/jdt/internal/formatter/Token;->setInternalStructure(Ljava/util/List;)V

    return v5

    :cond_c
    move v12, v11

    move v11, v7

    :goto_9
    const/16 v14, 0xa

    const/16 v15, 0xd

    if-lt v7, v10, :cond_d

    goto :goto_c

    :cond_d
    iget-object v3, v0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v3, v7}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->charAt(I)C

    move-result v3

    if-eq v3, v15, :cond_1e

    if-ne v3, v14, :cond_e

    goto/16 :goto_12

    :cond_e
    invoke-static {v3}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_21

    :goto_a
    iget-object v3, v0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v3, v7}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->charAt(I)C

    move-result v3

    if-ne v3, v9, :cond_10

    if-gtz v12, :cond_f

    goto :goto_b

    :cond_f
    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    :cond_10
    :goto_b
    move v11, v7

    :goto_c
    move v3, v11

    move v7, v3

    move v11, v12

    :goto_d
    iget v12, v1, Lorg/eclipse/jdt/internal/formatter/Token;->originalEnd:I

    add-int/lit8 v4, v12, 0x1

    if-le v7, v4, :cond_11

    const/16 v3, 0x3eb

    const/4 v4, 0x0

    goto :goto_6

    :cond_11
    add-int/lit8 v12, v12, 0x1

    if-eq v7, v12, :cond_12

    if-eq v7, v10, :cond_12

    iget-object v4, v0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v4, v7}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isWhitespace(C)Z

    move-result v12

    if-eqz v12, :cond_1c

    goto :goto_e

    :cond_12
    const/4 v4, 0x0

    :goto_e
    if-ge v3, v7, :cond_19

    new-instance v12, Lorg/eclipse/jdt/internal/formatter/Token;

    add-int/lit8 v9, v7, -0x1

    iget v13, v1, Lorg/eclipse/jdt/internal/formatter/Token;->tokenType:I

    invoke-direct {v12, v3, v9, v13}, Lorg/eclipse/jdt/internal/formatter/Token;-><init>(III)V

    invoke-virtual {v12}, Lorg/eclipse/jdt/internal/formatter/Token;->spaceBefore()V

    if-lez v11, :cond_15

    if-eqz v2, :cond_13

    move v11, v5

    :cond_13
    if-gt v11, v5, :cond_14

    iget-object v9, v0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v9, v9, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->join_lines_in_comments:Z

    if-nez v9, :cond_15

    :cond_14
    invoke-virtual {v12, v11}, Lorg/eclipse/jdt/internal/formatter/Token;->putLineBreaksBefore(I)V

    :cond_15
    iget-object v9, v0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v9, v3}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->charAt(I)C

    move-result v9

    const/16 v13, 0x40

    if-ne v9, v13, :cond_18

    sget-object v9, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;->DISABLE_WRAP:Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;

    invoke-virtual {v12, v9}, Lorg/eclipse/jdt/internal/formatter/Token;->setWrapPolicy(Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;)V

    iget v9, v1, Lorg/eclipse/jdt/internal/formatter/Token;->tokenType:I

    const/16 v14, 0x3ea

    if-ne v9, v14, :cond_17

    if-ne v11, v5, :cond_17

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-le v9, v5, :cond_17

    if-eqz v2, :cond_16

    move v9, v5

    goto :goto_f

    :cond_16
    const/4 v9, 0x2

    :goto_f
    invoke-virtual {v12, v9}, Lorg/eclipse/jdt/internal/formatter/Token;->putLineBreaksBefore(I)V

    :cond_17
    iget-object v9, v0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v9, v3}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->charAt(I)C

    move-result v3

    if-ne v3, v13, :cond_18

    if-lez v11, :cond_18

    iget-object v3, v0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->firstTagToken:Lorg/eclipse/jdt/internal/formatter/Token;

    if-nez v3, :cond_18

    iput-object v12, v0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->firstTagToken:Lorg/eclipse/jdt/internal/formatter/Token;

    :cond_18
    invoke-interface {v6, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v11, 0x0

    :cond_19
    if-eq v4, v15, :cond_1d

    const/16 v3, 0xa

    if-ne v4, v3, :cond_1a

    goto :goto_11

    :cond_1a
    if-ne v7, v10, :cond_1b

    move v3, v7

    goto :goto_10

    :cond_1b
    add-int/lit8 v3, v7, 0x1

    :cond_1c
    :goto_10
    add-int/lit8 v7, v7, 0x1

    const/4 v4, 0x0

    const/16 v9, 0x2a

    const/4 v13, 0x2

    const/16 v14, 0xa

    goto/16 :goto_d

    :cond_1d
    :goto_11
    const/16 v3, 0x3eb

    const/4 v4, 0x0

    const/16 v9, 0x2a

    goto/16 :goto_6

    :cond_1e
    :goto_12
    add-int/lit8 v12, v12, 0x1

    iget-object v4, v0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v4, v9}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->charAt(I)C

    move-result v4

    if-eq v4, v15, :cond_1f

    const/16 v11, 0xa

    if-ne v4, v11, :cond_20

    :cond_1f
    if-eq v4, v3, :cond_20

    move v7, v9

    :cond_20
    add-int/lit8 v3, v7, 0x1

    move v11, v3

    :cond_21
    add-int/2addr v7, v5

    const/16 v3, 0x3eb

    const/4 v4, 0x0

    const/16 v9, 0x2a

    const/4 v13, 0x2

    goto/16 :goto_9
.end method

.method private translateFormattedTokens(ILjava/util/List;[ILjava/util/HashMap;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/formatter/Token;",
            ">;[I",
            "Ljava/util/HashMap<",
            "Lorg/eclipse/jdt/internal/formatter/Token;",
            "Lorg/eclipse/jdt/internal/formatter/Token;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/formatter/Token;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v3

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/formatter/Token;

    invoke-virtual {p1, v1}, Lorg/eclipse/jdt/internal/formatter/Token;->putLineBreaksAfter(I)V

    return-object v0

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/formatter/Token;

    iget v4, v2, Lorg/eclipse/jdt/internal/formatter/Token;->originalStart:I

    invoke-static {p3, v4}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v4

    :goto_1
    if-lez v4, :cond_2

    add-int/lit8 v5, v4, -0x1

    aget v5, p3, v5

    iget v6, v2, Lorg/eclipse/jdt/internal/formatter/Token;->originalStart:I

    if-eq v5, v6, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_2
    :goto_2
    iget v5, v2, Lorg/eclipse/jdt/internal/formatter/Token;->originalEnd:I

    invoke-static {p3, v5}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v5

    :goto_3
    add-int/lit8 v6, v5, 0x1

    array-length v7, p3

    if-ge v6, v7, :cond_4

    aget v7, p3, v6

    iget v8, v2, Lorg/eclipse/jdt/internal/formatter/Token;->originalEnd:I

    if-eq v7, v8, :cond_3

    goto :goto_4

    :cond_3
    move v5, v6

    goto :goto_3

    :cond_4
    :goto_4
    new-instance v6, Lorg/eclipse/jdt/internal/formatter/Token;

    add-int/2addr v4, p1

    add-int/2addr v5, p1

    iget v7, v2, Lorg/eclipse/jdt/internal/formatter/Token;->tokenType:I

    invoke-direct {v6, v2, v4, v5, v7}, Lorg/eclipse/jdt/internal/formatter/Token;-><init>(Lorg/eclipse/jdt/internal/formatter/Token;III)V

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/formatter/Token;->getWrapPolicy()Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;

    move-result-object v4

    if-nez v4, :cond_5

    sget-object v4, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;->DISABLE_WRAP:Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;

    invoke-virtual {v6, v4}, Lorg/eclipse/jdt/internal/formatter/Token;->setWrapPolicy(Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;)V

    :cond_5
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/formatter/Token;->hasNLSTag()Z

    move-result v4

    if-eqz v4, :cond_8

    if-nez p4, :cond_6

    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    :cond_6
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/formatter/Token;->getNLSTag()Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v4

    invoke-virtual {p4, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jdt/internal/formatter/Token;

    if-eqz v4, :cond_7

    invoke-virtual {v4, v6}, Lorg/eclipse/jdt/internal/formatter/Token;->setNLSTag(Lorg/eclipse/jdt/internal/formatter/Token;)V

    invoke-virtual {v6, v4}, Lorg/eclipse/jdt/internal/formatter/Token;->setNLSTag(Lorg/eclipse/jdt/internal/formatter/Token;)V

    goto :goto_5

    :cond_7
    invoke-virtual {p4, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    :goto_5
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/formatter/Token;->getLineBreaksBefore()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/formatter/Token;->getInternalStructure()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_9

    invoke-direct {p0, p1, v4, p3, p4}, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->translateFormattedTokens(ILjava/util/List;[ILjava/util/HashMap;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v6, v4}, Lorg/eclipse/jdt/internal/formatter/Token;->setInternalStructure(Ljava/util/List;)V

    :cond_9
    invoke-virtual {v6, v1}, Lorg/eclipse/jdt/internal/formatter/Token;->putLineBreaksBefore(I)V

    invoke-virtual {v6, v3}, Lorg/eclipse/jdt/internal/formatter/Token;->setToEscape(Z)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/formatter/Token;->getLineBreaksAfter()I

    move-result v1

    goto/16 :goto_0
.end method


# virtual methods
.method public endVisit(Lorg/eclipse/jdt/core/dom/Javadoc;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->ctm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_insert_empty_line_before_root_tags:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->firstTagToken:Lorg/eclipse/jdt/internal/formatter/Token;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->indexOf(Lorg/eclipse/jdt/internal/formatter/Token;)I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 4
    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->firstTagToken:Lorg/eclipse/jdt/internal/formatter/Token;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/formatter/Token;->putLineBreaksBefore(I)V

    .line 5
    :cond_1
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->addSubstituteWraps()V

    return-void
.end method

.method public endVisit(Lorg/eclipse/jdt/core/dom/TagElement;)V
    .locals 3

    .line 6
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/TagElement;->getTagName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    const-string v1, "@see"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->toString(Lorg/eclipse/jdt/core/dom/ASTNode;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->handleStringLiterals(Ljava/lang/String;I)V

    goto :goto_1

    .line 10
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->handleHtml(Lorg/eclipse/jdt/core/dom/TagElement;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public finishUp()V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->lastFormatOffComment:Lorg/eclipse/jdt/internal/formatter/Token;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->addDisableFormatTokenPair(Lorg/eclipse/jdt/internal/formatter/Token;Lorg/eclipse/jdt/internal/formatter/Token;)V

    :cond_0
    return-void
.end method

.method public handleBlockComment(I)V
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->handleWhitespaceAround(I)Z

    move-result v1

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->handleFormatOnOffTags(Lorg/eclipse/jdt/internal/formatter/Token;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v2, p1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->isInHeader(I)Z

    move-result p1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v3, v2, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_format_block_comment:Z

    if-eqz v3, :cond_1

    if-eqz p1, :cond_2

    :cond_1
    iget-boolean v2, v2, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_format_header:Z

    if-eqz v2, :cond_3

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    iget v2, v0, Lorg/eclipse/jdt/internal/formatter/Token;->originalStart:I

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {p1, v2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->charAt(I)C

    move-result p1

    const/16 v2, 0x2d

    if-eq p1, v2, :cond_3

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->tokenizeMultilineComment(Lorg/eclipse/jdt/internal/formatter/Token;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/formatter/Token;->getInternalStructure()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->commentStructure:Ljava/util/List;

    new-instance p1, Lorg/eclipse/jdt/internal/formatter/TokenManager;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->commentStructure:Ljava/util/List;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-direct {p1, v2, v3}, Lorg/eclipse/jdt/internal/formatter/TokenManager;-><init>(Ljava/util/List;Lorg/eclipse/jdt/internal/formatter/TokenManager;)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->ctm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->toString(Lorg/eclipse/jdt/internal/formatter/Token;)Ljava/lang/String;

    move-result-object p1

    iget v2, v0, Lorg/eclipse/jdt/internal/formatter/Token;->originalStart:I

    invoke-direct {p0, p1, v2}, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->handleStringLiterals(Ljava/lang/String;I)V

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->addSubstituteWraps()V

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, -0x1

    invoke-direct {p0, v0, p1}, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->commentToLines(Lorg/eclipse/jdt/internal/formatter/Token;I)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/formatter/Token;->setInternalStructure(Ljava/util/List;)V

    :goto_1
    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean p1, p1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->never_indent_block_comments_on_first_column:Z

    if-eqz p1, :cond_4

    if-eqz v1, :cond_4

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/formatter/Token;->setIndent(I)V

    sget-object p1, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;->FORCE_FIRST_COLUMN:Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/formatter/Token;->setWrapPolicy(Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;)V

    :cond_4
    return-void
.end method

.method public handleLineComment(I)V
    .locals 8

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->handleWhitespaceAround(I)Z

    move-result v1

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->handleFormatOnOffTags(Lorg/eclipse/jdt/internal/formatter/Token;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v3, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_format_line_comment:Z

    if-eqz v3, :cond_1

    iget-boolean v3, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_format_line_comment_starting_on_first_column:Z

    if-nez v3, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->lastLineComment:Lorg/eclipse/jdt/internal/formatter/Token;

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/formatter/Token;->setIndent(I)V

    sget-object p1, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;->FORCE_FIRST_COLUMN:Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/formatter/Token;->setWrapPolicy(Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;)V

    return-void

    :cond_1
    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->never_indent_line_comments_on_first_column:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/formatter/Token;->setIndent(I)V

    sget-object v1, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;->FORCE_FIRST_COLUMN:Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/formatter/Token;->setWrapPolicy(Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;)V

    :cond_2
    invoke-direct {p0, v0, p1}, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->handleNLSTags(Lorg/eclipse/jdt/internal/formatter/Token;I)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    iget v3, v0, Lorg/eclipse/jdt/internal/formatter/Token;->originalStart:I

    invoke-virtual {v1, v3}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->findSourcePositionInLine(I)I

    move-result v1

    const/4 v3, 0x1

    if-lez p1, :cond_3

    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    add-int/lit8 v5, p1, -0x1

    invoke-virtual {v4, v5}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v4

    iget-object v5, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->lastLineComment:Lorg/eclipse/jdt/internal/formatter/Token;

    if-ne v4, v5, :cond_3

    iget v4, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->lastLineCommentPosition:I

    iget-object v6, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget v6, v6, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->indentation_size:I

    sub-int/2addr v4, v6

    add-int/2addr v4, v3

    if-lt v1, v4, :cond_3

    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v4, v5, v0}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->countLineBreaksBetween(Lorg/eclipse/jdt/internal/formatter/Token;Lorg/eclipse/jdt/internal/formatter/Token;)I

    move-result v4

    if-ne v4, v3, :cond_3

    move v4, v3

    goto :goto_0

    :cond_3
    move v4, v2

    :goto_0
    iget-object v5, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v5, p1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->isInHeader(I)Z

    move-result v5

    iget-object v6, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v7, v6, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_format_line_comment:Z

    if-eqz v7, :cond_4

    if-eqz v5, :cond_5

    :cond_4
    iget-boolean v6, v6, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_format_header:Z

    if-eqz v6, :cond_7

    if-nez v5, :cond_5

    goto :goto_2

    :cond_5
    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->tokenizeLineComment(Lorg/eclipse/jdt/internal/formatter/Token;)Ljava/util/List;

    move-result-object v3

    if-eqz v4, :cond_6

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/formatter/Token;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/formatter/Token;->breakBefore()V

    new-instance v2, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;

    sget-object v4, Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;->WHERE_NECESSARY:Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;

    add-int/lit8 v5, p1, -0x1

    iget v6, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->lastLineCommentPosition:I

    invoke-direct {v2, v4, v5, v6}, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;-><init>(Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;II)V

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/formatter/Token;->setWrapPolicy(Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->lastLineComment:Lorg/eclipse/jdt/internal/formatter/Token;

    new-instance v2, Lorg/eclipse/jdt/internal/formatter/Token;

    iget v4, v1, Lorg/eclipse/jdt/internal/formatter/Token;->originalStart:I

    iget v0, v0, Lorg/eclipse/jdt/internal/formatter/Token;->originalEnd:I

    iget v6, v1, Lorg/eclipse/jdt/internal/formatter/Token;->tokenType:I

    invoke-direct {v2, v1, v4, v0, v6}, Lorg/eclipse/jdt/internal/formatter/Token;-><init>(Lorg/eclipse/jdt/internal/formatter/Token;III)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v0, v5}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->remove(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v0, v5, v2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->insert(ILorg/eclipse/jdt/internal/formatter/Token;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->remove(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->lastLineComment:Lorg/eclipse/jdt/internal/formatter/Token;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->getInternalStructure()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v2, p1}, Lorg/eclipse/jdt/internal/formatter/Token;->setInternalStructure(Ljava/util/List;)V

    iput-object v2, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->lastLineComment:Lorg/eclipse/jdt/internal/formatter/Token;

    goto :goto_1

    :cond_6
    invoke-virtual {v0, v3}, Lorg/eclipse/jdt/internal/formatter/Token;->setInternalStructure(Ljava/util/List;)V

    invoke-direct {p0, v0, p1}, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->handleCompilerTags(Lorg/eclipse/jdt/internal/formatter/Token;I)V

    invoke-direct {p0, v0, p1}, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->preserveWhitespace(Lorg/eclipse/jdt/internal/formatter/Token;I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->lastLineComment:Lorg/eclipse/jdt/internal/formatter/Token;

    iput v1, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->lastLineCommentPosition:I

    :goto_1
    return-void

    :cond_7
    :goto_2
    invoke-direct {p0, v0, p1}, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->preserveWhitespace(Lorg/eclipse/jdt/internal/formatter/Token;I)V

    if-eqz v4, :cond_9

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->lastLineComment:Lorg/eclipse/jdt/internal/formatter/Token;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/formatter/Token;->getWrapPolicy()Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;

    move-result-object v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    sub-int/2addr p1, v3

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->findFirstTokenInLine(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->getPositionInLine(I)I

    move-result v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v2, p1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->getPositionInLine(I)I

    move-result v2

    new-instance v3, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;

    sget-object v4, Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;->WHERE_NECESSARY:Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;

    sub-int/2addr v2, v1

    invoke-direct {v3, v4, p1, v2}, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;-><init>(Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;II)V

    move-object v1, v3

    :cond_8
    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/formatter/Token;->setWrapPolicy(Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->lastLineComment:Lorg/eclipse/jdt/internal/formatter/Token;

    goto :goto_3

    :cond_9
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/formatter/Token;->getLineBreaksBefore()I

    move-result p1

    if-nez p1, :cond_a

    iput-object v0, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->lastLineComment:Lorg/eclipse/jdt/internal/formatter/Token;

    iput v1, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->lastLineCommentPosition:I

    :cond_a
    :goto_3
    return-void
.end method

.method public preVisit2(Lorg/eclipse/jdt/core/dom/ASTNode;)Z
    .locals 1

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getFlags()I

    move-result p1

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    xor-int/2addr p1, v0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/BlockComment;)Z
    .locals 2

    .line 3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    const/16 v1, 0x3ea

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result p1

    .line 4
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->handleBlockComment(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/Javadoc;)Z
    .locals 7

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->noFormatTagOpenStart:I

    .line 6
    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->formatCodeTagOpenEnd:I

    .line 7
    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->lastFormatCodeClosingTagIndex:I

    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->firstTagToken:Lorg/eclipse/jdt/internal/formatter/Token;

    .line 9
    iput-object v1, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->ctm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    .line 10
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    const/16 v2, 0x3eb

    invoke-virtual {v1, p1, v2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v1

    .line 11
    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v2, v1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v2

    .line 12
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getParent()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v3

    if-nez v3, :cond_0

    .line 13
    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->handleWhitespaceAround(I)Z

    .line 14
    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ge v1, v3, :cond_1

    .line 15
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/formatter/Token;->breakAfter()V

    .line 16
    :cond_1
    invoke-direct {p0, v2}, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->handleFormatOnOffTags(Lorg/eclipse/jdt/internal/formatter/Token;)Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    return v5

    .line 17
    :cond_2
    iget-object v3, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v3, v1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->isInHeader(I)Z

    move-result v1

    .line 18
    iget-object v3, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v6, v3, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_format_javadoc_comment:Z

    if-eqz v6, :cond_3

    if-eqz v1, :cond_4

    .line 19
    :cond_3
    iget-boolean v3, v3, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_format_header:Z

    if-eqz v3, :cond_6

    if-nez v1, :cond_4

    goto :goto_0

    .line 20
    :cond_4
    invoke-direct {p0, v2}, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->tokenizeMultilineComment(Lorg/eclipse/jdt/internal/formatter/Token;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    .line 21
    :cond_5
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/formatter/Token;->getInternalStructure()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->commentStructure:Ljava/util/List;

    .line 22
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/formatter/Token;->getIndent()I

    move-result v1

    invoke-virtual {v0, v1, v4}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->toIndent(IZ)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->commentIndent:I

    .line 23
    new-instance v0, Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/formatter/Token;->getInternalStructure()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;-><init>(Ljava/util/List;Lorg/eclipse/jdt/internal/formatter/TokenManager;)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->ctm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    .line 24
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->handleJavadocTagAlignment(Lorg/eclipse/jdt/core/dom/Javadoc;)V

    return v4

    .line 25
    :cond_6
    :goto_0
    invoke-direct {p0, v2, v0}, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->commentToLines(Lorg/eclipse/jdt/internal/formatter/Token;I)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v2, p1}, Lorg/eclipse/jdt/internal/formatter/Token;->setInternalStructure(Ljava/util/List;)V

    return v5
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/LineComment;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    const/16 v1, 0x3e9

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result p1

    .line 2
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->handleLineComment(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/MemberRef;)Z
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->handleReference(Lorg/eclipse/jdt/core/dom/ASTNode;)V

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/MethodRef;)Z
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->handleReference(Lorg/eclipse/jdt/core/dom/ASTNode;)V

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/QualifiedName;)Z
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->handleReference(Lorg/eclipse/jdt/core/dom/ASTNode;)V

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/TagElement;)Z
    .locals 7

    .line 26
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/TagElement;->getTagName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    .line 27
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v2, v1, :cond_0

    goto :goto_1

    .line 28
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v2

    invoke-direct {p0, v2}, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->tokenStartingAt(I)I

    move-result v2

    .line 29
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v3

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v3, v1

    .line 30
    :goto_0
    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->ctm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v4, v3}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_6

    .line 31
    invoke-direct {p0, v3}, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->tokenEndingAt(I)I

    move-result v3

    .line 32
    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->ctm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v4

    sget-object v5, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;->DISABLE_WRAP:Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;

    invoke-virtual {v4, v5}, Lorg/eclipse/jdt/internal/formatter/Token;->setWrapPolicy(Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;)V

    .line 33
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getParent()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v4

    instance-of v4, v4, Lorg/eclipse/jdt/core/dom/Javadoc;

    if-eqz v4, :cond_4

    .line 34
    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->ctm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v4, v2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v4

    if-le v2, v1, :cond_1

    .line 35
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/formatter/Token;->breakBefore()V

    .line 36
    :cond_1
    iget-object v5, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->firstTagToken:Lorg/eclipse/jdt/internal/formatter/Token;

    if-eqz v5, :cond_2

    iget-object v6, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->ctm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v6, v5}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->indexOf(Lorg/eclipse/jdt/internal/formatter/Token;)I

    move-result v5

    if-ltz v5, :cond_2

    if-ge v2, v5, :cond_3

    .line 37
    :cond_2
    iput-object v4, p0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->firstTagToken:Lorg/eclipse/jdt/internal/formatter/Token;

    .line 38
    :cond_3
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->handleHtml(Lorg/eclipse/jdt/core/dom/TagElement;)V

    .line 39
    :cond_4
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/TagElement;->isNested()Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->IMMUTABLE_TAGS:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    if-ge v2, v3, :cond_5

    const/4 p1, 0x0

    .line 40
    invoke-direct {p0, v2, v3, p1}, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->disableFormatting(IIZ)V

    :cond_5
    return v1

    :cond_6
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_7
    :goto_1
    return v1
.end method
