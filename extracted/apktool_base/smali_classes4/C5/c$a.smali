.class public LC5/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LC5/c;->q(LC5/c$i;ILandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LC5/d;

.field public final synthetic b:LC5/c$i;

.field public final synthetic c:I

.field public final synthetic d:LC5/c;


# direct methods
.method public constructor <init>(LC5/c;LC5/d;LC5/c$i;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$item",
            "val$holder",
            "val$position"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LC5/c$a;->d:LC5/c;

    iput-object p2, p0, LC5/c$a;->a:LC5/d;

    iput-object p3, p0, LC5/c$a;->b:LC5/c$i;

    iput p4, p0, LC5/c$a;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buttonView",
            "b"
        }
    .end annotation

    iget-object p1, p0, LC5/c$a;->a:LC5/d;

    iget-object p1, p1, LC5/d;->d:LC5/a;

    if-eqz p1, :cond_1

    iget-object p1, p0, LC5/c$a;->b:LC5/c$i;

    iget-object p1, p1, LC5/c$i;->d:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz p2, :cond_0

    const/4 v0, -0x2

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :goto_0
    iget-object v0, p0, LC5/c$a;->b:LC5/c$i;

    iget-object v0, v0, LC5/c$i;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, LC5/c$a;->a:LC5/d;

    iget-object p1, p1, LC5/d;->d:LC5/a;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, LC5/a;->b()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;->i(Z)V

    iget-object p1, p0, LC5/c$a;->a:LC5/d;

    iget-object p1, p1, LC5/d;->d:LC5/a;

    iget-boolean p1, p1, LC5/a;->r:Z

    if-eq p2, p1, :cond_1

    :try_start_0
    iget-object p1, p0, LC5/c$a;->d:LC5/c;

    iget p2, p0, LC5/c$a;->c:I

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method
