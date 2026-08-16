.class public LC5/c$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LC5/c;->q(LC5/c$i;ILandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LC5/d;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:LC5/c;


# direct methods
.method public constructor <init>(LC5/c;LC5/d;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$item",
            "val$context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LC5/c$d;->d:LC5/c;

    iput-object p2, p0, LC5/c$d;->b:LC5/d;

    iput-object p3, p0, LC5/c$d;->c:Landroid/content/Context;

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
            "view"
        }
    .end annotation

    invoke-static {}, LN7/c;->Y()V

    iget-object v0, p0, LC5/c$d;->b:LC5/d;

    iget-object v0, v0, LC5/d;->d:LC5/a;

    if-eqz v0, :cond_0

    iget-object v0, v0, LC5/a;->h:LD5/g;

    if-eqz v0, :cond_0

    iget-object v1, p0, LC5/c$d;->c:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, v2}, LD5/g;->a(Landroid/view/View;Landroid/content/Context;I)Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
