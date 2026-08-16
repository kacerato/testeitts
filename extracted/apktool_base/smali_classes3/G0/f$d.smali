.class public LG0/f$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LG0/f$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LG0/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final synthetic a:LG0/f;


# direct methods
.method public constructor <init>(LG0/f;)V
    .locals 0
    .annotation build LC0/a;
    .end annotation

    iput-object p1, p0, LG0/f$d;->a:LG0/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(LB0/c;)V
    .locals 2
    .param p1    # LB0/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, LB0/c;->u0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, LG0/f$d;->a:LG0/f;

    invoke-virtual {p1}, LG0/f;->L()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, LG0/f;->t(LG0/r;Ljava/util/Set;)V

    return-void

    :cond_0
    iget-object v0, p0, LG0/f$d;->a:LG0/f;

    invoke-static {v0}, LG0/f;->e0(LG0/f;)LG0/f$b;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LG0/f$d;->a:LG0/f;

    invoke-static {v0}, LG0/f;->e0(LG0/f;)LG0/f$b;

    move-result-object v0

    invoke-interface {v0, p1}, LG0/f$b;->t(LB0/c;)V

    :cond_1
    return-void
.end method
