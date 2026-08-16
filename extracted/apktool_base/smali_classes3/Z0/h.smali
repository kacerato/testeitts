.class public final synthetic LZ0/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD0/n;


# instance fields
.field public final synthetic a:LZ0/a;

.field public final synthetic b:La1/r;


# direct methods
.method public synthetic constructor <init>(LZ0/a;La1/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LZ0/h;->a:LZ0/a;

    iput-object p2, p0, LZ0/h;->b:La1/r;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, LZ0/h;->a:LZ0/a;

    iget-object v1, p0, LZ0/h;->b:La1/r;

    check-cast p1, Lj1/b0;

    check-cast p2, Lv1/l;

    new-instance v2, LZ0/j;

    invoke-direct {v2, v0, p2}, LZ0/j;-><init>(LZ0/a;Lv1/l;)V

    invoke-virtual {p1}, LG0/f;->M()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lj1/e0;

    invoke-virtual {p1, v2, v1}, Lj1/e0;->l0(Lj1/d0;La1/r;)V

    return-void
.end method
