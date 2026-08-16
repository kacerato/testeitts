.class public Lth/l;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public final b:Loh/s;

.field public final c:Lth/L;

.field public d:Lth/n;

.field public e:Loh/y;


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 3

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object v0

    iput-object v0, p0, Lth/l;->b:Loh/s;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Lth/L;->v(Ljava/lang/Object;)Lth/L;

    move-result-object v0

    iput-object v0, p0, Lth/l;->c:Lth/L;

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v1, :cond_1

    invoke-virtual {p1, v2}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    instance-of v0, p1, Loh/y;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lth/n;->v(Ljava/lang/Object;)Lth/n;

    move-result-object p1

    iput-object p1, p0, Lth/l;->d:Lth/n;

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v2}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Lth/n;->v(Ljava/lang/Object;)Lth/n;

    move-result-object v0

    iput-object v0, p0, Lth/l;->d:Lth/n;

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object p1

    iput-object p1, p0, Lth/l;->e:Loh/y;

    :cond_2
    :goto_1
    return-void
.end method

.method public constructor <init>(Loh/s;Lth/L;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0, v0}, Lth/l;-><init>(Loh/s;Lth/L;Lth/n;Loh/y;)V

    return-void
.end method

.method public constructor <init>(Loh/s;Lth/L;Lth/n;Loh/y;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iput-object p1, p0, Lth/l;->b:Loh/s;

    iput-object p2, p0, Lth/l;->c:Lth/L;

    iput-object p3, p0, Lth/l;->d:Lth/n;

    iput-object p4, p0, Lth/l;->e:Loh/y;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'status\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'certReqId\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static w(Ljava/lang/Object;)Lth/l;
    .locals 1

    instance-of v0, p0, Lth/l;

    if-eqz v0, :cond_0

    check-cast p0, Lth/l;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lth/l;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lth/l;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 2

    new-instance v0, Loh/h;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Lth/l;->b:Loh/s;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lth/l;->c:Lth/L;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lth/l;->d:Lth/n;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_0
    iget-object v1, p0, Lth/l;->e:Loh/y;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_1
    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()Loh/s;
    .locals 1

    iget-object v0, p0, Lth/l;->b:Loh/s;

    return-object v0
.end method

.method public v()Lth/n;
    .locals 1

    iget-object v0, p0, Lth/l;->d:Lth/n;

    return-object v0
.end method

.method public x()Loh/y;
    .locals 1

    iget-object v0, p0, Lth/l;->e:Loh/y;

    return-object v0
.end method

.method public y()Lth/L;
    .locals 1

    iget-object v0, p0, Lth/l;->c:Lth/L;

    return-object v0
.end method
