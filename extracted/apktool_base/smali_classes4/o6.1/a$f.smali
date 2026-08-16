.class public Lo6/a$f;
.super LF7/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo6/a;->C0()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lo6/a;


# direct methods
.method public constructor <init>(Lo6/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lo6/a$f;->a:Lo6/a;

    invoke-direct {p0}, LF7/a;-><init>()V

    return-void
.end method


# virtual methods
.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LF7/i;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lo6/a$f;->a:Lo6/a;

    invoke-static {v0}, Lo6/a;->v1(Lo6/a;)Lo6/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo6/a$f;->a:Lo6/a;

    invoke-static {v0}, Lo6/a;->w1(Lo6/a;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    return-object v0
.end method

.method public d(LF7/i;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "element",
            "open"
        }
    .end annotation

    instance-of v0, p1, Lo6/j;

    if-eqz v0, :cond_0

    check-cast p1, Lo6/j;

    invoke-virtual {p1}, Lo6/j;->u()Lo6/i;

    move-result-object p1

    invoke-virtual {p1, p2}, Lo6/i;->o(Z)V

    :cond_0
    return-void
.end method

.method public e(LF7/i;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    instance-of v0, p1, Lo6/j;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lo6/j;

    invoke-virtual {v0}, Lo6/j;->u()Lo6/i;

    move-result-object v0

    invoke-virtual {v0}, Lo6/i;->i()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lo6/i;->o(Z)V

    invoke-virtual {v0}, Lo6/i;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo6/a$f;->a:Lo6/a;

    invoke-static {v0}, Lo6/a;->x1(Lo6/a;)LF7/l;

    move-result-object v0

    invoke-virtual {v0, p1}, LF7/l;->z(LF7/i;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo6/a$f;->a:Lo6/a;

    invoke-static {v0}, Lo6/a;->x1(Lo6/a;)LF7/l;

    move-result-object v0

    invoke-virtual {v0, p1}, LF7/l;->x(LF7/i;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public f(LF7/i;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eElement"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LF7/i;",
            ")",
            "Ljava/util/List<",
            "LF7/i;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lo6/a$f;->a:Lo6/a;

    invoke-static {v0, p1}, Lo6/a;->u1(Lo6/a;LF7/i;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
