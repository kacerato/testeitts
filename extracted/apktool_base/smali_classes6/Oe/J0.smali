.class public final LOe/J0;
.super LBe/B;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOe/J0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LBe/B<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:I

.field public final c:J


# direct methods
.method public constructor <init>(II)V
    .locals 2

    invoke-direct {p0}, LBe/B;-><init>()V

    iput p1, p0, LOe/J0;->b:I

    int-to-long v0, p1

    int-to-long p1, p2

    add-long/2addr v0, p1

    iput-wide v0, p0, LOe/J0;->c:J

    return-void
.end method


# virtual methods
.method public J5(LBe/I;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance v6, LOe/J0$a;

    iget v0, p0, LOe/J0;->b:I

    int-to-long v2, v0

    iget-wide v4, p0, LOe/J0;->c:J

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, LOe/J0$a;-><init>(LBe/I;JJ)V

    invoke-interface {p1, v6}, LBe/I;->e(LDe/c;)V

    invoke-virtual {v6}, LOe/J0$a;->run()V

    return-void
.end method
