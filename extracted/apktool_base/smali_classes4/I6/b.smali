.class public LI6/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/blacksquircle/ui/language/base/styler/LanguageStyler;


# static fields
.field public static final a:Ljava/util/regex/Pattern;

.field public static final b:Ljava/util/regex/Pattern;

.field public static final c:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "</?([a-zA-Z_][\\w\\-:.]*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, LI6/b;->a:Ljava/util/regex/Pattern;

    const-string v0, "([a-zA-Z_:][a-zA-Z0-9_:.-]*)\\s*=\\s*(\"[^\"]*\"|\'[^\']*\')"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, LI6/b;->b:Ljava/util/regex/Pattern;

    const-string v0, "<!--.*?-->"

    const/16 v1, 0x20

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, LI6/b;->c:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ranges",
            "pos"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[I>;I)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    aget v1, v0, v1

    if-lt p2, v1, :cond_0

    const/4 v1, 0x1

    aget v0, v0, v1

    if-ge p2, v0, :cond_0

    :cond_1
    return v1
.end method

.method public execute(Ljava/lang/String;Lorg/blacksquircle/ui/language/base/model/ColorScheme;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "source",
            "scheme"
        }
    .end annotation

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

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    sget-object v1, LI6/b;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    new-instance v2, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;

    new-instance v10, Lorg/blacksquircle/ui/language/base/span/StyleSpan;

    invoke-virtual {p2}, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->getCommentColor()I

    move-result v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lorg/blacksquircle/ui/language/base/span/StyleSpan;-><init>(IZZZZ)V

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    invoke-direct {v3, v10, v4, v5}, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;-><init>(Lorg/blacksquircle/ui/language/base/span/StyleSpan;II)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v4

    filled-new-array {v3, v4}, [I

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object v1, LI6/b;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    :goto_1
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    invoke-virtual {p0, v2, v3}, LI6/b;->a(Ljava/util/List;I)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    new-instance v3, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;

    new-instance v11, Lorg/blacksquircle/ui/language/base/span/StyleSpan;

    invoke-virtual {p2}, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->getKeywordColor()I

    move-result v6

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lorg/blacksquircle/ui/language/base/span/StyleSpan;-><init>(IZZZZ)V

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->start(I)I

    move-result v5

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->end(I)I

    move-result v4

    invoke-direct {v3, v11, v5, v4}, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;-><init>(Lorg/blacksquircle/ui/language/base/span/StyleSpan;II)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    sget-object v1, LI6/b;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    :goto_2
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    invoke-virtual {p0, v2, v1}, LI6/b;->a(Ljava/util/List;I)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    new-instance v1, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;

    new-instance v3, Lorg/blacksquircle/ui/language/base/span/StyleSpan;

    invoke-virtual {p2}, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->getAttrNameColor()I

    move-result v6

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v5, v3

    invoke-direct/range {v5 .. v10}, Lorg/blacksquircle/ui/language/base/span/StyleSpan;-><init>(IZZZZ)V

    invoke-virtual {p1, v4}, Ljava/util/regex/Matcher;->start(I)I

    move-result v5

    invoke-virtual {p1, v4}, Ljava/util/regex/Matcher;->end(I)I

    move-result v6

    invoke-direct {v1, v3, v5, v6}, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;-><init>(Lorg/blacksquircle/ui/language/base/span/StyleSpan;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;

    new-instance v3, Lorg/blacksquircle/ui/language/base/span/StyleSpan;

    invoke-virtual {p2}, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->getStringColor()I

    move-result v6

    move-object v5, v3

    invoke-direct/range {v5 .. v10}, Lorg/blacksquircle/ui/language/base/span/StyleSpan;-><init>(IZZZZ)V

    const/4 v5, 0x2

    invoke-virtual {p1, v5}, Ljava/util/regex/Matcher;->start(I)I

    move-result v6

    invoke-virtual {p1, v5}, Ljava/util/regex/Matcher;->end(I)I

    move-result v7

    invoke-direct {v1, v3, v6, v7}, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;-><init>(Lorg/blacksquircle/ui/language/base/span/StyleSpan;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v5}, Ljava/util/regex/Matcher;->start(I)I

    move-result v1

    invoke-virtual {p1, v5}, Ljava/util/regex/Matcher;->end(I)I

    move-result v3

    filled-new-array {v1, v3}, [I

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    return-object v0
.end method
