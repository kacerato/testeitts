.class public final Lorg/blacksquircle/ui/editorkit/plugin/base/PluginSupplier$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/blacksquircle/ui/editorkit/plugin/base/PluginSupplier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/x;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/PluginSupplier$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(LMf/l;)Lorg/blacksquircle/ui/editorkit/plugin/base/PluginSupplier;
    .locals 2
    .param p1    # LMf/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LMf/l<",
            "-",
            "Lorg/blacksquircle/ui/editorkit/plugin/base/PluginSupplier;",
            "Lnf/P0;",
            ">;)",
            "Lorg/blacksquircle/ui/editorkit/plugin/base/PluginSupplier;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/blacksquircle/ui/editorkit/plugin/base/PluginSupplier;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/blacksquircle/ui/editorkit/plugin/base/PluginSupplier;-><init>(Lkotlin/jvm/internal/x;)V

    invoke-interface {p1, v0}, LMf/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
