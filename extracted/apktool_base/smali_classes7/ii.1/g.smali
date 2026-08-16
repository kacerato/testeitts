.class public Lii/g;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Loh/x;

.field public c:[Lhi/E;


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 3

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->J()Ljava/util/Enumeration;

    move-result-object v0

    invoke-virtual {p1}, Loh/E;->size()I

    move-result p1

    const/4 v1, 0x1

    if-lt p1, v1, :cond_3

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Loh/x;

    if-eqz v1, :cond_1

    invoke-static {p1}, Loh/x;->K(Ljava/lang/Object;)Loh/x;

    move-result-object p1

    iput-object p1, p0, Lii/g;->b:Loh/x;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    invoke-static {p1}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p1

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    new-array v0, v0, [Lhi/E;

    iput-object v0, p0, Lii/g;->c:[Lhi/E;

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Loh/E;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lii/g;->c:[Lhi/E;

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v2

    invoke-static {v2}, Lhi/E;->v(Ljava/lang/Object;)Lhi/E;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "no objects in SemanticsInformation"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Loh/x;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lii/g;->b:Loh/x;

    const/4 p1, 0x0

    iput-object p1, p0, Lii/g;->c:[Lhi/E;

    return-void
.end method

.method public constructor <init>(Loh/x;[Lhi/E;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lii/g;->b:Loh/x;

    invoke-static {p2}, Lii/g;->u([Lhi/E;)[Lhi/E;

    move-result-object p1

    iput-object p1, p0, Lii/g;->c:[Lhi/E;

    return-void
.end method

.method public constructor <init>([Lhi/E;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lii/g;->b:Loh/x;

    invoke-static {p1}, Lii/g;->u([Lhi/E;)[Lhi/E;

    move-result-object p1

    iput-object p1, p0, Lii/g;->c:[Lhi/E;

    return-void
.end method

.method public static u([Lhi/E;)[Lhi/E;
    .locals 3

    if-eqz p0, :cond_0

    array-length v0, p0

    new-array v0, v0, [Lhi/E;

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static v(Ljava/lang/Object;)Lii/g;
    .locals 1

    instance-of v0, p0, Lii/g;

    if-eqz v0, :cond_0

    check-cast p0, Lii/g;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lii/g;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lii/g;-><init>(Loh/E;)V

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

    iget-object v1, p0, Lii/g;->b:Loh/x;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_0
    iget-object v1, p0, Lii/g;->c:[Lhi/E;

    if-eqz v1, :cond_1

    new-instance v1, Loh/G0;

    iget-object v2, p0, Lii/g;->c:[Lhi/E;

    invoke-direct {v1, v2}, Loh/G0;-><init>([Loh/g;)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_1
    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public x()[Lhi/E;
    .locals 1

    iget-object v0, p0, Lii/g;->c:[Lhi/E;

    invoke-static {v0}, Lii/g;->u([Lhi/E;)[Lhi/E;

    move-result-object v0

    return-object v0
.end method

.method public y()Loh/x;
    .locals 1

    iget-object v0, p0, Lii/g;->b:Loh/x;

    return-object v0
.end method
