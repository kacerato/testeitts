.class public final LLe/w$e;
.super LUe/i;
.source "SourceFile"

# interfaces
.implements LBe/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLe/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "LUe/i;",
        "LBe/q<",
        "TR;>;"
    }
.end annotation


# static fields
.field public static final m:J = 0xc75368d015d6d3dL


# instance fields
.field public final k:LLe/w$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LLe/w$f<",
            "TR;>;"
        }
    .end annotation
.end field

.field public l:J


# direct methods
.method public constructor <init>(LLe/w$f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LLe/w$f<",
            "TR;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, LUe/i;-><init>(Z)V

    iput-object p1, p0, LLe/w$e;->k:LLe/w$f;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    iget-wide v0, p0, LLe/w$e;->l:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iput-wide v2, p0, LLe/w$e;->l:J

    invoke-virtual {p0, v0, v1}, LUe/i;->k(J)V

    :cond_0
    iget-object v0, p0, LLe/w$e;->k:LLe/w$f;

    invoke-interface {v0}, LLe/w$f;->d()V

    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    iget-wide v0, p0, LLe/w$e;->l:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, LLe/w$e;->l:J

    iget-object v0, p0, LLe/w$e;->k:LLe/w$f;

    invoke-interface {v0, p1}, LLe/w$f;->e(Ljava/lang/Object;)V

    return-void
.end method

.method public j(Lhn/d;)V
    .locals 0

    invoke-virtual {p0, p1}, LUe/i;->l(Lhn/d;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 5

    iget-wide v0, p0, LLe/w$e;->l:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iput-wide v2, p0, LLe/w$e;->l:J

    invoke-virtual {p0, v0, v1}, LUe/i;->k(J)V

    :cond_0
    iget-object v0, p0, LLe/w$e;->k:LLe/w$f;

    invoke-interface {v0, p1}, LLe/w$f;->c(Ljava/lang/Throwable;)V

    return-void
.end method
