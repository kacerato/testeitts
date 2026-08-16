.class public Lh7/e$e$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh7/e$e$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lh7/e$e$a;


# direct methods
.method public constructor <init>(Lh7/e$e$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, Lh7/e$e$a$a;->a:Lh7/e$e$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    iget-object v0, p0, Lh7/e$e$a$a;->a:Lh7/e$e$a;

    iget-object v0, v0, Lh7/e$e$a;->b:Lh7/e$e;

    iget-object v0, v0, Lh7/e$e;->b:Lh7/e;

    invoke-static {v0}, Lh7/e;->a(Lh7/e;)LF7/l;

    move-result-object v0

    invoke-virtual {v0}, LF7/l;->o()LF7/i;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh7/e$e$a$a;->a:Lh7/e$e$a;

    iget-object v0, v0, Lh7/e$e$a;->b:Lh7/e$e;

    iget-object v0, v0, Lh7/e$e;->b:Lh7/e;

    invoke-static {v0}, Lh7/e;->a(Lh7/e;)LF7/l;

    move-result-object v0

    invoke-virtual {v0}, LF7/l;->o()LF7/i;

    move-result-object v0

    instance-of v1, v0, Lj7/f;

    if-eqz v1, :cond_0

    check-cast v0, Lj7/f;

    iget-object v1, p0, Lh7/e$e$a$a;->a:Lh7/e$e$a;

    iget-object v1, v1, Lh7/e$e$a;->b:Lh7/e$e;

    iget-object v1, v1, Lh7/e$e;->b:Lh7/e;

    iget-object v1, v1, Lh7/e;->d:Ln7/f;

    invoke-interface {v1, v0, p1}, Ln7/f;->h(Lj7/b;Landroid/view/View;)V

    :cond_0
    return-void
.end method
