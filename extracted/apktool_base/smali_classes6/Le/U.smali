.class public final LLe/U;
.super LLe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LLe/U$a;
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

.field public final e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final f:Z


# direct methods
.method public constructor <init>(LBe/l;JLjava/lang/Object;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/l<",
            "TT;>;JTT;Z)V"
        }
    .end annotation

    invoke-direct {p0, p1}, LLe/a;-><init>(LBe/l;)V

    iput-wide p2, p0, LLe/U;->d:J

    iput-object p4, p0, LLe/U;->e:Ljava/lang/Object;

    iput-boolean p5, p0, LLe/U;->f:Z

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

    new-instance v7, LLe/U$a;

    iget-wide v3, p0, LLe/U;->d:J

    iget-object v5, p0, LLe/U;->e:Ljava/lang/Object;

    iget-boolean v6, p0, LLe/U;->f:Z

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, LLe/U$a;-><init>(Lhn/c;JLjava/lang/Object;Z)V

    invoke-virtual {v0, v7}, LBe/l;->l6(LBe/q;)V

    return-void
.end method
