.class public LVj/a$l;
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
    name = "l"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LVj/a$l$b;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final c:LZi/j;

.field public final d:LVj/a$l$b;

.field public final e:I

.field public final f:[B


# direct methods
.method public constructor <init>(I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, LVj/a$l;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, LVj/a$l;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/bouncycastle/util/p;->H(J)[B

    move-result-object v2

    iput-object v2, p0, LVj/a$l;->f:[B

    invoke-static {}, LVj/a;->f()LZi/e;

    move-result-object v2

    add-int/lit8 p1, p1, 0x7

    div-int/lit8 p1, p1, 0x8

    iput p1, p0, LVj/a$l;->e:I

    new-instance p1, LVj/a$l$b;

    const/16 v3, 0x100

    invoke-direct {p1, v0, v2, v3}, LVj/a$l$b;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;LZi/e;I)V

    iput-object p1, p0, LVj/a$l;->d:LVj/a$l$b;

    new-instance v0, LZi/k;

    new-instance v2, LVj/a$l$a;

    invoke-direct {v2, p0}, LVj/a$l$a;-><init>(LVj/a$l;)V

    invoke-direct {v0, v2}, LZi/k;-><init>(LZi/e;)V

    const-string v2, "Bouncy Castle Hybrid Entropy Source"

    invoke-static {v2}, Lorg/bouncycastle/util/w;->j(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, LZi/k;->g([B)LZi/k;

    move-result-object v0

    new-instance v2, LSi/k;

    new-instance v3, LIi/O;

    invoke-direct {v3}, LIi/O;-><init>()V

    invoke-direct {v2, v3}, LSi/k;-><init>(LBi/y;)V

    invoke-virtual {p1}, LVj/a$l$b;->b()[B

    move-result-object p1

    invoke-virtual {v0, v2, p1, v1}, LZi/k;->c(LBi/I;[BZ)LZi/j;

    move-result-object p1

    iput-object p1, p0, LVj/a$l;->c:LZi/j;

    return-void
.end method

.method public static synthetic e(LVj/a$l;)LVj/a$l$b;
    .locals 0

    iget-object p0, p0, LVj/a$l;->d:LVj/a$l$b;

    return-object p0
.end method


# virtual methods
.method public b()[B
    .locals 3

    iget v0, p0, LVj/a$l;->e:I

    new-array v0, v0, [B

    iget-object v1, p0, LVj/a$l;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    const/16 v2, 0x400

    if-le v1, v2, :cond_1

    iget-object v1, p0, LVj/a$l;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LVj/a$l;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v1, p0, LVj/a$l;->c:LZi/j;

    iget-object v2, p0, LVj/a$l;->f:[B

    invoke-virtual {v1, v2}, LZi/j;->a([B)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, LVj/a$l;->d:LVj/a$l$b;

    invoke-virtual {v1}, LVj/a$l$b;->e()V

    :cond_1
    :goto_0
    iget-object v1, p0, LVj/a$l;->c:LZi/j;

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

    iget v0, p0, LVj/a$l;->e:I

    mul-int/lit8 v0, v0, 0x8

    return v0
.end method
