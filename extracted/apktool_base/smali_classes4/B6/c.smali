.class public LB6/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/blacksquircle/ui/language/base/provider/SuggestionProvider;


# instance fields
.field public a:Lorg/blacksquircle/ui/language/base/utils/WordsManager;

.field public b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/blacksquircle/ui/language/base/model/Suggestion;",
            ">;"
        }
    .end annotation
.end field

.field public c:LF6/b;


# direct methods
.method public constructor <init>(LF6/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "languageConnector"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/blacksquircle/ui/language/base/utils/WordsManager;

    invoke-direct {v0}, Lorg/blacksquircle/ui/language/base/utils/WordsManager;-><init>()V

    iput-object v0, p0, LB6/c;->a:Lorg/blacksquircle/ui/language/base/utils/WordsManager;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, LB6/c;->b:Ljava/util/Set;

    iput-object p1, p0, LB6/c;->c:LF6/b;

    return-void
.end method


# virtual methods
.method public clearLines()V
    .locals 1

    iget-object v0, p0, LB6/c;->a:Lorg/blacksquircle/ui/language/base/utils/WordsManager;

    invoke-virtual {v0}, Lorg/blacksquircle/ui/language/base/utils/WordsManager;->clearLines()V

    iget-object v0, p0, LB6/c;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, LB6/c;->c:LF6/b;

    invoke-interface {v0}, LF6/b;->e()V

    return-void
.end method

.method public deleteLine(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    iget-object v0, p0, LB6/c;->a:Lorg/blacksquircle/ui/language/base/utils/WordsManager;

    invoke-virtual {v0, p1}, Lorg/blacksquircle/ui/language/base/utils/WordsManager;->deleteLine(I)V

    iget-object v0, p0, LB6/c;->c:LF6/b;

    invoke-interface {v0, p1}, LF6/b;->a(I)V

    return-void
.end method

.method public getAll(Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "query"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Lorg/blacksquircle/ui/language/base/model/Suggestion;",
            ">;"
        }
    .end annotation

    new-instance p1, Ljava/util/HashSet;

    iget-object v0, p0, LB6/c;->a:Lorg/blacksquircle/ui/language/base/utils/WordsManager;

    invoke-virtual {v0}, Lorg/blacksquircle/ui/language/base/utils/WordsManager;->getWords()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method public processLine(ILjava/lang/String;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "s"
        }
    .end annotation

    iget-object v0, p0, LB6/c;->a:Lorg/blacksquircle/ui/language/base/utils/WordsManager;

    invoke-virtual {v0, p1, p2}, Lorg/blacksquircle/ui/language/base/utils/WordsManager;->processLine(ILjava/lang/String;)V

    const-string p1, " "

    invoke-virtual {p2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, LB6/c;->b:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    goto :goto_1

    :cond_0
    const-string p1, "."

    invoke-virtual {p2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "("

    invoke-virtual {p2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "()"

    invoke-virtual {p2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, LB6/c;->b:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p1, p0, LB6/c;->b:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    :cond_3
    :goto_1
    return-void
.end method
