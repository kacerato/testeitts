.class public final Lcom/google/android/gms/internal/measurement/g5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lcom/google/android/gms/internal/measurement/g5;


# instance fields
.field public final a:Lcom/google/android/gms/internal/measurement/p6;

.field public b:Z

.field public c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/g5;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/g5;-><init>(Z)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/g5;->d:Lcom/google/android/gms/internal/measurement/g5;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/measurement/k6;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/k6;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/g5;->a:Lcom/google/android/gms/internal/measurement/p6;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 2
    new-instance p1, Lcom/google/android/gms/internal/measurement/k6;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/k6;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/g5;->a:Lcom/google/android/gms/internal/measurement/p6;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/g5;->b()V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/g5;->b()V

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/measurement/g5;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/g5;->d:Lcom/google/android/gms/internal/measurement/g5;

    return-object v0
.end method

.method public static f(Lcom/google/android/gms/internal/measurement/W4;Lcom/google/android/gms/internal/measurement/C6;ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/measurement/C6;->zzj:Lcom/google/android/gms/internal/measurement/C6;

    if-eq p1, v0, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/C6;->b()I

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/W4;->i(II)V

    sget-object p2, Lcom/google/android/gms/internal/measurement/D6;->zza:Lcom/google/android/gms/internal/measurement/D6;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    add-long v0, p1, p1

    const/16 p3, 0x3f

    shr-long/2addr p1, p3

    xor-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/W4;->B(J)V

    return-void

    :pswitch_1
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int p2, p1, p1

    shr-int/lit8 p1, p1, 0x1f

    xor-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/W4;->z(I)V

    return-void

    :pswitch_2
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/W4;->C(J)V

    return-void

    :pswitch_3
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/W4;->A(I)V

    return-void

    :pswitch_4
    instance-of p1, p3, Lcom/google/android/gms/internal/measurement/u5;

    if-eqz p1, :cond_0

    check-cast p3, Lcom/google/android/gms/internal/measurement/u5;

    invoke-interface {p3}, Lcom/google/android/gms/internal/measurement/u5;->N1()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/W4;->y(I)V

    return-void

    :cond_0
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/W4;->y(I)V

    return-void

    :pswitch_5
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/W4;->z(I)V

    return-void

    :pswitch_6
    instance-of p1, p3, Lcom/google/android/gms/internal/measurement/S4;

    if-eqz p1, :cond_1

    check-cast p3, Lcom/google/android/gms/internal/measurement/S4;

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/measurement/W4;->r(Lcom/google/android/gms/internal/measurement/S4;)V

    return-void

    :cond_1
    check-cast p3, [B

    array-length p1, p3

    const/4 p2, 0x0

    invoke-virtual {p0, p3, p2, p1}, Lcom/google/android/gms/internal/measurement/W4;->s([BII)V

    return-void

    :pswitch_7
    check-cast p3, Lcom/google/android/gms/internal/measurement/W5;

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/measurement/W4;->w(Lcom/google/android/gms/internal/measurement/W5;)V

    return-void

    :pswitch_8
    check-cast p3, Lcom/google/android/gms/internal/measurement/W5;

    invoke-interface {p3, p0}, Lcom/google/android/gms/internal/measurement/W5;->c(Lcom/google/android/gms/internal/measurement/W4;)V

    return-void

    :pswitch_9
    instance-of p1, p3, Lcom/google/android/gms/internal/measurement/S4;

    if-eqz p1, :cond_2

    check-cast p3, Lcom/google/android/gms/internal/measurement/S4;

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/measurement/W4;->r(Lcom/google/android/gms/internal/measurement/S4;)V

    return-void

    :cond_2
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/measurement/W4;->E(Ljava/lang/String;)V

    return-void

    :pswitch_a
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/W4;->x(B)V

    return-void

    :pswitch_b
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/W4;->A(I)V

    return-void

    :pswitch_c
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/W4;->C(J)V

    return-void

    :pswitch_d
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/W4;->y(I)V

    return-void

    :pswitch_e
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/W4;->B(J)V

    return-void

    :pswitch_f
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/W4;->B(J)V

    return-void

    :pswitch_10
    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/W4;->A(I)V

    return-void

    :pswitch_11
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/W4;->C(J)V

    return-void

    :cond_3
    check-cast p3, Lcom/google/android/gms/internal/measurement/W5;

    invoke-static {p3}, Lcom/google/android/gms/internal/measurement/A5;->d(Lcom/google/android/gms/internal/measurement/W5;)Z

    const/4 p1, 0x3

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/measurement/W4;->i(II)V

    invoke-interface {p3, p0}, Lcom/google/android/gms/internal/measurement/W5;->c(Lcom/google/android/gms/internal/measurement/W4;)V

    const/4 p1, 0x4

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/measurement/W4;->i(II)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
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
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static h(Lcom/google/android/gms/internal/measurement/C6;ILjava/lang/Object;)I
    .locals 1

    shl-int/lit8 p1, p1, 0x3

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/W4;->G(I)I

    move-result p1

    sget-object v0, Lcom/google/android/gms/internal/measurement/C6;->zzj:Lcom/google/android/gms/internal/measurement/C6;

    if-ne p0, v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/google/android/gms/internal/measurement/W5;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/A5;->d(Lcom/google/android/gms/internal/measurement/W5;)Z

    add-int/2addr p1, p1

    :cond_0
    invoke-static {p0, p2}, Lcom/google/android/gms/internal/measurement/g5;->i(Lcom/google/android/gms/internal/measurement/C6;Ljava/lang/Object;)I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method

.method public static i(Lcom/google/android/gms/internal/measurement/C6;Ljava/lang/Object;)I
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/measurement/C6;->zza:Lcom/google/android/gms/internal/measurement/C6;

    sget-object v0, Lcom/google/android/gms/internal/measurement/D6;->zza:Lcom/google/android/gms/internal/measurement/D6;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 v0, 0x4

    const/16 v1, 0x8

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "There is no way to get here, but the compiler thinks otherwise."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    add-long v0, p0, p0

    const/16 v2, 0x3f

    shr-long/2addr p0, v2

    xor-long/2addr p0, v0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/W4;->a(J)I

    move-result p0

    return p0

    :pswitch_1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    add-int p1, p0, p0

    shr-int/lit8 p0, p0, 0x1f

    xor-int/2addr p0, p1

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/W4;->G(I)I

    move-result p0

    return p0

    :pswitch_2
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    sget p0, Lcom/google/android/gms/internal/measurement/W4;->d:I

    return v1

    :pswitch_3
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    sget p0, Lcom/google/android/gms/internal/measurement/W4;->d:I

    return v0

    :pswitch_4
    instance-of p0, p1, Lcom/google/android/gms/internal/measurement/u5;

    if-eqz p0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/measurement/u5;

    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/u5;->N1()I

    move-result p0

    int-to-long p0, p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/W4;->a(J)I

    move-result p0

    return p0

    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long p0, p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/W4;->a(J)I

    move-result p0

    return p0

    :pswitch_5
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/W4;->G(I)I

    move-result p0

    return p0

    :pswitch_6
    instance-of p0, p1, Lcom/google/android/gms/internal/measurement/S4;

    if-eqz p0, :cond_1

    check-cast p1, Lcom/google/android/gms/internal/measurement/S4;

    sget p0, Lcom/google/android/gms/internal/measurement/W4;->d:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/S4;->l()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/W4;->G(I)I

    move-result p1

    :goto_0
    add-int/2addr p1, p0

    return p1

    :cond_1
    check-cast p1, [B

    sget p0, Lcom/google/android/gms/internal/measurement/W4;->d:I

    array-length p0, p1

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/W4;->G(I)I

    move-result p1

    goto :goto_0

    :pswitch_7
    instance-of p0, p1, Lcom/google/android/gms/internal/measurement/E5;

    if-eqz p0, :cond_2

    check-cast p1, Lcom/google/android/gms/internal/measurement/E5;

    sget p0, Lcom/google/android/gms/internal/measurement/W4;->d:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/F5;->b()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/W4;->G(I)I

    move-result p1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/measurement/W5;

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/W4;->c(Lcom/google/android/gms/internal/measurement/W5;)I

    move-result p0

    return p0

    :pswitch_8
    check-cast p1, Lcom/google/android/gms/internal/measurement/W5;

    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/W5;->f()I

    move-result p0

    return p0

    :pswitch_9
    instance-of p0, p1, Lcom/google/android/gms/internal/measurement/S4;

    if-eqz p0, :cond_3

    check-cast p1, Lcom/google/android/gms/internal/measurement/S4;

    sget p0, Lcom/google/android/gms/internal/measurement/W4;->d:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/S4;->l()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/W4;->G(I)I

    move-result p1

    goto :goto_0

    :cond_3
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/W4;->b(Ljava/lang/String;)I

    move-result p0

    return p0

    :pswitch_a
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    sget p0, Lcom/google/android/gms/internal/measurement/W4;->d:I

    const/4 p0, 0x1

    return p0

    :pswitch_b
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    sget p0, Lcom/google/android/gms/internal/measurement/W4;->d:I

    return v0

    :pswitch_c
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    sget p0, Lcom/google/android/gms/internal/measurement/W4;->d:I

    return v1

    :pswitch_d
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long p0, p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/W4;->a(J)I

    move-result p0

    return p0

    :pswitch_e
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/W4;->a(J)I

    move-result p0

    return p0

    :pswitch_f
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/W4;->a(J)I

    move-result p0

    return p0

    :pswitch_10
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    sget p0, Lcom/google/android/gms/internal/measurement/W4;->d:I

    return v0

    :pswitch_11
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    sget p0, Lcom/google/android/gms/internal/measurement/W4;->d:I

    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
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
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static j(Lcom/google/android/gms/internal/measurement/f5;Ljava/lang/Object;)I
    .locals 5

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/f5;->O1()Lcom/google/android/gms/internal/measurement/C6;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/f5;->N1()I

    move-result v1

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/f5;->Q1()Z

    move-result v2

    if-eqz v2, :cond_4

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/f5;->R1()Z

    move-result p0

    const/4 v3, 0x0

    if-eqz p0, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    move p0, v3

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/google/android/gms/internal/measurement/g5;->i(Lcom/google/android/gms/internal/measurement/C6;Ljava/lang/Object;)I

    move-result v4

    add-int/2addr p0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    shl-int/lit8 p1, v1, 0x3

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/W4;->G(I)I

    move-result p1

    add-int/2addr p1, p0

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/W4;->G(I)I

    move-result p0

    add-int/2addr p1, p0

    return p1

    :cond_1
    return v3

    :cond_2
    move p0, v3

    :goto_1
    if-ge v3, v2, :cond_3

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v1, v4}, Lcom/google/android/gms/internal/measurement/g5;->h(Lcom/google/android/gms/internal/measurement/C6;ILjava/lang/Object;)I

    move-result v4

    add-int/2addr p0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return p0

    :cond_4
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/measurement/g5;->h(Lcom/google/android/gms/internal/measurement/C6;ILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static k(Ljava/util/Map$Entry;)Z
    .locals 4

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/f5;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/f5;->P1()Lcom/google/android/gms/internal/measurement/D6;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/measurement/D6;->zzi:Lcom/google/android/gms/internal/measurement/D6;

    if-ne v1, v2, :cond_2

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/f5;->Q1()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/g5;->l(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/g5;->l(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static l(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p0, Lcom/google/android/gms/internal/measurement/X5;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/android/gms/internal/measurement/X5;

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/X5;->d()Z

    move-result p0

    return p0

    :cond_0
    instance-of p0, p0, Lcom/google/android/gms/internal/measurement/E5;

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong object type used with protocol message reflection."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final m(Ljava/util/Map$Entry;)I
    .locals 5

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/f5;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/f5;->P1()Lcom/google/android/gms/internal/measurement/D6;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/measurement/D6;->zzi:Lcom/google/android/gms/internal/measurement/D6;

    if-ne v2, v3, :cond_1

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/f5;->Q1()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/f5;->R1()Z

    move-result v2

    if-nez v2, :cond_1

    instance-of v0, v1, Lcom/google/android/gms/internal/measurement/E5;

    const/16 v2, 0x18

    const/16 v3, 0x10

    const/16 v4, 0x8

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/f5;

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/f5;->N1()I

    move-result p0

    check-cast v1, Lcom/google/android/gms/internal/measurement/E5;

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/W4;->G(I)I

    move-result v0

    add-int/2addr v0, v0

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/W4;->G(I)I

    move-result v3

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/W4;->G(I)I

    move-result p0

    add-int/2addr v3, p0

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/W4;->G(I)I

    move-result p0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/F5;->b()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/W4;->G(I)I

    move-result v2

    add-int/2addr v2, v1

    add-int/2addr p0, v2

    :goto_0
    add-int/2addr v0, v3

    add-int/2addr v0, p0

    return v0

    :cond_0
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/f5;

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/f5;->N1()I

    move-result p0

    check-cast v1, Lcom/google/android/gms/internal/measurement/W5;

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/W4;->G(I)I

    move-result v0

    add-int/2addr v0, v0

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/W4;->G(I)I

    move-result v3

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/W4;->G(I)I

    move-result p0

    add-int/2addr v3, p0

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/W4;->G(I)I

    move-result p0

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/W4;->c(Lcom/google/android/gms/internal/measurement/W5;)I

    move-result v1

    add-int/2addr p0, v1

    goto :goto_0

    :cond_1
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/g5;->j(Lcom/google/android/gms/internal/measurement/f5;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static final n(Lcom/google/android/gms/internal/measurement/f5;Ljava/lang/Object;)V
    .locals 2

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/f5;->O1()Lcom/google/android/gms/internal/measurement/C6;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/measurement/A5;->b:[B

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/google/android/gms/internal/measurement/C6;->zza:Lcom/google/android/gms/internal/measurement/C6;

    sget-object v1, Lcom/google/android/gms/internal/measurement/D6;->zza:Lcom/google/android/gms/internal/measurement/D6;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/C6;->a()Lcom/google/android/gms/internal/measurement/D6;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/W5;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/E5;

    if-eqz v0, :cond_1

    goto :goto_1

    :pswitch_1
    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/u5;

    if-eqz v0, :cond_1

    goto :goto_1

    :pswitch_2
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/S4;

    if-nez v0, :cond_0

    instance-of v0, p1, [B

    if-eqz v0, :cond_1

    goto :goto_1

    :pswitch_3
    instance-of v0, p1, Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    instance-of v0, p1, Ljava/lang/Boolean;

    goto :goto_0

    :pswitch_5
    instance-of v0, p1, Ljava/lang/Double;

    goto :goto_0

    :pswitch_6
    instance-of v0, p1, Ljava/lang/Float;

    goto :goto_0

    :pswitch_7
    instance-of v0, p1, Ljava/lang/Long;

    goto :goto_0

    :pswitch_8
    instance-of v0, p1, Ljava/lang/Integer;

    :goto_0
    if-eqz v0, :cond_1

    :cond_0
    :goto_1
    return-void

    :cond_1
    :goto_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/f5;->N1()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/f5;->O1()Lcom/google/android/gms/internal/measurement/C6;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/C6;->a()Lcom/google/android/gms/internal/measurement/D6;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v1, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
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


# virtual methods
.method public final b()V
    .locals 5

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/g5;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/g5;->a:Lcom/google/android/gms/internal/measurement/p6;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/p6;->j()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/p6;->k(I)Ljava/util/Map$Entry;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lcom/google/android/gms/internal/measurement/q5;

    if-eqz v4, :cond_1

    check-cast v3, Lcom/google/android/gms/internal/measurement/q5;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/q5;->o()V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/p6;->l()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/q5;

    if-eqz v3, :cond_3

    check-cast v2, Lcom/google/android/gms/internal/measurement/q5;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/q5;->o()V

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/p6;->e()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/g5;->b:Z

    return-void
.end method

.method public final c()Ljava/util/Iterator;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/g5;->a:Lcom/google/android/gms/internal/measurement/p6;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/measurement/g5;->c:Z

    if-eqz v1, :cond_1

    new-instance v1, Lcom/google/android/gms/internal/measurement/D5;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/p6;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/D5;-><init>(Ljava/util/Iterator;)V

    return-object v1

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/p6;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/measurement/g5;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/g5;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/g5;->a:Lcom/google/android/gms/internal/measurement/p6;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/p6;->j()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/measurement/p6;->k(I)Ljava/util/Map$Entry;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/google/android/gms/internal/measurement/m6;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/m6;->b()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/f5;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Lcom/google/android/gms/internal/measurement/g5;->d(Lcom/google/android/gms/internal/measurement/f5;Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/p6;->l()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/f5;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/measurement/g5;->d(Lcom/google/android/gms/internal/measurement/f5;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/gms/internal/measurement/g5;->c:Z

    iput-boolean v1, v0, Lcom/google/android/gms/internal/measurement/g5;->c:Z

    return-object v0
.end method

.method public final d(Lcom/google/android/gms/internal/measurement/f5;Ljava/lang/Object;)V
    .locals 4

    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/f5;->Q1()Z

    move-result v0

    if-eqz v0, :cond_2

    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_1

    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/google/android/gms/internal/measurement/g5;->n(Lcom/google/android/gms/internal/measurement/f5;Ljava/lang/Object;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move-object p2, v1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Wrong object type used with protocol message reflection."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/g5;->n(Lcom/google/android/gms/internal/measurement/f5;Ljava/lang/Object;)V

    :goto_1
    instance-of v0, p2, Lcom/google/android/gms/internal/measurement/E5;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/g5;->c:Z

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/g5;->a:Lcom/google/android/gms/internal/measurement/p6;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/p6;->m(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final e()Z
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/g5;->a:Lcom/google/android/gms/internal/measurement/p6;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/p6;->j()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/measurement/p6;->k(I)Ljava/util/Map$Entry;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/g5;->k(Ljava/util/Map$Entry;)Z

    move-result v4

    if-nez v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/p6;->l()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/g5;->k(Ljava/util/Map$Entry;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/g5;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/measurement/g5;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/g5;->a:Lcom/google/android/gms/internal/measurement/p6;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/g5;->a:Lcom/google/android/gms/internal/measurement/p6;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/p6;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final g()I
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/g5;->a:Lcom/google/android/gms/internal/measurement/p6;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/p6;->j()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/p6;->k(I)Ljava/util/Map$Entry;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/g5;->m(Ljava/util/Map$Entry;)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/p6;->l()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/g5;->m(Ljava/util/Map$Entry;)I

    move-result v1

    add-int/2addr v3, v1

    goto :goto_1

    :cond_1
    return v3
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/g5;->a:Lcom/google/android/gms/internal/measurement/p6;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/p6;->hashCode()I

    move-result v0

    return v0
.end method
