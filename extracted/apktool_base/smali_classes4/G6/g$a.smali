.class public LG6/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LF6/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LG6/g;->r()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LG6/g;


# direct methods
.method public constructor <init>(LG6/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LG6/g$a;->a:LG6/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1
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

    new-instance v0, LG6/g$a$c;

    invoke-direct {v0, p0, p1}, LG6/g$a$c;-><init>(LG6/g$a;I)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 1
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

    new-instance v0, LG6/g$a$a;

    invoke-direct {v0, p0, p1}, LG6/g$a$a;-><init>(LG6/g$a;I)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public c()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 1

    iget-object v0, p0, LG6/g$a;->a:LG6/g;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->getScreenPositionOfCursor()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v0

    return-object v0
.end method

.method public d()Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, LG6/g$a;->a:LG6/g;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->getEditorView()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v0

    return-object v0
.end method

.method public e()V
    .locals 1

    invoke-static {}, LN7/c;->o()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, LG6/g$a$b;

    invoke-direct {v0, p0}, LG6/g$a$b;-><init>(LG6/g$a;)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public g()I
    .locals 1

    iget-object v0, p0, LG6/g$a;->a:LG6/g;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->getCursorPosition()I

    move-result v0

    return v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LG6/g$a;->a:LG6/g;

    invoke-static {v0}, LG6/g;->o(LG6/g;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LG6/g$a;->a:LG6/g;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
