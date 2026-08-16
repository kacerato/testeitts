.class public LC5/h$w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD5/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LC5/h;->x(Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;LC5/b;IZLandroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LC5/b;

.field public final synthetic b:Landroid/widget/TextView;

.field public final synthetic c:Landroid/view/View$OnClickListener;

.field public final synthetic d:Landroid/view/View$OnLongClickListener;


# direct methods
.method public constructor <init>(LC5/b;Landroid/widget/TextView;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$entry",
            "val$textView",
            "val$click",
            "val$longClick"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LC5/h$w;->a:LC5/b;

    iput-object p2, p0, LC5/h$w;->b:Landroid/widget/TextView;

    iput-object p3, p0, LC5/h$w;->c:Landroid/view/View$OnClickListener;

    iput-object p4, p0, LC5/h$w;->d:Landroid/view/View$OnLongClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, LC5/h$w;->a:LC5/b;

    iget-object v0, v0, LC5/b;->c:LD5/k;

    invoke-interface {v0}, LD5/k;->get()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    iget-object v1, p0, LC5/h$w;->b:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v2, p0, LC5/h$w;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, LC5/h$w;->b:Landroid/widget/TextView;

    iget-object v2, p0, LC5/h$w;->d:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    if-eqz v0, :cond_0

    iget-object v1, p0, LC5/h$w;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, LC5/h$w;->b:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method
