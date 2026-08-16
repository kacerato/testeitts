.class public LEk/u;
.super Loh/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LEk/u$a;
    }
.end annotation


# instance fields
.field public final b:LFk/w;

.field public final c:LFk/h;


# direct methods
.method public constructor <init>(LFk/w;LFk/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, LEk/u;->b:LFk/w;

    iput-object p2, p0, LEk/u;->c:LFk/h;

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, LFk/w;->v(Ljava/lang/Object;)LFk/w;

    move-result-object v0

    iput-object v0, p0, LEk/u;->b:LFk/w;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, LFk/h;->y(Ljava/lang/Object;)LFk/h;

    move-result-object p1

    iput-object p1, p0, LEk/u;->c:LFk/h;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "expected sequence size of 2"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static u()LEk/u$a;
    .locals 1

    new-instance v0, LEk/u$a;

    invoke-direct {v0}, LEk/u$a;-><init>()V

    return-object v0
.end method

.method public static y(Ljava/lang/Object;)LEk/u;
    .locals 1

    instance-of v0, p0, LEk/u;

    if-eqz v0, :cond_0

    check-cast p0, LEk/u;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LEk/u;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, LEk/u;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 4

    iget-object v0, p0, LEk/u;->b:LFk/w;

    iget-object v1, p0, LEk/u;->c:LFk/h;

    const/4 v2, 0x2

    new-array v2, v2, [Loh/g;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v2}, Lzk/a;->e([Loh/g;)Loh/E;

    move-result-object v0

    return-object v0
.end method

.method public v()LFk/w;
    .locals 1

    iget-object v0, p0, LEk/u;->b:LFk/w;

    return-object v0
.end method

.method public x()LFk/h;
    .locals 1

    iget-object v0, p0, LEk/u;->c:LFk/h;

    return-object v0
.end method
