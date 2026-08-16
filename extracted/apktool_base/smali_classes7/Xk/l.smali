.class public LXk/l;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public final b:I

.field public final c:I

.field public final d:LWl/e;


# direct methods
.method public constructor <init>(IILWl/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput p1, p0, LXk/l;->b:I

    iput p2, p0, LXk/l;->c:I

    new-instance p1, LWl/e;

    invoke-direct {p1, p3}, LWl/e;-><init>(LWl/e;)V

    iput-object p1, p0, LXk/l;->d:LWl/e;

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    check-cast v0, Loh/s;

    invoke-virtual {v0}, Loh/s;->O()I

    move-result v0

    iput v0, p0, LXk/l;->b:I

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    check-cast v0, Loh/s;

    invoke-virtual {v0}, Loh/s;->O()I

    move-result v0

    iput v0, p0, LXk/l;->c:I

    new-instance v0, LWl/e;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    check-cast p1, Loh/y;

    invoke-virtual {p1}, Loh/y;->H()[B

    move-result-object p1

    invoke-direct {v0, p1}, LWl/e;-><init>([B)V

    iput-object v0, p0, LXk/l;->d:LWl/e;

    return-void
.end method

.method public static v(Ljava/lang/Object;)LXk/l;
    .locals 1

    instance-of v0, p0, LXk/l;

    if-eqz v0, :cond_0

    check-cast p0, LXk/l;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LXk/l;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, LXk/l;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 4

    new-instance v0, Loh/h;

    invoke-direct {v0}, Loh/h;-><init>()V

    new-instance v1, Loh/s;

    iget v2, p0, LXk/l;->b:I

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Loh/s;-><init>(J)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/s;

    iget v2, p0, LXk/l;->c:I

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Loh/s;-><init>(J)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/C0;

    iget-object v2, p0, LXk/l;->d:LWl/e;

    invoke-virtual {v2}, LWl/e;->b()[B

    move-result-object v2

    invoke-direct {v1, v2}, Loh/C0;-><init>([B)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()LWl/e;
    .locals 2

    new-instance v0, LWl/e;

    iget-object v1, p0, LXk/l;->d:LWl/e;

    invoke-direct {v0, v1}, LWl/e;-><init>(LWl/e;)V

    return-object v0
.end method

.method public x()I
    .locals 1

    iget v0, p0, LXk/l;->b:I

    return v0
.end method

.method public y()I
    .locals 1

    iget v0, p0, LXk/l;->c:I

    return v0
.end method
