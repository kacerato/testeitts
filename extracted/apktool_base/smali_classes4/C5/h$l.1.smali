.class public LC5/h$l;
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
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:LC5/b;

.field public final synthetic d:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;LC5/b;Landroid/widget/TextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$context",
            "val$entry",
            "val$textView"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LC5/h$l;->b:Landroid/content/Context;

    iput-object p2, p0, LC5/h$l;->c:LC5/b;

    iput-object p3, p0, LC5/h$l;->d:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    invoke-static {}, LN7/c;->Y()V

    iget-object v0, p0, LC5/h$l;->b:Landroid/content/Context;

    iget-object v1, p0, LC5/h$l;->c:LC5/b;

    iget-object v2, p0, LC5/h$l;->d:Landroid/widget/TextView;

    new-instance v3, LC5/h$l$a;

    invoke-direct {v3, p0}, LC5/h$l$a;-><init>(LC5/h$l;)V

    invoke-static {p1, v0, v1, v2, v3}, LC5/h;->j(Landroid/view/View;Landroid/content/Context;LC5/b;Landroid/widget/TextView;Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    return p1
.end method
