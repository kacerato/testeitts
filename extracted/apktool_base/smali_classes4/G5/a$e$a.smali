.class public LG5/a$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LYc/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LG5/a$e;->click(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LG5/a$e;


# direct methods
.method public constructor <init>(LG5/a$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, LG5/a$e$a;->a:LG5/a$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljd/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljd/b;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LG5/a$e$a;->a:LG5/a$e;

    iget-object v0, v0, LG5/a$e;->d:LG5/a;

    invoke-static {v0}, LG5/a;->r(LG5/a;)LG5/a$k;

    move-result-object v0

    invoke-virtual {p1}, Ljd/b;->f()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, LG5/a$k;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, LG5/a$e$a;->a:LG5/a$e;

    iget-object p1, p1, LG5/a$e;->d:LG5/a;

    invoke-static {p1}, LG5/a;->r(LG5/a;)LG5/a$k;

    move-result-object p1

    const-string v0, ""

    invoke-interface {p1, v0}, LG5/a$k;->b(Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, LG5/a$e$a;->a:LG5/a$e;

    iget-object p1, p1, LG5/a$e;->d:LG5/a;

    invoke-static {p1}, LG5/a;->t(LG5/a;)V

    iget-object p1, p0, LG5/a$e$a;->a:LG5/a$e;

    iget-object p1, p1, LG5/a$e;->d:LG5/a;

    invoke-static {p1}, LG5/a;->u(LG5/a;)V

    return-void
.end method
