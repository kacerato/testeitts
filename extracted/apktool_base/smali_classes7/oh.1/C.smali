.class public abstract Loh/C;
.super Loh/B;
.source "SourceFile"

# interfaces
.implements Loh/J;


# static fields
.field public static final c:Loh/T;


# instance fields
.field public final b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Loh/C$a;

    const-class v1, Loh/C;

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Loh/C$a;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Loh/C;->c:Loh/T;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/B;-><init>()V

    if-eqz p2, :cond_1

    invoke-static {p1}, Loh/C;->I(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "string contains illegal characters"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-static {p1}, Lorg/bouncycastle/util/w;->j(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Loh/C;->b:[B

    return-void
.end method

.method public constructor <init>([BZ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Loh/B;-><init>()V

    if-eqz p2, :cond_0

    invoke-static {p1}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    :cond_0
    iput-object p1, p0, Loh/C;->b:[B

    return-void
.end method

.method public static E([B)Loh/C;
    .locals 2

    new-instance v0, Loh/F0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Loh/F0;-><init>([BZ)V

    return-object v0
.end method

.method public static F(Ljava/lang/Object;)Loh/C;
    .locals 3

    if-eqz p0, :cond_3

    instance-of v0, p0, Loh/C;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Loh/g;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Loh/g;

    invoke-interface {v0}, Loh/g;->r()Loh/B;

    move-result-object v0

    instance-of v1, v0, Loh/C;

    if-eqz v1, :cond_1

    check-cast v0, Loh/C;

    return-object v0

    :cond_1
    instance-of v0, p0, [B

    if-eqz v0, :cond_2

    :try_start_0
    sget-object v0, Loh/C;->c:Loh/T;

    check-cast p0, [B

    invoke-virtual {v0, p0}, Loh/T;->c([B)Loh/B;

    move-result-object p0

    check-cast p0, Loh/C;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encoding error in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
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

    :cond_3
    :goto_0
    check-cast p0, Loh/C;

    return-object p0
.end method

.method public static G(Loh/M;Z)Loh/C;
    .locals 1

    sget-object v0, Loh/C;->c:Loh/T;

    invoke-virtual {v0, p0, p1}, Loh/T;->f(Loh/M;Z)Loh/B;

    move-result-object p0

    check-cast p0, Loh/C;

    return-object p0
.end method

.method public static I(Ljava/lang/String;)Z
    .locals 5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_5

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x7f

    const/4 v4, 0x0

    if-le v2, v3, :cond_0

    return v4

    :cond_0
    const/16 v3, 0x61

    if-gt v3, v2, :cond_1

    const/16 v3, 0x7a

    if-gt v2, v3, :cond_1

    goto :goto_1

    :cond_1
    const/16 v3, 0x41

    if-gt v3, v2, :cond_2

    const/16 v3, 0x5a

    if-gt v2, v3, :cond_2

    goto :goto_1

    :cond_2
    const/16 v3, 0x30

    if-gt v3, v2, :cond_3

    const/16 v3, 0x39

    if-gt v2, v3, :cond_3

    goto :goto_1

    :cond_3
    const/16 v3, 0x20

    if-eq v2, v3, :cond_4

    const/16 v3, 0x3a

    if-eq v2, v3, :cond_4

    const/16 v3, 0x3d

    if-eq v2, v3, :cond_4

    const/16 v3, 0x3f

    if-eq v2, v3, :cond_4

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    return v4

    :cond_4
    :goto_1
    :pswitch_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_5
    return v1

    :pswitch_data_0
    .packed-switch 0x27
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final H()[B
    .locals 1

    iget-object v0, p0, Loh/C;->b:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method

.method public final getString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Loh/C;->b:[B

    invoke-static {v0}, Lorg/bouncycastle/util/w;->c([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Loh/C;->b:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->t0([B)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Loh/C;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u(Loh/B;)Z
    .locals 1

    instance-of v0, p1, Loh/C;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Loh/C;

    iget-object v0, p0, Loh/C;->b:[B

    iget-object p1, p1, Loh/C;->b:[B

    invoke-static {v0, p1}, Lorg/bouncycastle/util/a;->g([B[B)Z

    move-result p1

    return p1
.end method

.method public final v(Loh/A;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x13

    iget-object v1, p0, Loh/C;->b:[B

    invoke-virtual {p1, p2, v0, v1}, Loh/A;->r(ZI[B)V

    return-void
.end method

.method public final x()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final y(Z)I
    .locals 1

    iget-object v0, p0, Loh/C;->b:[B

    array-length v0, v0

    invoke-static {p1, v0}, Loh/A;->i(ZI)I

    move-result p1

    return p1
.end method
