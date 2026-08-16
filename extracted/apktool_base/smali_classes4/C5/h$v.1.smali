.class public LC5/h$v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LC5/h;->w(Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;LC5/b;ILandroid/content/Context;LC5/n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LC5/b;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:I


# direct methods
.method public constructor <init>(LC5/b;Landroid/content/Context;I)V
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
            "val$positionInAdapter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LC5/h$v;->b:LC5/b;

    iput-object p2, p0, LC5/h$v;->c:Landroid/content/Context;

    iput p3, p0, LC5/h$v;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    invoke-static {}, LN7/c;->Y()V

    iget-object v0, p0, LC5/h$v;->b:LC5/b;

    iget-object v0, v0, LC5/b;->Q:LC5/a;

    iget-object v0, v0, LC5/a;->h:LD5/g;

    iget-object v1, p0, LC5/h$v;->c:Landroid/content/Context;

    iget v2, p0, LC5/h$v;->d:I

    invoke-interface {v0, p1, v1, v2}, LD5/g;->a(Landroid/view/View;Landroid/content/Context;I)Z

    move-result p1

    return p1
.end method
