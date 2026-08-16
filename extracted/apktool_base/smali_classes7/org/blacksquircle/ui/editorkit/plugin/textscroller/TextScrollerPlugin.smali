.class public final Lorg/blacksquircle/ui/editorkit/plugin/textscroller/TextScrollerPlugin;
.super Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/blacksquircle/ui/editorkit/plugin/textscroller/TextScrollerPlugin$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/blacksquircle/ui/editorkit/plugin/textscroller/TextScrollerPlugin$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PLUGIN_ID:Ljava/lang/String; = "text-scroller-1821"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private scroller:Lorg/blacksquircle/ui/editorkit/widget/TextScroller;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/blacksquircle/ui/editorkit/plugin/textscroller/TextScrollerPlugin$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/blacksquircle/ui/editorkit/plugin/textscroller/TextScrollerPlugin$Companion;-><init>(Lkotlin/jvm/internal/x;)V

    sput-object v0, Lorg/blacksquircle/ui/editorkit/plugin/textscroller/TextScrollerPlugin;->Companion:Lorg/blacksquircle/ui/editorkit/plugin/textscroller/TextScrollerPlugin$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "text-scroller-1821"

    invoke-direct {p0, v0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getScroller()Lorg/blacksquircle/ui/editorkit/widget/TextScroller;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/textscroller/TextScrollerPlugin;->scroller:Lorg/blacksquircle/ui/editorkit/widget/TextScroller;

    return-object v0
.end method

.method public onAttached(Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;)V
    .locals 1
    .param p1    # Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->onAttached(Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;)V

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/textscroller/TextScrollerPlugin;->scroller:Lorg/blacksquircle/ui/editorkit/widget/TextScroller;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->attachTo(Lorg/blacksquircle/ui/editorkit/widget/internal/ScrollableEditText;)V

    :cond_0
    const-string p1, "text-scroller-1821"

    const-string v0, "TextScroller plugin loaded successfully!"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDetached(Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;)V
    .locals 1
    .param p1    # Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->onDetached(Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;)V

    iget-object p1, p0, Lorg/blacksquircle/ui/editorkit/plugin/textscroller/TextScrollerPlugin;->scroller:Lorg/blacksquircle/ui/editorkit/widget/TextScroller;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->detach()V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/blacksquircle/ui/editorkit/plugin/textscroller/TextScrollerPlugin;->scroller:Lorg/blacksquircle/ui/editorkit/widget/TextScroller;

    return-void
.end method

.method public final setScroller(Lorg/blacksquircle/ui/editorkit/widget/TextScroller;)V
    .locals 0
    .param p1    # Lorg/blacksquircle/ui/editorkit/widget/TextScroller;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lorg/blacksquircle/ui/editorkit/plugin/textscroller/TextScrollerPlugin;->scroller:Lorg/blacksquircle/ui/editorkit/widget/TextScroller;

    return-void
.end method
