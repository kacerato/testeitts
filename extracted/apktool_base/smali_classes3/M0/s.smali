.class public final synthetic LM0/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD0/n;


# instance fields
.field public final synthetic a:LM0/B;

.field public final synthetic b:LM0/a;


# direct methods
.method public synthetic constructor <init>(LM0/B;LM0/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LM0/s;->a:LM0/B;

    iput-object p2, p0, LM0/s;->b:LM0/a;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, LM0/C;

    check-cast p2, Lv1/l;

    new-instance v0, LM0/v;

    iget-object v1, p0, LM0/s;->a:LM0/B;

    invoke-direct {v0, v1, p2}, LM0/v;-><init>(LM0/B;Lv1/l;)V

    invoke-virtual {p1}, LG0/f;->M()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, LM0/i;

    iget-object p2, p0, LM0/s;->b:LM0/a;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, LM0/i;->g1(LM0/h;LM0/a;LM0/k;)V

    return-void
.end method
