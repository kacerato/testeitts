.class public final LLe/O1;
.super LBe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LLe/O1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LBe/l<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:LBe/J;

.field public final d:J

.field public final e:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(JLjava/util/concurrent/TimeUnit;LBe/J;)V
    .locals 0

    invoke-direct {p0}, LBe/l;-><init>()V

    iput-wide p1, p0, LLe/O1;->d:J

    iput-object p3, p0, LLe/O1;->e:Ljava/util/concurrent/TimeUnit;

    iput-object p4, p0, LLe/O1;->c:LBe/J;

    return-void
.end method


# virtual methods
.method public m6(Lhn/c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    new-instance v0, LLe/O1$a;

    invoke-direct {v0, p1}, LLe/O1$a;-><init>(Lhn/c;)V

    invoke-interface {p1, v0}, Lhn/c;->j(Lhn/d;)V

    iget-object p1, p0, LLe/O1;->c:LBe/J;

    iget-wide v1, p0, LLe/O1;->d:J

    iget-object v3, p0, LLe/O1;->e:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2, v3}, LBe/J;->g(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)LDe/c;

    move-result-object p1

    invoke-virtual {v0, p1}, LLe/O1$a;->a(LDe/c;)V

    return-void
.end method
