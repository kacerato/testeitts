.class public LC6/c$o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LC6/c;->W()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LC6/c;


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

    iput-object p1, p0, LC6/c$o;->b:LC6/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "editable"
        }
    .end annotation

    iget-object p1, p0, LC6/c$o;->b:LC6/c;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->isTypingTemporarilyBlockedPublic()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, LC6/c$o;->b:LC6/c;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->isProgrammaticTextChangeAllowedPublic()Z

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "charSequence",
            "start",
            "before",
            "count"
        }
    .end annotation

    iget-object p2, p0, LC6/c$o;->b:LC6/c;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->isTypingTemporarilyBlockedPublic()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, LC6/c$o;->b:LC6/c;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->isProgrammaticTextChangeAllowedPublic()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, LC6/c$o;->b:LC6/c;

    if-nez p1, :cond_1

    const-string p1, ""

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p2, p1}, LC6/c;->y(LC6/c;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, LC6/c$o;->b:LC6/c;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->getCursorPosition()I

    move-result p2

    invoke-static {p1, p2}, LC6/c;->A(LC6/c;I)I

    iget-object p1, p0, LC6/c$o;->b:LC6/c;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->getEditorView()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result p2

    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result p1

    iget-object p3, p0, LC6/c$o;->b:LC6/c;

    const/4 p4, 0x0

    invoke-static {p4, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p3, p2}, LC6/c;->C(LC6/c;I)I

    iget-object p2, p0, LC6/c$o;->b:LC6/c;

    invoke-static {p4, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p2, p1}, LC6/c;->E(LC6/c;I)I

    goto :goto_1

    :cond_2
    iget-object p1, p0, LC6/c$o;->b:LC6/c;

    invoke-static {p1}, LC6/c;->z(LC6/c;)I

    move-result p2

    invoke-static {p1, p2}, LC6/c;->C(LC6/c;I)I

    iget-object p1, p0, LC6/c$o;->b:LC6/c;

    invoke-static {p1}, LC6/c;->z(LC6/c;)I

    move-result p2

    invoke-static {p1, p2}, LC6/c;->E(LC6/c;I)I

    :goto_1
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "charSequence",
            "start",
            "before",
            "count"
        }
    .end annotation

    iget-object v0, p0, LC6/c$o;->b:LC6/c;

    invoke-static {v0}, LC6/c;->F(LC6/c;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LC6/c$o;->b:LC6/c;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->isTypingTemporarilyBlockedPublic()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LC6/c$o;->b:LC6/c;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->isProgrammaticTextChangeAllowedPublic()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LC6/c$o;->b:LC6/c;

    const/4 v1, 0x1

    if-le p3, p4, :cond_1

    move p4, v1

    goto :goto_0

    :cond_1
    const/4 p4, 0x0

    :goto_0
    invoke-static {v0, p4}, LC6/c;->H(LC6/c;Z)Z

    if-nez p3, :cond_8

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p4

    add-int/2addr p2, p3

    if-le p4, p2, :cond_8

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object p2

    iget-boolean p2, p2, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->recompileWhenFinishTyping:Z

    const-string p3, "}"

    if-eqz p2, :cond_7

    const-string p2, ";"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, LC6/c$o;->b:LC6/c;

    invoke-static {p2, v1}, LC6/c;->o(LC6/c;Z)V

    goto :goto_1

    :cond_2
    const-string p2, "{"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, LC6/c$o;->b:LC6/c;

    invoke-static {p2, v1}, LC6/c;->o(LC6/c;Z)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, LC6/c$o;->b:LC6/c;

    invoke-static {p2, v1}, LC6/c;->o(LC6/c;Z)V

    goto :goto_1

    :cond_4
    const-string p2, "\n"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p0, LC6/c$o;->b:LC6/c;

    invoke-static {p2, v1}, LC6/c;->o(LC6/c;Z)V

    goto :goto_1

    :cond_5
    const-string p2, "."

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_6

    goto :goto_1

    :cond_6
    const-string p2, "("

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    :cond_7
    :goto_1
    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object p2

    iget-boolean p2, p2, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->allowAutomaticFormatter:Z

    if-eqz p2, :cond_8

    invoke-virtual {p1, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, LC6/c$o;->b:LC6/c;

    invoke-static {p1}, LC6/c;->I(LC6/c;)V

    :cond_8
    return-void
.end method
