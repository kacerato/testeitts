.class public final LLe/D$a;
.super LUe/f;
.source "SourceFile"

# interfaces
.implements LBe/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLe/D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LUe/f<",
        "Ljava/lang/Long;",
        ">;",
        "LBe/q<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final p:J = 0x4503a8fe5159fe4eL


# instance fields
.field public n:Lhn/d;

.field public o:J


# direct methods
.method public constructor <init>(Lhn/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, LUe/f;-><init>(Lhn/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-wide v0, p0, LLe/D$a;->o:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, LUe/f;->d(Ljava/lang/Object;)V

    return-void
.end method

.method public cancel()V
    .locals 1

    invoke-super {p0}, LUe/f;->cancel()V

    iget-object v0, p0, LLe/D$a;->n:Lhn/d;

    invoke-interface {v0}, Lhn/d;->cancel()V

    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 4

    iget-wide v0, p0, LLe/D$a;->o:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, LLe/D$a;->o:J

    return-void
.end method

.method public j(Lhn/d;)V
    .locals 2

    iget-object v0, p0, LLe/D$a;->n:Lhn/d;

    invoke-static {v0, p1}, LUe/j;->o(Lhn/d;Lhn/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, LLe/D$a;->n:Lhn/d;

    iget-object v0, p0, LUe/f;->c:Lhn/c;

    invoke-interface {v0, p0}, Lhn/c;->j(Lhn/d;)V

    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, Lhn/d;->i(J)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, LUe/f;->c:Lhn/c;

    invoke-interface {v0, p1}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
