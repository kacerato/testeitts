.class public final synthetic Lwn/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lwn/p;

.field public final synthetic c:Lxn/c;

.field public final synthetic d:Lwn/t;

.field public final synthetic e:[F

.field public final synthetic f:[F

.field public final synthetic g:I

.field public final synthetic h:I

.field public final synthetic i:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic j:I

.field public final synthetic k:I

.field public final synthetic l:Ljava/util/List;

.field public final synthetic m:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Lwn/p;Lxn/c;Lwn/t;[F[FIILjava/util/concurrent/atomic/AtomicInteger;IILjava/util/List;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwn/o;->b:Lwn/p;

    iput-object p2, p0, Lwn/o;->c:Lxn/c;

    iput-object p3, p0, Lwn/o;->d:Lwn/t;

    iput-object p4, p0, Lwn/o;->e:[F

    iput-object p5, p0, Lwn/o;->f:[F

    iput p6, p0, Lwn/o;->g:I

    iput p7, p0, Lwn/o;->h:I

    iput-object p8, p0, Lwn/o;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    iput p9, p0, Lwn/o;->j:I

    iput p10, p0, Lwn/o;->k:I

    iput-object p11, p0, Lwn/o;->l:Ljava/util/List;

    iput-object p12, p0, Lwn/o;->m:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    iget-object v0, p0, Lwn/o;->b:Lwn/p;

    iget-object v1, p0, Lwn/o;->c:Lxn/c;

    iget-object v2, p0, Lwn/o;->d:Lwn/t;

    iget-object v3, p0, Lwn/o;->e:[F

    iget-object v4, p0, Lwn/o;->f:[F

    iget v5, p0, Lwn/o;->g:I

    iget v6, p0, Lwn/o;->h:I

    iget-object v7, p0, Lwn/o;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    iget v8, p0, Lwn/o;->j:I

    iget v9, p0, Lwn/o;->k:I

    iget-object v10, p0, Lwn/o;->l:Ljava/util/List;

    iget-object v11, p0, Lwn/o;->m:Ljava/util/concurrent/CountDownLatch;

    invoke-static/range {v0 .. v11}, Lwn/p;->a(Lwn/p;Lxn/c;Lwn/t;[F[FIILjava/util/concurrent/atomic/AtomicInteger;IILjava/util/List;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method
