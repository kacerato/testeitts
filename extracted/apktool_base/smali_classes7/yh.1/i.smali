.class public Lyh/i;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public final b:Loh/x;

.field public final c:[B


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 4

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    invoke-virtual {p1, v3}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/x;->K(Ljava/lang/Object;)Loh/x;

    move-result-object v0

    iput-object v0, p0, Lyh/i;->b:Loh/x;

    invoke-virtual {p1, v2}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object p1

    invoke-virtual {p1}, Loh/y;->H()[B

    move-result-object p1

    iput-object p1, p0, Lyh/i;->c:[B

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    if-ne v0, v2, :cond_1

    invoke-virtual {p1, v3}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, Loh/x;->K(Ljava/lang/Object;)Loh/x;

    move-result-object p1

    iput-object p1, p0, Lyh/i;->b:Loh/x;

    const/4 p1, 0x0

    iput-object p1, p0, Lyh/i;->c:[B

    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown sequence length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Loh/E;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Loh/x;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lyh/i;-><init>(Loh/x;[B)V

    return-void
.end method

.method public constructor <init>(Loh/x;[B)V
    .locals 0

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lyh/i;->b:Loh/x;

    invoke-static {p2}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    iput-object p1, p0, Lyh/i;->c:[B

    return-void
.end method

.method public static v(Ljava/lang/Object;)Lyh/i;
    .locals 1

    instance-of v0, p0, Lyh/i;

    if-eqz v0, :cond_0

    check-cast p0, Lyh/i;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lyh/i;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lyh/i;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 3

    new-instance v0, Loh/h;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Lyh/i;->b:Loh/x;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lyh/i;->c:[B

    if-eqz v1, :cond_0

    new-instance v1, Loh/C0;

    iget-object v2, p0, Lyh/i;->c:[B

    invoke-direct {v1, v2}, Loh/C0;-><init>([B)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_0
    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()Loh/x;
    .locals 1

    iget-object v0, p0, Lyh/i;->b:Loh/x;

    return-object v0
.end method

.method public x()[B
    .locals 1

    iget-object v0, p0, Lyh/i;->c:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method
