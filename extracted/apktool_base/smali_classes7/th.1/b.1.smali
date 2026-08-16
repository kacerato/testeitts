.class public Lth/b;
.super Loh/v;
.source "SourceFile"

# interfaces
.implements Loh/f;


# instance fields
.field public b:Lhi/q;

.field public c:I

.field public d:Loh/v;


# direct methods
.method public constructor <init>(ILoh/v;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput p1, p0, Lth/b;->c:I

    iput-object p2, p0, Lth/b;->d:Loh/v;

    return-void
.end method

.method public constructor <init>(Lhi/h;)V
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0, p1}, Lth/b;-><init>(ILoh/v;)V

    return-void
.end method

.method public constructor <init>(Lhi/q;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Lhi/q;->G()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lth/b;->b:Lhi/q;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "only version 3 certificates allowed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static u(Ljava/lang/Object;)Lth/b;
    .locals 3

    if-eqz p0, :cond_4

    instance-of v0, p0, Lth/b;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p0, [B

    if-eqz v0, :cond_1

    :try_start_0
    check-cast p0, [B

    invoke-static {p0}, Loh/B;->B([B)Loh/B;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid encoding in CMPCertificate"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    instance-of v0, p0, Loh/E;

    if-eqz v0, :cond_2

    new-instance v0, Lth/b;

    invoke-static {p0}, Lhi/q;->v(Ljava/lang/Object;)Lhi/q;

    move-result-object p0

    invoke-direct {v0, p0}, Lth/b;-><init>(Lhi/q;)V

    return-object v0

    :cond_2
    instance-of v0, p0, Loh/M;

    if-eqz v0, :cond_3

    const/16 v0, 0x80

    invoke-static {p0, v0}, Loh/M;->S(Ljava/lang/Object;I)Loh/M;

    move-result-object p0

    new-instance v0, Lth/b;

    invoke-virtual {p0}, Loh/M;->g()I

    move-result v1

    invoke-virtual {p0}, Loh/M;->L()Loh/v;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lth/b;-><init>(ILoh/v;)V

    return-object v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid object: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_1
    check-cast p0, Lth/b;

    return-object p0
.end method

.method public static v(Loh/M;Z)Lth/b;
    .locals 0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Loh/M;->O()Loh/v;

    move-result-object p0

    invoke-static {p0}, Lth/b;->u(Ljava/lang/Object;)Lth/b;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "tag must be explicit"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public A()Lhi/q;
    .locals 1

    iget-object v0, p0, Lth/b;->b:Lhi/q;

    return-object v0
.end method

.method public B()Z
    .locals 1

    iget-object v0, p0, Lth/b;->b:Lhi/q;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public r()Loh/B;
    .locals 4

    iget-object v0, p0, Lth/b;->d:Loh/v;

    if-eqz v0, :cond_0

    new-instance v1, Loh/K0;

    const/4 v2, 0x1

    iget v3, p0, Lth/b;->c:I

    invoke-direct {v1, v2, v3, v0}, Loh/K0;-><init>(ZILoh/g;)V

    return-object v1

    :cond_0
    iget-object v0, p0, Lth/b;->b:Lhi/q;

    invoke-virtual {v0}, Lhi/q;->r()Loh/B;

    move-result-object v0

    return-object v0
.end method

.method public x()Loh/v;
    .locals 1

    iget-object v0, p0, Lth/b;->d:Loh/v;

    return-object v0
.end method

.method public y()I
    .locals 1

    iget v0, p0, Lth/b;->c:I

    return v0
.end method

.method public z()Lhi/h;
    .locals 1

    iget-object v0, p0, Lth/b;->d:Loh/v;

    invoke-static {v0}, Lhi/h;->v(Ljava/lang/Object;)Lhi/h;

    move-result-object v0

    return-object v0
.end method
