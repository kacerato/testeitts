.class public Lyk/j;
.super Ljava/io/OutputStream;
.source "SourceFile"


# static fields
.field public static final d:[I


# instance fields
.field public final b:Ljava/io/OutputStream;

.field public c:Ljava/io/PrintWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lyk/j;->d:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
    .end array-data
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lyk/j;->c:Ljava/io/PrintWriter;

    iput-object p1, p0, Lyk/j;->b:Ljava/io/OutputStream;

    return-void
.end method

.method public static a(J)I
    .locals 6

    const/16 v0, 0x8

    move v1, v0

    :goto_0
    if-lez v1, :cond_0

    const-wide/high16 v2, -0x100000000000000L

    and-long/2addr v2, p0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    shl-long/2addr p0, v0

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return v1
.end method


# virtual methods
.method public b(Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lyk/j;->c:Ljava/io/PrintWriter;

    if-eqz v0, :cond_4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    move v3, v1

    :goto_0
    array-length v4, v0

    if-eq v3, v4, :cond_2

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "debugPrint"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v2, v1

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "OERInput"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    iget-object v0, p0, Lyk/j;->c:Ljava/io/PrintWriter;

    if-lez v2, :cond_3

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p1

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    iget-object p1, p0, Lyk/j;->c:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    :cond_4
    return-void
.end method

.method public final c(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x7f

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lyk/j;->b:Ljava/io/OutputStream;

    long-to-int p1, p1

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/util/b;->c(Ljava/math/BigInteger;)[B

    move-result-object p1

    iget-object p2, p0, Lyk/j;->b:Ljava/io/OutputStream;

    array-length v0, p1

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    iget-object p2, p0, Lyk/j;->b:Ljava/io/OutputStream;

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    :goto_0
    return-void
.end method

.method public final d(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/util/b;->c(Ljava/math/BigInteger;)[B

    move-result-object p1

    iget-object p2, p0, Lyk/j;->b:Ljava/io/OutputStream;

    array-length v0, p1

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    iget-object p2, p0, Lyk/j;->b:Ljava/io/OutputStream;

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public e(Loh/g;Lyk/c;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lyk/i;->d:Lyk/i;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Lyk/i;

    if-eqz v0, :cond_1

    check-cast p1, Lyk/i;

    invoke-virtual {p1}, Lyk/i;->v()Loh/g;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lyk/j;->e(Loh/g;Lyk/c;)V

    return-void

    :cond_1
    invoke-interface {p1}, Loh/g;->r()Loh/B;

    move-result-object p1

    sget-object v0, Lyk/j$a;->a:[I

    invoke-virtual {p2}, Lyk/c;->d()Lyk/f$a;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, " "

    const/16 v2, 0xff

    const/4 v3, 0x6

    const/16 v4, 0x80

    const-string v5, ""

    const/4 v6, 0x1

    const/4 v7, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_24

    :pswitch_1
    invoke-virtual {p2}, Lyk/c;->l()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lyk/j;->b(Ljava/lang/String;)V

    invoke-static {p1}, Loh/e;->G(Ljava/lang/Object;)Loh/e;

    move-result-object p1

    invoke-virtual {p1}, Loh/e;->J()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lyk/j;->b:Ljava/io/OutputStream;

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lyk/j;->b:Ljava/io/OutputStream;

    invoke-virtual {p1, v7}, Ljava/io/OutputStream;->write(I)V

    :goto_0
    iget-object p1, p0, Lyk/j;->b:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    goto/16 :goto_24

    :pswitch_2
    invoke-static {p1}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object p1

    invoke-virtual {p1}, Loh/y;->H()[B

    move-result-object p1

    invoke-virtual {p2}, Lyk/c;->z()Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_1
    iget-object v0, p0, Lyk/j;->b:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_2

    :cond_3
    array-length v0, p1

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lyk/j;->c(J)V

    goto :goto_1

    :goto_2
    invoke-virtual {p2}, Lyk/c;->F()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lyk/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_3
    invoke-virtual {p0, p1}, Lyk/j;->b(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    invoke-static {p1}, Loh/c;->H(Ljava/lang/Object;)Loh/c;

    move-result-object p1

    invoke-virtual {p1}, Loh/c;->F()[B

    move-result-object v0

    invoke-virtual {p2}, Lyk/c;->z()Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_4
    iget-object p1, p0, Lyk/j;->b:Ljava/io/OutputStream;

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p2}, Lyk/c;->F()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lyk/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Loh/c;->n()I

    move-result p1

    array-length v1, v0

    add-int/2addr v1, v6

    int-to-long v1, v1

    invoke-virtual {p0, v1, v2}, Lyk/j;->c(J)V

    iget-object v1, p0, Lyk/j;->b:Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_4

    :pswitch_4
    invoke-static {p1}, Loh/Q;->F(Ljava/lang/Object;)Loh/Q;

    move-result-object p1

    invoke-virtual {p1}, Loh/Q;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/util/w;->n(Ljava/lang/String;)[B

    move-result-object p1

    array-length v0, p1

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lyk/j;->c(J)V

    iget-object v0, p0, Lyk/j;->b:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    :goto_5
    invoke-virtual {p2, v5}, Lyk/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :pswitch_5
    invoke-static {p1}, Loh/q;->F(Ljava/lang/Object;)Loh/q;

    move-result-object p1

    invoke-virtual {p1}, Loh/q;->H()[B

    move-result-object p1

    invoke-virtual {p2}, Lyk/c;->z()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p2}, Lyk/c;->r()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    array-length v2, p1

    if-ne v0, v2, :cond_5

    goto :goto_6

    :cond_5
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IA5String string length does not equal declared fixed length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lyk/c;->r()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_6
    invoke-virtual {p2}, Lyk/c;->z()Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_7
    iget-object v0, p0, Lyk/j;->b:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_5

    :cond_7
    array-length v0, p1

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lyk/j;->c(J)V

    goto :goto_7

    :pswitch_6
    invoke-static {p1}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object p1

    invoke-virtual {p1}, Loh/y;->H()[B

    move-result-object p1

    invoke-virtual {p2}, Lyk/c;->z()Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_8
    iget-object v0, p0, Lyk/j;->b:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    goto/16 :goto_2

    :cond_8
    array-length v0, p1

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lyk/j;->c(J)V

    goto :goto_8

    :pswitch_7
    invoke-static {p1}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object p1

    invoke-virtual {p2}, Lyk/c;->w()I

    move-result v0

    if-lez v0, :cond_b

    invoke-virtual {p1}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/bouncycastle/util/b;->b(ILjava/math/BigInteger;)[B

    move-result-object p1

    if-eq v0, v6, :cond_a

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    const/4 v1, 0x4

    if-eq v0, v1, :cond_a

    const/16 v1, 0x8

    if-ne v0, v1, :cond_9

    goto :goto_9

    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown uint length "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    :goto_9
    iget-object v0, p0, Lyk/j;->b:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    goto/16 :goto_2

    :cond_b
    if-gez v0, :cond_10

    invoke-virtual {p1}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object p1

    const/4 v1, -0x8

    if-eq v0, v1, :cond_f

    const/4 v1, -0x4

    if-eq v0, v1, :cond_e

    const/4 v1, -0x2

    if-eq v0, v1, :cond_d

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    new-array v0, v6, [B

    invoke-static {p1}, Lorg/bouncycastle/util/b;->d(Ljava/math/BigInteger;)B

    move-result p1

    aput-byte p1, v0, v7

    goto :goto_a

    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "unknown twos compliment length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    invoke-static {p1}, Lorg/bouncycastle/util/b;->r(Ljava/math/BigInteger;)S

    move-result p1

    invoke-static {p1}, Lorg/bouncycastle/util/p;->Q(S)[B

    move-result-object v0

    goto :goto_a

    :cond_e
    invoke-static {p1}, Lorg/bouncycastle/util/b;->l(Ljava/math/BigInteger;)I

    move-result p1

    invoke-static {p1}, Lorg/bouncycastle/util/p;->k(I)[B

    move-result-object v0

    goto :goto_a

    :cond_f
    invoke-static {p1}, Lorg/bouncycastle/util/b;->m(Ljava/math/BigInteger;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/bouncycastle/util/p;->H(J)[B

    move-result-object v0

    :goto_a
    iget-object p1, p0, Lyk/j;->b:Ljava/io/OutputStream;

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    goto/16 :goto_2

    :cond_10
    invoke-virtual {p2}, Lyk/c;->A()Z

    move-result v0

    invoke-virtual {p1}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object p1

    if-eqz v0, :cond_11

    invoke-static {p1}, Lorg/bouncycastle/util/b;->c(Ljava/math/BigInteger;)[B

    move-result-object p1

    goto :goto_b

    :cond_11
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    :goto_b
    array-length v0, p1

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lyk/j;->c(J)V

    iget-object v0, p0, Lyk/j;->b:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    goto/16 :goto_2

    :pswitch_8
    instance-of v0, p1, Loh/s;

    if-eqz v0, :cond_12

    invoke-static {p1}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object p1

    invoke-virtual {p1}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object p1

    goto :goto_c

    :cond_12
    invoke-static {p1}, Loh/j;->F(Ljava/lang/Object;)Loh/j;

    move-result-object p1

    invoke-virtual {p1}, Loh/j;->H()Ljava/math/BigInteger;

    move-result-object p1

    :goto_c
    invoke-virtual {p2}, Lyk/c;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyk/c;

    invoke-static {v3, p2}, Lyk/c;->c(Lyk/c;Lyk/c;)Lyk/c;

    move-result-object v3

    invoke-virtual {v3}, Lyk/c;->j()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    const-wide/16 v0, 0x7f

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-lez v0, :cond_14

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    array-length v0, p1

    and-int/2addr v0, v2

    or-int/2addr v0, v4

    iget-object v1, p0, Lyk/j;->b:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Lyk/j;->b:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_d

    :cond_14
    iget-object v0, p0, Lyk/j;->b:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    and-int/lit8 p1, p1, 0x7f

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    :goto_d
    iget-object p1, p0, Lyk/j;->b:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {p2}, Lyk/c;->F()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lyk/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lyk/j;->b(Ljava/lang/String;)V

    return-void

    :cond_15
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enum value "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Lem/h;->j([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " no in defined child list"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_9
    invoke-interface {p1}, Loh/g;->r()Loh/B;

    move-result-object p1

    new-instance v0, Lyk/a;

    invoke-direct {v0}, Lyk/a;-><init>()V

    instance-of v1, p1, Loh/M;

    if-eqz v1, :cond_1c

    move-object v1, p1

    check-cast v1, Loh/M;

    invoke-virtual {v1}, Loh/M;->l()I

    move-result v2

    and-int/lit16 v5, v2, 0x80

    invoke-virtual {v0, v5}, Lyk/a;->f(I)Lyk/a;

    move-result-object v5

    const/16 v6, 0x40

    and-int/2addr v2, v6

    invoke-virtual {v5, v2}, Lyk/a;->f(I)Lyk/a;

    invoke-virtual {v1}, Loh/M;->g()I

    move-result v2

    invoke-virtual {v1}, Loh/M;->L()Loh/v;

    move-result-object v5

    invoke-virtual {v5}, Loh/v;->r()Loh/B;

    move-result-object v5

    const/16 v7, 0x3f

    if-gt v2, v7, :cond_16

    int-to-long v7, v2

    invoke-virtual {v0, v7, v8, v3}, Lyk/a;->g(JI)Lyk/a;

    goto :goto_e

    :cond_16
    const-wide/16 v7, 0xff

    invoke-virtual {v0, v7, v8, v3}, Lyk/a;->g(JI)Lyk/a;

    invoke-virtual {v0, v2}, Lyk/a;->c(I)V

    :goto_e
    iget-object v3, p0, Lyk/j;->c:Ljava/io/PrintWriter;

    if-eqz v3, :cond_1a

    instance-of p1, p1, Loh/M;

    if-eqz p1, :cond_1a

    invoke-virtual {v1}, Loh/M;->l()I

    move-result p1

    if-eq p1, v6, :cond_19

    if-eq p1, v4, :cond_18

    const/16 v1, 0xc0

    if-eq p1, v1, :cond_17

    goto :goto_10

    :cond_17
    const-string p1, "PR"

    :goto_f
    invoke-virtual {p2, p1}, Lyk/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lyk/j;->b(Ljava/lang/String;)V

    goto :goto_10

    :cond_18
    const-string p1, "CS"

    goto :goto_f

    :cond_19
    const-string p1, "AS"

    goto :goto_f

    :cond_1a
    :goto_10
    iget-object p1, p0, Lyk/j;->b:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Lyk/a;->e(Ljava/io/OutputStream;)I

    invoke-virtual {p2}, Lyk/c;->f()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyk/c;

    invoke-static {p1, p2}, Lyk/c;->c(Lyk/c;Lyk/c;)Lyk/c;

    move-result-object p1

    invoke-virtual {p1}, Lyk/c;->e()I

    move-result p2

    if-lez p2, :cond_1b

    invoke-virtual {p0, v5, p1}, Lyk/j;->f(Loh/g;Lyk/c;)V

    goto/16 :goto_0

    :cond_1b
    invoke-virtual {p0, v5, p1}, Lyk/j;->e(Loh/g;Lyk/c;)V

    goto/16 :goto_0

    :cond_1c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "only support tagged objects"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_a
    instance-of v0, p1, Loh/G;

    if-eqz v0, :cond_1d

    check-cast p1, Loh/G;

    invoke-virtual {p1}, Loh/G;->I()Ljava/util/Enumeration;

    move-result-object v0

    invoke-virtual {p1}, Loh/G;->size()I

    move-result p1

    :goto_11
    int-to-long v1, p1

    invoke-virtual {p0, v1, v2}, Lyk/j;->d(J)V

    goto :goto_12

    :cond_1d
    instance-of v0, p1, Loh/E;

    if-eqz v0, :cond_1f

    check-cast p1, Loh/E;

    invoke-virtual {p1}, Loh/E;->J()Ljava/util/Enumeration;

    move-result-object v0

    invoke-virtual {p1}, Loh/E;->size()I

    move-result p1

    goto :goto_11

    :goto_12
    invoke-virtual {p2}, Lyk/c;->k()Lyk/c;

    move-result-object p1

    invoke-static {p1, p2}, Lyk/c;->c(Lyk/c;Lyk/c;)Lyk/c;

    move-result-object p1

    :goto_13
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Loh/g;

    invoke-virtual {p0, v1, p1}, Lyk/j;->e(Loh/g;Lyk/c;)V

    goto :goto_13

    :cond_1e
    iget-object p1, p0, Lyk/j;->b:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {p2, v5}, Lyk/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lyk/j;->b(Ljava/lang/String;)V

    goto/16 :goto_24

    :cond_1f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "encodable at for SEQ_OF is not a container"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_b
    invoke-static {p1}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p1

    invoke-virtual {p2}, Lyk/c;->y()Z

    move-result v0

    const/4 v1, 0x7

    if-eqz v0, :cond_24

    move v0, v7

    :goto_14
    invoke-virtual {p2}, Lyk/c;->f()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_22

    invoke-virtual {p2}, Lyk/c;->f()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyk/c;

    invoke-virtual {v2}, Lyk/c;->d()Lyk/f$a;

    move-result-object v4

    sget-object v8, Lyk/f$a;->EXTENSION:Lyk/f$a;

    if-ne v4, v8, :cond_20

    goto :goto_15

    :cond_20
    invoke-virtual {v2}, Lyk/c;->e()I

    move-result v2

    if-lez v2, :cond_21

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v2

    if-ge v0, v2, :cond_21

    sget-object v2, Lyk/i;->d:Lyk/i;

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v4

    invoke-virtual {v2, v4}, Lyk/i;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    move v0, v6

    goto :goto_16

    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_22
    :goto_15
    move v0, v7

    :goto_16
    if-eqz v0, :cond_23

    sget-object v2, Lyk/j;->d:[I

    aget v2, v2, v1

    goto :goto_17

    :cond_23
    move v2, v7

    goto :goto_17

    :cond_24
    move v3, v1

    move v0, v7

    move v2, v0

    :goto_17
    move v4, v7

    :goto_18
    invoke-virtual {p2}, Lyk/c;->f()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v4, v8, :cond_2f

    invoke-virtual {p2}, Lyk/c;->f()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lyk/c;

    invoke-virtual {v8}, Lyk/c;->d()Lyk/f$a;

    move-result-object v9

    sget-object v10, Lyk/f$a;->EXTENSION:Lyk/f$a;

    if-ne v9, v10, :cond_25

    goto/16 :goto_1c

    :cond_25
    invoke-virtual {v8}, Lyk/c;->e()I

    move-result v9

    if-lez v9, :cond_26

    goto/16 :goto_1d

    :cond_26
    invoke-static {v8, p2}, Lyk/c;->c(Lyk/c;Lyk/c;)Lyk/c;

    move-result-object v8

    invoke-virtual {p2}, Lyk/c;->t()Lyk/k;

    move-result-object v9

    if-eqz v9, :cond_27

    invoke-virtual {p2}, Lyk/c;->t()Lyk/k;

    move-result-object v8

    new-instance v9, Lyk/l$b;

    invoke-direct {v9, p1}, Lyk/l$b;-><init>(Loh/E;)V

    invoke-interface {v8, v9}, Lyk/k;->a(Lyk/l;)Lyk/c;

    move-result-object v8

    invoke-static {v8, p2}, Lyk/c;->c(Lyk/c;Lyk/c;)Lyk/c;

    move-result-object v8

    :cond_27
    if-gez v3, :cond_28

    iget-object v3, p0, Lyk/j;->b:Ljava/io/OutputStream;

    invoke-virtual {v3, v2}, Ljava/io/OutputStream;->write(I)V

    move v3, v1

    move v2, v7

    :cond_28
    invoke-virtual {p1, v4}, Loh/E;->I(I)Loh/g;

    move-result-object v9

    invoke-virtual {v8}, Lyk/c;->x()Z

    move-result v10

    if-eqz v10, :cond_2a

    instance-of v10, v9, Lyk/i;

    if-nez v10, :cond_29

    goto :goto_19

    :cond_29
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "absent sequence element that is required by oer definition"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2a
    :goto_19
    invoke-virtual {v8}, Lyk/c;->x()Z

    move-result v10

    if-nez v10, :cond_2e

    invoke-virtual {p1, v4}, Loh/E;->I(I)Loh/g;

    move-result-object v10

    invoke-virtual {v8}, Lyk/c;->g()Loh/g;

    move-result-object v11

    if-eqz v11, :cond_2c

    instance-of v9, v10, Lyk/i;

    if-eqz v9, :cond_2b

    check-cast v10, Lyk/i;

    invoke-virtual {v10}, Lyk/i;->z()Z

    move-result v9

    if-eqz v9, :cond_2d

    invoke-virtual {v10}, Lyk/i;->v()Loh/g;

    move-result-object v9

    invoke-virtual {v8}, Lyk/c;->g()Loh/g;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2d

    sget-object v8, Lyk/j;->d:[I

    aget v8, v8, v3

    :goto_1a
    or-int/2addr v2, v8

    goto :goto_1b

    :cond_2b
    invoke-virtual {v8}, Lyk/c;->g()Loh/g;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2d

    sget-object v8, Lyk/j;->d:[I

    aget v8, v8, v3

    goto :goto_1a

    :cond_2c
    sget-object v8, Lyk/i;->d:Lyk/i;

    if-eq v9, v8, :cond_2d

    sget-object v8, Lyk/j;->d:[I

    aget v8, v8, v3

    goto :goto_1a

    :cond_2d
    :goto_1b
    add-int/lit8 v3, v3, -0x1

    :cond_2e
    :goto_1c
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_18

    :cond_2f
    :goto_1d
    if-eq v3, v1, :cond_30

    iget-object v3, p0, Lyk/j;->b:Ljava/io/OutputStream;

    invoke-virtual {v3, v2}, Ljava/io/OutputStream;->write(I)V

    :cond_30
    invoke-virtual {p2}, Lyk/c;->f()Ljava/util/List;

    move-result-object v2

    move v3, v7

    :goto_1e
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_35

    invoke-virtual {p2}, Lyk/c;->f()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyk/c;

    invoke-virtual {v4}, Lyk/c;->d()Lyk/f$a;

    move-result-object v8

    sget-object v9, Lyk/f$a;->EXTENSION:Lyk/f$a;

    if-ne v8, v9, :cond_31

    goto :goto_1f

    :cond_31
    invoke-virtual {v4}, Lyk/c;->e()I

    move-result v8

    if-lez v8, :cond_32

    goto :goto_20

    :cond_32
    invoke-virtual {p1, v3}, Loh/E;->I(I)Loh/g;

    move-result-object v8

    invoke-virtual {v4}, Lyk/c;->t()Lyk/k;

    move-result-object v9

    if-eqz v9, :cond_33

    invoke-virtual {v4}, Lyk/c;->t()Lyk/k;

    move-result-object v4

    new-instance v9, Lyk/l$b;

    invoke-direct {v9, p1}, Lyk/l$b;-><init>(Loh/E;)V

    invoke-interface {v4, v9}, Lyk/k;->a(Lyk/l;)Lyk/c;

    move-result-object v4

    :cond_33
    invoke-virtual {v4}, Lyk/c;->g()Loh/g;

    move-result-object v9

    if-eqz v9, :cond_34

    invoke-virtual {v4}, Lyk/c;->g()Loh/g;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_34

    goto :goto_1f

    :cond_34
    invoke-virtual {p0, v8, v4}, Lyk/j;->e(Loh/g;Lyk/c;)V

    :goto_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    :cond_35
    :goto_20
    if-eqz v0, :cond_1e

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move v8, v1

    move v4, v3

    move v9, v7

    :goto_21
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    if-ge v4, v10, :cond_38

    if-gez v8, :cond_36

    invoke-virtual {v0, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move v8, v1

    move v9, v7

    :cond_36
    invoke-virtual {p1}, Loh/E;->size()I

    move-result v10

    if-ge v4, v10, :cond_37

    sget-object v10, Lyk/i;->d:Lyk/i;

    invoke-virtual {p1, v4}, Loh/E;->I(I)Loh/g;

    move-result-object v11

    invoke-virtual {v10, v11}, Lyk/i;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_37

    sget-object v10, Lyk/j;->d:[I

    aget v10, v10, v8

    or-int/2addr v9, v10

    :cond_37
    add-int/lit8 v8, v8, -0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    :cond_38
    if-eq v8, v1, :cond_39

    invoke-virtual {v0, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_39
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    add-int/2addr v4, v6

    int-to-long v9, v4

    invoke-virtual {p0, v9, v10}, Lyk/j;->c(J)V

    if-ne v8, v1, :cond_3a

    invoke-virtual {p0, v7}, Lyk/j;->write(I)V

    goto :goto_22

    :cond_3a
    add-int/2addr v8, v6

    invoke-virtual {p0, v8}, Lyk/j;->write(I)V

    :goto_22
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    :goto_23
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_1e

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    if-ge v3, v0, :cond_3b

    sget-object v0, Lyk/i;->d:Lyk/i;

    invoke-virtual {p1, v3}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lyk/i;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    invoke-virtual {p1, v3}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyk/c;

    invoke-virtual {p0, v0, v1}, Lyk/j;->f(Loh/g;Lyk/c;)V

    :cond_3b
    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    :pswitch_c
    invoke-virtual {p2}, Lyk/c;->i()Lyk/d;

    move-result-object p2

    invoke-interface {p2}, Lyk/d;->build()Lyk/c;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lyk/j;->e(Loh/g;Lyk/c;)V

    :goto_24
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public f(Loh/g;Lyk/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Lyk/j;

    invoke-direct {v1, v0}, Lyk/j;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v1, p1, p2}, Lyk/j;->e(Loh/g;Lyk/c;)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p1

    int-to-long p1, p1

    invoke-virtual {p0, p1, p2}, Lyk/j;->c(J)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lyk/j;->b:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method
