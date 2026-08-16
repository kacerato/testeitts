.class public LCh/x;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lhi/h;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, LCh/x;->b:[Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 7

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, LCh/x;->b:[Ljava/lang/Object;

    invoke-virtual {p1}, Loh/E;->J()Ljava/util/Enumeration;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Loh/M;->R(Ljava/lang/Object;)Loh/M;

    move-result-object v2

    invoke-virtual {v2}, Loh/M;->g()I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    invoke-static {v2, v4}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object v2

    invoke-virtual {v2}, Loh/E;->size()I

    move-result v3

    new-array v4, v3, [Lhi/g;

    move v5, v0

    :goto_1
    if-eq v5, v3, :cond_0

    invoke-virtual {v2, v5}, Loh/E;->I(I)Loh/g;

    move-result-object v6

    invoke-static {v6}, Lhi/g;->y(Ljava/lang/Object;)Lhi/g;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    iget-object v2, p0, LCh/x;->b:[Ljava/lang/Object;

    aput-object v4, v2, v1

    goto :goto_2

    :cond_1
    invoke-virtual {v2}, Loh/M;->g()I

    move-result v3

    if-ne v3, v4, :cond_2

    iget-object v3, p0, LCh/x;->b:[Ljava/lang/Object;

    invoke-static {v2, v4}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object v2

    invoke-static {v2}, Lhi/h;->v(Ljava/lang/Object;)Lhi/h;

    move-result-object v2

    aput-object v2, v3, v1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "illegal tag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Loh/M;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    return-void
.end method

.method public constructor <init>([Lhi/g;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, LCh/x;->b:[Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    return-void
.end method

.method public static u(Ljava/lang/Object;)LCh/x;
    .locals 1

    instance-of v0, p0, LCh/x;

    if-eqz v0, :cond_0

    check-cast p0, LCh/x;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LCh/x;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, LCh/x;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 6

    new-instance v0, Loh/h;

    iget-object v1, p0, LCh/x;->b:[Ljava/lang/Object;

    array-length v1, v1

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, LCh/x;->b:[Ljava/lang/Object;

    array-length v4, v3

    if-eq v2, v4, :cond_1

    aget-object v3, v3, v2

    instance-of v4, v3, [Lhi/g;

    if-eqz v4, :cond_0

    new-instance v3, Loh/K0;

    new-instance v4, Loh/G0;

    iget-object v5, p0, LCh/x;->b:[Ljava/lang/Object;

    aget-object v5, v5, v2

    check-cast v5, [Lhi/g;

    invoke-direct {v4, v5}, Loh/G0;-><init>([Loh/g;)V

    invoke-direct {v3, v1, v4}, Loh/K0;-><init>(ILoh/g;)V

    invoke-virtual {v0, v3}, Loh/h;->a(Loh/g;)V

    goto :goto_1

    :cond_0
    new-instance v4, Loh/K0;

    check-cast v3, Lhi/h;

    const/4 v5, 0x1

    invoke-direct {v4, v5, v3}, Loh/K0;-><init>(ILoh/g;)V

    invoke-virtual {v0, v4}, Loh/h;->a(Loh/g;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public v()[Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, LCh/x;->b:[Ljava/lang/Object;

    array-length v1, v0

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
