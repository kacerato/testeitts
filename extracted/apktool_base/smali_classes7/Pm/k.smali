.class public LPm/k;
.super LWm/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LPm/k$b;
    }
.end annotation


# static fields
.field public static final e:[[Ljava/util/regex/Pattern;


# instance fields
.field public final a:LUm/n;

.field public final b:Ljava/util/regex/Pattern;

.field public c:Z

.field public d:LPm/a;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v0, 0x0

    filled-new-array {v0, v0}, [Ljava/util/regex/Pattern;

    move-result-object v1

    const-string v2, "^<(?:script|pre|style)(?:\\s|>|$)"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    const-string v4, "</(?:script|pre|style)>"

    invoke-static {v4, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v4

    filled-new-array {v2, v4}, [Ljava/util/regex/Pattern;

    move-result-object v2

    const-string v4, "^<!--"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    const-string v5, "-->"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/util/regex/Pattern;

    move-result-object v4

    const-string v5, "^<[?]"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    const-string v6, "\\?>"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    filled-new-array {v5, v6}, [Ljava/util/regex/Pattern;

    move-result-object v5

    const-string v6, "^<![A-Z]"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    const-string v7, ">"

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    filled-new-array {v6, v7}, [Ljava/util/regex/Pattern;

    move-result-object v6

    const-string v7, "^<!\\[CDATA\\["

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    const-string v8, "\\]\\]>"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    filled-new-array {v7, v8}, [Ljava/util/regex/Pattern;

    move-result-object v7

    const-string v8, "^</?(?:address|article|aside|base|basefont|blockquote|body|caption|center|col|colgroup|dd|details|dialog|dir|div|dl|dt|fieldset|figcaption|figure|footer|form|frame|frameset|h1|h2|h3|h4|h5|h6|head|header|hr|html|iframe|legend|li|link|main|menu|menuitem|nav|noframes|ol|optgroup|option|p|param|section|source|summary|table|tbody|td|tfoot|th|thead|title|tr|track|ul)(?:\\s|[/]?[>]|$)"

    invoke-static {v8, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v8

    filled-new-array {v8, v0}, [Ljava/util/regex/Pattern;

    move-result-object v8

    const-string v9, "^(?:<[A-Za-z][A-Za-z0-9-]*(?:\\s+[a-zA-Z_:][a-zA-Z0-9:._-]*(?:\\s*=\\s*(?:[^\"\'=<>`\\x00-\\x20]+|\'[^\']*\'|\"[^\"]*\"))?)*\\s*/?>|</[A-Za-z][A-Za-z0-9-]*\\s*[>])\\s*$"

    invoke-static {v9, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v3

    filled-new-array {v3, v0}, [Ljava/util/regex/Pattern;

    move-result-object v0

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v0

    filled-new-array/range {v1 .. v8}, [[Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, LPm/k;->e:[[Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/util/regex/Pattern;)V
    .locals 1

    .line 2
    invoke-direct {p0}, LWm/a;-><init>()V

    .line 3
    new-instance v0, LUm/n;

    invoke-direct {v0}, LUm/n;-><init>()V

    iput-object v0, p0, LPm/k;->a:LUm/n;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, LPm/k;->c:Z

    .line 5
    new-instance v0, LPm/a;

    invoke-direct {v0}, LPm/a;-><init>()V

    iput-object v0, p0, LPm/k;->d:LPm/a;

    .line 6
    iput-object p1, p0, LPm/k;->b:Ljava/util/regex/Pattern;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/regex/Pattern;LPm/k$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, LPm/k;-><init>(Ljava/util/regex/Pattern;)V

    return-void
.end method

.method public static synthetic h()[[Ljava/util/regex/Pattern;
    .locals 1

    sget-object v0, LPm/k;->e:[[Ljava/util/regex/Pattern;

    return-object v0
.end method


# virtual methods
.method public c(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, LPm/k;->d:LPm/a;

    invoke-virtual {v0, p1}, LPm/a;->a(Ljava/lang/CharSequence;)V

    iget-object v0, p0, LPm/k;->b:Ljava/util/regex/Pattern;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, LPm/k;->c:Z

    :cond_0
    return-void
.end method

.method public d(LWm/h;)LWm/c;
    .locals 1

    iget-boolean v0, p0, LPm/k;->c:Z

    if-eqz v0, :cond_0

    invoke-static {}, LWm/c;->d()LWm/c;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-interface {p1}, LWm/h;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LPm/k;->b:Ljava/util/regex/Pattern;

    if-nez v0, :cond_1

    invoke-static {}, LWm/c;->d()LWm/c;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-interface {p1}, LWm/h;->getIndex()I

    move-result p1

    invoke-static {p1}, LWm/c;->b(I)LWm/c;

    move-result-object p1

    return-object p1
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, LPm/k;->a:LUm/n;

    iget-object v1, p0, LPm/k;->d:LPm/a;

    invoke-virtual {v1}, LPm/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LUm/n;->r(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, LPm/k;->d:LPm/a;

    return-void
.end method

.method public getBlock()LUm/b;
    .locals 1

    iget-object v0, p0, LPm/k;->a:LUm/n;

    return-object v0
.end method
