.class public LC6/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/blacksquircle/ui/language/base/provider/SuggestionProvider;


# instance fields
.field public a:LF6/b;

.field public final b:Ljava/util/concurrent/atomic/AtomicBoolean;


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

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, LC6/f;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, LC6/f;->a:LF6/b;

    return-void
.end method


# virtual methods
.method public final a()Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;
    .locals 1

    iget-object v0, p0, LC6/f;->a:LF6/b;

    invoke-interface {v0}, LF6/b;->f()Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    move-result-object v0

    return-object v0
.end method

.method public clearLines()V
    .locals 1

    iget-object v0, p0, LC6/f;->a:LF6/b;

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

    iget-object v0, p0, LC6/f;->a:LF6/b;

    invoke-interface {v0, p1}, LF6/b;->a(I)V

    return-void
.end method

.method public getAll(Ljava/lang/String;)Ljava/util/Set;
    .locals 0
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

    return-object p1
.end method

.method public processLine(ILjava/lang/String;)V
    .locals 0
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
            "lineIndex",
            "s"
        }
    .end annotation

    return-void
.end method
