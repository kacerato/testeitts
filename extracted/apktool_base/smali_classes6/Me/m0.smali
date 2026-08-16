.class public final LMe/m0;
.super LBe/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LMe/m0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LBe/s<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:J

.field public final c:Ljava/util/concurrent/TimeUnit;

.field public final d:LBe/J;


# direct methods
.method public constructor <init>(JLjava/util/concurrent/TimeUnit;LBe/J;)V
    .locals 0

    invoke-direct {p0}, LBe/s;-><init>()V

    iput-wide p1, p0, LMe/m0;->b:J

    iput-object p3, p0, LMe/m0;->c:Ljava/util/concurrent/TimeUnit;

    iput-object p4, p0, LMe/m0;->d:LBe/J;

    return-void
.end method


# virtual methods
.method public t1(LBe/v;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/v<",
            "-",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    new-instance v0, LMe/m0$a;

    invoke-direct {v0, p1}, LMe/m0$a;-><init>(LBe/v;)V

    invoke-interface {p1, v0}, LBe/v;->e(LDe/c;)V

    iget-object p1, p0, LMe/m0;->d:LBe/J;

    iget-wide v1, p0, LMe/m0;->b:J

    iget-object v3, p0, LMe/m0;->c:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2, v3}, LBe/J;->g(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)LDe/c;

    move-result-object p1

    invoke-virtual {v0, p1}, LMe/m0$a;->a(LDe/c;)V

    return-void
.end method
