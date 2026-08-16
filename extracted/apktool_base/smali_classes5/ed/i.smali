.class public final synthetic Led/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Led/j;

.field public final synthetic c:Lokhttp3/z;

.field public final synthetic d:Lokhttp3/C;

.field public final synthetic e:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Led/j;Lokhttp3/z;Lokhttp3/C;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Led/i;->b:Led/j;

    iput-object p2, p0, Led/i;->c:Lokhttp3/z;

    iput-object p3, p0, Led/i;->d:Lokhttp3/C;

    iput-object p4, p0, Led/i;->e:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Led/i;->b:Led/j;

    iget-object v1, p0, Led/i;->c:Lokhttp3/z;

    iget-object v2, p0, Led/i;->d:Lokhttp3/C;

    iget-object v3, p0, Led/i;->e:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0, v1, v2, v3}, Led/j;->c(Led/j;Lokhttp3/z;Lokhttp3/C;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method
