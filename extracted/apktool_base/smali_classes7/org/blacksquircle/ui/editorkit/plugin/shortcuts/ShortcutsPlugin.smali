.class public final Lorg/blacksquircle/ui/editorkit/plugin/shortcuts/ShortcutsPlugin;
.super Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/blacksquircle/ui/editorkit/plugin/shortcuts/ShortcutsPlugin$Companion;
    }
.end annotation


# static fields
.field private static final ALT_DEFAULT:Z = false

.field private static final CTRL_DEFAULT:Z = false

.field public static final Companion:Lorg/blacksquircle/ui/editorkit/plugin/shortcuts/ShortcutsPlugin$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PLUGIN_ID:Ljava/lang/String; = "shortcuts-1095"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final SHIFT_DEFAULT:Z = false


# instance fields
.field private onShortcutListener:Lorg/blacksquircle/ui/editorkit/plugin/shortcuts/OnShortcutListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/blacksquircle/ui/editorkit/plugin/shortcuts/ShortcutsPlugin$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/blacksquircle/ui/editorkit/plugin/shortcuts/ShortcutsPlugin$Companion;-><init>(Lkotlin/jvm/internal/x;)V

    sput-object v0, Lorg/blacksquircle/ui/editorkit/plugin/shortcuts/ShortcutsPlugin;->Companion:Lorg/blacksquircle/ui/editorkit/plugin/shortcuts/ShortcutsPlugin$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "shortcuts-1095"

    invoke-direct {p0, v0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getOnShortcutListener()Lorg/blacksquircle/ui/editorkit/plugin/shortcuts/OnShortcutListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/shortcuts/ShortcutsPlugin;->onShortcutListener:Lorg/blacksquircle/ui/editorkit/plugin/shortcuts/OnShortcutListener;

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

    const-string p1, "shortcuts-1095"

    const-string v0, "Shortcuts plugin loaded successfully!"

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

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/blacksquircle/ui/editorkit/plugin/shortcuts/ShortcutsPlugin;->onShortcutListener:Lorg/blacksquircle/ui/editorkit/plugin/shortcuts/OnShortcutListener;

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p2    # Landroid/view/KeyEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/shortcuts/ShortcutsPlugin;->onShortcutListener:Lorg/blacksquircle/ui/editorkit/plugin/shortcuts/OnShortcutListener;

    if-eqz v0, :cond_4

    new-instance v1, Lorg/blacksquircle/ui/editorkit/plugin/shortcuts/Shortcut;

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v4

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v2

    :cond_2
    invoke-direct {v1, v3, v4, v2, p1}, Lorg/blacksquircle/ui/editorkit/plugin/shortcuts/Shortcut;-><init>(ZZZI)V

    invoke-virtual {v1}, Lorg/blacksquircle/ui/editorkit/plugin/shortcuts/Shortcut;->getCtrl()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Lorg/blacksquircle/ui/editorkit/plugin/shortcuts/Shortcut;->getShift()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Lorg/blacksquircle/ui/editorkit/plugin/shortcuts/Shortcut;->getAlt()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    invoke-interface {v0, v1}, Lorg/blacksquircle/ui/editorkit/plugin/shortcuts/OnShortcutListener;->onShortcut(Lorg/blacksquircle/ui/editorkit/plugin/shortcuts/Shortcut;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    invoke-super {p0, p1, p2}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public final setOnShortcutListener(Lorg/blacksquircle/ui/editorkit/plugin/shortcuts/OnShortcutListener;)V
    .locals 0
    .param p1    # Lorg/blacksquircle/ui/editorkit/plugin/shortcuts/OnShortcutListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lorg/blacksquircle/ui/editorkit/plugin/shortcuts/ShortcutsPlugin;->onShortcutListener:Lorg/blacksquircle/ui/editorkit/plugin/shortcuts/OnShortcutListener;

    return-void
.end method
