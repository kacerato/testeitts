.class public LC6/c$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM7/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LC6/c;->T(Landroid/content/Context;Ljava/util/List;)V
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

    iput-object p1, p0, LC6/c$f;->a:LC6/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;Landroid/content/Context;LM7/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "context",
            "tbButton"
        }
    .end annotation

    iget-object p1, p0, LC6/c$f;->a:LC6/c;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->getEditorView()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result p2

    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result p3

    if-le p3, p2, :cond_0

    add-int/lit8 p3, p3, -0x1

    invoke-virtual {p1, p2, p3}, Landroid/widget/EditText;->setSelection(II)V

    goto :goto_0

    :cond_0
    if-lez p2, :cond_1

    add-int/lit8 p2, p2, -0x1

    add-int/lit8 p3, p3, -0x1

    invoke-virtual {p1, p2, p3}, Landroid/widget/EditText;->setSelection(II)V

    :cond_1
    :goto_0
    return-void
.end method
