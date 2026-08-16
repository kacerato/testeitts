.class public LA6/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/blacksquircle/ui/language/base/provider/SuggestionProvider;


# instance fields
.field public a:LJAVARuntime/TextScriptingProvider;


# direct methods
.method public constructor <init>(LJAVARuntime/TextScriptingProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textScriptingProvider"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LA6/a;->a:LJAVARuntime/TextScriptingProvider;

    return-void
.end method


# virtual methods
.method public clearLines()V
    .locals 1

    iget-object v0, p0, LA6/a;->a:LJAVARuntime/TextScriptingProvider;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LJAVARuntime/TextScriptingProvider;->clearLines()V

    :cond_0
    return-void
.end method

.method public deleteLine(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lineNumber"
        }
    .end annotation

    iget-object v0, p0, LA6/a;->a:LJAVARuntime/TextScriptingProvider;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, LJAVARuntime/TextScriptingProvider;->deleteLine(I)V

    :cond_0
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

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iget-object v0, p0, LA6/a;->a:LJAVARuntime/TextScriptingProvider;

    if-eqz v0, :cond_0

    new-instance v0, LA6/a$a;

    invoke-direct {v0, p0, p1}, LA6/a$a;-><init>(LA6/a;Ljava/util/Set;)V

    invoke-static {v0}, Ld8/m;->d(Lo8/d;)Z

    :cond_0
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
            "lineNumber",
            "text"
        }
    .end annotation

    iget-object v0, p0, LA6/a;->a:LJAVARuntime/TextScriptingProvider;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, LJAVARuntime/TextScriptingProvider;->processLine(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
