.class public final Lz2/d$c;
.super Lz2/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/d$c$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lz2/d$c$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lz2/d;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/common/collect/i2;->f()Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    iput-object v0, p0, Lz2/d$c;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method

.method public synthetic constructor <init>(Lz2/d$a;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lz2/d$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/util/Iterator;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Iterator<",
            "Lz2/j;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/d$c;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, Lz2/d$c$a;

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz2/j;

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Lz2/d$c$a;-><init>(Ljava/lang/Object;Lz2/j;Lz2/d$a;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    :goto_1
    iget-object p1, p0, Lz2/d$c;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz2/d$c$a;

    if-eqz p1, :cond_1

    invoke-static {p1}, Lz2/d$c$a;->b(Lz2/d$c$a;)Lz2/j;

    move-result-object p2

    invoke-static {p1}, Lz2/d$c$a;->a(Lz2/d$c$a;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lz2/j;->d(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    return-void
.end method
