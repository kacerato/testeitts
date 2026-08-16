.class public LCh/o;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Loh/x;

.field public c:Loh/g;


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    new-instance v0, Loh/x;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    check-cast v1, Loh/x;

    invoke-virtual {v1}, Loh/x;->J()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Loh/x;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LCh/o;->b:Loh/x;

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-interface {p1}, Loh/g;->r()Loh/B;

    move-result-object p1

    const-string v0, "DER"

    invoke-virtual {p1, v0}, Loh/v;->s(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Loh/B;->B([B)Loh/B;

    move-result-object p1

    iput-object p1, p0, LCh/o;->c:Loh/g;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad sequence size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Loh/E;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Loh/x;Loh/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, LCh/o;->b:Loh/x;

    iput-object p2, p0, LCh/o;->c:Loh/g;

    return-void
.end method

.method public static u(Ljava/lang/Object;)LCh/o;
    .locals 1

    instance-of v0, p0, LCh/o;

    if-eqz v0, :cond_0

    check-cast p0, LCh/o;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LCh/o;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, LCh/o;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 2

    new-instance v0, Loh/h;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, LCh/o;->b:Loh/x;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, LCh/o;->c:Loh/g;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public v()Loh/x;
    .locals 1

    iget-object v0, p0, LCh/o;->b:Loh/x;

    return-object v0
.end method

.method public x()Loh/g;
    .locals 1

    iget-object v0, p0, LCh/o;->c:Loh/g;

    return-object v0
.end method
