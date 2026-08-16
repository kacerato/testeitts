.class public Lhi/h0;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Lhi/b;

.field public c:Loh/c;


# direct methods
.method public constructor <init>(Lhi/b;Loh/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p2, p0, Lhi/h0;->c:Loh/c;

    iput-object p1, p0, Lhi/h0;->b:Lhi/b;

    return-void
.end method

.method public constructor <init>(Lhi/b;Loh/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v0, Loh/r0;

    invoke-direct {v0, p2}, Loh/r0;-><init>(Loh/g;)V

    iput-object v0, p0, Lhi/h0;->c:Loh/c;

    iput-object p1, p0, Lhi/h0;->b:Lhi/b;

    return-void
.end method

.method public constructor <init>(Lhi/b;[B)V
    .locals 1

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v0, Loh/r0;

    invoke-direct {v0, p2}, Loh/r0;-><init>([B)V

    iput-object v0, p0, Lhi/h0;->c:Loh/c;

    iput-object p1, p0, Lhi/h0;->b:Lhi/b;

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 3

    .line 4
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Loh/E;->J()Ljava/util/Enumeration;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lhi/b;->v(Ljava/lang/Object;)Lhi/b;

    move-result-object v0

    iput-object v0, p0, Lhi/h0;->b:Lhi/b;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Loh/c;->H(Ljava/lang/Object;)Loh/c;

    move-result-object p1

    iput-object p1, p0, Lhi/h0;->c:Loh/c;

    return-void

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

.method public static w(Ljava/lang/Object;)Lhi/h0;
    .locals 1

    instance-of v0, p0, Lhi/h0;

    if-eqz v0, :cond_0

    check-cast p0, Lhi/h0;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lhi/h0;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lhi/h0;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static x(Loh/M;Z)Lhi/h0;
    .locals 0

    invoke-static {p0, p1}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object p0

    invoke-static {p0}, Lhi/h0;->w(Ljava/lang/Object;)Lhi/h0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public A()Loh/B;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lhi/h0;->c:Loh/c;

    invoke-virtual {v0}, Loh/c;->J()[B

    move-result-object v0

    invoke-static {v0}, Loh/B;->B([B)Loh/B;

    move-result-object v0

    return-object v0
.end method

.method public r()Loh/B;
    .locals 2

    new-instance v0, Loh/h;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Lhi/h0;->b:Lhi/b;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lhi/h0;->c:Loh/c;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()Lhi/b;
    .locals 1

    iget-object v0, p0, Lhi/h0;->b:Lhi/b;

    return-object v0
.end method

.method public v()Lhi/b;
    .locals 1

    iget-object v0, p0, Lhi/h0;->b:Lhi/b;

    return-object v0
.end method

.method public y()Loh/B;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lhi/h0;->c:Loh/c;

    invoke-virtual {v0}, Loh/c;->J()[B

    move-result-object v0

    invoke-static {v0}, Loh/B;->B([B)Loh/B;

    move-result-object v0

    return-object v0
.end method

.method public z()Loh/c;
    .locals 1

    iget-object v0, p0, Lhi/h0;->c:Loh/c;

    return-object v0
.end method
