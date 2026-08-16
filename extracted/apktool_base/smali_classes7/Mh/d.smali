.class public LMh/d;
.super Loh/v;
.source "SourceFile"

# interfaces
.implements Loh/f;


# static fields
.field public static final c:I = 0x0

.field public static final d:I = 0x1

.field public static final e:I = 0x2


# instance fields
.field public b:Loh/M;


# direct methods
.method public constructor <init>(I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v0, Loh/K0;

    new-instance v1, Loh/s;

    int-to-long v2, p1

    invoke-direct {v1, v2, v3}, Loh/s;-><init>(J)V

    const/4 p1, 0x0

    invoke-direct {v0, p1, p1, v1}, Loh/K0;-><init>(ZILoh/g;)V

    iput-object v0, p0, LMh/d;->b:Loh/M;

    return-void
.end method

.method public constructor <init>(Loh/M;)V
    .locals 3

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/M;->g()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    iput-object p1, p0, LMh/d;->b:Loh/M;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad tag number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Loh/M;->g()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Loh/n;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v0, Loh/K0;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, p1}, Loh/K0;-><init>(ZILoh/g;)V

    iput-object v0, p0, LMh/d;->b:Loh/M;

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 4

    .line 4
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_1

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    new-instance p1, Loh/K0;

    new-instance v1, Loh/G0;

    new-instance v3, Loh/F0;

    invoke-direct {v3, p2, v2}, Loh/F0;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v1, v3}, Loh/G0;-><init>(Loh/g;)V

    invoke-direct {p1, v0, v2, v1}, Loh/K0;-><init>(ZILoh/g;)V

    iput-object p1, p0, LMh/d;->b:Loh/M;

    goto :goto_0

    :cond_0
    new-instance p1, Loh/h;

    invoke-direct {p1, v1}, Loh/h;-><init>(I)V

    sget-object v1, Loh/e;->f:Loh/e;

    invoke-virtual {p1, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/F0;

    invoke-direct {v1, p2, v2}, Loh/F0;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p1, v1}, Loh/h;->a(Loh/g;)V

    new-instance p2, Loh/K0;

    new-instance v1, Loh/G0;

    invoke-direct {v1, p1}, Loh/G0;-><init>(Loh/h;)V

    invoke-direct {p2, v0, v2, v1}, Loh/K0;-><init>(ZILoh/g;)V

    iput-object p2, p0, LMh/d;->b:Loh/M;

    :goto_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "country can only be 2 characters"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static w(Ljava/lang/Object;)LMh/d;
    .locals 3

    if-eqz p0, :cond_2

    instance-of v0, p0, LMh/d;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Loh/M;

    if-eqz v0, :cond_1

    new-instance v0, LMh/d;

    const/16 v1, 0x80

    invoke-static {p0, v1}, Loh/M;->S(Ljava/lang/Object;I)Loh/M;

    move-result-object p0

    invoke-direct {v0, p0}, LMh/d;-><init>(Loh/M;)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal object in getInstance: "

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

    :cond_2
    :goto_0
    check-cast p0, LMh/d;

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 1

    iget-object v0, p0, LMh/d;->b:Loh/M;

    return-object v0
.end method

.method public u()Loh/E;
    .locals 2

    iget-object v0, p0, LMh/d;->b:Loh/M;

    invoke-virtual {v0}, Loh/M;->g()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, LMh/d;->b:Loh/M;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object v0

    return-object v0
.end method

.method public v()Loh/n;
    .locals 2

    iget-object v0, p0, LMh/d;->b:Loh/M;

    invoke-virtual {v0}, Loh/M;->g()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, LMh/d;->b:Loh/M;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Loh/n;->K(Loh/M;Z)Loh/n;

    move-result-object v0

    return-object v0
.end method

.method public x()I
    .locals 1

    iget-object v0, p0, LMh/d;->b:Loh/M;

    invoke-virtual {v0}, Loh/M;->g()I

    move-result v0

    return v0
.end method

.method public y()I
    .locals 2

    iget-object v0, p0, LMh/d;->b:Loh/M;

    invoke-virtual {v0}, Loh/M;->g()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, p0, LMh/d;->b:Loh/M;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Loh/s;->G(Loh/M;Z)Loh/s;

    move-result-object v0

    invoke-virtual {v0}, Loh/s;->O()I

    move-result v0

    return v0
.end method
