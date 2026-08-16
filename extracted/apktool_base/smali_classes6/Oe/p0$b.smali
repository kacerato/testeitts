.class public final LOe/p0$b;
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
    name = "b"
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

.field public final c:I

.field public final d:J

.field public final e:Ljava/util/concurrent/TimeUnit;

.field public final f:LBe/J;


# direct methods
.method public constructor <init>(LBe/B;IJLjava/util/concurrent/TimeUnit;LBe/J;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/B<",
            "TT;>;IJ",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOe/p0$b;->b:LBe/B;

    iput p2, p0, LOe/p0$b;->c:I

    iput-wide p3, p0, LOe/p0$b;->d:J

    iput-object p5, p0, LOe/p0$b;->e:Ljava/util/concurrent/TimeUnit;

    iput-object p6, p0, LOe/p0$b;->f:LBe/J;

    return-void
.end method


# virtual methods
.method public a()LVe/a;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LVe/a<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, LOe/p0$b;->b:LBe/B;

    iget v1, p0, LOe/p0$b;->c:I

    iget-wide v2, p0, LOe/p0$b;->d:J

    iget-object v4, p0, LOe/p0$b;->e:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, LOe/p0$b;->f:LBe/J;

    invoke-virtual/range {v0 .. v5}, LBe/B;->I4(IJLjava/util/concurrent/TimeUnit;LBe/J;)LVe/a;

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

    invoke-virtual {p0}, LOe/p0$b;->a()LVe/a;

    move-result-object v0

    return-object v0
.end method
