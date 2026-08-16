.class public LF7/l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LF7/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LF7/l;->i(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LF7/g<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:LF7/l;


# direct methods
.method public constructor <init>(LF7/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LF7/l$a;->a:LF7/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(LF7/i;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "element",
            "v"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, LF7/l$a;->a:LF7/l;

    invoke-static {v0}, LF7/l;->c(LF7/l;)LF7/k;

    move-result-object v0

    invoke-interface {v0, p1, p2}, LF7/k;->b(LF7/i;Landroid/view/View;)V

    return-void
.end method

.method public c(LF7/i;)V
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
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p1, LF7/i;->f:LF7/h;

    iget-boolean v0, v0, LF7/h;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, LF7/l$a;->a:LF7/l;

    invoke-static {v0, p1}, LF7/l;->a(LF7/l;LF7/i;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, LF7/l$a;->a:LF7/l;

    invoke-static {v0, p1}, LF7/l;->b(LF7/l;LF7/i;)V

    :goto_0
    return-void
.end method

.method public d(LF7/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, LF7/l$a;->a:LF7/l;

    invoke-virtual {v0, p1}, LF7/l;->D(LF7/i;)V

    return-void
.end method
