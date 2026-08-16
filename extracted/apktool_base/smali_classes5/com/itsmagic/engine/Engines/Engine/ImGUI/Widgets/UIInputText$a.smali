.class public Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->showExtractUIDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$defaultText",
            "val$title"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText$a;->d:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText$a;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText$a;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText$a;->b(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V

    return-void
.end method


# virtual methods
.method public final synthetic b(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    new-instance p2, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText$a$a;

    invoke-direct {p2, p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText$a$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText$a;Ljava/lang/String;)V

    invoke-static {p2}, LK8/a;->I(Ljava/lang/Runnable;)V

    return-void
.end method

.method public run()V
    .locals 3

    new-instance v0, Landroid/widget/EditText;

    invoke-static {}, LN7/c;->o()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-static {}, LN7/c;->o()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText$a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, LX9/a;

    invoke-direct {v2, p0, v0}, LX9/a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText$a;Landroid/widget/EditText;)V

    const v0, 0x104000a

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
