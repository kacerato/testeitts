.class public Luh/b0;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:[Luh/a0;


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    new-array v0, v0, [Luh/a0;

    iput-object v0, p0, Luh/b0;->b:[Luh/a0;

    invoke-virtual {p1}, Loh/E;->J()Ljava/util/Enumeration;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Luh/b0;->b:[Luh/a0;

    add-int/lit8 v2, v0, 0x1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Luh/a0;->w(Ljava/lang/Object;)Luh/a0;

    move-result-object v3

    aput-object v3, v1, v0

    move v0, v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Luh/a0;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Luh/a0;

    iput-object v0, p0, Luh/b0;->b:[Luh/a0;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    return-void
.end method

.method public constructor <init>([Luh/a0;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p0, p1}, Luh/b0;->u([Luh/a0;)[Luh/a0;

    move-result-object p1

    iput-object p1, p0, Luh/b0;->b:[Luh/a0;

    return-void
.end method

.method public static v(Ljava/lang/Object;)Luh/b0;
    .locals 1

    instance-of v0, p0, Luh/b0;

    if-eqz v0, :cond_0

    check-cast p0, Luh/b0;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Luh/b0;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Luh/b0;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static w(Loh/M;Z)Luh/b0;
    .locals 0

    invoke-static {p0, p1}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object p0

    invoke-static {p0}, Luh/b0;->v(Ljava/lang/Object;)Luh/b0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 4

    new-instance v0, Loh/h;

    iget-object v1, p0, Luh/b0;->b:[Luh/a0;

    array-length v1, v1

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Luh/b0;->b:[Luh/a0;

    array-length v3, v2

    if-eq v1, v3, :cond_0

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Loh/h;->a(Loh/g;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public final u([Luh/a0;)[Luh/a0;
    .locals 3

    array-length v0, p1

    new-array v1, v0, [Luh/a0;

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public x()[Luh/a0;
    .locals 1

    iget-object v0, p0, Luh/b0;->b:[Luh/a0;

    invoke-virtual {p0, v0}, Luh/b0;->u([Luh/a0;)[Luh/a0;

    move-result-object v0

    return-object v0
.end method
