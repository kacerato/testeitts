.class public La7/a$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZ6/c$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La7/a$d;->click(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:La7/a$d;


# direct methods
.method public constructor <init>(La7/a$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, La7/a$d$a;->a:La7/a$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LZ6/c$g;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialogC"
        }
    .end annotation

    invoke-interface {p1}, LZ6/c$g;->dismiss()V

    iget-object p1, p0, La7/a$d$a;->a:La7/a$d;

    iget-object p1, p1, La7/a$d;->b:La7/a;

    invoke-static {p1}, La7/a;->t1(La7/a;)La7/b;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, La7/a$d$a;->a:La7/a$d;

    iget-object p1, p1, La7/a$d;->b:La7/a;

    invoke-static {p1}, La7/a;->t1(La7/a;)La7/b;

    move-result-object p1

    iget-object p1, p1, La7/b;->c:Lh4/d;

    invoke-interface {p1}, Lh4/d;->b()V

    :cond_0
    iget-object p1, p0, La7/a$d$a;->a:La7/a$d;

    iget-object p1, p1, La7/a$d;->b:La7/a;

    invoke-static {p1}, La7/a;->v1(La7/a;)Le7/a;

    move-result-object p1

    iget-object v0, p0, La7/a$d$a;->a:La7/a$d;

    iget-object v0, v0, La7/a$d;->b:La7/a;

    invoke-static {v0}, La7/a;->t1(La7/a;)La7/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Le7/a;->r(Ljava/lang/Object;)V

    iget-object p1, p0, La7/a$d$a;->a:La7/a$d;

    iget-object p1, p1, La7/a$d;->b:La7/a;

    const/4 v0, 0x0

    invoke-static {p1, v0}, La7/a;->u1(La7/a;La7/b;)La7/b;

    iget-object p1, p0, La7/a$d$a;->a:La7/a$d;

    iget-object p1, p1, La7/a$d;->b:La7/a;

    invoke-virtual {p1, v0}, La7/a;->x1(La7/b;)V

    return-void
.end method

.method public b(LZ6/c$g;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    invoke-interface {p1}, LZ6/c$g;->dismiss()V

    return-void
.end method
