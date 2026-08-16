.class public Lni/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:LQk/o;

.field public b:Lth/h;


# direct methods
.method public constructor <init>(Lth/h;)V
    .locals 1

    .line 1
    new-instance v0, LQk/j;

    invoke-direct {v0}, LQk/j;-><init>()V

    invoke-direct {p0, p1, v0}, Lni/c;-><init>(Lth/h;LQk/o;)V

    return-void
.end method

.method public constructor <init>(Lth/h;LQk/o;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lni/c;->a:LQk/o;

    iput-object p1, p0, Lni/c;->b:Lth/h;

    return-void
.end method

.method public static a(Lth/C;)Lni/c;
    .locals 1

    new-instance v0, LQk/j;

    invoke-direct {v0}, LQk/j;-><init>()V

    invoke-static {p0, v0}, Lni/c;->b(Lth/C;LQk/o;)Lni/c;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lth/C;LQk/o;)Lni/c;
    .locals 2

    invoke-virtual {p0}, Lth/C;->x()I

    move-result v0

    invoke-static {v0}, Lni/c;->d(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lni/c;

    invoke-virtual {p0}, Lth/C;->v()Loh/g;

    move-result-object p0

    invoke-static {p0}, Lth/h;->u(Ljava/lang/Object;)Lth/h;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lni/c;-><init>(Lth/h;LQk/o;)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content of PKIBody wrong type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lth/C;->x()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static d(I)Z
    .locals 1

    const/16 v0, 0x18

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public c()[Lni/e;
    .locals 7

    iget-object v0, p0, Lni/c;->b:Lth/h;

    invoke-virtual {v0}, Lth/h;->v()[Lth/m;

    move-result-object v0

    array-length v1, v0

    new-array v2, v1, [Lni/e;

    const/4 v3, 0x0

    :goto_0
    if-eq v3, v1, :cond_0

    new-instance v4, Lni/e;

    iget-object v5, p0, Lni/c;->a:LQk/o;

    aget-object v6, v0, v3

    invoke-direct {v4, v5, v6}, Lni/e;-><init>(LQk/o;Lth/m;)V

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public e()Lth/h;
    .locals 1

    iget-object v0, p0, Lni/c;->b:Lth/h;

    return-object v0
.end method
