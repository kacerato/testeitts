.class public final LOe/Q;
.super LOe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOe/Q$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LOe/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final c:J

.field public final d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final e:Z


# direct methods
.method public constructor <init>(LBe/G;JLjava/lang/Object;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/G<",
            "TT;>;JTT;Z)V"
        }
    .end annotation

    invoke-direct {p0, p1}, LOe/a;-><init>(LBe/G;)V

    iput-wide p2, p0, LOe/Q;->c:J

    iput-object p4, p0, LOe/Q;->d:Ljava/lang/Object;

    iput-boolean p5, p0, LOe/Q;->e:Z

    return-void
.end method


# virtual methods
.method public J5(LBe/I;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, LOe/a;->b:LBe/G;

    new-instance v7, LOe/Q$a;

    iget-wide v3, p0, LOe/Q;->c:J

    iget-object v5, p0, LOe/Q;->d:Ljava/lang/Object;

    iget-boolean v6, p0, LOe/Q;->e:Z

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, LOe/Q$a;-><init>(LBe/I;JLjava/lang/Object;Z)V

    invoke-interface {v0, v7}, LBe/G;->c(LBe/I;)V

    return-void
.end method
