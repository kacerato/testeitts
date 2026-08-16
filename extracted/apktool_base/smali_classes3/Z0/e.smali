.class public final synthetic LZ0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD0/n;


# instance fields
.field public final synthetic a:LZ0/a;


# direct methods
.method public synthetic constructor <init>(LZ0/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LZ0/e;->a:LZ0/a;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, LZ0/e;->a:LZ0/a;

    check-cast p1, Lj1/b0;

    check-cast p2, Lv1/l;

    new-instance v1, LZ0/m;

    invoke-direct {v1, v0, p2}, LZ0/m;-><init>(LZ0/a;Lv1/l;)V

    invoke-virtual {p1}, LG0/f;->M()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lj1/e0;

    invoke-virtual {p1, v1}, Lj1/e0;->e1(Lj1/P;)V

    return-void
.end method
