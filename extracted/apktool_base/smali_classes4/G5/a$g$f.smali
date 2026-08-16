.class public LG5/a$g$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LG5/a$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LG5/a$g;


# direct methods
.method public constructor <init>(LG5/a$g;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, LG5/a$g$f;->a:LG5/a$g;

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
            "v"
        }
    .end annotation

    iget-object p1, p0, LG5/a$g$f;->a:LG5/a$g;

    iget-object p1, p1, LG5/a$g;->b:LG5/a;

    invoke-static {p1}, LG5/a;->r(LG5/a;)LG5/a$k;

    move-result-object p1

    invoke-interface {p1}, LG5/a$k;->get()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, LN7/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object p1

    new-instance v0, Lw5/k;

    iget-object v1, p0, LG5/a$g$f;->a:LG5/a$g;

    iget-object v1, v1, LG5/a$g;->b:LG5/a;

    invoke-static {v1}, LG5/a;->r(LG5/a;)LG5/a$k;

    move-result-object v1

    invoke-interface {v1}, LG5/a$k;->get()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lw5/k;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->B0(Ln4/f;)Z

    goto :goto_0

    :cond_0
    const-string p1, "No texture attached!"

    invoke-static {p1}, LN7/c;->v0(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
