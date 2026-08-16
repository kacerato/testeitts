.class public final synthetic LM0/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD0/n;


# instance fields
.field public final synthetic a:LM0/B;

.field public final synthetic b:LM0/d;


# direct methods
.method public synthetic constructor <init>(LM0/B;LM0/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LM0/m;->a:LM0/B;

    iput-object p2, p0, LM0/m;->b:LM0/d;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, LM0/C;

    check-cast p2, Lv1/l;

    new-instance v0, LM0/y;

    iget-object v1, p0, LM0/m;->a:LM0/B;

    invoke-direct {v0, v1, p2}, LM0/y;-><init>(LM0/B;Lv1/l;)V

    invoke-virtual {p1}, LG0/f;->M()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, LM0/i;

    iget-object p2, p0, LM0/m;->b:LM0/d;

    invoke-virtual {p1, v0, p2}, LM0/i;->i1(Lcom/google/android/gms/common/api/internal/e;LM0/k;)V

    return-void
.end method
