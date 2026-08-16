.class public LC6/c$t;
.super Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LC6/c;->c0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LC6/c;


# direct methods
.method public constructor <init>(LC6/c;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "pluginId"
        }
    .end annotation

    iput-object p1, p0, LC6/c$t;->a:LC6/c;

    invoke-direct {p0, p2}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onScrollChanged(IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "horiz",
            "vert",
            "oldHoriz",
            "oldVert"
        }
    .end annotation

    iget-object p1, p0, LC6/c$t;->a:LC6/c;

    invoke-static {p1}, LC6/c;->s(LC6/c;)V

    return-void
.end method

.method public onSelectionChanged(II)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "selStart",
            "selEnd"
        }
    .end annotation

    iget-object v0, p0, LC6/c$t;->a:LC6/c;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->isTypingTemporarilyBlockedPublic()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, LC6/c$t;->a:LC6/c;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->isProgrammaticTextChangeAllowedPublic()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, LC6/c$t;->a:LC6/c;

    invoke-static {v0}, LC6/c;->q(LC6/c;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, LC6/c$t;->a:LC6/c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, LC6/c;->r(LC6/c;Z)Z

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, LC6/c$t;->a:LC6/c;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->getEditorView()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_0
    move v2, v0

    :goto_0
    iget-object v3, p0, LC6/c$t;->a:LC6/c;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->getTypingBlockedSelectionStartPublic()I

    move-result v3

    if-ltz v3, :cond_1

    iget-object v3, p0, LC6/c$t;->a:LC6/c;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->getTypingBlockedSelectionStartPublic()I

    move-result v3

    goto :goto_1

    :cond_1
    iget-object v3, p0, LC6/c$t;->a:LC6/c;

    invoke-static {v3}, LC6/c;->B(LC6/c;)I

    move-result v3

    :goto_1
    iget-object v4, p0, LC6/c$t;->a:LC6/c;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->getTypingBlockedSelectionEndPublic()I

    move-result v4

    if-ltz v4, :cond_2

    iget-object v4, p0, LC6/c$t;->a:LC6/c;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->getTypingBlockedSelectionEndPublic()I

    move-result v4

    goto :goto_2

    :cond_2
    iget-object v4, p0, LC6/c$t;->a:LC6/c;

    invoke-static {v4}, LC6/c;->D(LC6/c;)I

    move-result v4

    :goto_2
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-ne v3, p1, :cond_3

    if-eq v2, p2, :cond_5

    :cond_3
    invoke-virtual {v1, v3, v2}, Landroid/widget/EditText;->setSelection(II)V

    goto :goto_3

    :cond_4
    iget-object p1, p0, LC6/c$t;->a:LC6/c;

    invoke-static {p1}, LC6/c;->z(LC6/c;)I

    move-result p2

    iget-object v1, p0, LC6/c$t;->a:LC6/c;

    invoke-static {v1}, LC6/c;->x(LC6/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->setCursorPosition(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    :goto_3
    iget-object p1, p0, LC6/c$t;->a:LC6/c;

    invoke-static {p1, v0}, LC6/c;->r(LC6/c;Z)Z

    return-void

    :goto_4
    iget-object p2, p0, LC6/c$t;->a:LC6/c;

    invoke-static {p2, v0}, LC6/c;->r(LC6/c;Z)Z

    throw p1

    :cond_6
    iget-object p1, p0, LC6/c$t;->a:LC6/c;

    invoke-static {p1}, LC6/c;->s(LC6/c;)V

    return-void
.end method
