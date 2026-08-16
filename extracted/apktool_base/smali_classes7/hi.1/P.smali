.class public Lhi/P;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:[Lhi/H;

.field public c:[Lhi/H;


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->J()Ljava/util/Enumeration;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Loh/M;->R(Ljava/lang/Object;)Loh/M;

    move-result-object v0

    invoke-virtual {v0}, Loh/M;->g()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    invoke-static {v0, v2}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object v0

    invoke-virtual {p0, v0}, Lhi/P;->v(Loh/E;)[Lhi/H;

    move-result-object v0

    iput-object v0, p0, Lhi/P;->c:[Lhi/H;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown tag encountered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Loh/M;->g()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {v0, v2}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object v0

    invoke-virtual {p0, v0}, Lhi/P;->v(Loh/E;)[Lhi/H;

    move-result-object v0

    iput-object v0, p0, Lhi/P;->b:[Lhi/H;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public constructor <init>([Lhi/H;[Lhi/H;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-static {p1}, Lhi/P;->u([Lhi/H;)[Lhi/H;

    move-result-object p1

    iput-object p1, p0, Lhi/P;->b:[Lhi/H;

    invoke-static {p2}, Lhi/P;->u([Lhi/H;)[Lhi/H;

    move-result-object p1

    iput-object p1, p0, Lhi/P;->c:[Lhi/H;

    return-void
.end method

.method public static u([Lhi/H;)[Lhi/H;
    .locals 3

    if-eqz p0, :cond_0

    array-length v0, p0

    new-array v1, v0, [Lhi/H;

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static y(Ljava/lang/Object;)Lhi/P;
    .locals 1

    instance-of v0, p0, Lhi/P;

    if-eqz v0, :cond_0

    check-cast p0, Lhi/P;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lhi/P;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lhi/P;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 5

    new-instance v0, Loh/h;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Lhi/P;->b:[Lhi/H;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v1, Loh/K0;

    new-instance v3, Loh/G0;

    iget-object v4, p0, Lhi/P;->b:[Lhi/H;

    invoke-direct {v3, v4}, Loh/G0;-><init>([Loh/g;)V

    invoke-direct {v1, v2, v2, v3}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_0
    iget-object v1, p0, Lhi/P;->c:[Lhi/H;

    if-eqz v1, :cond_1

    new-instance v1, Loh/K0;

    new-instance v3, Loh/G0;

    iget-object v4, p0, Lhi/P;->c:[Lhi/H;

    invoke-direct {v3, v4}, Loh/G0;-><init>([Loh/g;)V

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v3}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_1
    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public final v(Loh/E;)[Lhi/H;
    .locals 4

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    new-array v1, v0, [Lhi/H;

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v0, :cond_0

    invoke-virtual {p1, v2}, Loh/E;->I(I)Loh/g;

    move-result-object v3

    invoke-static {v3}, Lhi/H;->v(Ljava/lang/Object;)Lhi/H;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public x()[Lhi/H;
    .locals 1

    iget-object v0, p0, Lhi/P;->c:[Lhi/H;

    invoke-static {v0}, Lhi/P;->u([Lhi/H;)[Lhi/H;

    move-result-object v0

    return-object v0
.end method

.method public z()[Lhi/H;
    .locals 1

    iget-object v0, p0, Lhi/P;->b:[Lhi/H;

    invoke-static {v0}, Lhi/P;->u([Lhi/H;)[Lhi/H;

    move-result-object v0

    return-object v0
.end method
