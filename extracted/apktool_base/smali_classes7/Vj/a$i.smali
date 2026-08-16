.class public LVj/a$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZi/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LVj/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LVj/a$i$b;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final c:LZi/j;

.field public final d:LVj/a$i$b;

.field public final e:I

.field public final f:[B


# direct methods
.method public constructor <init>(LVj/b;I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, LVj/a$i;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, LVj/a$i;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/bouncycastle/util/p;->H(J)[B

    move-result-object v2

    iput-object v2, p0, LVj/a$i;->f:[B

    invoke-static {}, LVj/a;->f()LZi/e;

    move-result-object v2

    add-int/lit8 p2, p2, 0x7

    div-int/lit8 p2, p2, 0x8

    iput p2, p0, LVj/a$i;->e:I

    new-instance p2, LVj/a$i$b;

    const/16 v3, 0x100

    invoke-direct {p2, p1, v0, v2, v3}, LVj/a$i$b;-><init>(LVj/b;Ljava/util/concurrent/atomic/AtomicBoolean;LZi/e;I)V

    iput-object p2, p0, LVj/a$i;->d:LVj/a$i$b;

    new-instance p1, LZi/k;

    new-instance v0, LVj/a$i$a;

    invoke-direct {v0, p0}, LVj/a$i$a;-><init>(LVj/a$i;)V

    invoke-direct {p1, v0}, LZi/k;-><init>(LZi/e;)V

    const-string v0, "Bouncy Castle Hybrid Entropy Source"

    invoke-static {v0}, Lorg/bouncycastle/util/w;->j(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, LZi/k;->g([B)LZi/k;

    move-result-object p1

    new-instance v0, LSi/k;

    new-instance v2, LIi/O;

    invoke-direct {v2}, LIi/O;-><init>()V

    invoke-direct {v0, v2}, LSi/k;-><init>(LBi/y;)V

    invoke-virtual {p2}, LVj/a$i$b;->b()[B

    move-result-object p2

    invoke-virtual {p1, v0, p2, v1}, LZi/k;->c(LBi/I;[BZ)LZi/j;

    move-result-object p1

    iput-object p1, p0, LVj/a$i;->c:LZi/j;

    return-void
.end method

.method public static synthetic e(LVj/a$i;)LVj/a$i$b;
    .locals 0

    iget-object p0, p0, LVj/a$i;->d:LVj/a$i$b;

    return-object p0
.end method


# virtual methods
.method public b()[B
    .locals 3

    iget v0, p0, LVj/a$i;->e:I

    new-array v0, v0, [B

    iget-object v1, p0, LVj/a$i;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    const/16 v2, 0x80

    if-le v1, v2, :cond_1

    iget-object v1, p0, LVj/a$i;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LVj/a$i;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v1, p0, LVj/a$i;->c:LZi/j;

    iget-object v2, p0, LVj/a$i;->f:[B

    invoke-virtual {v1, v2}, LZi/j;->a([B)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, LVj/a$i;->d:LVj/a$i$b;

    invoke-virtual {v1}, LVj/a$i$b;->e()V

    :cond_1
    :goto_0
    iget-object v1, p0, LVj/a$i;->c:LZi/j;

    invoke-virtual {v1, v0}, LZi/j;->nextBytes([B)V

    return-object v0
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, LVj/a$i;->e:I

    mul-int/lit8 v0, v0, 0x8

    return v0
.end method
