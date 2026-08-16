.class public final LLe/g1;
.super LLe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LLe/g1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LLe/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final d:LFe/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/r<",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field public final e:J


# direct methods
.method public constructor <init>(LBe/l;JLFe/r;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/l<",
            "TT;>;J",
            "LFe/r<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, LLe/a;-><init>(LBe/l;)V

    iput-object p4, p0, LLe/g1;->d:LFe/r;

    iput-wide p2, p0, LLe/g1;->e:J

    return-void
.end method


# virtual methods
.method public m6(Lhn/c;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v5, LUe/i;

    const/4 v0, 0x0

    invoke-direct {v5, v0}, LUe/i;-><init>(Z)V

    invoke-interface {p1, v5}, Lhn/c;->j(Lhn/d;)V

    new-instance v7, LLe/g1$a;

    iget-wide v2, p0, LLe/g1;->e:J

    iget-object v4, p0, LLe/g1;->d:LFe/r;

    iget-object v6, p0, LLe/a;->c:LBe/l;

    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, LLe/g1$a;-><init>(Lhn/c;JLFe/r;LUe/i;Lhn/b;)V

    invoke-virtual {v7}, LLe/g1$a;->b()V

    return-void
.end method
