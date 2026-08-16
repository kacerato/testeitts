.class public Lth/i;
.super Loh/v;
.source "SourceFile"

# interfaces
.implements Loh/f;


# instance fields
.field public b:Lth/b;

.field public c:Lwh/l;


# direct methods
.method public constructor <init>(Loh/M;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/M;->p(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Loh/M;->O()Loh/v;

    move-result-object p1

    invoke-static {p1}, Lth/b;->u(Ljava/lang/Object;)Lth/b;

    move-result-object p1

    iput-object p1, p0, Lth/i;->b:Lth/b;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Loh/M;->p(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Loh/M;->O()Loh/v;

    move-result-object p1

    invoke-static {p1}, Lwh/l;->u(Ljava/lang/Object;)Lwh/l;

    move-result-object p1

    iput-object p1, p0, Lth/i;->c:Lwh/l;

    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Loh/V;->y(Loh/M;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lth/b;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lth/i;->b:Lth/b;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'certificate\' cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lwh/l;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lth/i;->c:Lwh/l;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'encryptedCert\' cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lwh/m;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Loh/v;-><init>()V

    if-eqz p1, :cond_0

    new-instance v0, Lwh/l;

    invoke-direct {v0, p1}, Lwh/l;-><init>(Lwh/m;)V

    iput-object v0, p0, Lth/i;->c:Lwh/l;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'encryptedCert\' cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static w(Ljava/lang/Object;)Lth/i;
    .locals 2

    instance-of v0, p0, Lth/i;

    if-eqz v0, :cond_0

    check-cast p0, Lth/i;

    return-object p0

    :cond_0
    instance-of v0, p0, Loh/M;

    if-eqz v0, :cond_1

    new-instance v0, Lth/i;

    const/16 v1, 0x80

    invoke-static {p0, v1}, Loh/M;->S(Ljava/lang/Object;I)Loh/M;

    move-result-object p0

    invoke-direct {v0, p0}, Lth/i;-><init>(Loh/M;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 4

    iget-object v0, p0, Lth/i;->b:Lth/b;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    new-instance v2, Loh/K0;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3, v0}, Loh/K0;-><init>(ZILoh/g;)V

    return-object v2

    :cond_0
    new-instance v0, Loh/K0;

    iget-object v2, p0, Lth/i;->c:Lwh/l;

    invoke-direct {v0, v1, v1, v2}, Loh/K0;-><init>(ZILoh/g;)V

    return-object v0
.end method

.method public u()Lth/b;
    .locals 1

    iget-object v0, p0, Lth/i;->b:Lth/b;

    return-object v0
.end method

.method public v()Lwh/l;
    .locals 1

    iget-object v0, p0, Lth/i;->c:Lwh/l;

    return-object v0
.end method

.method public x()Z
    .locals 1

    iget-object v0, p0, Lth/i;->c:Lwh/l;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
