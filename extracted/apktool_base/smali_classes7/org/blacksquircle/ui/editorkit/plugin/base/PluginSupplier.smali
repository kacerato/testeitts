.class public final Lorg/blacksquircle/ui/editorkit/plugin/base/PluginSupplier;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/blacksquircle/ui/editorkit/plugin/base/PluginSupplier$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/blacksquircle/ui/editorkit/plugin/base/PluginSupplier$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final plugins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/blacksquircle/ui/editorkit/plugin/base/PluginSupplier$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/blacksquircle/ui/editorkit/plugin/base/PluginSupplier$Companion;-><init>(Lkotlin/jvm/internal/x;)V

    sput-object v0, Lorg/blacksquircle/ui/editorkit/plugin/base/PluginSupplier;->Companion:Lorg/blacksquircle/ui/editorkit/plugin/base/PluginSupplier$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/base/PluginSupplier;->plugins:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/x;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/PluginSupplier;-><init>()V

    return-void
.end method

.method public static synthetic a(Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;)Lnf/P0;
    .locals 0

    invoke-static {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/PluginSupplier;->plugin$lambda$0(Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;)Lnf/P0;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic plugin$default(Lorg/blacksquircle/ui/editorkit/plugin/base/PluginSupplier;Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;LMf/l;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    new-instance p2, Leh/a;

    invoke-direct {p2}, Leh/a;-><init>()V

    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/blacksquircle/ui/editorkit/plugin/base/PluginSupplier;->plugin(Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;LMf/l;)V

    return-void
.end method

.method private static final plugin$lambda$0(Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;)Lnf/P0;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lnf/P0;->a:Lnf/P0;

    return-object p0
.end method


# virtual methods
.method public final plugin(Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;LMf/l;)V
    .locals 1
    .param p1    # Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LMf/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;",
            ">(TT;",
            "LMf/l<",
            "-TT;",
            "Lnf/P0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "plugin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/base/PluginSupplier;->plugins:Ljava/util/List;

    invoke-interface {p2, p1}, LMf/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final supply()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/base/PluginSupplier;->plugins:Ljava/util/List;

    return-object v0
.end method
