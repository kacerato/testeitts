.class public final LOe/T;
.super LBe/K;
.source "SourceFile"

# interfaces
.implements LIe/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOe/T$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LBe/K<",
        "TT;>;",
        "LIe/d<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:LBe/G;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/G<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:J

.field public final d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LBe/G;JLjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/G<",
            "TT;>;JTT;)V"
        }
    .end annotation

    invoke-direct {p0}, LBe/K;-><init>()V

    iput-object p1, p0, LOe/T;->b:LBe/G;

    iput-wide p2, p0, LOe/T;->c:J

    iput-object p4, p0, LOe/T;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public c()LBe/B;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    new-instance v6, LOe/Q;

    iget-object v1, p0, LOe/T;->b:LBe/G;

    iget-wide v2, p0, LOe/T;->c:J

    iget-object v4, p0, LOe/T;->d:Ljava/lang/Object;

    const/4 v5, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, LOe/Q;-><init>(LBe/G;JLjava/lang/Object;Z)V

    invoke-static {v6}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object v0

    return-object v0
.end method

.method public d1(LBe/N;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/N<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, LOe/T;->b:LBe/G;

    new-instance v1, LOe/T$a;

    iget-wide v2, p0, LOe/T;->c:J

    iget-object v4, p0, LOe/T;->d:Ljava/lang/Object;

    invoke-direct {v1, p1, v2, v3, v4}, LOe/T$a;-><init>(LBe/N;JLjava/lang/Object;)V

    invoke-interface {v0, v1}, LBe/G;->c(LBe/I;)V

    return-void
.end method
