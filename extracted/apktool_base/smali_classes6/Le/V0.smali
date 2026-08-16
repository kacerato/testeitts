.class public final LLe/V0;
.super LBe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LLe/V0$b;,
        LLe/V0$c;,
        LLe/V0$a;
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
.field public final c:J

.field public final d:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    invoke-direct {p0}, LBe/l;-><init>()V

    iput-wide p1, p0, LLe/V0;->c:J

    add-long/2addr p1, p3

    iput-wide p1, p0, LLe/V0;->d:J

    return-void
.end method


# virtual methods
.method public m6(Lhn/c;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, LIe/a;

    if-eqz v0, :cond_0

    new-instance v0, LLe/V0$b;

    move-object v2, p1

    check-cast v2, LIe/a;

    iget-wide v3, p0, LLe/V0;->c:J

    iget-wide v5, p0, LLe/V0;->d:J

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, LLe/V0$b;-><init>(LIe/a;JJ)V

    invoke-interface {p1, v0}, Lhn/c;->j(Lhn/d;)V

    goto :goto_0

    :cond_0
    new-instance v0, LLe/V0$c;

    iget-wide v9, p0, LLe/V0;->c:J

    iget-wide v11, p0, LLe/V0;->d:J

    move-object v7, v0

    move-object v8, p1

    invoke-direct/range {v7 .. v12}, LLe/V0$c;-><init>(Lhn/c;JJ)V

    invoke-interface {p1, v0}, Lhn/c;->j(Lhn/d;)V

    :goto_0
    return-void
.end method
