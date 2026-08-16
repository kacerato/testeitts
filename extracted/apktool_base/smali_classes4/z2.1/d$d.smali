.class public final Lz2/d$d;
.super Lz2/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/d$d$c;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Queue<",
            "Lz2/d$d$c;",
            ">;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Boolean;",
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
    new-instance v0, Lz2/d$d$a;

    invoke-direct {v0, p0}, Lz2/d$d$a;-><init>(Lz2/d$d;)V

    iput-object v0, p0, Lz2/d$d;->a:Ljava/lang/ThreadLocal;

    .line 3
    new-instance v0, Lz2/d$d$b;

    invoke-direct {v0, p0}, Lz2/d$d$b;-><init>(Lz2/d$d;)V

    iput-object v0, p0, Lz2/d$d;->b:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public synthetic constructor <init>(Lz2/d$a;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lz2/d$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/util/Iterator;)V
    .locals 3
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

    invoke-static {p2}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lz2/d$d;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    new-instance v1, Lz2/d$d$c;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lz2/d$d$c;-><init>(Ljava/lang/Object;Ljava/util/Iterator;Lz2/d$a;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    iget-object p1, p0, Lz2/d$d;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lz2/d$d;->b:Ljava/lang/ThreadLocal;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    :try_start_0
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz2/d$d$c;

    if-eqz p1, :cond_1

    :goto_0
    invoke-static {p1}, Lz2/d$d$c;->a(Lz2/d$d$c;)Ljava/util/Iterator;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {p1}, Lz2/d$d$c;->a(Lz2/d$d$c;)Ljava/util/Iterator;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lz2/j;

    invoke-static {p1}, Lz2/d$d$c;->b(Lz2/d$d$c;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Lz2/j;->d(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lz2/d$d;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->remove()V

    iget-object p1, p0, Lz2/d$d;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_2

    :goto_1
    iget-object p2, p0, Lz2/d$d;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {p2}, Ljava/lang/ThreadLocal;->remove()V

    iget-object p2, p0, Lz2/d$d;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {p2}, Ljava/lang/ThreadLocal;->remove()V

    throw p1

    :cond_2
    :goto_2
    return-void
.end method
