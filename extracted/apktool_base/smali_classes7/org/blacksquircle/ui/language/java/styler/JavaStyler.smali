.class public final Lorg/blacksquircle/ui/language/java/styler/JavaStyler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/blacksquircle/ui/language/base/styler/LanguageStyler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/blacksquircle/ui/language/java/styler/JavaStyler$Companion;,
        Lorg/blacksquircle/ui/language/java/styler/JavaStyler$WhenMappings;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/blacksquircle/ui/language/java/styler/JavaStyler$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final METHOD:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String; = "JavaStyler"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static javaStyler:Lorg/blacksquircle/ui/language/java/styler/JavaStyler;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/blacksquircle/ui/language/java/styler/JavaStyler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/blacksquircle/ui/language/java/styler/JavaStyler$Companion;-><init>(Lkotlin/jvm/internal/x;)V

    sput-object v0, Lorg/blacksquircle/ui/language/java/styler/JavaStyler;->Companion:Lorg/blacksquircle/ui/language/java/styler/JavaStyler$Companion;

    const-string v0, "(?<=(void)) (\\w+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/blacksquircle/ui/language/java/styler/JavaStyler;->METHOD:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/x;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/blacksquircle/ui/language/java/styler/JavaStyler;-><init>()V

    return-void
.end method

.method public static final synthetic access$getJavaStyler$cp()Lorg/blacksquircle/ui/language/java/styler/JavaStyler;
    .locals 1

    sget-object v0, Lorg/blacksquircle/ui/language/java/styler/JavaStyler;->javaStyler:Lorg/blacksquircle/ui/language/java/styler/JavaStyler;

    return-object v0
.end method

