.class public LC5/h$t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LC5/h;->x(Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;LC5/b;IZLandroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LC5/b;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(LC5/b;Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$entry",
            "val$context",
            "val$textView"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LC5/h$t;->b:LC5/b;

    iput-object p2, p0, LC5/h$t;->c:Landroid/content/Context;

    iput-object p3, p0, LC5/h$t;->d:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    invoke-static {}, LN7/c;->Y()V

    iget-object p1, p0, LC5/h$t;->b:LC5/b;

    iget-object p1, p1, LC5/b;->c:LD5/k;

    invoke-interface {p1}, LD5/k;->allowSelect()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, LC5/h$t;->b:LC5/b;

    iget-object v0, p0, LC5/h$t;->c:Landroid/content/Context;

    iget-object v1, p0, LC5/h$t;->d:Landroid/widget/TextView;

    invoke-static {p1, v0, v1}, LC5/h;->l(LC5/b;Landroid/content/Context;Landroid/widget/TextView;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
