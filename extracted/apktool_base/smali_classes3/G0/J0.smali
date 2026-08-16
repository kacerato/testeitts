.class public final LG0/J0;
.super LG0/r0;
.source "SourceFile"


# instance fields
.field public final synthetic g:LG0/f;


# direct methods
.method public constructor <init>(LG0/f;ILandroid/os/Bundle;)V
    .locals 0
    .param p2    # I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    iput-object p1, p0, LG0/J0;->g:LG0/f;

    invoke-direct {p0, p1, p2, p3}, LG0/r0;-><init>(LG0/f;ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public final f(LB0/c;)V
    .locals 1

    iget-object v0, p0, LG0/J0;->g:LG0/f;

    invoke-virtual {v0}, LG0/f;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LG0/J0;->g:LG0/f;

    invoke-static {v0}, LG0/f;->q0(LG0/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, LG0/J0;->g:LG0/f;

    const/16 v0, 0x10

    invoke-static {p1, v0}, LG0/f;->m0(LG0/f;I)V

    return-void

    :cond_0
    iget-object v0, p0, LG0/J0;->g:LG0/f;

    iget-object v0, v0, LG0/f;->r:LG0/f$c;

    invoke-interface {v0, p1}, LG0/f$c;->b(LB0/c;)V

    iget-object v0, p0, LG0/J0;->g:LG0/f;

    invoke-virtual {v0, p1}, LG0/f;->U(LB0/c;)V

    return-void
.end method

.method public final g()Z
    .locals 2

    iget-object v0, p0, LG0/J0;->g:LG0/f;

    iget-object v0, v0, LG0/f;->r:LG0/f$c;

    sget-object v1, LB0/c;->E:LB0/c;

    invoke-interface {v0, v1}, LG0/f$c;->b(LB0/c;)V

    const/4 v0, 0x1

    return v0
.end method
