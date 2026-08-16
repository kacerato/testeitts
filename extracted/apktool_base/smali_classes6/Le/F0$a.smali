.class public final LLe/F0$a;
.super LTe/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLe/F0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LTe/t<",
        "TT;",
        "LBe/A<",
        "TT;>;>;"
    }
.end annotation


# static fields
.field public static final i:J = -0x33ea157c2cf0a1deL


# direct methods
.method public constructor <init>(Lhn/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-",
            "LBe/A<",
            "TT;>;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, LTe/t;-><init>(Lhn/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    invoke-static {}, LBe/A;->a()LBe/A;

    move-result-object v0

    invoke-virtual {p0, v0}, LTe/t;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic d(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, LBe/A;

    invoke-virtual {p0, p1}, LLe/F0$a;->f(LBe/A;)V

    return-void
.end method

.method public f(LBe/A;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/A<",
            "TT;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, LBe/A;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, LBe/A;->d()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-wide v0, p0, LTe/t;->e:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, LTe/t;->e:J

    iget-object v0, p0, LTe/t;->b:Lhn/c;

    invoke-static {p1}, LBe/A;->c(Ljava/lang/Object;)LBe/A;

    move-result-object p1

    invoke-interface {v0, p1}, Lhn/c;->h(Ljava/lang/Object;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p1}, LBe/A;->b(Ljava/lang/Throwable;)LBe/A;

    move-result-object p1

    invoke-virtual {p0, p1}, LTe/t;->c(Ljava/lang/Object;)V

    return-void
.end method
