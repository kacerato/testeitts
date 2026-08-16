.class public interface abstract Lorg/blacksquircle/ui/editorkit/plugin/base/PluginContainer;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract findPlugin(Ljava/lang/String;)Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract hasPlugin(Ljava/lang/String;)Z
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract installPlugin(Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;)V
    .param p1    # Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;",
            ">(TT;)V"
        }
    .end annotation
.end method

.method public abstract plugins(Lorg/blacksquircle/ui/editorkit/plugin/base/PluginSupplier;)V
    .param p1    # Lorg/blacksquircle/ui/editorkit/plugin/base/PluginSupplier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract uninstallPlugin(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
