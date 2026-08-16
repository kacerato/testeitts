.class public Lcom/itsmagic/engine/Activities/InitScreen/Screens/d$d;
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
.field public final synthetic b:Landroid/widget/CheckBox;

.field public final synthetic c:Lcom/itsmagic/engine/Activities/InitScreen/Screens/d;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/InitScreen/Screens/d;Landroid/widget/CheckBox;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$aggre"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/d$d;->c:Lcom/itsmagic/engine/Activities/InitScreen/Screens/d;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/d$d;->b:Landroid/widget/CheckBox;

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
            "v"
        }
    .end annotation

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/d$d;->b:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/d$d;->c:Lcom/itsmagic/engine/Activities/InitScreen/Screens/d;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/InitScreen/Screens/d;->w(Lcom/itsmagic/engine/Activities/InitScreen/Screens/d;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/d$d;->c:Lcom/itsmagic/engine/Activities/InitScreen/Screens/d;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/InitScreen/Screens/d;->x(Lcom/itsmagic/engine/Activities/InitScreen/Screens/d;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/d$d;->c:Lcom/itsmagic/engine/Activities/InitScreen/Screens/d;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/InitScreen/a;->b()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1100c6

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LN7/c;->v0(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
