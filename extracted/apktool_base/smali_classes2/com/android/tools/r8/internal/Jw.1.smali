.class public final Lcom/android/tools/r8/internal/Jw;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lcom/android/tools/r8/internal/Jw;


# instance fields
.field public final a:Lcom/android/tools/r8/internal/Um0;

.field public b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/Jw;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Jw;-><init>(I)V

    sput-object v0, Lcom/android/tools/r8/internal/Jw;->c:Lcom/android/tools/r8/internal/Jw;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/Um0;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Um0;-><init>(I)V

    .line 3
    iput-object v0, p0, Lcom/android/tools/r8/internal/Jw;->a:Lcom/android/tools/r8/internal/Um0;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance p1, Lcom/android/tools/r8/internal/Um0;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/Um0;-><init>(I)V

    .line 6
    iput-object p1, p0, Lcom/android/tools/r8/internal/Jw;->a:Lcom/android/tools/r8/internal/Um0;

    .line 7
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Jw;->a()V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/Sx0;Ljava/lang/Object;)I
    .locals 2

    .line 128
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 v0, 0x4

    const/16 v1, 0x8

    packed-switch p0, :pswitch_data_0

    .line 129
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "There is no way to get here, but the compiler thinks otherwise."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 130
    :pswitch_0
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    .line 131
    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/He;->b(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/He;->a(J)I

    move-result p0

    return p0

    .line 132
    :pswitch_1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    shl-int/lit8 p1, p0, 0x1

    shr-int/lit8 p0, p0, 0x1f

    xor-int/2addr p0, p1

    .line 133
    invoke-static {p0}, Lcom/android/tools/r8/internal/He;->b(I)I

    move-result p0

    return p0

    .line 134
    :pswitch_2
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return v1

    .line 135
    :pswitch_3
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return v0

    .line 136
    :pswitch_4
    instance-of p0, p1, Lcom/android/tools/r8/internal/PI;

    if-eqz p0, :cond_0

    .line 137
    check-cast p1, Lcom/android/tools/r8/internal/PI;

    invoke-interface {p1}, Lcom/android/tools/r8/internal/PI;->getNumber()I

    move-result p0

    invoke-static {p0}, Lcom/android/tools/r8/internal/He;->a(I)I

    move-result p0

    return p0

    .line 138
    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/android/tools/r8/internal/He;->a(I)I

    move-result p0

    return p0

    .line 139
    :pswitch_5
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 140
    invoke-static {p0}, Lcom/android/tools/r8/internal/He;->b(I)I

    move-result p0

    return p0

    .line 141
    :pswitch_6
    instance-of p0, p1, Lcom/android/tools/r8/internal/l8;

    if-eqz p0, :cond_1

    .line 142
    check-cast p1, Lcom/android/tools/r8/internal/l8;

    .line 143
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/l8;->size()I

    move-result p0

    invoke-static {p0}, Lcom/android/tools/r8/internal/He;->b(I)I

    move-result p0

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/l8;->size()I

    move-result p1

    :goto_0
    add-int/2addr p1, p0

    return p1

    .line 144
    :cond_1
    check-cast p1, [B

    .line 145
    array-length p0, p1

    invoke-static {p0}, Lcom/android/tools/r8/internal/He;->b(I)I

    move-result p0

    array-length p1, p1

    add-int/2addr p0, p1

    return p0

    .line 146
    :pswitch_7
    check-cast p1, Lcom/android/tools/r8/internal/O0;

    .line 147
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/O0;->a()I

    move-result p0

    .line 148
    invoke-static {p0}, Lcom/android/tools/r8/internal/He;->b(I)I

    move-result p1

    goto :goto_0

    .line 149
    :pswitch_8
    check-cast p1, Lcom/android/tools/r8/internal/O0;

    .line 150
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/O0;->a()I

    move-result p0

    return p0

    .line 151
    :pswitch_9
    check-cast p1, Ljava/lang/String;

    .line 152
    :try_start_0
    const-string p0, "UTF-8"

    invoke-virtual {p1, p0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 153
    array-length p1, p0

    invoke-static {p1}, Lcom/android/tools/r8/internal/He;->b(I)I

    move-result p1

    array-length p0, p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr p1, p0

    return p1

    :catch_0
    move-exception p0

    .line 154
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "UTF-8 not supported."

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 155
    :pswitch_a
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x1

    return p0

    .line 156
    :pswitch_b
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return v0

    .line 157
    :pswitch_c
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return v1

    .line 158
    :pswitch_d
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ltz p0, :cond_2

    .line 159
    invoke-static {p0}, Lcom/android/tools/r8/internal/He;->b(I)I

    move-result p0

    return p0

    :cond_2
    const/16 p0, 0xa

    return p0

    .line 160
    :pswitch_e
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    .line 161
    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/He;->a(J)I

    move-result p0

    return p0

    .line 162
    :pswitch_f
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    .line 163
    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/He;->a(J)I

    move-result p0

    return p0

    .line 164
    :pswitch_10
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return v0

    .line 165
    :pswitch_11
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

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

.method public static a(Lcom/android/tools/r8/internal/Ae;Lcom/android/tools/r8/internal/Sx0;)Ljava/lang/Object;
    .locals 4

    .line 31
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    .line 32
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "There is no way to get here, but the compiler thinks otherwise."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 33
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ae;->g()J

    move-result-wide p0

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x1

    and-long/2addr p0, v2

    neg-long p0, p0

    xor-long/2addr p0, v0

    .line 34
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 35
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result p0

    ushr-int/lit8 p1, p0, 0x1

    and-int/2addr p0, v0

    neg-int p0, p0

    xor-int/2addr p0, p1

    .line 36
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 37
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ae;->e()J

    move-result-wide p0

    .line 38
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 39
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ae;->d()I

    move-result p0

    .line 40
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 41
    :pswitch_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "readPrimitiveField() cannot handle enums."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 42
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result p0

    .line 43
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 44
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ae;->b()Lcom/android/tools/r8/internal/ET;

    move-result-object p0

    return-object p0

    .line 45
    :pswitch_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "readPrimitiveField() cannot handle embedded messages."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 46
    :pswitch_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "readPrimitiveField() cannot handle nested groups."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 47
    :pswitch_9
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result p1

    .line 48
    iget v0, p0, Lcom/android/tools/r8/internal/Ae;->b:I

    iget v1, p0, Lcom/android/tools/r8/internal/Ae;->d:I

    sub-int/2addr v0, v1

    const-string v2, "UTF-8"

    if-gt p1, v0, :cond_0

    if-lez p1, :cond_0

    .line 49
    new-instance v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/tools/r8/internal/Ae;->a:[B

    invoke-direct {v0, v3, v1, p1, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 50
    iget v1, p0, Lcom/android/tools/r8/internal/Ae;->d:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/android/tools/r8/internal/Ae;->d:I

    return-object v0

    :cond_0
    if-nez p1, :cond_1

    .line 51
    const-string p0, ""

    return-object p0

    .line 52
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Ae;->c(I)[B

    move-result-object p0

    invoke-direct {v0, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0

    .line 53
    :pswitch_a
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ae;->g()J

    move-result-wide p0

    const-wide/16 v1, 0x0

    cmp-long p0, p0, v1

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 54
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 55
    :pswitch_b
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ae;->d()I

    move-result p0

    .line 56
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 57
    :pswitch_c
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ae;->e()J

    move-result-wide p0

    .line 58
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 59
    :pswitch_d
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result p0

    .line 60
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 61
    :pswitch_e
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ae;->g()J

    move-result-wide p0

    .line 62
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 63
    :pswitch_f
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ae;->g()J

    move-result-wide p0

    .line 64
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 65
    :pswitch_10
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ae;->d()I

    move-result p0

    .line 66
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    .line 67
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 68
    :pswitch_11
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ae;->e()J

    move-result-wide p0

    .line 69
    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    .line 70
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

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

.method public static a(Lcom/android/tools/r8/internal/He;Lcom/android/tools/r8/internal/Sx0;Ljava/lang/Object;)V
    .locals 0

    .line 71
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    return-void

    .line 72
    :pswitch_0
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 73
    invoke-static {p1, p2}, Lcom/android/tools/r8/internal/He;->b(J)J

    move-result-wide p1

    .line 74
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/He;->d(J)V

    return-void

    .line 75
    :pswitch_1
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    shl-int/lit8 p2, p1, 0x1

    shr-int/lit8 p1, p1, 0x1f

    xor-int/2addr p1, p2

    .line 76
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/He;->g(I)V

    return-void

    .line 77
    :pswitch_2
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 78
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/He;->c(J)V

    return-void

    .line 79
    :pswitch_3
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 80
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/He;->f(I)V

    return-void

    .line 81
    :pswitch_4
    instance-of p1, p2, Lcom/android/tools/r8/internal/PI;

    if-eqz p1, :cond_0

    .line 82
    check-cast p2, Lcom/android/tools/r8/internal/PI;

    invoke-interface {p2}, Lcom/android/tools/r8/internal/PI;->getNumber()I

    move-result p1

    .line 83
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/He;->d(I)V

    return-void

    .line 84
    :cond_0
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 85
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/He;->d(I)V

    return-void

    .line 86
    :pswitch_5
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 87
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/He;->g(I)V

    return-void

    .line 88
    :pswitch_6
    instance-of p1, p2, Lcom/android/tools/r8/internal/l8;

    if-eqz p1, :cond_1

    .line 89
    check-cast p2, Lcom/android/tools/r8/internal/l8;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/l8;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/He;->g(I)V

    .line 91
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/He;->a(Lcom/android/tools/r8/internal/l8;)V

    return-void

    .line 92
    :cond_1
    check-cast p2, [B

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    array-length p1, p2

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/He;->g(I)V

    .line 94
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/He;->a([B)V

    return-void

    .line 95
    :pswitch_7
    check-cast p2, Lcom/android/tools/r8/internal/O0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/O0;->a()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/He;->g(I)V

    .line 97
    invoke-virtual {p2, p0}, Lcom/android/tools/r8/internal/O0;->a(Lcom/android/tools/r8/internal/He;)V

    return-void

    .line 98
    :pswitch_8
    check-cast p2, Lcom/android/tools/r8/internal/O0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    invoke-virtual {p2, p0}, Lcom/android/tools/r8/internal/O0;->a(Lcom/android/tools/r8/internal/He;)V

    return-void

    .line 100
    :pswitch_9
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    const-string p1, "UTF-8"

    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 102
    array-length p2, p1

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/He;->g(I)V

    .line 103
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/He;->a([B)V

    return-void

    .line 104
    :pswitch_a
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 105
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/He;->e(I)V

    return-void

    .line 106
    :pswitch_b
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 107
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/He;->f(I)V

    return-void

    .line 108
    :pswitch_c
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 109
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/He;->c(J)V

    return-void

    .line 110
    :pswitch_d
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/He;->d(I)V

    return-void

    .line 111
    :pswitch_e
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 112
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/He;->d(J)V

    return-void

    .line 113
    :pswitch_f
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 114
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/He;->d(J)V

    return-void

    .line 115
    :pswitch_10
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/He;->f(I)V

    return-void

    .line 117
    :pswitch_11
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/He;->c(J)V

    return-void

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

.method public static a(Ljava/util/Map$Entry;)Z
    .locals 3

    .line 20
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Vy;

    .line 21
    iget-object v1, v0, Lcom/android/tools/r8/internal/Vy;->c:Lcom/android/tools/r8/internal/Sx0;

    .line 22
    iget-object v1, v1, Lcom/android/tools/r8/internal/Sx0;->b:Lcom/android/tools/r8/internal/Ux0;

    .line 23
    sget-object v2, Lcom/android/tools/r8/internal/Ux0;->k:Lcom/android/tools/r8/internal/Ux0;

    if-ne v1, v2, :cond_3

    .line 24
    iget-boolean v0, v0, Lcom/android/tools/r8/internal/Vy;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 25
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/O0;

    .line 26
    invoke-interface {v0}, Lcom/android/tools/r8/internal/lW;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 27
    :cond_1
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    .line 28
    instance-of v0, p0, Lcom/android/tools/r8/internal/O0;

    if-eqz v0, :cond_2

    .line 29
    check-cast p0, Lcom/android/tools/r8/internal/O0;

    invoke-interface {p0}, Lcom/android/tools/r8/internal/lW;->isInitialized()Z

    move-result p0

    if-nez p0, :cond_3

    return v1

    .line 30
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong object type used with protocol message reflection."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public static b(Lcom/android/tools/r8/internal/Vy;Ljava/lang/Object;)I
    .locals 5

    .line 47
    iget-object v0, p0, Lcom/android/tools/r8/internal/Vy;->c:Lcom/android/tools/r8/internal/Sx0;

    .line 48
    iget v1, p0, Lcom/android/tools/r8/internal/Vy;->b:I

    .line 49
    iget-boolean p0, p0, Lcom/android/tools/r8/internal/Vy;->d:Z

    if-eqz p0, :cond_2

    .line 50
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 51
    invoke-static {v1}, Lcom/android/tools/r8/internal/He;->c(I)I

    move-result v3

    .line 52
    sget-object v4, Lcom/android/tools/r8/internal/Sx0;->f:Lcom/android/tools/r8/internal/Mx0;

    if-ne v0, v4, :cond_0

    mul-int/lit8 v3, v3, 0x2

    .line 53
    :cond_0
    invoke-static {v0, v2}, Lcom/android/tools/r8/internal/Jw;->a(Lcom/android/tools/r8/internal/Sx0;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v2, v3

    add-int/2addr p1, v2

    goto :goto_0

    :cond_1
    return p1

    .line 54
    :cond_2
    invoke-static {v1}, Lcom/android/tools/r8/internal/He;->c(I)I

    move-result p0

    .line 55
    sget-object v1, Lcom/android/tools/r8/internal/Sx0;->f:Lcom/android/tools/r8/internal/Mx0;

    if-ne v0, v1, :cond_3

    mul-int/lit8 p0, p0, 0x2

    .line 56
    :cond_3
    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/Jw;->a(Lcom/android/tools/r8/internal/Sx0;Ljava/lang/Object;)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static b(Lcom/android/tools/r8/internal/Sx0;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget-object p0, p0, Lcom/android/tools/r8/internal/Sx0;->b:Lcom/android/tools/r8/internal/Ux0;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    goto :goto_1

    .line 4
    :pswitch_0
    instance-of v0, p1, Lcom/android/tools/r8/internal/O0;

    goto :goto_1

    .line 5
    :pswitch_1
    instance-of p0, p1, Ljava/lang/Integer;

    if-nez p0, :cond_0

    instance-of p0, p1, Lcom/android/tools/r8/internal/PI;

    if-eqz p0, :cond_1

    goto :goto_0

    .line 6
    :pswitch_2
    instance-of p0, p1, Lcom/android/tools/r8/internal/l8;

    if-nez p0, :cond_0

    instance-of p0, p1, [B

    if-eqz p0, :cond_1

    :cond_0
    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    .line 7
    :pswitch_3
    instance-of v0, p1, Ljava/lang/String;

    goto :goto_1

    .line 8
    :pswitch_4
    instance-of v0, p1, Ljava/lang/Boolean;

    goto :goto_1

    .line 9
    :pswitch_5
    instance-of v0, p1, Ljava/lang/Double;

    goto :goto_1

    .line 10
    :pswitch_6
    instance-of v0, p1, Ljava/lang/Float;

    goto :goto_1

    .line 11
    :pswitch_7
    instance-of v0, p1, Ljava/lang/Long;

    goto :goto_1

    .line 12
    :pswitch_8
    instance-of v0, p1, Ljava/lang/Integer;

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    return-void

    .line 13
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Wrong object type used with protocol message reflection."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

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
.method public final a()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/Jw;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Jw;->a:Lcom/android/tools/r8/internal/Um0;

    .line 3
    iget-boolean v1, v0, Lcom/android/tools/r8/internal/Um0;->e:Z

    if-nez v1, :cond_5

    const/4 v1, 0x0

    .line 4
    :goto_0
    iget-object v2, v0, Lcom/android/tools/r8/internal/Um0;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 5
    iget-object v2, v0, Lcom/android/tools/r8/internal/Um0;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/Vy;

    .line 7
    iget-boolean v3, v3, Lcom/android/tools/r8/internal/Vy;->d:Z

    if-eqz v3, :cond_1

    .line 8
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 9
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10
    :cond_2
    iget-object v1, v0, Lcom/android/tools/r8/internal/Um0;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/tools/r8/internal/an0;->b:Lcom/android/tools/r8/internal/Ym0;

    goto :goto_1

    :cond_3
    iget-object v1, v0, Lcom/android/tools/r8/internal/Um0;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 11
    :goto_1
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 12
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/Vy;

    .line 13
    iget-boolean v3, v3, Lcom/android/tools/r8/internal/Vy;->d:Z

    if-eqz v3, :cond_4

    .line 14
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 15
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 16
    :cond_5
    iget-boolean v1, v0, Lcom/android/tools/r8/internal/Um0;->e:Z

    const/4 v2, 0x1

    if-nez v1, :cond_7

    .line 17
    iget-object v1, v0, Lcom/android/tools/r8/internal/Um0;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    goto :goto_3

    :cond_6
    iget-object v1, v0, Lcom/android/tools/r8/internal/Um0;->d:Ljava/util/Map;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    :goto_3
    iput-object v1, v0, Lcom/android/tools/r8/internal/Um0;->d:Ljava/util/Map;

    .line 18
    iput-boolean v2, v0, Lcom/android/tools/r8/internal/Um0;->e:Z

    .line 19
    :cond_7
    iput-boolean v2, p0, Lcom/android/tools/r8/internal/Jw;->b:Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Vy;Ljava/lang/Object;)V
    .locals 2

    .line 119
    iget-boolean v0, p1, Lcom/android/tools/r8/internal/Vy;->d:Z

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p1, Lcom/android/tools/r8/internal/Vy;->c:Lcom/android/tools/r8/internal/Sx0;

    .line 121
    invoke-static {v0, p2}, Lcom/android/tools/r8/internal/Jw;->b(Lcom/android/tools/r8/internal/Sx0;Ljava/lang/Object;)V

    .line 122
    iget-object v0, p0, Lcom/android/tools/r8/internal/Jw;->a:Lcom/android/tools/r8/internal/Um0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Um0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 124
    iget-object v1, p0, Lcom/android/tools/r8/internal/Jw;->a:Lcom/android/tools/r8/internal/Um0;

    invoke-virtual {v1, p1, v0}, Lcom/android/tools/r8/internal/Um0;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 125
    :cond_0
    check-cast v0, Ljava/util/List;

    .line 126
    :goto_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 127
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "addRepeatedField() can only be called on repeated fields."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(Ljava/util/Map$Entry;)V
    .locals 7

    .line 14
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Vy;

    .line 15
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 16
    iget-boolean v1, v0, Lcom/android/tools/r8/internal/Vy;->d:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 17
    iget-object v1, p0, Lcom/android/tools/r8/internal/Jw;->a:Lcom/android/tools/r8/internal/Um0;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/Um0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 18
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 19
    :cond_0
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 20
    move-object v4, v1

    check-cast v4, Ljava/util/List;

    .line 21
    instance-of v5, v3, [B

    if-eqz v5, :cond_1

    .line 22
    check-cast v3, [B

    .line 23
    array-length v5, v3

    new-array v5, v5, [B

    .line 24
    array-length v6, v3

    invoke-static {v3, v2, v5, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v5

    .line 25
    :cond_1
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 26
    :cond_2
    iget-object p1, p0, Lcom/android/tools/r8/internal/Jw;->a:Lcom/android/tools/r8/internal/Um0;

    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/internal/Um0;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 27
    :cond_3
    iget-object v1, v0, Lcom/android/tools/r8/internal/Vy;->c:Lcom/android/tools/r8/internal/Sx0;

    .line 28
    iget-object v1, v1, Lcom/android/tools/r8/internal/Sx0;->b:Lcom/android/tools/r8/internal/Ux0;

    .line 29
    sget-object v3, Lcom/android/tools/r8/internal/Ux0;->k:Lcom/android/tools/r8/internal/Ux0;

    if-ne v1, v3, :cond_6

    .line 30
    iget-object v1, p0, Lcom/android/tools/r8/internal/Jw;->a:Lcom/android/tools/r8/internal/Um0;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/Um0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_5

    .line 31
    iget-object v1, p0, Lcom/android/tools/r8/internal/Jw;->a:Lcom/android/tools/r8/internal/Um0;

    .line 32
    instance-of v3, p1, [B

    if-eqz v3, :cond_4

    .line 33
    check-cast p1, [B

    .line 34
    array-length v3, p1

    new-array v3, v3, [B

    .line 35
    array-length v4, p1

    invoke-static {p1, v2, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v3

    .line 36
    :cond_4
    invoke-virtual {v1, v0, p1}, Lcom/android/tools/r8/internal/Um0;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 37
    :cond_5
    check-cast v1, Lcom/android/tools/r8/internal/O0;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/O0;->c()Lcom/android/tools/r8/internal/Qy;

    move-result-object v1

    check-cast p1, Lcom/android/tools/r8/internal/O0;

    .line 38
    check-cast p1, Lcom/android/tools/r8/internal/Yy;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/Qy;->a(Lcom/android/tools/r8/internal/Yy;)Lcom/android/tools/r8/internal/Qy;

    move-result-object p1

    .line 39
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Qy;->a()Lcom/android/tools/r8/internal/O0;

    move-result-object p1

    .line 40
    iget-object v1, p0, Lcom/android/tools/r8/internal/Jw;->a:Lcom/android/tools/r8/internal/Um0;

    invoke-virtual {v1, v0, p1}, Lcom/android/tools/r8/internal/Um0;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 41
    :cond_6
    iget-object v1, p0, Lcom/android/tools/r8/internal/Jw;->a:Lcom/android/tools/r8/internal/Um0;

    .line 42
    instance-of v3, p1, [B

    if-eqz v3, :cond_7

    .line 43
    check-cast p1, [B

    .line 44
    array-length v3, p1

    new-array v3, v3, [B

    .line 45
    array-length v4, p1

    invoke-static {p1, v2, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v3

    .line 46
    :cond_7
    invoke-virtual {v1, v0, p1}, Lcom/android/tools/r8/internal/Um0;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final c(Lcom/android/tools/r8/internal/Vy;Ljava/lang/Object;)V
    .locals 4

    iget-boolean v0, p1, Lcom/android/tools/r8/internal/Vy;->d:Z

    if-eqz v0, :cond_2

    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p2, Ljava/util/List;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    iget-object v3, p1, Lcom/android/tools/r8/internal/Vy;->c:Lcom/android/tools/r8/internal/Sx0;

    invoke-static {v3, v2}, Lcom/android/tools/r8/internal/Jw;->b(Lcom/android/tools/r8/internal/Sx0;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    move-object p2, v0

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Wrong object type used with protocol message reflection."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v0, p1, Lcom/android/tools/r8/internal/Vy;->c:Lcom/android/tools/r8/internal/Sx0;

    invoke-static {v0, p2}, Lcom/android/tools/r8/internal/Jw;->b(Lcom/android/tools/r8/internal/Sx0;Ljava/lang/Object;)V

    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Jw;->a:Lcom/android/tools/r8/internal/Um0;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/Um0;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final clone()Lcom/android/tools/r8/internal/Jw;
    .locals 4

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/Jw;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Jw;-><init>()V

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/Jw;->a:Lcom/android/tools/r8/internal/Um0;

    .line 4
    iget-object v2, v2, Lcom/android/tools/r8/internal/Um0;->c:Ljava/util/List;

    .line 5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 6
    iget-object v2, p0, Lcom/android/tools/r8/internal/Jw;->a:Lcom/android/tools/r8/internal/Um0;

    .line 7
    iget-object v2, v2, Lcom/android/tools/r8/internal/Um0;->c:Ljava/util/List;

    .line 8
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 9
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/Vy;

    .line 10
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/android/tools/r8/internal/Jw;->c(Lcom/android/tools/r8/internal/Vy;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/Jw;->a:Lcom/android/tools/r8/internal/Um0;

    .line 12
    iget-object v2, v1, Lcom/android/tools/r8/internal/Um0;->d:Ljava/util/Map;

    .line 13
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v1, Lcom/android/tools/r8/internal/an0;->b:Lcom/android/tools/r8/internal/Ym0;

    goto :goto_1

    :cond_1
    iget-object v1, v1, Lcom/android/tools/r8/internal/Um0;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 14
    :goto_1
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 15
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/Vy;

    .line 16
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/android/tools/r8/internal/Jw;->c(Lcom/android/tools/r8/internal/Vy;Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Jw;->clone()Lcom/android/tools/r8/internal/Jw;

    move-result-object v0

    return-object v0
.end method
