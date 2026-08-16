.class public Lcom/itsmagic/engine/Activities/InitScreen/Screens/UIScaleScreen$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/InitScreen/Screens/UIScaleScreen;->e(Landroid/widget/LinearLayout;Landroid/app/Activity;Landroid/view/LayoutInflater;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Activities/InitScreen/Screens/UIScaleScreen;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/InitScreen/Screens/UIScaleScreen;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UIScaleScreen$d;->b:Lcom/itsmagic/engine/Activities/InitScreen/Screens/UIScaleScreen;

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

    invoke-static {}, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UIScaleScreen;->n()Lcom/itsmagic/engine/Activities/InitScreen/Screens/UIScaleScreen$Settings;

    move-result-object p1

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UIScaleScreen$Settings;->executed:Z

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UIScaleScreen$d;->b:Lcom/itsmagic/engine/Activities/InitScreen/Screens/UIScaleScreen;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UIScaleScreen;->t()V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UIScaleScreen$d;->b:Lcom/itsmagic/engine/Activities/InitScreen/Screens/UIScaleScreen;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/InitScreen/a;->a()V

    return-void
.end method
