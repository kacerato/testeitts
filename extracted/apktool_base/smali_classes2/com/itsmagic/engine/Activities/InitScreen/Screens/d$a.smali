.class public Lcom/itsmagic/engine/Activities/InitScreen/Screens/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/InitScreen/Screens/d;->e(Landroid/widget/LinearLayout;Landroid/app/Activity;Landroid/view/LayoutInflater;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Activities/InitScreen/Screens/d;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/InitScreen/Screens/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/d$a;->b:Lcom/itsmagic/engine/Activities/InitScreen/Screens/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/d$a;->b:Lcom/itsmagic/engine/Activities/InitScreen/Screens/d;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/InitScreen/Screens/d;->m(Lcom/itsmagic/engine/Activities/InitScreen/Screens/d;)Landroid/widget/EditText;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/d$a;->b:Lcom/itsmagic/engine/Activities/InitScreen/Screens/d;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/InitScreen/Screens/d;->n(Lcom/itsmagic/engine/Activities/InitScreen/Screens/d;)Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;->setError(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/d$a;->b:Lcom/itsmagic/engine/Activities/InitScreen/Screens/d;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/InitScreen/Screens/d;->r(Lcom/itsmagic/engine/Activities/InitScreen/Screens/d;)Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;->setError(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/d$a;->b:Lcom/itsmagic/engine/Activities/InitScreen/Screens/d;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/InitScreen/Screens/d;->s(Lcom/itsmagic/engine/Activities/InitScreen/Screens/d;)Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;->setText(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/d$a;->b:Lcom/itsmagic/engine/Activities/InitScreen/Screens/d;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/InitScreen/Screens/d;->t(Lcom/itsmagic/engine/Activities/InitScreen/Screens/d;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/d$a;->b:Lcom/itsmagic/engine/Activities/InitScreen/Screens/d;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/InitScreen/Screens/d;->m(Lcom/itsmagic/engine/Activities/InitScreen/Screens/d;)Landroid/widget/EditText;

    move-result-object p1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/d$a;->b:Lcom/itsmagic/engine/Activities/InitScreen/Screens/d;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/InitScreen/Screens/d;->t(Lcom/itsmagic/engine/Activities/InitScreen/Screens/d;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object p1, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/d$a;->b:Lcom/itsmagic/engine/Activities/InitScreen/Screens/d;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/InitScreen/Screens/d;->u(Lcom/itsmagic/engine/Activities/InitScreen/Screens/d;)V

    return-void
.end method
