.class public Lfi/d;
.super Loh/v;
.source "SourceFile"

# interfaces
.implements Loh/f;


# static fields
.field public static g:Lfi/f;


# instance fields
.field public b:Z

.field public c:I

.field public d:Lfi/f;

.field public e:[Lfi/c;

.field public f:Loh/G0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lgi/c;->T:Lfi/f;

    sput-object v0, Lfi/d;->g:Lfi/f;

    return-void
.end method

.method public constructor <init>(Lfi/f;Lfi/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lfi/d;->d:Lfi/f;

    iget-object p1, p2, Lfi/d;->e:[Lfi/c;

    iput-object p1, p0, Lfi/d;->e:[Lfi/c;

    iget-object p1, p2, Lfi/d;->f:Loh/G0;

    iput-object p1, p0, Lfi/d;->f:Loh/G0;

    return-void
.end method

.method public constructor <init>(Lfi/f;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-interface {p1, p2}, Lfi/f;->fromString(Ljava/lang/String;)[Lfi/c;

    move-result-object p2

    invoke-direct {p0, p2}, Lfi/d;-><init>([Lfi/c;)V

    iput-object p1, p0, Lfi/d;->d:Lfi/f;

    return-void
.end method

.method public constructor <init>(Lfi/f;Loh/E;)V
    .locals 6

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p2}, Loh/E;->size()I

    move-result v0

    iput-object p1, p0, Lfi/d;->d:Lfi/f;

    new-array p1, v0, [Lfi/c;

    iput-object p1, p0, Lfi/d;->e:[Lfi/c;

    const/4 p1, 0x1

    const/4 v1, 0x0

    move v3, p1

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p2, v2}, Loh/E;->I(I)Loh/g;

    move-result-object v4

    invoke-static {v4}, Lfi/c;->y(Ljava/lang/Object;)Lfi/c;

    move-result-object v5

    if-ne v5, v4, :cond_0

    move v4, p1

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    and-int/2addr v3, v4

    iget-object v4, p0, Lfi/d;->e:[Lfi/c;

    aput-object v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    invoke-static {p2}, Loh/G0;->S(Loh/E;)Loh/G0;

    move-result-object p1

    :goto_2
    iput-object p1, p0, Lfi/d;->f:Loh/G0;

    goto :goto_3

    :cond_2
    new-instance p1, Loh/G0;

    iget-object p2, p0, Lfi/d;->e:[Lfi/c;

    invoke-direct {p1, p2}, Loh/G0;-><init>([Loh/g;)V

    goto :goto_2

    :goto_3
    return-void
.end method

.method public constructor <init>(Lfi/f;[Lfi/c;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lfi/d;->d:Lfi/f;

    invoke-virtual {p2}, [Lfi/c;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lfi/c;

    iput-object p1, p0, Lfi/d;->e:[Lfi/c;

    new-instance p1, Loh/G0;

    iget-object p2, p0, Lfi/d;->e:[Lfi/c;

    invoke-direct {p1, p2}, Loh/G0;-><init>([Loh/g;)V

    iput-object p1, p0, Lfi/d;->f:Loh/G0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 5
    sget-object v0, Lfi/d;->g:Lfi/f;

    invoke-direct {p0, v0, p1}, Lfi/d;-><init>(Lfi/f;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 1

    .line 6
    sget-object v0, Lfi/d;->g:Lfi/f;

    invoke-direct {p0, v0, p1}, Lfi/d;-><init>(Lfi/f;Loh/E;)V

    return-void
.end method

.method public constructor <init>([Lfi/c;)V
    .locals 1

    .line 7
    sget-object v0, Lfi/d;->g:Lfi/f;

    invoke-direct {p0, v0, p1}, Lfi/d;-><init>(Lfi/f;[Lfi/c;)V

    return-void
.end method

.method public static B(Lfi/f;)V
    .locals 1

    if-eqz p0, :cond_0

    sput-object p0, Lfi/d;->g:Lfi/f;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "cannot set style to null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static v()Lfi/f;
    .locals 1

    sget-object v0, Lfi/d;->g:Lfi/f;

    return-object v0
.end method

.method public static w(Lfi/f;Ljava/lang/Object;)Lfi/d;
    .locals 1

    instance-of v0, p1, Lfi/d;

    if-eqz v0, :cond_0

    new-instance v0, Lfi/d;

    check-cast p1, Lfi/d;

    invoke-direct {v0, p0, p1}, Lfi/d;-><init>(Lfi/f;Lfi/d;)V

    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Lfi/d;

    invoke-static {p1}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lfi/d;-><init>(Lfi/f;Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static x(Ljava/lang/Object;)Lfi/d;
    .locals 1

    instance-of v0, p0, Lfi/d;

    if-eqz v0, :cond_0

    check-cast p0, Lfi/d;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lfi/d;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lfi/d;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static y(Loh/M;Z)Lfi/d;
    .locals 0

    const/4 p1, 0x1

    invoke-static {p0, p1}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object p0

    invoke-static {p0}, Lfi/d;->x(Ljava/lang/Object;)Lfi/d;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public A(Loh/x;)[Lfi/c;
    .locals 7

    iget-object v0, p0, Lfi/d;->e:[Lfi/c;

    array-length v0, v0

    new-array v1, v0, [Lfi/c;

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    iget-object v5, p0, Lfi/d;->e:[Lfi/c;

    array-length v6, v5

    if-eq v3, v6, :cond_1

    aget-object v5, v5, v3

    invoke-virtual {v5, p1}, Lfi/c;->v(Loh/x;)Z

    move-result v6

    if-eqz v6, :cond_0

    add-int/lit8 v6, v4, 0x1

    aput-object v5, v1, v4

    move v4, v6

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-ge v4, v0, :cond_2

    new-array p1, v4, [Lfi/c;

    invoke-static {v1, v2, p1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, p1

    :cond_2
    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lfi/d;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    instance-of v1, p1, Loh/E;

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Loh/g;

    invoke-interface {v1}, Loh/g;->r()Loh/B;

    move-result-object v1

    invoke-virtual {p0}, Lfi/d;->r()Loh/B;

    move-result-object v3

    invoke-virtual {v3, v1}, Loh/B;->A(Loh/B;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    :cond_2
    :try_start_0
    iget-object v0, p0, Lfi/d;->d:Lfi/f;

    invoke-static {p1}, Lfi/d;->x(Ljava/lang/Object;)Lfi/d;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lfi/f;->d(Lfi/d;Lfi/d;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v2
.end method

.method public hashCode()I
    .locals 1

    iget-boolean v0, p0, Lfi/d;->b:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lfi/d;->c:I

    return v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfi/d;->b:Z

    iget-object v0, p0, Lfi/d;->d:Lfi/f;

    invoke-interface {v0, p0}, Lfi/f;->b(Lfi/d;)I

    move-result v0

    iput v0, p0, Lfi/d;->c:I

    return v0
.end method

.method public r()Loh/B;
    .locals 1

    iget-object v0, p0, Lfi/d;->f:Loh/G0;

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lfi/d;->e:[Lfi/c;

    array-length v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lfi/d;->d:Lfi/f;

    invoke-interface {v0, p0}, Lfi/f;->g(Lfi/d;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()[Loh/x;
    .locals 5

    iget-object v0, p0, Lfi/d;->e:[Lfi/c;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v4, p0, Lfi/d;->e:[Lfi/c;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lfi/c;->size()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-array v2, v3, [Loh/x;

    move v3, v1

    :goto_1
    if-ge v1, v0, :cond_1

    iget-object v4, p0, Lfi/d;->e:[Lfi/c;

    aget-object v4, v4, v1

    invoke-virtual {v4, v2, v3}, Lfi/c;->u([Loh/x;I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-object v2
.end method

.method public z()[Lfi/c;
    .locals 1

    iget-object v0, p0, Lfi/d;->e:[Lfi/c;

    invoke-virtual {v0}, [Lfi/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfi/c;

    return-object v0
.end method
