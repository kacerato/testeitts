.class public Lsh/m;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public final b:Lsh/c;

.field public final c:Loh/x;

.field public final d:Loh/g;


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Lsh/c;->v(Ljava/lang/Object;)Lsh/c;

    move-result-object v0

    iput-object v0, p0, Lsh/m;->b:Lsh/c;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/x;->K(Ljava/lang/Object;)Loh/x;

    move-result-object v0

    iput-object v0, p0, Lsh/m;->c:Loh/x;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    iput-object p1, p0, Lsh/m;->d:Loh/g;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "incorrect sequence size"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lsh/c;Loh/x;Loh/g;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lsh/m;->b:Lsh/c;

    iput-object p2, p0, Lsh/m;->c:Loh/x;

    iput-object p3, p0, Lsh/m;->d:Loh/g;

    return-void
.end method

.method public static y(Ljava/lang/Object;)Lsh/m;
    .locals 1

    instance-of v0, p0, Lsh/m;

    if-eqz v0, :cond_0

    check-cast p0, Lsh/m;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lsh/m;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lsh/m;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 2

    new-instance v0, Loh/h;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Lsh/m;->b:Lsh/c;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lsh/m;->c:Loh/x;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lsh/m;->d:Loh/g;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()Lsh/c;
    .locals 1

    iget-object v0, p0, Lsh/m;->b:Lsh/c;

    return-object v0
.end method

.method public v()Loh/g;
    .locals 1

    iget-object v0, p0, Lsh/m;->d:Loh/g;

    return-object v0
.end method

.method public x()Loh/x;
    .locals 1

    iget-object v0, p0, Lsh/m;->c:Loh/x;

    return-object v0
.end method
