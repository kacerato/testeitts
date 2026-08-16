.class public final LOe/A1;
.super LBe/B;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOe/A1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LBe/B<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:LBe/J;

.field public final c:J

.field public final d:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(JLjava/util/concurrent/TimeUnit;LBe/J;)V
    .locals 0

    invoke-direct {p0}, LBe/B;-><init>()V

    iput-wide p1, p0, LOe/A1;->c:J

    iput-object p3, p0, LOe/A1;->d:Ljava/util/concurrent/TimeUnit;

    iput-object p4, p0, LOe/A1;->b:LBe/J;

    return-void
.end method


# virtual methods
.method public J5(LBe/I;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    new-instance v0, LOe/A1$a;

    invoke-direct {v0, p1}, LOe/A1$a;-><init>(LBe/I;)V

    invoke-interface {p1, v0}, LBe/I;->e(LDe/c;)V

    iget-object p1, p0, LOe/A1;->b:LBe/J;

    iget-wide v1, p0, LOe/A1;->c:J

    iget-object v3, p0, LOe/A1;->d:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2, v3}, LBe/J;->g(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)LDe/c;

    move-result-object p1

    invoke-virtual {v0, p1}, LOe/A1$a;->a(LDe/c;)V

    return-void
.end method
