.class public LXk/j;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public final b:I

.field public final c:I

.field public final d:LWl/e;

.field public final e:Lhi/b;


# direct methods
.method public constructor <init>(IILWl/e;Lhi/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput p1, p0, LXk/j;->b:I

    iput p2, p0, LXk/j;->c:I

    new-instance p1, LWl/e;

    invoke-virtual {p3}, LWl/e;->b()[B

    move-result-object p2

    invoke-direct {p1, p2}, LWl/e;-><init>([B)V

    iput-object p1, p0, LXk/j;->d:LWl/e;

    iput-object p4, p0, LXk/j;->e:Lhi/b;

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

    iput v0, p0, LXk/j;->b:I

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    check-cast v0, Loh/s;

    invoke-virtual {v0}, Loh/s;->O()I

    move-result v0

    iput v0, p0, LXk/j;->c:I

    new-instance v0, LWl/e;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    check-cast v1, Loh/y;

    invoke-virtual {v1}, Loh/y;->H()[B

    move-result-object v1

    invoke-direct {v0, v1}, LWl/e;-><init>([B)V

    iput-object v0, p0, LXk/j;->d:LWl/e;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, Lhi/b;->v(Ljava/lang/Object;)Lhi/b;

    move-result-object p1

    iput-object p1, p0, LXk/j;->e:Lhi/b;

    return-void
.end method

.method public static w(Ljava/lang/Object;)LXk/j;
    .locals 1

    instance-of v0, p0, LXk/j;

    if-eqz v0, :cond_0

    check-cast p0, LXk/j;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LXk/j;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, LXk/j;-><init>(Loh/E;)V

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

    iget v2, p0, LXk/j;->b:I

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Loh/s;-><init>(J)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/s;

    iget v2, p0, LXk/j;->c:I

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Loh/s;-><init>(J)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/C0;

    iget-object v2, p0, LXk/j;->d:LWl/e;

    invoke-virtual {v2}, LWl/e;->b()[B

    move-result-object v2

    invoke-direct {v1, v2}, Loh/C0;-><init>([B)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, LXk/j;->e:Lhi/b;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()Lhi/b;
    .locals 1

    iget-object v0, p0, LXk/j;->e:Lhi/b;

    return-object v0
.end method

.method public v()LWl/e;
    .locals 1

    iget-object v0, p0, LXk/j;->d:LWl/e;

    return-object v0
.end method

.method public x()I
    .locals 1

    iget v0, p0, LXk/j;->b:I

    return v0
.end method

.method public y()I
    .locals 1

    iget v0, p0, LXk/j;->c:I

    return v0
.end method
