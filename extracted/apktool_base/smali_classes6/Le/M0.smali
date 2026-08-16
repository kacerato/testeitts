.class public final LLe/M0;
.super LLe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LLe/M0$b;
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
.field public final d:J

.field public final e:LFe/a;

.field public final f:LBe/a;


# direct methods
.method public constructor <init>(LBe/l;JLFe/a;LBe/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/l<",
            "TT;>;J",
            "LFe/a;",
            "LBe/a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, LLe/a;-><init>(LBe/l;)V

    iput-wide p2, p0, LLe/M0;->d:J

    iput-object p4, p0, LLe/M0;->e:LFe/a;

    iput-object p5, p0, LLe/M0;->f:LBe/a;

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

    iget-object v0, p0, LLe/a;->c:LBe/l;

    new-instance v7, LLe/M0$b;

    iget-object v3, p0, LLe/M0;->e:LFe/a;

    iget-object v4, p0, LLe/M0;->f:LBe/a;

    iget-wide v5, p0, LLe/M0;->d:J

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, LLe/M0$b;-><init>(Lhn/c;LFe/a;LBe/a;J)V

    invoke-virtual {v0, v7}, LBe/l;->l6(LBe/q;)V

    return-void
.end method
