.class public final Lorg/blacksquircle/ui/editorkit/plugin/dirtytext/DirtyTextPlugin;
.super Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/blacksquircle/ui/editorkit/plugin/dirtytext/DirtyTextPlugin$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/blacksquircle/ui/editorkit/plugin/dirtytext/DirtyTextPlugin$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PLUGIN_ID:Ljava/lang/String; = "dirty-text-9124"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private isDirty:Z

.field private onChangeListener:Lorg/blacksquircle/ui/editorkit/plugin/dirtytext/OnChangeListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/blacksquircle/ui/editorkit/plugin/dirtytext/DirtyTextPlugin$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/blacksquircle/ui/editorkit/plugin/dirtytext/DirtyTextPlugin$Companion;-><init>(Lkotlin/jvm/internal/x;)V

    sput-object v0, Lorg/blacksquircle/ui/editorkit/plugin/dirtytext/DirtyTextPlugin;->Companion:Lorg/blacksquircle/ui/editorkit/plugin/dirtytext/DirtyTextPlugin$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "dirty-text-9124"

    invoke-direct {p0, v0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1    # Landroid/text/Editable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->afterTextChanged(Landroid/text/Editable;)V

    iget-boolean p1, p0, Lorg/blacksquircle/ui/editorkit/plugin/dirtytext/DirtyTextPlugin;->isDirty:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/blacksquircle/ui/editorkit/plugin/dirtytext/DirtyTextPlugin;->onChangeListener:Lorg/blacksquircle/ui/editorkit/plugin/dirtytext/OnChangeListener;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/blacksquircle/ui/editorkit/plugin/dirtytext/OnChangeListener;->onContentChanged()V

    :cond_0
    return-void
.end method

.method public final getOnChangeListener()Lorg/blacksquircle/ui/editorkit/plugin/dirtytext/OnChangeListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/dirtytext/DirtyTextPlugin;->onChangeListener:Lorg/blacksquircle/ui/editorkit/plugin/dirtytext/OnChangeListener;

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

    const-string p1, "dirty-text-9124"

    const-string v0, "DirtyText plugin loaded successfully!"

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

    iput-object p1, p0, Lorg/blacksquircle/ui/editorkit/plugin/dirtytext/DirtyTextPlugin;->onChangeListener:Lorg/blacksquircle/ui/editorkit/plugin/dirtytext/OnChangeListener;

    return-void
.end method

.method public final setOnChangeListener(Lorg/blacksquircle/ui/editorkit/plugin/dirtytext/OnChangeListener;)V
    .locals 0
    .param p1    # Lorg/blacksquircle/ui/editorkit/plugin/dirtytext/OnChangeListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lorg/blacksquircle/ui/editorkit/plugin/dirtytext/DirtyTextPlugin;->onChangeListener:Lorg/blacksquircle/ui/editorkit/plugin/dirtytext/OnChangeListener;

    return-void
.end method

.method public setTextContent(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->setTextContent(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/blacksquircle/ui/editorkit/plugin/dirtytext/DirtyTextPlugin;->isDirty:Z

    return-void
.end method
