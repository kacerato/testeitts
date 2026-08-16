.class public final LOe/p0$o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOe/p0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "o"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "LVe/a<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field public final b:LBe/B;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/B<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:J

.field public final d:Ljava/util/concurrent/TimeUnit;

.field public final e:LBe/J;


# direct methods
.method public constructor <init>(LBe/B;JLjava/util/concurrent/TimeUnit;LBe/J;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/B<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOe/p0$o;->b:LBe/B;

    iput-wide p2, p0, LOe/p0$o;->c:J

    iput-object p4, p0, LOe/p0$o;->d:Ljava/util/concurrent/TimeUnit;

    iput-object p5, p0, LOe/p0$o;->e:LBe/J;

    return-void
.end method


# virtual methods
.method public a()LVe/a;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LVe/a<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, LOe/p0$o;->b:LBe/B;

    iget-wide v1, p0, LOe/p0$o;->c:J

    iget-object v3, p0, LOe/p0$o;->d:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, LOe/p0$o;->e:LBe/J;

    invoke-virtual {v0, v1, v2, v3, v4}, LBe/B;->L4(JLjava/util/concurrent/TimeUnit;LBe/J;)LVe/a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, LOe/p0$o;->a()LVe/a;

    move-result-object v0

    return-object v0
.end method
