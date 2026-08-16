.class public final LLe/T1;
.super LLe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LLe/T1$b;,
        LLe/T1$c;,
        LLe/T1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LLe/a<",
        "TT;",
        "LBe/l<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field public final d:J

.field public final e:J

.field public final f:I


# direct methods
.method public constructor <init>(LBe/l;JJI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/l<",
            "TT;>;JJI)V"
        }
    .end annotation

    invoke-direct {p0, p1}, LLe/a;-><init>(LBe/l;)V

    iput-wide p2, p0, LLe/T1;->d:J

    iput-wide p4, p0, LLe/T1;->e:J

    iput p6, p0, LLe/T1;->f:I

    return-void
.end method


# virtual methods
.method public m6(Lhn/c;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-",
            "LBe/l<",
            "TT;>;>;)V"
        }
    .end annotation

    iget-wide v0, p0, LLe/T1;->e:J

    iget-wide v2, p0, LLe/T1;->d:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object v0, p0, LLe/a;->c:LBe/l;

    new-instance v1, LLe/T1$a;

    iget-wide v2, p0, LLe/T1;->d:J

    iget v4, p0, LLe/T1;->f:I

    invoke-direct {v1, p1, v2, v3, v4}, LLe/T1$a;-><init>(Lhn/c;JI)V

    invoke-virtual {v0, v1}, LBe/l;->l6(LBe/q;)V

    goto :goto_0

    :cond_0
    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, LLe/a;->c:LBe/l;

    new-instance v8, LLe/T1$c;

    iget-wide v3, p0, LLe/T1;->d:J

    iget-wide v5, p0, LLe/T1;->e:J

    iget v7, p0, LLe/T1;->f:I

    move-object v1, v8

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, LLe/T1$c;-><init>(Lhn/c;JJI)V

    invoke-virtual {v0, v8}, LBe/l;->l6(LBe/q;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, LLe/a;->c:LBe/l;

    new-instance v8, LLe/T1$b;

    iget-wide v3, p0, LLe/T1;->d:J

    iget-wide v5, p0, LLe/T1;->e:J

    iget v7, p0, LLe/T1;->f:I

    move-object v1, v8

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, LLe/T1$b;-><init>(Lhn/c;JJI)V

    invoke-virtual {v0, v8}, LBe/l;->l6(LBe/q;)V

    :goto_0
    return-void
.end method
