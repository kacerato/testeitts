.class public Lhi/j;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:[Lhi/a;


# direct methods
.method public constructor <init>(Lhi/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    filled-new-array {p1}, [Lhi/a;

    move-result-object p1

    iput-object p1, p0, Lhi/j;->b:[Lhi/a;

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 3

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    new-array v0, v0, [Lhi/a;

    iput-object v0, p0, Lhi/j;->b:[Lhi/a;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Loh/E;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lhi/j;->b:[Lhi/a;

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v2

    invoke-static {v2}, Lhi/a;->w(Ljava/lang/Object;)Lhi/a;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "sequence may not be empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Loh/x;Lhi/E;)V
    .locals 1

    .line 2
    new-instance v0, Lhi/a;

    invoke-direct {v0, p1, p2}, Lhi/a;-><init>(Loh/x;Lhi/E;)V

    invoke-direct {p0, v0}, Lhi/j;-><init>(Lhi/a;)V

    return-void
.end method

.method public constructor <init>([Lhi/a;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-static {p1}, Lhi/j;->u([Lhi/a;)[Lhi/a;

    move-result-object p1

    iput-object p1, p0, Lhi/j;->b:[Lhi/a;

    return-void
.end method

.method public static u([Lhi/a;)[Lhi/a;
    .locals 3

    array-length v0, p0

    new-array v0, v0, [Lhi/a;

    const/4 v1, 0x0

    array-length v2, p0

    invoke-static {p0, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static v(Lhi/C;)Lhi/j;
    .locals 1

    sget-object v0, Lhi/B;->B:Loh/x;

    invoke-static {p0, v0}, Lhi/C;->A(Lhi/C;Loh/x;)Loh/g;

    move-result-object p0

    invoke-static {p0}, Lhi/j;->y(Ljava/lang/Object;)Lhi/j;

    move-result-object p0

    return-object p0
.end method

.method public static y(Ljava/lang/Object;)Lhi/j;
    .locals 1

    instance-of v0, p0, Lhi/j;

    if-eqz v0, :cond_0

    check-cast p0, Lhi/j;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lhi/j;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lhi/j;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 2

    new-instance v0, Loh/G0;

    iget-object v1, p0, Lhi/j;->b:[Lhi/a;

    invoke-direct {v0, v1}, Loh/G0;-><init>([Loh/g;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AuthorityInformationAccess: Oid("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lhi/j;->b:[Lhi/a;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lhi/a;->v()Loh/x;

    move-result-object v1

    invoke-virtual {v1}, Loh/x;->J()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public x()[Lhi/a;
    .locals 1

    iget-object v0, p0, Lhi/j;->b:[Lhi/a;

    invoke-static {v0}, Lhi/j;->u([Lhi/a;)[Lhi/a;

    move-result-object v0

    return-object v0
.end method
