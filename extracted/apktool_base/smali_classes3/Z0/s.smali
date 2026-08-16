.class public final synthetic LZ0/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD0/n;


# instance fields
.field public final synthetic a:LZ0/c;


# direct methods
.method public synthetic constructor <init>(LZ0/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LZ0/s;->a:LZ0/c;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, LZ0/s;->a:LZ0/c;

    check-cast p1, Lj1/W;

    check-cast p2, Lv1/l;

    new-instance v1, LZ0/x;

    invoke-direct {v1, v0, p2}, LZ0/x;-><init>(LZ0/c;Lv1/l;)V

    invoke-virtual {p1}, LG0/f;->M()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lj1/Z;

    invoke-virtual {p1, v1}, Lj1/Z;->f1(Lj1/P;)V

    return-void
.end method
