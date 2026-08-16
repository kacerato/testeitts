.class public abstract LLe/d1$c;
.super LUe/i;
.source "SourceFile"

# interfaces
.implements LBe/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLe/d1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "LUe/i;",
        "LBe/q<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final o:J = -0x4dc79ef2e0d16b40L


# instance fields
.field public final k:Lhn/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhn/c<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final l:LZe/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LZe/c<",
            "TU;>;"
        }
    .end annotation
.end field

.field public final m:Lhn/d;

.field public n:J


# direct methods
.method public constructor <init>(Lhn/c;LZe/c;Lhn/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-TT;>;",
            "LZe/c<",
            "TU;>;",
            "Lhn/d;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, LUe/i;-><init>(Z)V

    iput-object p1, p0, LLe/d1$c;->k:Lhn/c;

    iput-object p2, p0, LLe/d1$c;->l:LZe/c;

    iput-object p3, p0, LLe/d1$c;->m:Lhn/d;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    invoke-super {p0}, LUe/i;->cancel()V

    iget-object v0, p0, LLe/d1$c;->m:Lhn/d;

    invoke-interface {v0}, Lhn/d;->cancel()V

    return-void
.end method

.method public final h(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-wide v0, p0, LLe/d1$c;->n:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, LLe/d1$c;->n:J

    iget-object v0, p0, LLe/d1$c;->k:Lhn/c;

    invoke-interface {v0, p1}, Lhn/c;->h(Ljava/lang/Object;)V

    return-void
.end method

.method public final j(Lhn/d;)V
    .locals 0

    invoke-virtual {p0, p1}, LUe/i;->l(Lhn/d;)V

    return-void
.end method

.method public final m(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    sget-object v0, LUe/g;->INSTANCE:LUe/g;

    invoke-virtual {p0, v0}, LUe/i;->l(Lhn/d;)V

    iget-wide v0, p0, LLe/d1$c;->n:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iput-wide v2, p0, LLe/d1$c;->n:J

    invoke-virtual {p0, v0, v1}, LUe/i;->k(J)V

    :cond_0
    iget-object v0, p0, LLe/d1$c;->m:Lhn/d;

    const-wide/16 v1, 0x1

    invoke-interface {v0, v1, v2}, Lhn/d;->i(J)V

    iget-object v0, p0, LLe/d1$c;->l:LZe/c;

    invoke-interface {v0, p1}, Lhn/c;->h(Ljava/lang/Object;)V

    return-void
.end method