.method public static final synthetic access$setJavaStyler$cp(Lorg/blacksquircle/ui/language/java/styler/JavaStyler;)V
    .locals 0

    sput-object p0, Lorg/blacksquircle/ui/language/java/styler/JavaStyler;->javaStyler:Lorg/blacksquircle/ui/language/java/styler/JavaStyler;

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/blacksquircle/ui/language/base/model/ColorScheme;)Ljava/util/List;
    .locals 11
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lorg/blacksquircle/ui/language/base/model/ColorScheme;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/blacksquircle/ui/language/base/model/ColorScheme;",
            ")",
            "Ljava/util/List<",
            "Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scheme"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    new-instance v2, Lorg/blacksquircle/ui/language/java/lexer/JavaLexer;

    invoke-direct {v2, v1}, Lorg/blacksquircle/ui/language/java/lexer/JavaLexer;-><init>(Ljava/io/Reader;)V

    sget-object v1, Lorg/blacksquircle/ui/language/java/styler/JavaStyler;->METHOD:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v1, v3, p1}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lorg/blacksquircle/ui/language/base/span/StyleSpan;

    invoke-virtual {p2}, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->getMethodColor()I

    move-result v4

    const/16 v9, 0x1e

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p1

    invoke-direct/range {v3 .. v10}, Lorg/blacksquircle/ui/language/base/span/StyleSpan;-><init>(IZZZZILkotlin/jvm/internal/x;)V

    new-instance v3, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    invoke-direct {v3, p1, v4, v5}, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;-><init>(Lorg/blacksquircle/ui/language/base/span/StyleSpan;II)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    :goto_1
    :pswitch_0
    :try_start_0
    invoke-virtual {v2}, Lorg/blacksquircle/ui/language/java/lexer/JavaLexer;->advance()Lorg/blacksquircle/ui/language/java/lexer/JavaToken;

    move-result-object p1

    sget-object v1, Lorg/blacksquircle/ui/language/java/styler/JavaStyler$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    packed-switch p1, :pswitch_data_0

    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :catch_0
    move-exception p1

    goto/16 :goto_2

    :pswitch_1
    new-instance p1, Lorg/blacksquircle/ui/language/base/span/StyleSpan;

    invoke-virtual {p2}, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->getCommentColor()I

    move-result v4

    const/16 v9, 0x1e

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p1

    invoke-direct/range {v3 .. v10}, Lorg/blacksquircle/ui/language/base/span/StyleSpan;-><init>(IZZZZILkotlin/jvm/internal/x;)V

    new-instance v1, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;

    invoke-virtual {v2}, Lorg/blacksquircle/ui/language/java/lexer/JavaLexer;->getTokenStart()I

    move-result v3

    invoke-virtual {v2}, Lorg/blacksquircle/ui/language/java/lexer/JavaLexer;->getTokenEnd()I

    move-result v4

    invoke-direct {v1, p1, v3, v4}, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;-><init>(Lorg/blacksquircle/ui/language/base/span/StyleSpan;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_2
    new-instance p1, Lorg/blacksquircle/ui/language/base/span/StyleSpan;

    invoke-virtual {p2}, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->getStringColor()I

    move-result v4

    const/16 v9, 0x1e

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p1

    invoke-direct/range {v3 .. v10}, Lorg/blacksquircle/ui/language/base/span/StyleSpan;-><init>(IZZZZILkotlin/jvm/internal/x;)V

    new-instance v1, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;

    invoke-virtual {v2}, Lorg/blacksquircle/ui/language/java/lexer/JavaLexer;->getTokenStart()I

    move-result v3

    invoke-virtual {v2}, Lorg/blacksquircle/ui/language/java/lexer/JavaLexer;->getTokenEnd()I

    move-result v4

    invoke-direct {v1, p1, v3, v4}, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;-><init>(Lorg/blacksquircle/ui/language/base/span/StyleSpan;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_3
    new-instance p1, Lorg/blacksquircle/ui/language/base/span/StyleSpan;

    invoke-virtual {p2}, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->getPreprocessorColor()I

    move-result v4

    const/16 v9, 0x1e

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p1

    invoke-direct/range {v3 .. v10}, Lorg/blacksquircle/ui/language/base/span/StyleSpan;-><init>(IZZZZILkotlin/jvm/internal/x;)V

    new-instance v1, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;

    invoke-virtual {v2}, Lorg/blacksquircle/ui/language/java/lexer/JavaLexer;->getTokenStart()I

    move-result v3

    invoke-virtual {v2}, Lorg/blacksquircle/ui/language/java/lexer/JavaLexer;->getTokenEnd()I

    move-result v4

    invoke-direct {v1, p1, v3, v4}, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;-><init>(Lorg/blacksquircle/ui/language/base/span/StyleSpan;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_4
    new-instance p1, Lorg/blacksquircle/ui/language/base/span/StyleSpan;

    invoke-virtual {p2}, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->getLangConstColor()I

    move-result v4

    const/16 v9, 0x1e

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p1

    invoke-direct/range {v3 .. v10}, Lorg/blacksquircle/ui/language/base/span/StyleSpan;-><init>(IZZZZILkotlin/jvm/internal/x;)V

    new-instance v1, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;

    invoke-virtual {v2}, Lorg/blacksquircle/ui/language/java/lexer/JavaLexer;->getTokenStart()I

    move-result v3

    invoke-virtual {v2}, Lorg/blacksquircle/ui/language/java/lexer/JavaLexer;->getTokenEnd()I

    move-result v4

    invoke-direct {v1, p1, v3, v4}, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;-><init>(Lorg/blacksquircle/ui/language/base/span/StyleSpan;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_5
    new-instance p1, Lorg/blacksquircle/ui/language/base/span/StyleSpan;

    invoke-virtual {p2}, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->getTypeColor()I

    move-result v4

    const/16 v9, 0x1e

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p1

    invoke-direct/range {v3 .. v10}, Lorg/blacksquircle/ui/language/base/span/StyleSpan;-><init>(IZZZZILkotlin/jvm/internal/x;)V

    new-instance v1, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;

    invoke-virtual {v2}, Lorg/blacksquircle/ui/language/java/lexer/JavaLexer;->getTokenStart()I

    move-result v3

    invoke-virtual {v2}, Lorg/blacksquircle/ui/language/java/lexer/JavaLexer;->getTokenEnd()I

    move-result v4

    invoke-direct {v1, p1, v3, v4}, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;-><init>(Lorg/blacksquircle/ui/language/base/span/StyleSpan;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_6
    new-instance p1, Lorg/blacksquircle/ui/language/base/span/StyleSpan;

    invoke-virtual {p2}, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->getKeywordColor()I

    move-result v4

    const/16 v9, 0x1e

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p1

    invoke-direct/range {v3 .. v10}, Lorg/blacksquircle/ui/language/base/span/StyleSpan;-><init>(IZZZZILkotlin/jvm/internal/x;)V

    new-instance v1, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;

    invoke-virtual {v2}, Lorg/blacksquircle/ui/language/java/lexer/JavaLexer;->getTokenStart()I

    move-result v3

    invoke-virtual {v2}, Lorg/blacksquircle/ui/language/java/lexer/JavaLexer;->getTokenEnd()I

    move-result v4

    invoke-direct {v1, p1, v3, v4}, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;-><init>(Lorg/blacksquircle/ui/language/base/span/StyleSpan;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_7
    new-instance p1, Lorg/blacksquircle/ui/language/base/span/StyleSpan;

    invoke-virtual {p2}, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->getOperatorColor()I

    move-result v4

    const/16 v9, 0x1e

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p1

    invoke-direct/range {v3 .. v10}, Lorg/blacksquircle/ui/language/base/span/StyleSpan;-><init>(IZZZZILkotlin/jvm/internal/x;)V

    new-instance v1, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;

    invoke-virtual {v2}, Lorg/blacksquircle/ui/language/java/lexer/JavaLexer;->getTokenStart()I

    move-result v3

    invoke-virtual {v2}, Lorg/blacksquircle/ui/language/java/lexer/JavaLexer;->getTokenEnd()I

    move-result v4

    invoke-direct {v1, p1, v3, v4}, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;-><init>(Lorg/blacksquircle/ui/language/base/span/StyleSpan;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_8
    new-instance p1, Lorg/blacksquircle/ui/language/base/span/StyleSpan;

    invoke-virtual {p2}, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->getNumberColor()I

    move-result v4

    const/16 v9, 0x1e

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p1

    invoke-direct/range {v3 .. v10}, Lorg/blacksquircle/ui/language/base/span/StyleSpan;-><init>(IZZZZILkotlin/jvm/internal/x;)V

    new-instance v1, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;

    invoke-virtual {v2}, Lorg/blacksquircle/ui/language/java/lexer/JavaLexer;->getTokenStart()I

    move-result v3

    invoke-virtual {v2}, Lorg/blacksquircle/ui/language/java/lexer/JavaLexer;->getTokenEnd()I

    move-result v4

    invoke-direct {v1, p1, v3, v4}, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;-><init>(Lorg/blacksquircle/ui/language/base/span/StyleSpan;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :goto_2
    const-string p2, "JavaStyler"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :pswitch_9
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method
