.class public final synthetic LZ0/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD0/n;


# instance fields
.field public final synthetic a:LZ0/c;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(LZ0/c;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LZ0/n;->a:LZ0/c;

    iput-object p2, p0, LZ0/n;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, LZ0/n;->a:LZ0/c;

    iget-object v1, p0, LZ0/n;->b:Ljava/lang/String;

    check-cast p1, Lj1/W;

    check-cast p2, Lv1/l;

    new-instance v2, LZ0/y;

    invoke-direct {v2, v0, p2}, LZ0/y;-><init>(LZ0/c;Lv1/l;)V

    invoke-virtual {p1}, LG0/f;->M()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lj1/Z;

    invoke-virtual {p1, v2, v1}, Lj1/Z;->t(Lj1/S;Ljava/lang/String;)V

    return-void
.end method
