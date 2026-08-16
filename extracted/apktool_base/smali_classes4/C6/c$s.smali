.class public LC6/c$s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/blacksquircle/ui/editorkit/utils/OnTextChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LC6/c;->X()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LC6/c;


# direct methods
.method public constructor <init>(LC6/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LC6/c$s;->a:LC6/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChange(Landroid/view/View;IIIII)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "line",
            "selectionStart",
            "selectionEnd",
            "x",
            "y"
        }
    .end annotation

    iget-object p1, p0, LC6/c$s;->a:LC6/c;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->isTypingTemporarilyBlockedPublic()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, LC6/c$s;->a:LC6/c;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->isProgrammaticTextChangeAllowedPublic()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, LC6/c$s;->a:LC6/c;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->getText()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, LC6/c$s;->a:LC6/c;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->getCurrentLine()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, LC6/c$s;->a:LC6/c;

    invoke-virtual {p1}, LC6/c;->S()Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object p3

    iget-object p3, p3, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->codeCompletion:Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings$a;

    invoke-virtual {p3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings$a;->c()Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, LC6/c$s;->a:LC6/c;

    invoke-static {p3}, LC6/c;->J(LC6/c;)LK6/a;

    move-result-object v0

    iget-object p3, p0, LC6/c$s;->a:LC6/c;

    invoke-virtual {p3}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->getCursorPosition()I

    move-result v4

    iget-object v5, p1, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->p:Ljava/util/List;

    iget-object v6, p0, LC6/c$s;->a:LC6/c;

    invoke-virtual {v6}, LC6/c;->S()Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    move-result-object p1

    iget-object v7, p1, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->e:Ljava/lang/String;

    iget-object p1, p0, LC6/c$s;->a:LC6/c;

    invoke-static {p1}, LC6/c;->G(LC6/c;)Z

    move-result v8

    move v3, p2

    invoke-virtual/range {v0 .. v8}, LK6/a;->w(Ljava/lang/String;Ljava/lang/String;IILjava/util/List;Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, LC6/c$s;->a:LC6/c;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->showSuggestions(Ljava/util/List;)V

    :cond_2
    :goto_0
    return-void
.end method
