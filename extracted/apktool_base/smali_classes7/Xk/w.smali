.class public LXk/w;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public final b:Loh/s;

.field public final c:I

.field public final d:I

.field public final e:Lhi/b;


# direct methods
.method public constructor <init>(IILhi/b;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v0, Loh/s;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Loh/s;-><init>(J)V

    iput-object v0, p0, LXk/w;->b:Loh/s;

    iput p1, p0, LXk/w;->c:I

    iput p2, p0, LXk/w;->d:I

    iput-object p3, p0, LXk/w;->e:Lhi/b;

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object v0

    iput-object v0, p0, LXk/w;->b:Loh/s;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object v0

    invoke-virtual {v0}, Loh/s;->O()I

    move-result v0

    iput v0, p0, LXk/w;->c:I

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object v0

    invoke-virtual {v0}, Loh/s;->O()I

    move-result v0

    iput v0, p0, LXk/w;->d:I

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, Lhi/b;->v(Ljava/lang/Object;)Lhi/b;

    move-result-object p1

    iput-object p1, p0, LXk/w;->e:Lhi/b;

    return-void
.end method

.method public static v(Ljava/lang/Object;)LXk/w;
    .locals 1

    instance-of v0, p0, LXk/w;

    if-eqz v0, :cond_0

    check-cast p0, LXk/w;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LXk/w;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, LXk/w;-><init>(Loh/E;)V

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

    iget-object v1, p0, LXk/w;->b:Loh/s;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/s;

    iget v2, p0, LXk/w;->c:I

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Loh/s;-><init>(J)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/s;

    iget v2, p0, LXk/w;->d:I

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Loh/s;-><init>(J)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, LXk/w;->e:Lhi/b;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()I
    .locals 1

    iget v0, p0, LXk/w;->c:I

    return v0
.end method

.method public x()I
    .locals 1

    iget v0, p0, LXk/w;->d:I

    return v0
.end method

.method public y()Lhi/b;
    .locals 1

    iget-object v0, p0, LXk/w;->e:Lhi/b;

    return-object v0
.end method
