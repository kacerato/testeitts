.class public final synthetic LJ0/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD0/n;


# instance fields
.field public final synthetic a:LG0/H;


# direct methods
.method public synthetic constructor <init>(LG0/H;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJ0/n;->a:LG0/H;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    check-cast p1, LJ0/q;

    check-cast p2, Lv1/l;

    sget v0, LJ0/p;->n:I

    invoke-virtual {p1}, LG0/f;->M()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, LJ0/j;

    iget-object v0, p0, LJ0/n;->a:LG0/H;

    invoke-virtual {p1, v0}, LJ0/j;->e1(LG0/H;)V

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lv1/l;->c(Ljava/lang/Object;)V

    return-void
.end method
