.class public Lhi/t;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public final b:[Lhi/W;


# direct methods
.method public constructor <init>(Lhi/W;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    filled-new-array {p1}, [Lhi/W;

    move-result-object p1

    iput-object p1, p0, Lhi/t;->b:[Lhi/W;

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    new-array v0, v0, [Lhi/W;

    iput-object v0, p0, Lhi/t;->b:[Lhi/W;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Loh/E;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lhi/t;->b:[Lhi/W;

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v2

    invoke-static {v2}, Lhi/W;->u(Ljava/lang/Object;)Lhi/W;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>([Lhi/W;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-static {p1}, Lhi/t;->u([Lhi/W;)[Lhi/W;

    move-result-object p1

    iput-object p1, p0, Lhi/t;->b:[Lhi/W;

    return-void
.end method

.method private static u([Lhi/W;)[Lhi/W;
    .locals 3

    array-length v0, p0

    new-array v0, v0, [Lhi/W;

    const/4 v1, 0x0

    array-length v2, p0

    invoke-static {p0, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static v(Lhi/C;)Lhi/t;
    .locals 1

    sget-object v0, Lhi/B;->u:Loh/x;

    invoke-static {p0, v0}, Lhi/C;->A(Lhi/C;Loh/x;)Loh/g;

    move-result-object p0

    invoke-static {p0}, Lhi/t;->w(Ljava/lang/Object;)Lhi/t;

    move-result-object p0

    return-object p0
.end method

.method public static w(Ljava/lang/Object;)Lhi/t;
    .locals 1

    instance-of v0, p0, Lhi/t;

    if-eqz v0, :cond_0

    check-cast p0, Lhi/t;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lhi/t;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lhi/t;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static x(Loh/M;Z)Lhi/t;
    .locals 0

    invoke-static {p0, p1}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object p0

    invoke-static {p0}, Lhi/t;->w(Ljava/lang/Object;)Lhi/t;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 2

    new-instance v0, Loh/G0;

    iget-object v1, p0, Lhi/t;->b:[Lhi/W;

    invoke-direct {v0, v1}, Loh/G0;-><init>([Loh/g;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lhi/t;->b:[Lhi/W;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    iget-object v2, p0, Lhi/t;->b:[Lhi/W;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CertificatePolicies: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public y(Loh/x;)Lhi/W;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lhi/t;->b:[Lhi/W;

    array-length v2, v1

    if-eq v0, v2, :cond_1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lhi/W;->v()Loh/x;

    move-result-object v1

    invoke-virtual {p1, v1}, Loh/B;->A(Loh/B;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lhi/t;->b:[Lhi/W;

    aget-object p1, p1, v0

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public z()[Lhi/W;
    .locals 1

    iget-object v0, p0, Lhi/t;->b:[Lhi/W;

    invoke-static {v0}, Lhi/t;->u([Lhi/W;)[Lhi/W;

    move-result-object v0

    return-object v0
.end method
