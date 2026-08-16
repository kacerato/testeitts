.class public Lh7/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh7/e;->v(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lh7/e;


# direct methods
.method public constructor <init>(Lh7/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lh7/e$a;->b:Lh7/e;

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

    iget-object v0, p0, Lh7/e$a;->b:Lh7/e;

    invoke-static {v0}, Lh7/e;->a(Lh7/e;)LF7/l;

    move-result-object v0

    invoke-virtual {v0}, LF7/l;->o()LF7/i;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh7/e$a;->b:Lh7/e;

    invoke-static {v0}, Lh7/e;->a(Lh7/e;)LF7/l;

    move-result-object v0

    invoke-virtual {v0}, LF7/l;->o()LF7/i;

    move-result-object v0

    instance-of v1, v0, Lj7/f;

    if-eqz v1, :cond_0

    check-cast v0, Lj7/f;

    iget-object v1, p0, Lh7/e$a;->b:Lh7/e;

    iget-object v1, v1, Lh7/e;->d:Ln7/f;

    invoke-interface {v1, v0, p1}, Ln7/f;->h(Lj7/b;Landroid/view/View;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
