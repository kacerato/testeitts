.class public LAk/A;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public final b:LBk/e;

.field public final c:LAk/B;


# direct methods
.method public constructor <init>(LBk/e;LAk/B;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, LAk/A;->b:LBk/e;

    iput-object p2, p0, LAk/A;->c:LAk/B;

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

    invoke-static {v0}, LBk/e;->u(Ljava/lang/Object;)LBk/e;

    move-result-object v0

    iput-object v0, p0, LAk/A;->b:LBk/e;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, LAk/B;->w(Ljava/lang/Object;)LAk/B;

    move-result-object p1

    iput-object p1, p0, LAk/A;->c:LAk/B;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "expected sequence size of 2"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static v(Ljava/lang/Object;)LAk/A;
    .locals 1

    instance-of v0, p0, LAk/A;

    if-eqz v0, :cond_0

    check-cast p0, LAk/A;

    return-object p0

    :cond_0
    if-eqz p0, :cond_2

    instance-of v0, p0, LEk/v;

    if-eqz v0, :cond_1

    new-instance v0, LAk/A;

    check-cast p0, LEk/v;

    invoke-virtual {p0}, LEk/v;->v()[B

    move-result-object p0

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, LAk/A;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    new-instance v0, LAk/A;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, LAk/A;-><init>(Loh/E;)V

    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 5

    new-instance v0, Loh/G0;

    iget-object v1, p0, LAk/A;->b:LBk/e;

    iget-object v2, p0, LAk/A;->c:LAk/B;

    const/4 v3, 0x2

    new-array v3, v3, [Loh/g;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    invoke-direct {v0, v3}, Loh/G0;-><init>([Loh/g;)V

    return-object v0
.end method

.method public u()LAk/B;
    .locals 1

    iget-object v0, p0, LAk/A;->c:LAk/B;

    return-object v0
.end method

.method public x()LBk/e;
    .locals 1

    iget-object v0, p0, LAk/A;->b:LBk/e;

    return-object v0
.end method
