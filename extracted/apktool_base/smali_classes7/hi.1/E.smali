.class public Lhi/E;
.super Loh/v;
.source "SourceFile"

# interfaces
.implements Loh/f;


# static fields
.field public static final d:I = 0x0

.field public static final e:I = 0x1

.field public static final f:I = 0x2

.field public static final g:I = 0x3

.field public static final h:I = 0x4

.field public static final i:I = 0x5

.field public static final j:I = 0x6

.field public static final k:I = 0x7

.field public static final l:I = 0x8


# instance fields
.field public b:Loh/g;

.field public c:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput p1, p0, Lhi/E;->c:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_5

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    goto :goto_1

    :cond_0
    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    new-instance p1, Loh/x;

    invoke-direct {p1, p2}, Loh/x;-><init>(Ljava/lang/String;)V

    :goto_0
    iput-object p1, p0, Lhi/E;->b:Loh/g;

    goto :goto_2

    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    new-instance p1, Lfi/d;

    invoke-direct {p1, p2}, Lfi/d;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x7

    if-ne p1, v0, :cond_4

    invoke-virtual {p0, p2}, Lhi/E;->C(Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_3

    new-instance p2, Loh/C0;

    invoke-direct {p2, p1}, Loh/C0;-><init>([B)V

    iput-object p2, p0, Lhi/E;->b:Loh/g;

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "IP Address is invalid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "can\'t process String for tag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_5
    :goto_1
    new-instance p1, Loh/z0;

    invoke-direct {p1, p2}, Loh/z0;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :goto_2
    return-void
.end method

.method public constructor <init>(ILoh/g;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p2, p0, Lhi/E;->b:Loh/g;

    iput p1, p0, Lhi/E;->c:I

    return-void
.end method

.method public constructor <init>(Lfi/d;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lhi/E;->b:Loh/g;

    const/4 p1, 0x4

    iput p1, p0, Lhi/E;->c:I

    return-void
.end method

.method public constructor <init>(Lhi/B0;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-static {p1}, Lfi/d;->x(Ljava/lang/Object;)Lfi/d;

    move-result-object p1

    iput-object p1, p0, Lhi/E;->b:Loh/g;

    const/4 p1, 0x4

    iput p1, p0, Lhi/E;->c:I

    return-void
.end method

.method public static v(Ljava/lang/Object;)Lhi/E;
    .locals 3

    if-eqz p0, :cond_3

    instance-of v0, p0, Lhi/E;

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    instance-of v0, p0, Loh/M;

    if-eqz v0, :cond_1

    check-cast p0, Loh/M;

    invoke-virtual {p0}, Loh/M;->g()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    new-instance v2, Lhi/E;

    invoke-static {p0, v1}, Loh/x;->L(Loh/M;Z)Loh/x;

    move-result-object p0

    invoke-direct {v2, v0, p0}, Lhi/E;-><init>(ILoh/g;)V

    return-object v2

    :pswitch_1
    new-instance v2, Lhi/E;

    invoke-static {p0, v1}, Loh/y;->G(Loh/M;Z)Loh/y;

    move-result-object p0

    invoke-direct {v2, v0, p0}, Lhi/E;-><init>(ILoh/g;)V

    return-object v2

    :pswitch_2
    new-instance v1, Lhi/E;

    const/4 v2, 0x1

    invoke-static {p0, v2}, Lfi/d;->y(Loh/M;Z)Lfi/d;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lhi/E;-><init>(ILoh/g;)V

    return-object v1

    :pswitch_3
    new-instance v2, Lhi/E;

    invoke-static {p0, v1}, Loh/q;->G(Loh/M;Z)Loh/q;

    move-result-object p0

    invoke-direct {v2, v0, p0}, Lhi/E;-><init>(ILoh/g;)V

    return-object v2

    :pswitch_4
    new-instance v2, Lhi/E;

    invoke-static {p0, v1}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object p0

    invoke-direct {v2, v0, p0}, Lhi/E;-><init>(ILoh/g;)V

    return-object v2

    :cond_1
    instance-of v0, p0, [B

    if-eqz v0, :cond_2

    :try_start_0
    check-cast p0, [B

    invoke-static {p0}, Loh/B;->B([B)Loh/B;

    move-result-object p0

    invoke-static {p0}, Lhi/E;->v(Ljava/lang/Object;)Lhi/E;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unable to parse encoded general name"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in getInstance: "

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

    :cond_3
    :goto_0
    check-cast p0, Lhi/E;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static w(Loh/M;Z)Lhi/E;
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-static {p0, p1}, Loh/M;->W(Loh/M;Z)Loh/M;

    move-result-object p0

    invoke-static {p0}, Lhi/E;->v(Ljava/lang/Object;)Lhi/E;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "choice item must be explicitly tagged"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final A(Ljava/lang/String;)[I
    .locals 11

    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, ":"

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v3, 0x8

    new-array v4, v3, [I

    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x3a

    if-ne v6, v7, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-ne p1, v7, :cond_0

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    :cond_0
    const/4 p1, -0x1

    move v2, v5

    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    add-int/lit8 p1, v2, 0x1

    aput v5, v4, v2

    move v10, v2

    move v2, p1

    move p1, v10

    goto :goto_0

    :cond_1
    const/16 v7, 0x2e

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-gez v7, :cond_3

    add-int/lit8 v7, v2, 0x1

    const/16 v8, 0x10

    invoke-static {v6, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    aput v6, v4, v2

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    :cond_2
    move v2, v7

    goto :goto_0

    :cond_3
    new-instance v7, Ljava/util/StringTokenizer;

    const-string v8, "."

    invoke-direct {v7, v6, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    shl-int/2addr v8, v3

    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    or-int/2addr v8, v9

    aput v8, v4, v2

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    shl-int/2addr v8, v3

    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    or-int/2addr v7, v8

    aput v7, v4, v6

    goto :goto_0

    :cond_4
    if-eq v2, v3, :cond_5

    sub-int/2addr v2, p1

    rsub-int/lit8 v0, v2, 0x8

    invoke-static {v4, p1, v4, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    if-eq p1, v0, :cond_5

    aput v5, v4, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_5
    return-object v4
.end method

.method public final B(Ljava/lang/String;)[I
    .locals 6

    const/16 v0, 0x8

    new-array v0, v0, [I

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x0

    :goto_0
    if-eq v1, p1, :cond_0

    div-int/lit8 v2, v1, 0x10

    aget v3, v0, v2

    rem-int/lit8 v4, v1, 0x10

    rsub-int/lit8 v4, v4, 0xf

    const/4 v5, 0x1

    shl-int v4, v5, v4

    or-int/2addr v3, v4

    aput v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final C(Ljava/lang/String;)[B
    .locals 5

    invoke-static {p1}, Lorg/bouncycastle/util/j;->j(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x2f

    const/4 v2, 0x0

    if-nez v0, :cond_5

    invoke-static {p1}, Lorg/bouncycastle/util/j;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {p1}, Lorg/bouncycastle/util/j;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lorg/bouncycastle/util/j;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1

    :cond_2
    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x4

    if-gez v0, :cond_3

    new-array v0, v1, [B

    invoke-virtual {p0, p1, v0, v2}, Lhi/E;->y(Ljava/lang/String;[BI)V

    return-object v0

    :cond_3
    const/16 v3, 0x8

    new-array v3, v3, [B

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v3, v2}, Lhi/E;->y(Ljava/lang/String;[BI)V

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {p0, p1, v3, v1}, Lhi/E;->y(Ljava/lang/String;[BI)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p1, v3, v1}, Lhi/E;->z(Ljava/lang/String;[BI)V

    :goto_1
    return-object v3

    :cond_5
    :goto_2
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/16 v1, 0x10

    if-gez v0, :cond_6

    new-array v0, v1, [B

    invoke-virtual {p0, p1}, Lhi/E;->A(Ljava/lang/String;)[I

    move-result-object p1

    invoke-virtual {p0, p1, v0, v2}, Lhi/E;->u([I[BI)V

    return-object v0

    :cond_6
    const/16 v3, 0x20

    new-array v3, v3, [B

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lhi/E;->A(Ljava/lang/String;)[I

    move-result-object v4

    invoke-virtual {p0, v4, v3, v2}, Lhi/E;->u([I[BI)V

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_7

    invoke-virtual {p0, p1}, Lhi/E;->A(Ljava/lang/String;)[I

    move-result-object p1

    goto :goto_3

    :cond_7
    invoke-virtual {p0, p1}, Lhi/E;->B(Ljava/lang/String;)[I

    move-result-object p1

    :goto_3
    invoke-virtual {p0, p1, v3, v1}, Lhi/E;->u([I[BI)V

    return-object v3
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lhi/E;->c:I

    return v0
.end method

.method public r()Loh/B;
    .locals 4

    iget v0, p0, Lhi/E;->c:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Loh/K0;

    iget-object v3, p0, Lhi/E;->b:Loh/g;

    invoke-direct {v2, v1, v0, v3}, Loh/K0;-><init>(ZILoh/g;)V

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget v1, p0, Lhi/E;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lhi/E;->c:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lhi/E;->b:Loh/g;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lhi/E;->b:Loh/g;

    invoke-static {v1}, Lfi/d;->x(Ljava/lang/Object;)Lfi/d;

    move-result-object v1

    invoke-virtual {v1}, Lfi/d;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lhi/E;->b:Loh/g;

    invoke-static {v1}, Loh/q;->F(Ljava/lang/Object;)Loh/q;

    move-result-object v1

    invoke-virtual {v1}, Loh/q;->getString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u([I[BI)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-eq v0, v1, :cond_0

    mul-int/lit8 v1, v0, 0x2

    add-int v2, v1, p3

    aget v3, p1, v0

    shr-int/lit8 v4, v3, 0x8

    int-to-byte v4, v4

    aput-byte v4, p2, v2

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, p3

    int-to-byte v2, v3

    aput-byte v2, p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public x()Loh/g;
    .locals 1

    iget-object v0, p0, Lhi/E;->b:Loh/g;

    return-object v0
.end method

.method public final y(Ljava/lang/String;[BI)V
    .locals 3

    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "./"

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v1, p1, 0x1

    add-int/2addr p1, p3

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, p2, p1

    move p1, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final z(Ljava/lang/String;[BI)V
    .locals 5

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-eq v0, p1, :cond_0

    div-int/lit8 v1, v0, 0x8

    add-int/2addr v1, p3

    aget-byte v2, p2, v1

    rem-int/lit8 v3, v0, 0x8

    rsub-int/lit8 v3, v3, 0x7

    const/4 v4, 0x1

    shl-int v3, v4, v3

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
