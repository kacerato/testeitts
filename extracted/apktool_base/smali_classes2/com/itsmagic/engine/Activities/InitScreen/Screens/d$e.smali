.class public Lcom/itsmagic/engine/Activities/InitScreen/Screens/d$e;
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

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/d$e;->b:Lcom/itsmagic/engine/Activities/InitScreen/Screens/d;

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

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/d$e;->b:Lcom/itsmagic/engine/Activities/InitScreen/Screens/d;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/InitScreen/Screens/d;->y(Lcom/itsmagic/engine/Activities/InitScreen/Screens/d;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/d$e;->b:Lcom/itsmagic/engine/Activities/InitScreen/Screens/d;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/InitScreen/Screens/d;->o(Lcom/itsmagic/engine/Activities/InitScreen/Screens/d;)V

    return-void
.end method
