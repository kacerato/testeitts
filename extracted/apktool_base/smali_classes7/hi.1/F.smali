.class public Lhi/F;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public final b:[Lhi/E;


# direct methods
.method public constructor <init>(Lhi/E;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    filled-new-array {p1}, [Lhi/E;

    move-result-object p1

    iput-object p1, p0, Lhi/F;->b:[Lhi/E;

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    new-array v0, v0, [Lhi/E;

    iput-object v0, p0, Lhi/F;->b:[Lhi/E;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Loh/E;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lhi/F;->b:[Lhi/E;

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v2

    invoke-static {v2}, Lhi/E;->v(Ljava/lang/Object;)Lhi/E;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>([Lhi/E;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-static {p1}, Lhi/F;->u([Lhi/E;)[Lhi/E;

    move-result-object p1

    iput-object p1, p0, Lhi/F;->b:[Lhi/E;

    return-void
.end method

.method public static u([Lhi/E;)[Lhi/E;
    .locals 3

    array-length v0, p0

    new-array v0, v0, [Lhi/E;

    const/4 v1, 0x0

    array-length v2, p0

    invoke-static {p0, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static v(Lhi/C;Loh/x;)Lhi/F;
    .locals 0

    invoke-static {p0, p1}, Lhi/C;->A(Lhi/C;Loh/x;)Loh/g;

    move-result-object p0

    invoke-static {p0}, Lhi/F;->w(Ljava/lang/Object;)Lhi/F;

    move-result-object p0

    return-object p0
.end method

.method public static w(Ljava/lang/Object;)Lhi/F;
    .locals 1

    instance-of v0, p0, Lhi/F;

    if-eqz v0, :cond_0

    check-cast p0, Lhi/F;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lhi/F;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lhi/F;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static x(Loh/M;Z)Lhi/F;
    .locals 1

    new-instance v0, Lhi/F;

    invoke-static {p0, p1}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lhi/F;-><init>(Loh/E;)V

    return-object v0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 2

    new-instance v0, Loh/G0;

    iget-object v1, p0, Lhi/F;->b:[Lhi/E;

    invoke-direct {v0, v1}, Loh/G0;-><init>([Loh/g;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Lorg/bouncycastle/util/w;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GeneralNames:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lhi/F;->b:[Lhi/E;

    array-length v3, v3

    if-eq v2, v3, :cond_0

    const-string v3, "    "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lhi/F;->b:[Lhi/E;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public y()[Lhi/E;
    .locals 1

    iget-object v0, p0, Lhi/F;->b:[Lhi/E;

    invoke-static {v0}, Lhi/F;->u([Lhi/E;)[Lhi/E;

    move-result-object v0

    return-object v0
.end method
