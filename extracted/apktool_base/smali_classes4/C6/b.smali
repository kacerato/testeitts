.class public final LC6/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a(LC6/h;)Lnf/P0;
    .locals 0

    invoke-static {p0}, LC6/b;->d(LC6/h;)Lnf/P0;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Lorg/blacksquircle/ui/editorkit/plugin/base/PluginSupplier;LMf/l;)V
    .locals 1
    .param p0    # Lorg/blacksquircle/ui/editorkit/plugin/base/PluginSupplier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # LMf/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/blacksquircle/ui/editorkit/plugin/base/PluginSupplier;",
            "LMf/l<",
            "-",
            "LC6/h;",
            "Lnf/P0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LC6/h;

    invoke-direct {v0}, LC6/h;-><init>()V

    invoke-virtual {p0, v0, p1}, Lorg/blacksquircle/ui/editorkit/plugin/base/PluginSupplier;->plugin(Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;LMf/l;)V

    return-void
.end method

.method public static synthetic c(Lorg/blacksquircle/ui/editorkit/plugin/base/PluginSupplier;LMf/l;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    new-instance p1, LC6/a;

    invoke-direct {p1}, LC6/a;-><init>()V

    :cond_0
    invoke-static {p0, p1}, LC6/b;->b(Lorg/blacksquircle/ui/editorkit/plugin/base/PluginSupplier;LMf/l;)V

    return-void
.end method

.method public static final d(LC6/h;)Lnf/P0;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lnf/P0;->a:Lnf/P0;

    return-object p0
.end method
