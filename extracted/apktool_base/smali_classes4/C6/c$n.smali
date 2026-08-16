.class public LC6/c$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LF6/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LC6/c;->W()V
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

    iput-object p1, p0, LC6/c$n;->a:LC6/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "line"
        }
    .end annotation

    invoke-static {}, LN7/c;->o()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, LN7/c;->o()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, LC6/c$n$c;

    invoke-direct {v1, p0, p1}, LC6/c$n$c;-><init>(LC6/c$n;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "line"
        }
    .end annotation

    invoke-static {}, LN7/c;->o()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, LN7/c;->o()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, LC6/c$n$a;

    invoke-direct {v1, p0, p1}, LC6/c$n$a;-><init>(LC6/c$n;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public c()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 1

    iget-object v0, p0, LC6/c$n;->a:LC6/c;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->getScreenPositionOfCursor()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v0

    return-object v0
.end method

.method public d()Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, LC6/c$n;->a:LC6/c;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->getEditorView()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v0

    return-object v0
.end method

.method public e()V
    .locals 2

    invoke-static {}, LN7/c;->o()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, LN7/c;->o()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, LC6/c$n$b;

    invoke-direct {v1, p0}, LC6/c$n$b;-><init>(LC6/c$n;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public f()Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;
    .locals 1

    iget-object v0, p0, LC6/c$n;->a:LC6/c;

    invoke-virtual {v0}, LC6/c;->S()Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    move-result-object v0

    return-object v0
.end method

.method public g()I
    .locals 1

    iget-object v0, p0, LC6/c$n;->a:LC6/c;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->getCursorPosition()I

    move-result v0

    return v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LC6/c$n;->a:LC6/c;

    invoke-static {v0}, LC6/c;->p(LC6/c;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LC6/c$n;->a:LC6/c;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
