.class public final synthetic LM0/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD0/n;


# instance fields
.field public final synthetic a:LM0/B;

.field public final synthetic b:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic c:LL0/a;

.field public final synthetic d:LM0/a;

.field public final synthetic e:LM0/d;


# direct methods
.method public synthetic constructor <init>(LM0/B;Ljava/util/concurrent/atomic/AtomicReference;LL0/a;LM0/a;LM0/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LM0/l;->a:LM0/B;

    iput-object p2, p0, LM0/l;->b:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, LM0/l;->c:LL0/a;

    iput-object p4, p0, LM0/l;->d:LM0/a;

    iput-object p5, p0, LM0/l;->e:LM0/d;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    check-cast p1, LM0/C;

    check-cast p2, Lv1/l;

    new-instance v0, LM0/x;

    iget-object v1, p0, LM0/l;->a:LM0/B;

    iget-object v2, p0, LM0/l;->b:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v3, p0, LM0/l;->c:LL0/a;

    invoke-direct {v0, v1, v2, p2, v3}, LM0/x;-><init>(LM0/B;Ljava/util/concurrent/atomic/AtomicReference;Lv1/l;LL0/a;)V

    invoke-virtual {p1}, LG0/f;->M()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, LM0/i;

    iget-object p2, p0, LM0/l;->d:LM0/a;

    iget-object v1, p0, LM0/l;->e:LM0/d;

    invoke-virtual {p1, v0, p2, v1}, LM0/i;->g1(LM0/h;LM0/a;LM0/k;)V

    return-void
.end method
