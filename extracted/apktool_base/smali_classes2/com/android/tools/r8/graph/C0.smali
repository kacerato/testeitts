.class public final Lcom/android/tools/r8/graph/C0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public a:Ljava/io/ByteArrayOutputStream;

.field public b:Ljava/io/ObjectOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/D0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/C2;)V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/graph/C0;->b:Ljava/io/ObjectOutputStream;

    iget-object v1, p1, Lcom/android/tools/r8/graph/C2;->e:Lcom/android/tools/r8/graph/B2;

    .line 6
    iget-short v1, v1, Lcom/android/tools/r8/graph/B2;->b:S

    .line 7
    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeShort(I)V

    .line 8
    iget-object v0, p1, Lcom/android/tools/r8/graph/C2;->e:Lcom/android/tools/r8/graph/B2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/B2;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/C2;->l0()Lcom/android/tools/r8/graph/l1;

    move-result-object p1

    .line 10
    iget-object v0, p1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    .line 11
    iget-object v0, v0, Lcom/android/tools/r8/graph/M2;->f:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/C0;->a(Lcom/android/tools/r8/graph/L2;)V

    .line 12
    iget-object v0, p1, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    .line 13
    iget-object v0, v0, Lcom/android/tools/r8/graph/M2;->f:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/C0;->a(Lcom/android/tools/r8/graph/L2;)V

    .line 14
    iget-object p1, p1, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/C0;->a(Lcom/android/tools/r8/graph/L2;)V

    return-void

    .line 15
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/C2;->m0()Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    .line 16
    iget-object v0, p1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    .line 17
    iget-object v0, v0, Lcom/android/tools/r8/graph/M2;->f:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/C0;->a(Lcom/android/tools/r8/graph/L2;)V

    .line 18
    iget-object v0, p1, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/C0;->a(Lcom/android/tools/r8/graph/I2;)V

    .line 19
    iget-object p1, p1, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/C0;->a(Lcom/android/tools/r8/graph/L2;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/I2;)V
    .locals 3

    .line 20
    iget-object v0, p1, Lcom/android/tools/r8/graph/I2;->e:Lcom/android/tools/r8/graph/M2;

    .line 21
    iget-object v0, v0, Lcom/android/tools/r8/graph/M2;->f:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/C0;->a(Lcom/android/tools/r8/graph/L2;)V

    .line 22
    iget-object p1, p1, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    iget-object p1, p1, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    .line 23
    iget-object v0, p0, Lcom/android/tools/r8/graph/C0;->b:Ljava/io/ObjectOutputStream;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 24
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 25
    iget-object v2, v2, Lcom/android/tools/r8/graph/M2;->f:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/graph/C0;->a(Lcom/android/tools/r8/graph/L2;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/L2;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/graph/C0;->b:Ljava/io/ObjectOutputStream;

    .line 2
    iget v1, p1, Lcom/android/tools/r8/graph/L2;->e:I

    .line 3
    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/graph/C0;->b:Ljava/io/ObjectOutputStream;

    iget-object p1, p1, Lcom/android/tools/r8/graph/L2;->f:[B

    invoke-virtual {v0, p1}, Ljava/io/ObjectOutputStream;->write([B)V

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 4

    .line 26
    iget-object v0, p0, Lcom/android/tools/r8/graph/C0;->b:Ljava/io/ObjectOutputStream;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 27
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/R2;

    .line 28
    iget-object v1, p0, Lcom/android/tools/r8/graph/C0;->b:Ljava/io/ObjectOutputStream;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/R2;->G0()Lcom/android/tools/r8/graph/V2;

    move-result-object v2

    .line 29
    iget-byte v2, v2, Lcom/android/tools/r8/graph/V2;->b:B

    .line 30
    invoke-virtual {v1, v2}, Ljava/io/ObjectOutputStream;->writeByte(I)V

    .line 31
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/R2;->G0()Lcom/android/tools/r8/graph/V2;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 32
    sget-boolean v0, Lcom/android/tools/r8/graph/C0;->c:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 33
    :pswitch_0
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/R2;->E0()Lcom/android/tools/r8/graph/R2$l;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/R2$m;->d:Lcom/android/tools/r8/graph/d4;

    check-cast v0, Lcom/android/tools/r8/graph/M2;

    .line 34
    iget-object v0, v0, Lcom/android/tools/r8/graph/M2;->f:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/C0;->a(Lcom/android/tools/r8/graph/L2;)V

    goto :goto_0

    .line 35
    :pswitch_1
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/R2;->D0()Lcom/android/tools/r8/graph/R2$k;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/R2$m;->d:Lcom/android/tools/r8/graph/d4;

    check-cast v0, Lcom/android/tools/r8/graph/L2;

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/C0;->a(Lcom/android/tools/r8/graph/L2;)V

    goto :goto_0

    .line 36
    :pswitch_2
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/R2;->z0()Lcom/android/tools/r8/graph/X2;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/R2$m;->d:Lcom/android/tools/r8/graph/d4;

    check-cast v0, Lcom/android/tools/r8/graph/C2;

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/C0;->a(Lcom/android/tools/r8/graph/C2;)V

    goto :goto_0

    .line 37
    :pswitch_3
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/R2;->A0()Lcom/android/tools/r8/graph/Y2;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/R2$m;->d:Lcom/android/tools/r8/graph/d4;

    check-cast v0, Lcom/android/tools/r8/graph/I2;

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/C0;->a(Lcom/android/tools/r8/graph/I2;)V

    goto :goto_0

    .line 38
    :pswitch_4
    iget-object v1, p0, Lcom/android/tools/r8/graph/C0;->b:Ljava/io/ObjectOutputStream;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/R2;->s0()Lcom/android/tools/r8/graph/R2$f;

    move-result-object v0

    iget-wide v2, v0, Lcom/android/tools/r8/graph/R2$f;->d:D

    invoke-virtual {v1, v2, v3}, Ljava/io/ObjectOutputStream;->writeDouble(D)V

    goto :goto_0

    .line 39
    :pswitch_5
    iget-object v1, p0, Lcom/android/tools/r8/graph/C0;->b:Ljava/io/ObjectOutputStream;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/R2;->v0()Lcom/android/tools/r8/graph/R2$g;

    move-result-object v0

    iget v0, v0, Lcom/android/tools/r8/graph/R2$g;->d:F

    invoke-virtual {v1, v0}, Ljava/io/ObjectOutputStream;->writeFloat(F)V

    goto :goto_0

    .line 40
    :pswitch_6
    iget-object v1, p0, Lcom/android/tools/r8/graph/C0;->b:Ljava/io/ObjectOutputStream;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/R2;->x0()Lcom/android/tools/r8/graph/R2$i;

    move-result-object v0

    iget-wide v2, v0, Lcom/android/tools/r8/graph/R2$i;->d:J

    invoke-virtual {v1, v2, v3}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    goto/16 :goto_0

    .line 41
    :pswitch_7
    iget-object v1, p0, Lcom/android/tools/r8/graph/C0;->b:Ljava/io/ObjectOutputStream;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/R2;->w0()Lcom/android/tools/r8/graph/R2$h;

    move-result-object v0

    iget v0, v0, Lcom/android/tools/r8/graph/R2$h;->d:I

    invoke-virtual {v1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    goto/16 :goto_0

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
