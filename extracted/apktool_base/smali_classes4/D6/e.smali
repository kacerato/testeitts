.class public final LD6/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/blacksquircle/ui/language/base/styler/LanguageStyler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LD6/e$a;,
        LD6/e$b;
    }
.end annotation


# static fields
.field public static final a:LD6/e$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final b:Ljava/util/regex/Pattern;

.field public static final c:Ljava/util/regex/Pattern;

.field public static final d:Ljava/lang/String; = "LuaStyler"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static e:LD6/e;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LD6/e$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LD6/e$a;-><init>(Lkotlin/jvm/internal/x;)V

    sput-object v0, LD6/e;->a:LD6/e$a;

    const-string v0, "(?<=(function)) (\\w+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, LD6/e;->b:Ljava/util/regex/Pattern;

    const-string v0, "public\\s+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, LD6/e;->c:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a()LD6/e;
    .locals 1

    sget-object v0, LD6/e;->e:LD6/e;

    return-object v0
.end method

.method public static final synthetic b(LD6/e;)V
    .locals 0

    sput-object p0, LD6/e;->e:LD6/e;

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/blacksquircle/ui/language/base/model/ColorScheme;)Ljava/util/List;
    .locals 13
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

    new-instance v2, Lorg/blacksquircle/ui/language/lua/lexer/LuaLexer;

    invoke-direct {v2, v1}, Lorg/blacksquircle/ui/language/lua/lexer/LuaLexer;-><init>(Ljava/io/Reader;)V

    sget-object v1, LD6/e;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lorg/blacksquircle/ui/language/base/span/StyleSpan;

    invoke-virtual {p2}, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->getMethodColor()I

    move-result v6

    const/16 v11, 0x1e

    const/4 v12, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v3

    invoke-direct/range {v5 .. v12}, Lorg/blacksquircle/ui/language/base/span/StyleSpan;-><init>(IZZZZILkotlin/jvm/internal/x;)V

    new-instance v5, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;

    invoke-virtual {v2}, Lorg/blacksquircle/ui/language/lua/lexer/LuaLexer;->getTokenStart()I

    move-result v6

    invoke-virtual {v2}, Lorg/blacksquircle/ui/language/lua/lexer/LuaLexer;->getTokenEnd()I

    move-result v7

    invoke-direct {v5, v3, v6, v7}, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;-><init>(Lorg/blacksquircle/ui/language/base/span/StyleSpan;II)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    :goto_1
    :pswitch_0
    :try_start_0
    invoke-virtual {v2}, Lorg/blacksquircle/ui/language/lua/lexer/LuaLexer;->advance()Lorg/blacksquircle/ui/language/lua/lexer/LuaToken;

    move-result-object v1

    sget-object v3, LD6/e$b;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v3, v1

    packed-switch v1, :pswitch_data_0

    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1

    :catchall_0
    move-exception v1

    goto/16 :goto_2

    :pswitch_1
    new-instance v1, Lorg/blacksquircle/ui/language/base/span/StyleSpan;

    invoke-virtual {p2}, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->getCommentColor()I

    move-result v6

    const/16 v11, 0x1e

    const/4 v12, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v1

    invoke-direct/range {v5 .. v12}, Lorg/blacksquircle/ui/language/base/span/StyleSpan;-><init>(IZZZZILkotlin/jvm/internal/x;)V

    new-instance v3, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;

    invoke-virtual {v2}, Lorg/blacksquircle/ui/language/lua/lexer/LuaLexer;->getTokenStart()I

    move-result v5

    invoke-virtual {v2}, Lorg/blacksquircle/ui/language/lua/lexer/LuaLexer;->getTokenEnd()I

    move-result v6

    invoke-direct {v3, v1, v5, v6}, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;-><init>(Lorg/blacksquircle/ui/language/base/span/StyleSpan;II)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_2
    new-instance v1, Lorg/blacksquircle/ui/language/base/span/StyleSpan;

    invoke-virtual {p2}, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->getStringColor()I

    move-result v6

    const/16 v11, 0x1e

    const/4 v12, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v1

    invoke-direct/range {v5 .. v12}, Lorg/blacksquircle/ui/language/base/span/StyleSpan;-><init>(IZZZZILkotlin/jvm/internal/x;)V

    new-instance v3, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;

    invoke-virtual {v2}, Lorg/blacksquircle/ui/language/lua/lexer/LuaLexer;->getTokenStart()I

    move-result v5

    invoke-virtual {v2}, Lorg/blacksquircle/ui/language/lua/lexer/LuaLexer;->getTokenEnd()I

    move-result v6

    invoke-direct {v3, v1, v5, v6}, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;-><init>(Lorg/blacksquircle/ui/language/base/span/StyleSpan;II)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_3
    new-instance v1, Lorg/blacksquircle/ui/language/base/span/StyleSpan;

    invoke-virtual {p2}, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->getLangConstColor()I

    move-result v6

    const/16 v11, 0x1e

    const/4 v12, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v1

    invoke-direct/range {v5 .. v12}, Lorg/blacksquircle/ui/language/base/span/StyleSpan;-><init>(IZZZZILkotlin/jvm/internal/x;)V

    new-instance v3, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;

    invoke-virtual {v2}, Lorg/blacksquircle/ui/language/lua/lexer/LuaLexer;->getTokenStart()I

    move-result v5

    invoke-virtual {v2}, Lorg/blacksquircle/ui/language/lua/lexer/LuaLexer;->getTokenEnd()I

    move-result v6

    invoke-direct {v3, v1, v5, v6}, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;-><init>(Lorg/blacksquircle/ui/language/base/span/StyleSpan;II)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_4
    new-instance v1, Lorg/blacksquircle/ui/language/base/span/StyleSpan;

    invoke-virtual {p2}, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->getMethodColor()I

    move-result v6

    const/16 v11, 0x1e

    const/4 v12, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v1

    invoke-direct/range {v5 .. v12}, Lorg/blacksquircle/ui/language/base/span/StyleSpan;-><init>(IZZZZILkotlin/jvm/internal/x;)V

    new-instance v3, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;

    invoke-virtual {v2}, Lorg/blacksquircle/ui/language/lua/lexer/LuaLexer;->getTokenStart()I

    move-result v5

    invoke-virtual {v2}, Lorg/blacksquircle/ui/language/lua/lexer/LuaLexer;->getTokenEnd()I

    move-result v6

    invoke-direct {v3, v1, v5, v6}, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;-><init>(Lorg/blacksquircle/ui/language/base/span/StyleSpan;II)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_5
    new-instance v1, Lorg/blacksquircle/ui/language/base/span/StyleSpan;

    invoke-virtual {p2}, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->getKeywordColor()I

    move-result v6

    const/16 v11, 0x1e

    const/4 v12, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v1

    invoke-direct/range {v5 .. v12}, Lorg/blacksquircle/ui/language/base/span/StyleSpan;-><init>(IZZZZILkotlin/jvm/internal/x;)V

    new-instance v3, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;

    invoke-virtual {v2}, Lorg/blacksquircle/ui/language/lua/lexer/LuaLexer;->getTokenStart()I

    move-result v5

    invoke-virtual {v2}, Lorg/blacksquircle/ui/language/lua/lexer/LuaLexer;->getTokenEnd()I

    move-result v6

    invoke-direct {v3, v1, v5, v6}, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;-><init>(Lorg/blacksquircle/ui/language/base/span/StyleSpan;II)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_6
    new-instance v1, Lorg/blacksquircle/ui/language/base/span/StyleSpan;

    invoke-virtual {p2}, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->getOperatorColor()I

    move-result v6

    const/16 v11, 0x1e

    const/4 v12, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v1

    invoke-direct/range {v5 .. v12}, Lorg/blacksquircle/ui/language/base/span/StyleSpan;-><init>(IZZZZILkotlin/jvm/internal/x;)V

    new-instance v3, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;

    invoke-virtual {v2}, Lorg/blacksquircle/ui/language/lua/lexer/LuaLexer;->getTokenStart()I

    move-result v5

    invoke-virtual {v2}, Lorg/blacksquircle/ui/language/lua/lexer/LuaLexer;->getTokenEnd()I

    move-result v6

    invoke-direct {v3, v1, v5, v6}, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;-><init>(Lorg/blacksquircle/ui/language/base/span/StyleSpan;II)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_7
    new-instance v1, Lorg/blacksquircle/ui/language/base/span/StyleSpan;

    invoke-virtual {p2}, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->getNumberColor()I

    move-result v6

    const/16 v11, 0x1e

    const/4 v12, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v1

    invoke-direct/range {v5 .. v12}, Lorg/blacksquircle/ui/language/base/span/StyleSpan;-><init>(IZZZZILkotlin/jvm/internal/x;)V

    new-instance v3, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;

    invoke-virtual {v2}, Lorg/blacksquircle/ui/language/lua/lexer/LuaLexer;->getTokenStart()I

    move-result v5

    invoke-virtual {v2}, Lorg/blacksquircle/ui/language/lua/lexer/LuaLexer;->getTokenEnd()I

    move-result v6

    invoke-direct {v3, v1, v5, v6}, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;-><init>(Lorg/blacksquircle/ui/language/base/span/StyleSpan;II)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    :goto_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :pswitch_8
    sget-object v1, LD6/e;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v1, v4, p1}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    :goto_3
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result p1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    new-instance v11, Lorg/blacksquircle/ui/language/base/span/StyleSpan;

    invoke-virtual {p2}, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->getVariableColor()I

    move-result v4

    const/16 v9, 0x1e

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lorg/blacksquircle/ui/language/base/span/StyleSpan;-><init>(IZZZZILkotlin/jvm/internal/x;)V

    new-instance v3, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;

    invoke-direct {v3, v11, p1, v2}, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;-><init>(Lorg/blacksquircle/ui/language/base/span/StyleSpan;II)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_1
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
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
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
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
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method
