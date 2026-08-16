.class public final LLe/U0;
.super LBe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LLe/U0$b;,
        LLe/U0$c;,
        LLe/U0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LBe/l<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:I

.field public final d:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, LBe/l;-><init>()V

    iput p1, p0, LLe/U0;->c:I

    add-int/2addr p1, p2

    iput p1, p0, LLe/U0;->d:I

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
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, LIe/a;

    if-eqz v0, :cond_0

    new-instance v0, LLe/U0$b;

    move-object v1, p1

    check-cast v1, LIe/a;

    iget v2, p0, LLe/U0;->c:I

    iget v3, p0, LLe/U0;->d:I

    invoke-direct {v0, v1, v2, v3}, LLe/U0$b;-><init>(LIe/a;II)V

    invoke-interface {p1, v0}, Lhn/c;->j(Lhn/d;)V

    goto :goto_0

    :cond_0
    new-instance v0, LLe/U0$c;

    iget v1, p0, LLe/U0;->c:I

    iget v2, p0, LLe/U0;->d:I

    invoke-direct {v0, p1, v1, v2}, LLe/U0$c;-><init>(Lhn/c;II)V

    invoke-interface {p1, v0}, Lhn/c;->j(Lhn/d;)V

    :goto_0
    return-void
.end method
